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


with java.io.File_Package; use java.io.File_Package;
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.logic.io.file.AbFile_Package; use org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.io.file.AbFile_Package_References;
with org.allbinary.logic.io.file.AbFile_Package;

package body org.allbinary.logic.io.file.FileWrapperUtil_Package is

   package PreLogUtil_Package renames Standard.org.allbinary.logic.communication.log.PreLogUtil_Package;
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
      FileWrapperUtil_Package.Initialize (This.all);
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
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            PreLogUtil_Package.putSE (To_Unbounded_String ("Exception Wrapping Files"), To_Unbounded_String ("FileWrapperUtil"), To_Unbounded_String ("wrapFiles"), e);
            return new AbFile_Access_Array'(0 .. (0) - 1 => null);
                end;
        end;
   end wrapFiles;

   function wrapFile (file_Param : access File_Package.File'Class) return AbFile_Access is
      file : constant File_Access := File_Access (file_Param);
   begin
        begin
            return AbFile_Package.Create (file);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            PreLogUtil_Package.putSE (To_Unbounded_String ("Exception Wrapping File"), To_Unbounded_String ("FileWrapperUtil"), To_Unbounded_String ("wrapFile"), e);
            return AbFile_Access (AbFile_Package.NULL_FILE);
                end;
        end;
   end wrapFile;

   procedure wrapFiles (files : Java_Object_Access_Array_Access) is
      Java_Result : constant AbFile_Access_Array_Access := wrapFiles (files => files);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end wrapFiles;

   procedure wrapFile (file_Param : access File_Package.File'Class) is
      Java_Result : constant AbFile_Access := wrapFile (file_Param => file_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end wrapFile;

end org.allbinary.logic.io.file.FileWrapperUtil_Package;


