-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2026 AllBinary 
--  
-- By agreeing to this license you and any business entity you represent are 
-- legally bound to the AllBinary Open License Version 1 legal agreement. 
--  
-- You may obtain the AllBinary Open License Version 1 legal agreement from 
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
--  
-- Created By: Travis Berthelot 
--   
--  Generated Code Do Not Modify


with java.io.File_Package; use java.io.File_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.io.file.AbFileNativeUtil_Package; use org.allbinary.logic.io.file.AbFileNativeUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.java.runtime.process.git.ProcessBuilder_Package; use org.allbinary.java.runtime.process.git.ProcessBuilder_Package;
with org.allbinary.java.runtime.process.git.Process_Package; use org.allbinary.java.runtime.process.git.Process_Package;

package body org.allbinary.java.runtime.process.git.GitProcessHelper_Package is

   package File_Package renames Standard.java.io.File_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbFileNativeUtil_Package renames Standard.org.allbinary.logic.io.file.AbFileNativeUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   procedure Initialize_Fields (This : in out GitProcessHelper'Class) is
   begin
      null;
      This.trackedStrings := TrackedStrings_Package.getInstance;
   end Initialize_Fields;


   function getInstance return GitProcessHelper_Access is
   begin
        return GitProcessHelper_Package.instance;
   end getInstance;

   procedure Initialize (This : in out GitProcessHelper'Class) is
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      THIS_IS_SLOW : Unbounded_String;
   begin
      Initialize_Fields (This);
        logUtil := LogUtil_Package.getInstance;
        commonStrings := CommonStrings_Package.getInstance;
        THIS_IS_SLOW := To_Unbounded_String ("This is slow consider path exclusion instead");
        logUtil.putF (THIS_IS_SLOW, GitProcessHelper_Access'(This'Unchecked_Access), commonStrings.CONSTRUCTOR);
   end Initialize;

   function Create return GitProcessHelper_Access is
      This : constant GitProcessHelper_Access := new GitProcessHelper;
   begin
      GitProcessHelper_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws IOException, InterruptedException
   function trackedFiles (This : in out GitProcessHelper; rootAsString : Unbounded_String; pathspec : Unbounded_String) return List_Access is
   begin
        return GitProcessHelper'Class (This).trackedFiles (rootAsString, pathspec, To_Unbounded_String (".java"));
   end trackedFiles;

   --  throws IOException, InterruptedException
   function trackedFiles (This : in out GitProcessHelper; rootAsString : Unbounded_String; pathspec : Unbounded_String; suffix : Unbounded_String) return List_Access is
      process : Process_Access;
      output : Short_Short_Integer_Array_Access;
      exitCode : Integer;
      files : List_Access;
      start : Integer;
      relativePath : Unbounded_String;
      index : Integer;
   begin
        process := ProcessBuilder_Package.Create (This.trackedStrings.GIT_COMMAND, This.trackedStrings.CHANGE_DIRECTORY_OPTION, rootAsString, This.trackedStrings.LIST_FILES_COMMAND, This.trackedStrings.SEP_BY_NULL_CHAR_INSTEAD_OF_NEW_LINE, This.trackedStrings.PATHSPEC_SEPARATOR, pathspec).redirectError (ProcessBuilder_Package.Redirect.INHERIT).start;
        output := process.getInputStream.readAllBytes;
        exitCode := process.waitFor;
        if (exitCode) /= (0) then
            Java_Throw (Java_New_Exception ("IllegalStateException", StringMaker_Package.Create.append (To_Unbounded_String ("git ls-files failed for ")).append (rootAsString).append (To_Unbounded_String (" with exit code ")).appendint (exitCode).toString));
        end if;
        files := List_Access (ArrayList_Package.Create);
        start := 0;
        relativePath := Null_Unbounded_String;
        for index in 0 .. (output'Length) - 1 loop
            if (Integer (output (index))) = (0) then
                relativePath := Java_New_String (output, start, (index) - (start), StandardCharsets_Package.UTF_8);
                if Java_Ends_With (relativePath, suffix) then
                    files.add (relativePath);
                end if;
                start := (index) + (1);
            end if;
        end loop;
        return files;
   end trackedFiles;

   function isTracked (This : in out GitProcessHelper; file_Param : access AbFile_Package.AbFile'Class) return Boolean is
      file : constant AbFile_Access := AbFile_Access (file_Param);
      nativeFile : File_Access;
      parentFile : File_Access;
      process : Process_Access;
   begin
        begin
            nativeFile := AbFileNativeUtil_Package.get (file);
            parentFile := nativeFile.getParentFile;
            process := ProcessBuilder_Package.Create (This.trackedStrings.GIT_COMMAND, This.trackedStrings.CHANGE_DIRECTORY_OPTION, parentFile.getPath, This.trackedStrings.LIST_FILES_COMMAND, This.trackedStrings.ERROR_UNMATCH_OPTION, This.trackedStrings.PATHSPEC_SEPARATOR, nativeFile.getName).redirectErrorStream (True).start;
            process.getInputStream.readAllBytes;
            return (process.waitFor) = (0);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            return False;
                end;
        end;
   end isTracked;

   procedure trackedFiles (This : in out GitProcessHelper; rootAsString : Unbounded_String; pathspec : Unbounded_String) is
      Java_Result : constant List_Access := GitProcessHelper'Class (This).trackedFiles (rootAsString, pathspec);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end trackedFiles;

   procedure trackedFiles (This : in out GitProcessHelper; rootAsString : Unbounded_String; pathspec : Unbounded_String; suffix : Unbounded_String) is
      Java_Result : constant List_Access := GitProcessHelper'Class (This).trackedFiles (rootAsString, pathspec, suffix);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end trackedFiles;

   procedure isTracked (This : in out GitProcessHelper; file_Param : access AbFile_Package.AbFile'Class) is
      Java_Result : constant Boolean := GitProcessHelper'Class (This).isTracked (file_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isTracked;

begin
   null;
   instance := GitProcessHelper_Package.Create;

end org.allbinary.java.runtime.process.git.GitProcessHelper_Package;


