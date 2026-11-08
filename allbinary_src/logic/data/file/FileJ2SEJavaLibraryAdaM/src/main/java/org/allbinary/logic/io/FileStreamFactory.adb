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


with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.io.file.AbFile_Package; use org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.io.path.AbPath_Package; use org.allbinary.logic.io.path.AbPath_Package;
with org.allbinary.logic.io.AbFileInputStream_Package; use org.allbinary.logic.io.AbFileInputStream_Package;
with org.allbinary.logic.io.AbFileInputStream_Package_References;
with org.allbinary.logic.io.AbFileOutputStream_Package; use org.allbinary.logic.io.AbFileOutputStream_Package;
with org.allbinary.logic.io.AbFileOutputStream_Package_References;
with org.allbinary.logic.io.AbFileInputStream_Package;
with org.allbinary.logic.io.file.AbFileInterface_Package;
with org.allbinary.logic.io.AbFileOutputStream_Package;
with org.allbinary.logic.io.path.AbFilePath_Package;
with org.allbinary.logic.io.path.AbPathData_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.io.file.FilePathData_Package;
with org.allbinary.logic.io.path.PathUtil_Package;

package body org.allbinary.logic.io.FileStreamFactory_Package is

   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   package AbFile_Package renames Standard.org.allbinary.logic.io.file.AbFile_Package;
   package AbPath_Package renames Standard.org.allbinary.logic.io.path.AbPath_Package;
   subtype AbFileInputStream_Access is org.allbinary.logic.io.AbFileInputStream_Package_References.AbFileInputStream_Access;
   function "=" (Left, Right : AbFileInputStream_Access) return Boolean renames org.allbinary.logic.io.AbFileInputStream_Package_References."=";
   subtype AbFileInputStream_Access_Array is org.allbinary.logic.io.AbFileInputStream_Package_References.AbFileInputStream_Access_Array;
   function "=" (Left, Right : AbFileInputStream_Access_Array) return Boolean renames org.allbinary.logic.io.AbFileInputStream_Package_References."=";
   subtype AbFileInputStream_Access_Array_Access is org.allbinary.logic.io.AbFileInputStream_Package_References.AbFileInputStream_Access_Array_Access;
   function "=" (Left, Right : AbFileInputStream_Access_Array_Access) return Boolean renames org.allbinary.logic.io.AbFileInputStream_Package_References."=";
   subtype AbFileInputStream_Access_Array_Access_Array is org.allbinary.logic.io.AbFileInputStream_Package_References.AbFileInputStream_Access_Array_Access_Array;
   function "=" (Left, Right : AbFileInputStream_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.io.AbFileInputStream_Package_References."=";
   subtype AbFileInputStream_Access_Array_Access_Array_Access is org.allbinary.logic.io.AbFileInputStream_Package_References.AbFileInputStream_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AbFileInputStream_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.io.AbFileInputStream_Package_References."=";
   subtype AbFileOutputStream_Access is org.allbinary.logic.io.AbFileOutputStream_Package_References.AbFileOutputStream_Access;
   function "=" (Left, Right : AbFileOutputStream_Access) return Boolean renames org.allbinary.logic.io.AbFileOutputStream_Package_References."=";
   subtype AbFileOutputStream_Access_Array is org.allbinary.logic.io.AbFileOutputStream_Package_References.AbFileOutputStream_Access_Array;
   function "=" (Left, Right : AbFileOutputStream_Access_Array) return Boolean renames org.allbinary.logic.io.AbFileOutputStream_Package_References."=";
   subtype AbFileOutputStream_Access_Array_Access is org.allbinary.logic.io.AbFileOutputStream_Package_References.AbFileOutputStream_Access_Array_Access;
   function "=" (Left, Right : AbFileOutputStream_Access_Array_Access) return Boolean renames org.allbinary.logic.io.AbFileOutputStream_Package_References."=";
   subtype AbFileOutputStream_Access_Array_Access_Array is org.allbinary.logic.io.AbFileOutputStream_Package_References.AbFileOutputStream_Access_Array_Access_Array;
   function "=" (Left, Right : AbFileOutputStream_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.io.AbFileOutputStream_Package_References."=";
   subtype AbFileOutputStream_Access_Array_Access_Array_Access is org.allbinary.logic.io.AbFileOutputStream_Package_References.AbFileOutputStream_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AbFileOutputStream_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.io.AbFileOutputStream_Package_References."=";
   procedure Initialize_Fields (This : in out FileStreamFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   function getInstance return FileStreamFactory_Access is
   begin
        if (FileStreamFactory_Package.SINGLETON) = (NullUtil_Package.getInstance.NULL_OBJECT) then
            FileStreamFactory_Package.SINGLETON := Java_Object_Access (FileStreamFactory_Package.Create);
        end if;
        return FileStreamFactory_Access (FileStreamFactory_Package.SINGLETON);
   end getInstance;

   procedure Initialize (This : in out FileStreamFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return FileStreamFactory_Access is
      This : constant FileStreamFactory_Access := new FileStreamFactory;
   begin
      FileStreamFactory_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function getFileInputStreamInstance (This : in out FileStreamFactory; path : Unbounded_String; fileName : Unbounded_String) return AbFileInputStream_Access is
      FILEABPATH : AbPath_Access;
      file : AbFile_Access;
   begin
        FILEABPATH := AbPath_Package.Create (path, fileName);
        file := AbFile_Package.createAbFileFromAbPath (FILEABPATH);
        return AbFileInputStream_Package.Create (file);
   end getFileInputStreamInstance;

   --  throws Exception
   function getFileOutputStreamInstance (This : in out FileStreamFactory; path : Unbounded_String; fileName : Unbounded_String) return AbFileOutputStream_Access is
      FILEABPATH : AbPath_Access;
      file : AbFile_Access;
   begin
        FILEABPATH := AbPath_Package.Create (path, fileName);
        file := AbFile_Package.createAbFileFromAbPath (FILEABPATH);
        if file.exists then
            declare Java_Result renames file.delete; pragma Unreferenced (Java_Result); begin null; end;
            declare Java_Result renames file.createNewFile; pragma Unreferenced (Java_Result); begin null; end;
        end if;
        return AbFileOutputStream_Package.createFromAbFile (file);
   end getFileOutputStreamInstance;

   --  throws Exception
   procedure delete (This : in out FileStreamFactory; path : Unbounded_String; fileName : Unbounded_String) is
      FILEABPATH : AbPath_Access;
      file : AbFile_Access;
   begin
        FILEABPATH := AbPath_Package.Create (path, fileName);
        file := AbFile_Package.createAbFileFromAbPath (FILEABPATH);
        declare Java_Result renames file.delete; pragma Unreferenced (Java_Result); begin null; end;
   end delete;

   procedure getFileInputStreamInstance (This : in out FileStreamFactory; path : Unbounded_String; fileName : Unbounded_String) is
      Java_Result : constant AbFileInputStream_Access := FileStreamFactory'Class (This).getFileInputStreamInstance (path => path, fileName => fileName);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getFileInputStreamInstance;

   procedure getFileOutputStreamInstance (This : in out FileStreamFactory; path : Unbounded_String; fileName : Unbounded_String) is
      Java_Result : constant AbFileOutputStream_Access := FileStreamFactory'Class (This).getFileOutputStreamInstance (path => path, fileName => fileName);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getFileOutputStreamInstance;

begin
   null;
   SINGLETON := NullUtil_Package.getInstance.NULL_OBJECT;

end org.allbinary.logic.io.FileStreamFactory_Package;


