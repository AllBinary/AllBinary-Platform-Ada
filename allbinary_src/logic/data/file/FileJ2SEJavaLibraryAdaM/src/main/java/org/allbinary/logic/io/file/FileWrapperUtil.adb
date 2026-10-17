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


package body org.allbinary.logic.io.file.FileWrapperUtil_Package is

   procedure Initialize_Fields (This : in out FileWrapperUtil'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out FileWrapperUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return FileWrapperUtil_Access is
      This : constant FileWrapperUtil_Access := new FileWrapperUtil;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function wrapFiles (files : Java_Object_Access_Array_Access) return AbFile_Access_Array_Access is
      abFileArray : AbFile_Access_Array_Access;
      index : Integer;
   begin
        begin
            abFileArray := new AbFile_Access_Array'(0 .. (files'Length) - 1 => null);
            for index in reverse 0 .. (files'Length) - (1) loop
                abFileArray (index) := AbFile_Package.Create (File_Access (files (index)));
            end loop;
            return abFileArray;
        exception
            when e : others =>
            PreLogUtil_Package.putSE (To_Unbounded_String ("Exception Wrapping Files"), To_Unbounded_String ("FileWrapperUtil"), To_Unbounded_String ("wrapFiles"), e);
            return new AbFile_Access_Array'(0 .. (0) - 1 => null);
        end;
   end wrapFiles;

   function wrapFile (file : File_Access) return AbFile_Access is
   begin
        begin
            return AbFile_Package.Create (file);
        exception
            when e : others =>
            PreLogUtil_Package.putSE (To_Unbounded_String ("Exception Wrapping File"), To_Unbounded_String ("FileWrapperUtil"), To_Unbounded_String ("wrapFile"), e);
            return AbFile_Package.NULL_FILE;
        end;
   end wrapFile;

   procedure wrapFiles (files : Java_Object_Access_Array_Access) is
      Java_Result : constant AbFile_Access_Array_Access := wrapFiles (files);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end wrapFiles;

   procedure wrapFile (file : File_Access) is
      Java_Result : constant AbFile_Access := wrapFile (file);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end wrapFile;

end org.allbinary.logic.io.file.FileWrapperUtil_Package;


