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

with AllBinary_Java;
limited with org.allbinary.logic.io.file.FileUtil_Package;
package org.allbinary.logic.io.file.FileUtil_Package_References is
   type FileUtil_Access is access all org.allbinary.logic.io.file.FileUtil_Package.FileUtil'Class;
   type FileUtil_Access_Array is array (Natural range <>) of FileUtil_Access;
   type FileUtil_Access_Array_Access is access all FileUtil_Access_Array;
   type FileUtil_Access_Array_Access_Array is array (Natural range <>) of FileUtil_Access_Array_Access;
   type FileUtil_Access_Array_Access_Array_Access is access all FileUtil_Access_Array_Access_Array;
   type FileUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : FileUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : FileUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new FileUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_FileUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return FileUtil_Access_Array_Access is (if Value /= null and then Value.all in FileUtil_Access_Array_Object'Class then FileUtil_Access_Array_Object'Class (Value.all).Value else null);
   type FileUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : FileUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : FileUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new FileUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_FileUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return FileUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in FileUtil_Access_Array_Access_Array_Object'Class then FileUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.io.file.FileUtil_Package_References;

with org.allbinary.logic.io.file.FileUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.io.InputStream_Package; use java.io.InputStream_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package;
with org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package_References;
limited with org.allbinary.logic.io.AbDataOutputStream_Package;
with org.allbinary.logic.io.AbDataOutputStream_Package_References;
limited with org.allbinary.logic.io.AbFileInputStream_Package;
with org.allbinary.logic.io.AbFileInputStream_Package_References;
limited with org.allbinary.logic.io.StreamUtil_Package;
with org.allbinary.logic.io.StreamUtil_Package_References;
limited with org.allbinary.logic.io.file.directory.Directory_Package;
with org.allbinary.logic.io.file.directory.Directory_Package_References;
limited with org.allbinary.logic.io.path.AbPath_Package;
with org.allbinary.logic.io.path.AbPath_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.io.file.AbFile_Package_References;

