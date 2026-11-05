--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
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


with org.allbinary.logic.io.file.AbFile_Package; use org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.io.file.AbFile_Package_References;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;

package body org.allbinary.logic.io.file.visitor.ExcludeFileExtensionsBooleanFileVisitor_Package is

   subtype AbFile_Access is org.allbinary.logic.io.file.AbFile_Package_References.AbFile_Access;
   function "=" (Left, Right : AbFile_Access) return Boolean renames org.allbinary.logic.io.file.AbFile_Package_References."=";
   subtype AbFile_Access_Array is org.allbinary.logic.io.file.AbFile_Package_References.AbFile_Access_Array;
   function "=" (Left, Right : AbFile_Access_Array) return Boolean renames org.allbinary.logic.io.file.AbFile_Package_References."=";
   subtype AbFile_Access_Array_Access is org.allbinary.logic.io.file.AbFile_Package_References.AbFile_Access_Array_Access;
   function "=" (Left, Right : AbFile_Access_Array_Access) return Boolean renames org.allbinary.logic.io.file.AbFile_Package_References."=";
   subtype AbFile_Access_Array_Access_Array is org.allbinary.logic.io.file.AbFile_Package_References.AbFile_Access_Array_Access_Array;
   function "=" (Left, Right : AbFile_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.io.file.AbFile_Package_References."=";
   subtype AbFile_Access_Array_Access_Array_Access is org.allbinary.logic.io.file.AbFile_Package_References.AbFile_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AbFile_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.io.file.AbFile_Package_References."=";
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   function "=" (Left, Right : BasicArrayList_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   procedure Initialize_Fields (This : in out ExcludeFileExtensionsBooleanFileVisitor'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out ExcludeFileExtensionsBooleanFileVisitor'Class; filterStringBasicArrayList_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      filterStringBasicArrayList : constant BasicArrayList_Access := BasicArrayList_Access (filterStringBasicArrayList_Param);
   begin
        BooleanFileVisitor_Package.Initialize (This, filterStringBasicArrayList);
   end Initialize;

   function Create (filterStringBasicArrayList_Param : access BasicArrayList_Package.BasicArrayList'Class) return ExcludeFileExtensionsBooleanFileVisitor_Access is
      This : constant ExcludeFileExtensionsBooleanFileVisitor_Access := new ExcludeFileExtensionsBooleanFileVisitor;
   begin
      ExcludeFileExtensionsBooleanFileVisitor_Package.Initialize (This.all, filterStringBasicArrayList_Param);
      return This;
   end Create;

   function visit (This : in out ExcludeFileExtensionsBooleanFileVisitor; file_Param : access AbFile_Package.AbFile'Class) return Boolean is
      file : constant AbFile_Access := AbFile_Access (file_Param);
   begin
        if (ExcludeFileExtensionsBooleanFileVisitor'Class (This).getFilterStringBasicArrayList.size) = (0) then
            return True;
        end if;
        return BooleanFileVisitor_Package.BooleanFileVisitor (This).visit (file);
   end visit;

   function visit (This : in out ExcludeFileExtensionsBooleanFileVisitor; file_Param : access AbFile_Package.AbFile'Class; fileNameString : Unbounded_String) return Boolean is
      file : constant AbFile_Access := AbFile_Access (file_Param);
      fileNameAndExtension : Unbounded_String;
      startIndex : Integer;
      fileName : Unbounded_String;
   begin
        fileNameAndExtension := file.getPath;
        if (Ada.Strings.Unbounded.Length (fileNameAndExtension)) > (Ada.Strings.Unbounded.Length (fileNameString)) then
            startIndex := (Ada.Strings.Unbounded.Length (fileNameAndExtension)) - (Ada.Strings.Unbounded.Length (fileNameString));
            fileName := Unbounded_Slice (fileNameAndExtension, (startIndex) + 1, Ada.Strings.Unbounded.Length (fileNameAndExtension));
            if (Java_Compare_To (fileName, fileNameString)) = (0) then
                return False;
            end if;
        end if;
        return True;
   end visit;

   procedure visit (This : in out ExcludeFileExtensionsBooleanFileVisitor; file_Param : access AbFile_Package.AbFile'Class) is
      Java_Result : constant Boolean := ExcludeFileExtensionsBooleanFileVisitor'Class (This).visit (file_Param => file_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end visit;

   procedure visit (This : in out ExcludeFileExtensionsBooleanFileVisitor; file_Param : access AbFile_Package.AbFile'Class; fileNameString : Unbounded_String) is
      Java_Result : constant Boolean := ExcludeFileExtensionsBooleanFileVisitor'Class (This).visit (file_Param => file_Param, fileNameString => fileNameString);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end visit;

end org.allbinary.logic.io.file.visitor.ExcludeFileExtensionsBooleanFileVisitor_Package;


