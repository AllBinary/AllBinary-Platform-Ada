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
with java.io.FileInputStream_Package; use java.io.FileInputStream_Package;
with org.allbinary.logic.io.file.AbFile_Package; use org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.io.file.AbFile_Package_References;
with org.allbinary.logic.io.file.AbFileNativeUtil_Package; use org.allbinary.logic.io.file.AbFileNativeUtil_Package;
with org.allbinary.logic.io.file.AbFileInterface_Package;
with org.allbinary.logic.io.path.AbFilePath_Package;
with org.allbinary.logic.io.path.AbPath_Package;
with org.allbinary.logic.io.path.AbPathData_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.io.file.FilePathData_Package;
with org.allbinary.logic.io.path.PathUtil_Package;

package body org.allbinary.logic.io.AbFileInputStream_Package is

   package AbFileNativeUtil_Package renames Standard.org.allbinary.logic.io.file.AbFileNativeUtil_Package;
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
   procedure Initialize_Fields (This : in out AbFileInputStream'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out AbFileInputStream'Class; name : Unbounded_String) is
   begin
        FileInputStream_Package.Initialize (This, name);
   end Initialize;

   function Create (name : Unbounded_String) return AbFileInputStream_Access is
      This : constant AbFileInputStream_Access := new AbFileInputStream;
   begin
      AbFileInputStream_Package.Initialize (This.all, name);
      return This;
   end Create;

   procedure Initialize (This : in out AbFileInputStream'Class; file_Param : access AbFile_Package.AbFile'Class) is
      file : constant AbFile_Access := AbFile_Access (file_Param);
   begin
        FileInputStream_Package.Initialize (This, AbFileNativeUtil_Package.get (file));
   end Initialize;

   function Create (file_Param : access AbFile_Package.AbFile'Class) return AbFileInputStream_Access is
      This : constant AbFileInputStream_Access := new AbFileInputStream;
   begin
      AbFileInputStream_Package.Initialize (This.all, file_Param);
      return This;
   end Create;

   procedure Initialize (This : in out AbFileInputStream'Class; file_Param : access File_Package.File'Class) is
      file : constant File_Access := File_Access (file_Param);
   begin
        FileInputStream_Package.Initialize (This, file);
   end Initialize;

   function Create (file_Param : access File_Package.File'Class) return AbFileInputStream_Access is
      This : constant AbFileInputStream_Access := new AbFileInputStream;
   begin
      AbFileInputStream_Package.Initialize (This.all, file_Param);
      return This;
   end Create;

end org.allbinary.logic.io.AbFileInputStream_Package;


