#!/usr/bin/env bash

# Builds the generated Ada sources with the Cygwin GNAT toolchain.
# The ADA converter generates .adb files that contain only the package body.
# The ADS converter generates .ads files that contain only the package spec.
# gnatchop renames both to GNAT unit file names. Java annotations and interfaces have no body so their .adb files only have comments and are skipped.

set -uo pipefail

export PATH="/usr/local/bin:/usr/bin:/bin:$PATH"

source_dir="$(cygpath -u "$1")"
object_dir="$(cygpath -u "$2")"
archive_dir="$(cygpath -u "$3")"
ada_output_dir="$(cygpath -u "$4")"
archive="$archive_dir/lib$5.a"
ada_standard="$6"
read -r -a compiler_flags <<< "$7"
fail_on_error="$8"
shift 8

split_dir="$object_dir/split"
dependency_split_dir="$object_dir/split-dependencies"
compiled_dir="$object_dir/compiled"

rm -rf "$split_dir" "$dependency_split_dir" "$compiled_dir"
mkdir -p "$split_dir" "$dependency_split_dir" "$compiled_dir" "$archive_dir" "$ada_output_dir"

failures=()

chop_sources() {
    local output_dir="$1"
    local input_dir="$2"
    local extension
    local source
    for extension in adb ads; do
        while IFS= read -r -d '' source; do
            if ! grep -qvE '^[[:space:]]*(--.*)?$' "$source"; then
                continue
            fi
            if ! gnatchop -w -r -q "$ada_standard" "$source" "$output_dir" > /dev/null; then
                echo "gnatchop failed: $source" >&2
                failures+=("gnatchop $source")
            fi
        done < <(find "$input_dir" -type f -name "*.$extension" -print0 | sort -z)
    done
}

# Dependencies such as the AllBinary_Java runtime and jsinterop annotations are only used for compiling against
for dependency_dir in "$@"; do
    dependency_dir="$(cygpath -u "$dependency_dir")"
    if [ -d "$dependency_dir" ]; then
        chop_sources "$dependency_split_dir" "$dependency_dir"
    else
        echo "Warning: Ada dependency source directory does not exist: $dependency_dir" >&2
    fi
done

chop_sources "$split_dir" "$source_dir"

# Java packages become Ada parent packages such as org.allbinary.logic so generate any parent package that does not exist
while IFS= read -r -d '' spec; do
    unit="$(basename "$spec" .ads)"
    parent="${unit%-*}"
    while [ "$parent" != "$unit" ]; do
        if [ ! -f "$split_dir/$parent.ads" ] && [ ! -f "$dependency_split_dir/$parent.ads" ]; then
            parent_name="${parent//-/.}"
            printf 'package %s is\nend %s;\n' "$parent_name" "$parent_name" > "$dependency_split_dir/$parent.ads"
        fi
        unit="$parent"
        parent="${unit%-*}"
    done
done < <(find "$split_dir" "$dependency_split_dir" -type f -name '*.ads' -print0)

# Compile the body when it exists otherwise the spec
objects=()
compile_unit() {
    local source="$1"
    local base
    base="$(basename "${source%.*}")"
    if (cd "$compiled_dir" && gcc -c "$ada_standard" "${compiler_flags[@]}" -I"$split_dir" -I"$dependency_split_dir" "$source"); then
        objects+=("$compiled_dir/$base.o")
    else
        failures+=("compile $source")
    fi
}

while IFS= read -r -d '' spec; do
    body="${spec%.ads}.adb"
    if [ -f "$body" ]; then
        compile_unit "$body"
    else
        compile_unit "$spec"
    fi
done < <(find "$split_dir" -type f -name '*.ads' -print0 | sort -z)

while IFS= read -r -d '' body; do
    if [ ! -f "${body%.adb}.ads" ]; then
        compile_unit "$body"
    fi
done < <(find "$split_dir" -type f -name '*.adb' -print0 | sort -z)

rm -f "$archive"
if [ "${#objects[@]}" -gt 0 ]; then
    ar rcs "$archive" "${objects[@]}"
    cp "$compiled_dir"/*.ali "$archive_dir"/ 2> /dev/null || true
fi
cp "$split_dir"/. "$ada_output_dir"/ -R

echo "Ada units compiled: ${#objects[@]}"
if [ "${#failures[@]}" -gt 0 ]; then
    echo "Ada build failures: ${#failures[@]}" >&2
    printf '  %s\n' "${failures[@]}" >&2
    if [ "$fail_on_error" = "true" ]; then
        exit 1
    fi
fi
exit 0
