--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.io.file.AbFile_Package; use org.allbinary.logic.io.file.AbFile_Package;
with org.apache.commons.fileupload.FileItemStream_Package; use org.apache.commons.fileupload.FileItemStream_Package;
with org.apache.commons.fileupload.FileItem_Package; use org.apache.commons.fileupload.FileItem_Package;

package org.apache.commons.fileupload.FileItemUtil_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbFile_Package renames Standard.org.allbinary.logic.io.file.AbFile_Package;

   type FileItemUtil is tagged;
   type FileItemUtil_Access is access all FileItemUtil'Class;
   type FileItemUtil_Access_Array is array (Natural range <>) of FileItemUtil_Access;
   type FileItemUtil_Access_Array_Access is access all FileItemUtil_Access_Array;
   type FileItemUtil_Access_Array_Access_Array is array (Natural range <>) of FileItemUtil_Access_Array_Access;
   type FileItemUtil_Access_Array_Access_Array_Access is access all FileItemUtil_Access_Array_Access_Array;

   type FileItemUtil is new Java_Object with record
      logUtil : LogUtil_Access;
      DEFAULT_CHARSET : Unbounded_String;
   end record;
   instance : FileItemUtil_Access;

   procedure Initialize (This : in out FileItemUtil'Class);
   function Create return FileItemUtil_Access;
   function getInstance return FileItemUtil_Access;
   function getString (This : in out FileItemUtil; byteArray : Short_Short_Integer_Array_Access) return Unbounded_String;
   procedure getString (This : in out FileItemUtil; byteArray : Short_Short_Integer_Array_Access);
   function getString (This : in out FileItemUtil; fileItem_Param : access FileItemStream_Package.FileItemStream'Class) return Unbounded_String;
   procedure getString (This : in out FileItemUtil; fileItem_Param : access FileItemStream_Package.FileItemStream'Class);
   function getBytes (This : in out FileItemUtil; fileItem_Param : access FileItemStream_Package.FileItemStream'Class) return Short_Short_Integer_Array_Access;
   procedure getBytes (This : in out FileItemUtil; fileItem_Param : access FileItemStream_Package.FileItemStream'Class);
   procedure write (This : in out FileItemUtil; fileItem_Param : access FileItem_Package.FileItem'Class; file_Param : access AbFile_Package.AbFile'Class);

end org.apache.commons.fileupload.FileItemUtil_Package;


