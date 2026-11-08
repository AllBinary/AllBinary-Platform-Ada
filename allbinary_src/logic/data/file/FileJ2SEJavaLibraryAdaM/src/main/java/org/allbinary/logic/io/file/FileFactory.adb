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
with org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.io.file.AbFileInterface_Package;
with org.allbinary.logic.io.path.AbFilePath_Package;
with org.allbinary.logic.io.path.AbPath_Package;
with org.allbinary.logic.io.path.AbPathData_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.io.file.FilePathData_Package;
with org.allbinary.logic.io.path.PathUtil_Package;

package body org.allbinary.logic.io.file.FileFactory_Package is

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
   procedure Initialize_Fields (This : in out FileFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out FileFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return FileFactory_Access is
      This : constant FileFactory_Access := new FileFactory;
   begin
      FileFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return FileFactory_Access is
   begin
        return FileFactory_Access (FileFactory_Package.instance);
   end getInstance;

   --  throws Exception
   function getInstance (This : in out FileFactory; filePath : Unbounded_String) return AbFile_Access is
   begin
        return AbFile_Package.createAbFileFromRawPath (filePath);
   end getInstance;

   --  throws Exception
   function getInstance (This : in out FileFactory; file_Param : access AbFile_Package.AbFile'Class; childFilePath : Unbounded_String) return AbFile_Access is
      file : constant AbFile_Access := AbFile_Access (file_Param);
   begin
        return AbFile_Package.createAbFileWithChild (file, childFilePath);
   end getInstance;

   --  throws Exception
   function isFile (This : in out FileFactory; path : Unbounded_String) return Boolean is
      file : AbFile_Access;
   begin
        file := AbFile_Package.createAbFile (path);
        if file.exists then
            return True;
        else
            return False;
        end if;
   end isFile;

   procedure getInstance (This : in out FileFactory; filePath : Unbounded_String) is
      Java_Result : constant AbFile_Access := FileFactory'Class (This).getInstance (filePath => filePath);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getInstance (This : in out FileFactory; file_Param : access AbFile_Package.AbFile'Class; childFilePath : Unbounded_String) is
      Java_Result : constant AbFile_Access := FileFactory'Class (This).getInstance (file_Param => file_Param, childFilePath => childFilePath);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure isFile (This : in out FileFactory; path : Unbounded_String) is
      Java_Result : constant Boolean := FileFactory'Class (This).isFile (path => path);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isFile;

begin
   null;
   instance := FileFactory_Package.Create;

end org.allbinary.logic.io.file.FileFactory_Package;