package org.allbinary.logic.io.file.FileUtil_Package is

   package InputStream_Package renames Standard.java.io.InputStream_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package LogConfigTypeFactory_Package renames Standard.org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package;
   package AbDataOutputStream_Package renames Standard.org.allbinary.logic.io.AbDataOutputStream_Package;
   package AbFileInputStream_Package renames Standard.org.allbinary.logic.io.AbFileInputStream_Package;
   package StreamUtil_Package renames Standard.org.allbinary.logic.io.StreamUtil_Package;
   package Directory_Package renames Standard.org.allbinary.logic.io.file.directory.Directory_Package;
   package AbPath_Package renames Standard.org.allbinary.logic.io.path.AbPath_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Reference_Types is
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype LogConfigTypeFactory_Access is org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package_References.LogConfigTypeFactory_Access;
   use type LogConfigTypeFactory_Access;
   subtype LogConfigTypeFactory_Access_Array is org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package_References.LogConfigTypeFactory_Access_Array;
   use type LogConfigTypeFactory_Access_Array;
   subtype LogConfigTypeFactory_Access_Array_Access is org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package_References.LogConfigTypeFactory_Access_Array_Access;
   use type LogConfigTypeFactory_Access_Array_Access;
   subtype LogConfigTypeFactory_Access_Array_Access_Array is org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package_References.LogConfigTypeFactory_Access_Array_Access_Array;
   use type LogConfigTypeFactory_Access_Array_Access_Array;
   subtype LogConfigTypeFactory_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package_References.LogConfigTypeFactory_Access_Array_Access_Array_Access;
   use type LogConfigTypeFactory_Access_Array_Access_Array_Access;
   subtype AbDataOutputStream_Access is org.allbinary.logic.io.AbDataOutputStream_Package_References.AbDataOutputStream_Access;
   use type AbDataOutputStream_Access;
   subtype AbDataOutputStream_Access_Array is org.allbinary.logic.io.AbDataOutputStream_Package_References.AbDataOutputStream_Access_Array;
   use type AbDataOutputStream_Access_Array;
   subtype AbDataOutputStream_Access_Array_Access is org.allbinary.logic.io.AbDataOutputStream_Package_References.AbDataOutputStream_Access_Array_Access;
   use type AbDataOutputStream_Access_Array_Access;
   subtype AbDataOutputStream_Access_Array_Access_Array is org.allbinary.logic.io.AbDataOutputStream_Package_References.AbDataOutputStream_Access_Array_Access_Array;
   use type AbDataOutputStream_Access_Array_Access_Array;
   subtype AbDataOutputStream_Access_Array_Access_Array_Access is org.allbinary.logic.io.AbDataOutputStream_Package_References.AbDataOutputStream_Access_Array_Access_Array_Access;
   use type AbDataOutputStream_Access_Array_Access_Array_Access;
   subtype AbFileInputStream_Access is org.allbinary.logic.io.AbFileInputStream_Package_References.AbFileInputStream_Access;
   use type AbFileInputStream_Access;
   subtype AbFileInputStream_Access_Array is org.allbinary.logic.io.AbFileInputStream_Package_References.AbFileInputStream_Access_Array;
   use type AbFileInputStream_Access_Array;
   subtype AbFileInputStream_Access_Array_Access is org.allbinary.logic.io.AbFileInputStream_Package_References.AbFileInputStream_Access_Array_Access;
   use type AbFileInputStream_Access_Array_Access;
   subtype AbFileInputStream_Access_Array_Access_Array is org.allbinary.logic.io.AbFileInputStream_Package_References.AbFileInputStream_Access_Array_Access_Array;
   use type AbFileInputStream_Access_Array_Access_Array;
   subtype AbFileInputStream_Access_Array_Access_Array_Access is org.allbinary.logic.io.AbFileInputStream_Package_References.AbFileInputStream_Access_Array_Access_Array_Access;
   use type AbFileInputStream_Access_Array_Access_Array_Access;
   subtype StreamUtil_Access is org.allbinary.logic.io.StreamUtil_Package_References.StreamUtil_Access;
   use type StreamUtil_Access;
   subtype StreamUtil_Access_Array is org.allbinary.logic.io.StreamUtil_Package_References.StreamUtil_Access_Array;
   use type StreamUtil_Access_Array;
   subtype StreamUtil_Access_Array_Access is org.allbinary.logic.io.StreamUtil_Package_References.StreamUtil_Access_Array_Access;
   use type StreamUtil_Access_Array_Access;
   subtype StreamUtil_Access_Array_Access_Array is org.allbinary.logic.io.StreamUtil_Package_References.StreamUtil_Access_Array_Access_Array;
   use type StreamUtil_Access_Array_Access_Array;
   subtype StreamUtil_Access_Array_Access_Array_Access is org.allbinary.logic.io.StreamUtil_Package_References.StreamUtil_Access_Array_Access_Array_Access;
   use type StreamUtil_Access_Array_Access_Array_Access;
   subtype Directory_Access is org.allbinary.logic.io.file.directory.Directory_Package_References.Directory_Access;
   use type Directory_Access;
   subtype Directory_Access_Array is org.allbinary.logic.io.file.directory.Directory_Package_References.Directory_Access_Array;
   use type Directory_Access_Array;
   subtype Directory_Access_Array_Access is org.allbinary.logic.io.file.directory.Directory_Package_References.Directory_Access_Array_Access;
   use type Directory_Access_Array_Access;
   subtype Directory_Access_Array_Access_Array is org.allbinary.logic.io.file.directory.Directory_Package_References.Directory_Access_Array_Access_Array;
   use type Directory_Access_Array_Access_Array;
   subtype Directory_Access_Array_Access_Array_Access is org.allbinary.logic.io.file.directory.Directory_Package_References.Directory_Access_Array_Access_Array_Access;
   use type Directory_Access_Array_Access_Array_Access;
   subtype AbPath_Access is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access;
   use type AbPath_Access;
   subtype AbPath_Access_Array is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array;
   use type AbPath_Access_Array;
   subtype AbPath_Access_Array_Access is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array_Access;
   use type AbPath_Access_Array_Access;
   subtype AbPath_Access_Array_Access_Array is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array_Access_Array;
   use type AbPath_Access_Array_Access_Array;
   subtype AbPath_Access_Array_Access_Array_Access is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array_Access_Array_Access;
   use type AbPath_Access_Array_Access_Array_Access;
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   subtype AbFile_Access is org.allbinary.logic.io.file.AbFile_Package_References.AbFile_Access;
   use type AbFile_Access;
   subtype AbFile_Access_Array is org.allbinary.logic.io.file.AbFile_Package_References.AbFile_Access_Array;
   use type AbFile_Access_Array;
   subtype AbFile_Access_Array_Access is org.allbinary.logic.io.file.AbFile_Package_References.AbFile_Access_Array_Access;
   use type AbFile_Access_Array_Access;
   subtype AbFile_Access_Array_Access_Array is org.allbinary.logic.io.file.AbFile_Package_References.AbFile_Access_Array_Access_Array;
   use type AbFile_Access_Array_Access_Array;
   subtype AbFile_Access_Array_Access_Array_Access is org.allbinary.logic.io.file.AbFile_Package_References.AbFile_Access_Array_Access_Array_Access;
   use type AbFile_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype FileUtil_Access is org.allbinary.logic.io.file.FileUtil_Package_References.FileUtil_Access;
   function "=" (Left, Right : FileUtil_Access) return Boolean renames org.allbinary.logic.io.file.FileUtil_Package_References."=";
   subtype FileUtil_Access_Array is org.allbinary.logic.io.file.FileUtil_Package_References.FileUtil_Access_Array;
   function "=" (Left, Right : FileUtil_Access_Array) return Boolean renames org.allbinary.logic.io.file.FileUtil_Package_References."=";
   subtype FileUtil_Access_Array_Access is org.allbinary.logic.io.file.FileUtil_Package_References.FileUtil_Access_Array_Access;
   function "=" (Left, Right : FileUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.io.file.FileUtil_Package_References."=";
   function Java_Box (Value : FileUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.io.file.FileUtil_Package_References.Java_Box;
   function Java_Unbox_FileUtil_Access_Array (Value : access Java_Object'Class) return FileUtil_Access_Array_Access renames org.allbinary.logic.io.file.FileUtil_Package_References.Java_Unbox_FileUtil_Access_Array;
   subtype FileUtil_Access_Array_Access_Array is org.allbinary.logic.io.file.FileUtil_Package_References.FileUtil_Access_Array_Access_Array;
   function "=" (Left, Right : FileUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.io.file.FileUtil_Package_References."=";
   subtype FileUtil_Access_Array_Access_Array_Access is org.allbinary.logic.io.file.FileUtil_Package_References.FileUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : FileUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.io.file.FileUtil_Package_References."=";
   function Java_Box (Value : FileUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.io.file.FileUtil_Package_References.Java_Box;
   function Java_Unbox_FileUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return FileUtil_Access_Array_Access_Array_Access renames org.allbinary.logic.io.file.FileUtil_Package_References.Java_Unbox_FileUtil_Access_Array_Access_Array;

   type FileUtil is new Java_Object with record
      logUtil : LogUtil_Access;
      directory : Directory_Access;
      logConfigTypeFactory : LogConfigTypeFactory_Access;
      commonStrings : CommonStrings_Access;
      streamUtil : StreamUtil_Access;
      WRITE_LABEL : Unbounded_String;
      DATA_LABEL : Unbounded_String;
      WRITE_METHOD : Unbounded_String;
   end record;
   instance : FileUtil_Access;

   procedure Initialize (This : in out FileUtil'Class);
   function Create return FileUtil_Access;
   function getInstance return FileUtil_Access;
   procedure write (This : in out FileUtil; inputStream_Param : access InputStream_Package.InputStream'Class; file_Param : access AbFile_Package.AbFile'Class);
   procedure write (This : in out FileUtil; inputStream_Param : access InputStream_Package.InputStream'Class; dataOutputStream_Param : access AbDataOutputStream_Package.AbDataOutputStream'Class);
   procedure write (This : in out FileUtil; inputStream_Param : access InputStream_Package.InputStream'Class; dataOutputStream_Param : access AbDataOutputStream_Package.AbDataOutputStream'Class; buffer : Short_Short_Integer_Array_Access);
   procedure copy (This : in out FileUtil; dataInputStream_Param : access AbFileInputStream_Package.AbFileInputStream'Class; dataOutputStream_Param : access AbDataOutputStream_Package.AbDataOutputStream'Class);
   function fixPath (This : in out FileUtil; file_Param : access AbFile_Package.AbFile'Class; path_Param : access AbPath_Package.AbPath'Class; realPath_Param : access AbPath_Package.AbPath'Class; cloud : Unbounded_String) return AbPath_Access;
   procedure fixPath (This : in out FileUtil; file_Param : access AbFile_Package.AbFile'Class; path_Param : access AbPath_Package.AbPath'Class; realPath_Param : access AbPath_Package.AbPath'Class; cloud : Unbounded_String);
   procedure copyToCloud (This : in out FileUtil; file_Param : access AbFile_Package.AbFile'Class; path_Param : access AbPath_Package.AbPath'Class; realPath_Param : access AbPath_Package.AbPath'Class; cloud : Unbounded_String);
   procedure copyToCloud (This : in out FileUtil; file_Param : access AbFile_Package.AbFile'Class; path_Param : access AbPath_Package.AbPath'Class; realPath_Param : access AbPath_Package.AbPath'Class; cloud : Unbounded_String; overwriteNewer : Boolean; overwriteAll : Boolean);
   procedure copyToCloud (This : in out FileUtil; file_Param : access AbFile_Package.AbFile'Class; outFile_Param : access AbFile_Package.AbFile'Class);
   procedure copyToCloud (This : in out FileUtil; file_Param : access AbFile_Package.AbFile'Class; outFile_Param : access AbFile_Package.AbFile'Class; overwriteNewer : Boolean; overwriteAll : Boolean);
   function copyPrepare (This : in out FileUtil; fromFile_Param : access AbFile_Package.AbFile'Class; toFile_Param : access AbFile_Package.AbFile'Class; overwriteNewer : Boolean; overwriteAll : Boolean) return Boolean;
   procedure copyPrepare (This : in out FileUtil; fromFile_Param : access AbFile_Package.AbFile'Class; toFile_Param : access AbFile_Package.AbFile'Class; overwriteNewer : Boolean; overwriteAll : Boolean);
   procedure copyFile (This : in out FileUtil; fromFile_Param : access AbFile_Package.AbFile'Class; toFile_Param : access AbFile_Package.AbFile'Class);
   procedure copyFile (This : in out FileUtil; fromFile_Param : access AbFile_Package.AbFile'Class; toFile_Param : access AbFile_Package.AbFile'Class; overwriteNewer : Boolean; overwriteAll : Boolean);
   function getNewDirectory (fromFile_Param : access AbFile_Package.AbFile'Class) return Unbounded_String;
   procedure getNewDirectory (fromFile_Param : access AbFile_Package.AbFile'Class);
   procedure copyDirectoryPortion (This : in out FileUtil; fromDirectoryAbPath_Param : access AbPath_Package.AbPath'Class; toDirectoryAbPath_Param : access AbPath_Package.AbPath'Class; overwriteNewer : Boolean; overwriteAll : Boolean; current : Integer; total : Integer);
   procedure copyDirectory (This : in out FileUtil; fromFile_Param : access AbFile_Package.AbFile'Class; to_Param : access AbFile_Package.AbFile'Class);
   function copy (This : in out FileUtil; fromAbPath_Param : access AbPath_Package.AbPath'Class; to_Param : access AbPath_Package.AbPath'Class) return Boolean;
   procedure copy (This : in out FileUtil; fromAbPath_Param : access AbPath_Package.AbPath'Class; to_Param : access AbPath_Package.AbPath'Class);
   function shouldSkip (This : in out FileUtil; file_Param : access AbFile_Package.AbFile'Class; skipFiles : Unbounded_String_Array_Access) return Boolean;
   procedure shouldSkip (This : in out FileUtil; file_Param : access AbFile_Package.AbFile'Class; skipFiles : Unbounded_String_Array_Access);
   procedure write (This : in out FileUtil; filePath : Unbounded_String; string_Id : Unbounded_String);
   function loadFileAsList (This : in out FileUtil; file_Param : access AbFile_Package.AbFile'Class; max : Integer; byteArray1 : Short_Short_Integer_Array_Access) return BasicArrayList_Access;
   procedure loadFileAsList (This : in out FileUtil; file_Param : access AbFile_Package.AbFile'Class; max : Integer; byteArray1 : Short_Short_Integer_Array_Access);

end org.allbinary.logic.io.file.FileUtil_Package;


