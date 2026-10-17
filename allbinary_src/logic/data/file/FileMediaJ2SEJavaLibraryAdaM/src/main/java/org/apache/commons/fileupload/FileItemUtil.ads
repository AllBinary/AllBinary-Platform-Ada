--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.io.ByteArrayOutputStream_Package; use java.io.ByteArrayOutputStream_Package;
--  with java.io.InputStream_Package; use java.io.InputStream_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.io.StreamUtil_Package; use org.allbinary.logic.io.StreamUtil_Package;
with org.allbinary.logic.io.file.AbFile_Package; use org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.io.file.AbFileNativeUtil_Package; use org.allbinary.logic.io.file.AbFileNativeUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.apache.commons.fileupload.FileItemStream_Package; use org.apache.commons.fileupload.FileItemStream_Package;
with org.apache.commons.fileupload.FileItem_Package; use org.apache.commons.fileupload.FileItem_Package;

package org.apache.commons.fileupload.FileItemUtil_Package is

   package ByteArrayOutputStream_Package renames Standard.java.io.ByteArrayOutputStream_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StreamUtil_Package renames Standard.org.allbinary.logic.io.StreamUtil_Package;
   package AbFile_Package renames Standard.org.allbinary.logic.io.file.AbFile_Package;
   package AbFileNativeUtil_Package renames Standard.org.allbinary.logic.io.file.AbFileNativeUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;

   type FileItemUtil is tagged;
   type FileItemUtil_Access is access all FileItemUtil'Class;
   type FileItemUtil_Access_Array is array (Natural range <>) of FileItemUtil_Access;
   type FileItemUtil_Access_Array_Access is access all FileItemUtil_Access_Array;

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


