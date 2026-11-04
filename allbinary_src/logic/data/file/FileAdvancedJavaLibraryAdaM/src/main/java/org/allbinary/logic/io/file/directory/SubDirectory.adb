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
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.logic.io.file.directory.Directory_Package; use org.allbinary.logic.io.file.directory.Directory_Package;
with org.allbinary.logic.io.file.directory.Directory_Package_References;
with org.allbinary.logic.io.file.directory.Directory_Package;

package body org.allbinary.logic.io.file.directory.SubDirectory_Package is

   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
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
   subtype Directory_Access is org.allbinary.logic.io.file.directory.Directory_Package_References.Directory_Access;
   function "=" (Left, Right : Directory_Access) return Boolean renames org.allbinary.logic.io.file.directory.Directory_Package_References."=";
   subtype Directory_Access_Array is org.allbinary.logic.io.file.directory.Directory_Package_References.Directory_Access_Array;
   function "=" (Left, Right : Directory_Access_Array) return Boolean renames org.allbinary.logic.io.file.directory.Directory_Package_References."=";
   subtype Directory_Access_Array_Access is org.allbinary.logic.io.file.directory.Directory_Package_References.Directory_Access_Array_Access;
   function "=" (Left, Right : Directory_Access_Array_Access) return Boolean renames org.allbinary.logic.io.file.directory.Directory_Package_References."=";
   subtype Directory_Access_Array_Access_Array is org.allbinary.logic.io.file.directory.Directory_Package_References.Directory_Access_Array_Access_Array;
   function "=" (Left, Right : Directory_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.io.file.directory.Directory_Package_References."=";
   subtype Directory_Access_Array_Access_Array_Access is org.allbinary.logic.io.file.directory.Directory_Package_References.Directory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Directory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.io.file.directory.Directory_Package_References."=";
   procedure Initialize_Fields (This : in out SubDirectory'Class) is
   begin
      null;
      This.directory := Directory_Package.getInstance;
   end Initialize_Fields;


   function getInstance return SubDirectory_Access is
   begin
        return SubDirectory_Access (SubDirectory_Package.instance);
   end getInstance;

   procedure Initialize (This : in out SubDirectory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return SubDirectory_Access is
      This : constant SubDirectory_Access := new SubDirectory;
   begin
      SubDirectory_Package.Initialize (This.all);
      return This;
   end Create;

   function search (This : in out SubDirectory; fileFilter_Param : access FileFilter_Package.FileFilter'Class; file_Param : access AbFile_Package.AbFile'Class) return BasicArrayList_Access is
      fileFilter : constant FileFilter_Access := FileFilter_Access (fileFilter_Param);
      file : constant AbFile_Access := AbFile_Access (file_Param);
   begin
        return This.directory.search (fileFilter, file, True);
   end search;

   function search (This : in out SubDirectory; file_Param : access AbFile_Package.AbFile'Class) return BasicArrayList_Access is
      file : constant AbFile_Access := AbFile_Access (file_Param);
   begin
        return This.directory.search (file, True);
   end search;

   function search (This : in out SubDirectory; searchValue : Unbounded_String; file_Param : access AbFile_Package.AbFile'Class) return BasicArrayList_Access is
      file : constant AbFile_Access := AbFile_Access (file_Param);
   begin
        return This.directory.search (searchValue, file, True);
   end search;

   function search (This : in out SubDirectory; level : Integer; file_Param : access AbFile_Package.AbFile'Class) return BasicArrayList_Access is
      file : constant AbFile_Access := AbFile_Access (file_Param);
   begin
        return This.directory.search (level, file, True);
   end search;

   function toString (files_Param : access BasicArrayList_Package.BasicArrayList'Class) return Unbounded_String is
      files : constant BasicArrayList_Access := BasicArrayList_Access (files_Param);
      stringBuffer : StringMaker_Access;
      NEW_LINE : Unbounded_String;
      size : Integer;
      file : AbFile_Access;
      index : Integer;
   begin
        stringBuffer := StringMaker_Package.Create;
        NEW_LINE := CommonSeps_Package.getInstance.NEW_LINE;
        size := files.size;
        for index in 0 .. (size) - 1 loop
            file := AbFile_Access (files.get (index));
            stringBuffer.append (file.getPath);
            stringBuffer.append (NEW_LINE);
        end loop;
        return stringBuffer.toString;
   end toString;

   procedure search (This : in out SubDirectory; fileFilter_Param : access FileFilter_Package.FileFilter'Class; file_Param : access AbFile_Package.AbFile'Class) is
      Java_Result : constant BasicArrayList_Access := SubDirectory'Class (This).search (fileFilter_Param => fileFilter_Param, file_Param => file_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end search;

   procedure search (This : in out SubDirectory; file_Param : access AbFile_Package.AbFile'Class) is
      Java_Result : constant BasicArrayList_Access := SubDirectory'Class (This).search (file_Param => file_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end search;

   procedure search (This : in out SubDirectory; searchValue : Unbounded_String; file_Param : access AbFile_Package.AbFile'Class) is
      Java_Result : constant BasicArrayList_Access := SubDirectory'Class (This).search (searchValue => searchValue, file_Param => file_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end search;

   procedure search (This : in out SubDirectory; level : Integer; file_Param : access AbFile_Package.AbFile'Class) is
      Java_Result : constant BasicArrayList_Access := SubDirectory'Class (This).search (level => level, file_Param => file_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end search;

   procedure toString (files_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      Java_Result : constant Unbounded_String := toString (files_Param => files_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toString;

begin
   null;
   instance := SubDirectory_Package.Create;

end org.allbinary.logic.io.file.directory.SubDirectory_Package;


