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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.io.InputStream_Package; use java.io.InputStream_Package;
--  with java.io.OutputStream_Package; use java.io.OutputStream_Package;
with org.allbinary.globals.URLGLOBALS_Package; use org.allbinary.globals.URLGLOBALS_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package; use org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package;
with org.allbinary.logic.io.AbDataOutputStream_Package; use org.allbinary.logic.io.AbDataOutputStream_Package;
with org.allbinary.logic.io.AbFileInputStream_Package; use org.allbinary.logic.io.AbFileInputStream_Package;
with org.allbinary.logic.io.AbFileLocalInputStream_Package; use org.allbinary.logic.io.AbFileLocalInputStream_Package;
with org.allbinary.logic.io.AbIOSystem_Package; use org.allbinary.logic.io.AbIOSystem_Package;
with org.allbinary.logic.io.DataOutputStreamFactory_Package; use org.allbinary.logic.io.DataOutputStreamFactory_Package;
with org.allbinary.logic.io.FileStreamFactory_Package; use org.allbinary.logic.io.FileStreamFactory_Package;
with org.allbinary.logic.io.StreamUtil_Package; use org.allbinary.logic.io.StreamUtil_Package;
with org.allbinary.logic.io.file.directory.Directory_Package; use org.allbinary.logic.io.file.directory.Directory_Package;
with org.allbinary.logic.io.path.AbPath_Package; use org.allbinary.logic.io.path.AbPath_Package;
with org.allbinary.logic.io.path.AbPathData_Package; use org.allbinary.logic.io.path.AbPathData_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.logic.io.file.AbFile_Package; use org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.io.file.FilePathData_Package; use org.allbinary.logic.io.file.FilePathData_Package;
with org.allbinary.logic.io.file.FileWrapperUtil_Package; use org.allbinary.logic.io.file.FileWrapperUtil_Package;
with org.allbinary.logic.io.file.FileUtil2_Package; use org.allbinary.logic.io.file.FileUtil2_Package;

package org.allbinary.logic.io.file.FileUtil_Package is

   package URLGLOBALS_Package renames Standard.org.allbinary.globals.URLGLOBALS_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package PreLogUtil_Package renames Standard.org.allbinary.logic.communication.log.PreLogUtil_Package;
   package LogConfigTypeFactory_Package renames Standard.org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package;
   package AbDataOutputStream_Package renames Standard.org.allbinary.logic.io.AbDataOutputStream_Package;
   package AbFileInputStream_Package renames Standard.org.allbinary.logic.io.AbFileInputStream_Package;
   package AbFileLocalInputStream_Package renames Standard.org.allbinary.logic.io.AbFileLocalInputStream_Package;
   package AbIOSystem_Package renames Standard.org.allbinary.logic.io.AbIOSystem_Package;
   package DataOutputStreamFactory_Package renames Standard.org.allbinary.logic.io.DataOutputStreamFactory_Package;
   package FileStreamFactory_Package renames Standard.org.allbinary.logic.io.FileStreamFactory_Package;
   package StreamUtil_Package renames Standard.org.allbinary.logic.io.StreamUtil_Package;
   package Directory_Package renames Standard.org.allbinary.logic.io.file.directory.Directory_Package;
   package AbPath_Package renames Standard.org.allbinary.logic.io.path.AbPath_Package;
   package AbPathData_Package renames Standard.org.allbinary.logic.io.path.AbPathData_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;

   type FileUtil is tagged;
   type FileUtil_Access is access all FileUtil'Class;
   type FileUtil_Access_Array is array (Natural range <>) of FileUtil_Access;
   type FileUtil_Access_Array_Access is access all FileUtil_Access_Array;

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


