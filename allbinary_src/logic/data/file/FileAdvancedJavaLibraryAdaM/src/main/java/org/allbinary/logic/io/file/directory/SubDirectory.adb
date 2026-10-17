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


package body org.allbinary.logic.io.file.directory.SubDirectory_Package is

   procedure Initialize_Fields (This : in out SubDirectory'Class) is
   begin
      null;
      This.directory := Directory_Package.getInstance;
   end Initialize_Fields;


   function getInstance return SubDirectory_Access is
   begin
        return SubDirectory_Package.instance;
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

   function search (This : in out SubDirectory; fileFilter_Param : access FileFilter'Class; file_Param : access AbFile'Class) return BasicArrayList_Access is
      fileFilter : FileFilter_Access := FileFilter_Access (fileFilter_Param);
      file : AbFile_Access := AbFile_Access (file_Param);
   begin
        return This.directory.search (fileFilter, file, True);
   end search;

   function search (This : in out SubDirectory; file_Param : access AbFile'Class) return BasicArrayList_Access is
      file : AbFile_Access := AbFile_Access (file_Param);
   begin
        return This.directory.search (file, True);
   end search;

   function search (This : in out SubDirectory; searchValue : Unbounded_String; file_Param : access AbFile'Class) return BasicArrayList_Access is
      file : AbFile_Access := AbFile_Access (file_Param);
   begin
        return This.directory.search (searchValue, file, True);
   end search;

   function search (This : in out SubDirectory; level : Integer; file_Param : access AbFile'Class) return BasicArrayList_Access is
      file : AbFile_Access := AbFile_Access (file_Param);
   begin
        return This.directory.search (level, file, True);
   end search;

   function toString (files_Param : access BasicArrayList'Class) return Unbounded_String is
      files : BasicArrayList_Access := BasicArrayList_Access (files_Param);
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

   procedure search (This : in out SubDirectory; fileFilter_Param : access FileFilter'Class; file_Param : access AbFile'Class) is
      Java_Result : constant BasicArrayList_Access := SubDirectory'Class (This).search (fileFilter_Param, file_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end search;

   procedure search (This : in out SubDirectory; file_Param : access AbFile'Class) is
      Java_Result : constant BasicArrayList_Access := SubDirectory'Class (This).search (file_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end search;

   procedure search (This : in out SubDirectory; searchValue : Unbounded_String; file_Param : access AbFile'Class) is
      Java_Result : constant BasicArrayList_Access := SubDirectory'Class (This).search (searchValue, file_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end search;

   procedure search (This : in out SubDirectory; level : Integer; file_Param : access AbFile'Class) is
      Java_Result : constant BasicArrayList_Access := SubDirectory'Class (This).search (level, file_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end search;

   procedure toString (files_Param : access BasicArrayList'Class) is
      Java_Result : constant Unbounded_String := toString (files_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toString;

begin
   null;
   instance := SubDirectory_Package.Create;

end org.allbinary.logic.io.file.directory.SubDirectory_Package;


