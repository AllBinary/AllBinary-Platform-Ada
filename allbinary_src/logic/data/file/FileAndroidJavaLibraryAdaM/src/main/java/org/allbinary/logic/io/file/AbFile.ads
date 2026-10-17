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

   package TsUtil_Package renames org.allbinary.TsUtil_Package;
   package AbPath_Package renames org.allbinary.logic.io.path.AbPath_Package;
   package StringUtil_Package renames org.allbinary.logic.string_Id.StringUtil_Package;

   type AbFile is tagged;
   type AbFile_Access is access all AbFile'Class;
   type AbFile_Access_Array is array (Natural range <>) of AbFile_Access;
   type AbFile_Access_Array_Access is access all AbFile_Access_Array;

   type AbFile is new AbFileInterface with record
      file : File_Access;
   end record;
   NULL_FILE : AbFile_Access;

   procedure Initialize (This : in out AbFile'Class; file : File_Access);
   function Create (file : File_Access) return AbFile_Access;
   function createAbFileWithChild (file : AbFile_Access; childPathName : Unbounded_String) return AbFile_Access;
   procedure createAbFileWithChild (file : AbFile_Access; childPathName : Unbounded_String);
   function createAbFile (filePath : Unbounded_String) return AbFile_Access;
   procedure createAbFile (filePath : Unbounded_String);
   function createAbFilePathAndName (filePath : Unbounded_String; fileName : Unbounded_String) return AbFile_Access;
   procedure createAbFilePathAndName (filePath : Unbounded_String; fileName : Unbounded_String);
   function createAbFileFromAbPath (abPath : AbPath_Access) return AbFile_Access;
   procedure createAbFileFromAbPath (abPath : AbPath_Access);
   function createAbFileFromRawPath (filePath : Unbounded_String) return AbFile_Access;
   procedure createAbFileFromRawPath (filePath : Unbounded_String);
   function getFile (This : in out AbFile) return File_Access;
   procedure getFile (This : in out AbFile);
   function getName (This : in out AbFile) return Unbounded_String;
   procedure getName (This : in out AbFile);
   function getParent (This : in out AbFile) return Unbounded_String;
   procedure getParent (This : in out AbFile);
   function getParentFile (This : in out AbFile) return File_Access;
   procedure getParentFile (This : in out AbFile);
   function getPath (This : in out AbFile) return Unbounded_String;
   procedure getPath (This : in out AbFile);
   function isAbsolute (This : in out AbFile) return Boolean;
   procedure isAbsolute (This : in out AbFile);
   function getAbsolutePath (This : in out AbFile) return Unbounded_String;
   procedure getAbsolutePath (This : in out AbFile);
   function getAbsoluteFile (This : in out AbFile) return File_Access;
   procedure getAbsoluteFile (This : in out AbFile);
   function getCanonicalPath (This : in out AbFile) return Unbounded_String;
   procedure getCanonicalPath (This : in out AbFile);
   function getCanonicalFile (This : in out AbFile) return File_Access;
   procedure getCanonicalFile (This : in out AbFile);
   function toURI (This : in out AbFile) return URI_Access;
   procedure toURI (This : in out AbFile);
   function canRead (This : in out AbFile) return Boolean;
   procedure canRead (This : in out AbFile);
   function canWrite (This : in out AbFile) return Boolean;
   procedure canWrite (This : in out AbFile);
   function exists (This : in out AbFile) return Boolean;
   procedure exists (This : in out AbFile);
   function isDirectory (This : in out AbFile) return Boolean;
   procedure isDirectory (This : in out AbFile);
   function isFile (This : in out AbFile) return Boolean;
   procedure isFile (This : in out AbFile);
   function isHidden (This : in out AbFile) return Boolean;
   procedure isHidden (This : in out AbFile);
   function lastModified (This : in out AbFile) return Long_Long_Integer;
   procedure lastModified (This : in out AbFile);
   function length (This : in out AbFile) return Long_Long_Integer;
   procedure length (This : in out AbFile);
   function createNewFile (This : in out AbFile) return Boolean;
   procedure createNewFile (This : in out AbFile);
   function delete (This : in out AbFile) return Boolean;
   procedure delete (This : in out AbFile);
   procedure deleteOnExit (This : in out AbFile);
   function list (This : in out AbFile) return Unbounded_String_Array_Access;
   procedure list (This : in out AbFile);
   function listWithFilter (This : in out AbFile; filter : FilenameFilter_Access) return Unbounded_String_Array_Access;
   procedure listWithFilter (This : in out AbFile; filter : FilenameFilter_Access);
   function listFiles (This : in out AbFile) return Java_Object_Access_Array_Access;
   procedure listFiles (This : in out AbFile);
   function listFilesFileNameFilter (This : in out AbFile; filter : FilenameFilter_Access) return Java_Object_Access_Array_Access;
   procedure listFilesFileNameFilter (This : in out AbFile; filter : FilenameFilter_Access);
   function listFilesFileFilter (This : in out AbFile; filter : FileFilter_Access) return Java_Object_Access_Array_Access;
   procedure listFilesFileFilter (This : in out AbFile; filter : FileFilter_Access);
   function mkdir (This : in out AbFile) return Boolean;
   procedure mkdir (This : in out AbFile);
   function mkdirs (This : in out AbFile) return Boolean;
   procedure mkdirs (This : in out AbFile);
   function renameTo (This : in out AbFile; dest : AbFile_Access) return Boolean;
   procedure renameTo (This : in out AbFile; dest : AbFile_Access);
   function setLastModified (This : in out AbFile; time : Long_Long_Integer) return Boolean;
   procedure setLastModified (This : in out AbFile; time : Long_Long_Integer);
   function setReadOnly (This : in out AbFile) return Boolean;
   procedure setReadOnly (This : in out AbFile);
   function compareTo (This : in out AbFile; pathname : File_Access) return Integer;
   procedure compareTo (This : in out AbFile; pathname : File_Access);
   function equals (This : in out AbFile; obj : Java_Object_Access) return Boolean;
   procedure equals (This : in out AbFile; obj : Java_Object_Access);
   function hashCode (This : in out AbFile) return Integer;
   procedure hashCode (This : in out AbFile);
   function toString (This : in out AbFile) return Unbounded_String;
   procedure toString (This : in out AbFile);

end org.allbinary.logic.io.file.AbFile_Package;


