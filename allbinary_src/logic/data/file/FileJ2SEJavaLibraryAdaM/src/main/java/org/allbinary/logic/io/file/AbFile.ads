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
--  with java.io.File_Package; use java.io.File_Package;
--  with java.io.FileFilter_Package; use java.io.FileFilter_Package;
--  with java.io.FilenameFilter_Package; use java.io.FilenameFilter_Package;
--  with java.io.IOException_Package; use java.io.IOException_Package;
--  with java.net.URI_Package; use java.net.URI_Package;
with org.allbinary.TsUtil_Package; use org.allbinary.TsUtil_Package;
with org.allbinary.logic.io.path.AbPath_Package; use org.allbinary.logic.io.path.AbPath_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.io.file.AbFileInterface_Package; use org.allbinary.logic.io.file.AbFileInterface_Package;

package org.allbinary.logic.io.file.AbFile_Package is

   package TsUtil_Package renames Standard.org.allbinary.TsUtil_Package;
   package AbPath_Package renames Standard.org.allbinary.logic.io.path.AbPath_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;

   type AbFile is tagged;
   type AbFile_Access is access all AbFile'Class;
   type AbFile_Access_Array is array (Natural range <>) of AbFile_Access;
   type AbFile_Access_Array_Access is access all AbFile_Access_Array;

   type AbFile is new AbFileInterface with record
      file : File_Access;
   end record;
   NULL_FILE : AbFile_Access;

   procedure Initialize (This : in out AbFile'Class; file_Param : access File'Class);
   function Create (file_Param : access File'Class) return AbFile_Access;
   function createAbFileWithChild (file_Param : access AbFile'Class; childPathName : Unbounded_String) return AbFile_Access;
   procedure createAbFileWithChild (file_Param : access AbFile'Class; childPathName : Unbounded_String);
   function createAbFile (filePath : Unbounded_String) return AbFile_Access;
   procedure createAbFile (filePath : Unbounded_String);
   function createAbFilePathAndName (filePath : Unbounded_String; fileName : Unbounded_String) return AbFile_Access;
   procedure createAbFilePathAndName (filePath : Unbounded_String; fileName : Unbounded_String);
   function createAbFileFromAbPath (abPath_Param : access AbPath'Class) return AbFile_Access;
   procedure createAbFileFromAbPath (abPath_Param : access AbPath'Class);
   function createAbFileFromRawPath (filePath : Unbounded_String) return AbFile_Access;
   procedure createAbFileFromRawPath (filePath : Unbounded_String);
   function getFile (This : in out AbFile) return File_Access;
   function getName (This : in out AbFile) return Unbounded_String;
   function getParent (This : in out AbFile) return Unbounded_String;
   function getParentFile (This : in out AbFile) return Java_Object_Access;
   function getPath (This : in out AbFile) return Unbounded_String;
   function isAbsolute (This : in out AbFile) return Boolean;
   function getAbsolutePath (This : in out AbFile) return Unbounded_String;
   function getAbsoluteFile (This : in out AbFile) return Java_Object_Access;
   function getCanonicalPath (This : in out AbFile) return Unbounded_String;
   function getCanonicalFile (This : in out AbFile) return Java_Object_Access;
   function toURI (This : in out AbFile) return URI_Access;
   function canRead (This : in out AbFile) return Boolean;
   function canWrite (This : in out AbFile) return Boolean;
   function exists (This : in out AbFile) return Boolean;
   function isDirectory (This : in out AbFile) return Boolean;
   function isFile (This : in out AbFile) return Boolean;
   function isHidden (This : in out AbFile) return Boolean;
   function lastModified (This : in out AbFile) return Long_Long_Integer;
   function length (This : in out AbFile) return Long_Long_Integer;
   function createNewFile (This : in out AbFile) return Boolean;
   function delete (This : in out AbFile) return Boolean;
   procedure deleteOnExit (This : in out AbFile);
   function list (This : in out AbFile) return Unbounded_String_Array_Access;
   function listWithFilter (This : in out AbFile; filter_Param : access FilenameFilter'Class) return Unbounded_String_Array_Access;
   procedure listWithFilter (This : in out AbFile; filter_Param : access FilenameFilter'Class);
   function listFiles (This : in out AbFile) return Java_Object_Access_Array_Access;
   function listFilesFileNameFilter (This : in out AbFile; filter_Param : access FilenameFilter'Class) return Java_Object_Access_Array_Access;
   procedure listFilesFileNameFilter (This : in out AbFile; filter_Param : access FilenameFilter'Class);
   function listFilesFileFilter (This : in out AbFile; filter_Param : access FileFilter'Class) return Java_Object_Access_Array_Access;
   procedure listFilesFileFilter (This : in out AbFile; filter_Param : access FileFilter'Class);
   function mkdir (This : in out AbFile) return Boolean;
   function mkdirs (This : in out AbFile) return Boolean;
   function renameTo (This : in out AbFile; dest_Param : access AbFile'Class) return Boolean;
   procedure renameTo (This : in out AbFile; dest_Param : access AbFile'Class);
   function setLastModified (This : in out AbFile; time : Long_Long_Integer) return Boolean;
   procedure setLastModified (This : in out AbFile; time : Long_Long_Integer);
   function setReadOnly (This : in out AbFile) return Boolean;
   function setWritable (This : in out AbFile; writable : Boolean; ownerOnly : Boolean) return Boolean;
   procedure setWritable (This : in out AbFile; writable : Boolean; ownerOnly : Boolean);
   function setWritable (This : in out AbFile; writable : Boolean) return Boolean;
   procedure setWritable (This : in out AbFile; writable : Boolean);
   function setReadable (This : in out AbFile; readable : Boolean; ownerOnly : Boolean) return Boolean;
   procedure setReadable (This : in out AbFile; readable : Boolean; ownerOnly : Boolean);
   function setReadable (This : in out AbFile; readable : Boolean) return Boolean;
   procedure setReadable (This : in out AbFile; readable : Boolean);
   function setExecutable (This : in out AbFile; executable : Boolean; ownerOnly : Boolean) return Boolean;
   procedure setExecutable (This : in out AbFile; executable : Boolean; ownerOnly : Boolean);
   function setExecutable (This : in out AbFile; executable : Boolean) return Boolean;
   procedure setExecutable (This : in out AbFile; executable : Boolean);
   function canExecute (This : in out AbFile) return Boolean;
   function getTotalSpace (This : in out AbFile) return Long_Long_Integer;
   function getFreeSpace (This : in out AbFile) return Long_Long_Integer;
   function getUsableSpace (This : in out AbFile) return Long_Long_Integer;
   function compareTo (This : in out AbFile; pathname_Param : access File'Class) return Integer;
   procedure compareTo (This : in out AbFile; pathname_Param : access File'Class);
   function equals (This : in out AbFile; obj_Param : access Java_Object'Class) return Boolean;
   procedure equals (This : in out AbFile; obj_Param : access Java_Object'Class);
   function hashCode (This : in out AbFile) return Integer;
   function toString (This : in out AbFile) return Unbounded_String;

end org.allbinary.logic.io.file.AbFile_Package;


