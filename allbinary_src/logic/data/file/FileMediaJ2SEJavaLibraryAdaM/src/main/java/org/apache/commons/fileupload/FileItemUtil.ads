--  Generated Code Do Not Modify

with AllBinary_Java;
limited with org.apache.commons.fileupload.FileItemUtil_Package;
package org.apache.commons.fileupload.FileItemUtil_Package_References is
   type FileItemUtil_Access is access all org.apache.commons.fileupload.FileItemUtil_Package.FileItemUtil'Class;
   type FileItemUtil_Access_Array is array (Natural range <>) of FileItemUtil_Access;
   type FileItemUtil_Access_Array_Access is access all FileItemUtil_Access_Array;
   type FileItemUtil_Access_Array_Access_Array is array (Natural range <>) of FileItemUtil_Access_Array_Access;
   type FileItemUtil_Access_Array_Access_Array_Access is access all FileItemUtil_Access_Array_Access_Array;
   type FileItemUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : FileItemUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : FileItemUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new FileItemUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_FileItemUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return FileItemUtil_Access_Array_Access is (if Value /= null and then Value.all in FileItemUtil_Access_Array_Object'Class then FileItemUtil_Access_Array_Object'Class (Value.all).Value else null);
   type FileItemUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : FileItemUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : FileItemUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new FileItemUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_FileItemUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return FileItemUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in FileItemUtil_Access_Array_Access_Array_Object'Class then FileItemUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.apache.commons.fileupload.FileItemUtil_Package_References;

with org.apache.commons.fileupload.FileItemUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.io.file.AbFile_Package_References;
limited with org.apache.commons.fileupload.FileItemStream_Package;
with org.apache.commons.fileupload.FileItemStream_Package_References;
limited with org.apache.commons.fileupload.FileItem_Package;
with org.apache.commons.fileupload.FileItem_Package_References;

package org.apache.commons.fileupload.FileItemUtil_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbFile_Package renames Standard.org.allbinary.logic.io.file.AbFile_Package;
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
   subtype FileItemStream_Access is org.apache.commons.fileupload.FileItemStream_Package_References.FileItemStream_Access;
   use type FileItemStream_Access;
   subtype FileItemStream_Access_Array is org.apache.commons.fileupload.FileItemStream_Package_References.FileItemStream_Access_Array;
   use type FileItemStream_Access_Array;
   subtype FileItemStream_Access_Array_Access is org.apache.commons.fileupload.FileItemStream_Package_References.FileItemStream_Access_Array_Access;
   use type FileItemStream_Access_Array_Access;
   subtype FileItemStream_Access_Array_Access_Array is org.apache.commons.fileupload.FileItemStream_Package_References.FileItemStream_Access_Array_Access_Array;
   use type FileItemStream_Access_Array_Access_Array;
   subtype FileItemStream_Access_Array_Access_Array_Access is org.apache.commons.fileupload.FileItemStream_Package_References.FileItemStream_Access_Array_Access_Array_Access;
   use type FileItemStream_Access_Array_Access_Array_Access;
   subtype FileItem_Access is org.apache.commons.fileupload.FileItem_Package_References.FileItem_Access;
   use type FileItem_Access;
   subtype FileItem_Access_Array is org.apache.commons.fileupload.FileItem_Package_References.FileItem_Access_Array;
   use type FileItem_Access_Array;
   subtype FileItem_Access_Array_Access is org.apache.commons.fileupload.FileItem_Package_References.FileItem_Access_Array_Access;
   use type FileItem_Access_Array_Access;
   subtype FileItem_Access_Array_Access_Array is org.apache.commons.fileupload.FileItem_Package_References.FileItem_Access_Array_Access_Array;
   use type FileItem_Access_Array_Access_Array;
   subtype FileItem_Access_Array_Access_Array_Access is org.apache.commons.fileupload.FileItem_Package_References.FileItem_Access_Array_Access_Array_Access;
   use type FileItem_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype FileItemUtil_Access is org.apache.commons.fileupload.FileItemUtil_Package_References.FileItemUtil_Access;
   function "=" (Left, Right : FileItemUtil_Access) return Boolean renames org.apache.commons.fileupload.FileItemUtil_Package_References."=";
   subtype FileItemUtil_Access_Array is org.apache.commons.fileupload.FileItemUtil_Package_References.FileItemUtil_Access_Array;
   function "=" (Left, Right : FileItemUtil_Access_Array) return Boolean renames org.apache.commons.fileupload.FileItemUtil_Package_References."=";
   subtype FileItemUtil_Access_Array_Access is org.apache.commons.fileupload.FileItemUtil_Package_References.FileItemUtil_Access_Array_Access;
   function "=" (Left, Right : FileItemUtil_Access_Array_Access) return Boolean renames org.apache.commons.fileupload.FileItemUtil_Package_References."=";
   function Java_Box (Value : FileItemUtil_Access_Array_Access) return Java_Object_Access renames org.apache.commons.fileupload.FileItemUtil_Package_References.Java_Box;
   function Java_Unbox_FileItemUtil_Access_Array (Value : access Java_Object'Class) return FileItemUtil_Access_Array_Access renames org.apache.commons.fileupload.FileItemUtil_Package_References.Java_Unbox_FileItemUtil_Access_Array;
   subtype FileItemUtil_Access_Array_Access_Array is org.apache.commons.fileupload.FileItemUtil_Package_References.FileItemUtil_Access_Array_Access_Array;
   function "=" (Left, Right : FileItemUtil_Access_Array_Access_Array) return Boolean renames org.apache.commons.fileupload.FileItemUtil_Package_References."=";
   subtype FileItemUtil_Access_Array_Access_Array_Access is org.apache.commons.fileupload.FileItemUtil_Package_References.FileItemUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : FileItemUtil_Access_Array_Access_Array_Access) return Boolean renames org.apache.commons.fileupload.FileItemUtil_Package_References."=";
   function Java_Box (Value : FileItemUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.apache.commons.fileupload.FileItemUtil_Package_References.Java_Box;
   function Java_Unbox_FileItemUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return FileItemUtil_Access_Array_Access_Array_Access renames org.apache.commons.fileupload.FileItemUtil_Package_References.Java_Unbox_FileItemUtil_Access_Array_Access_Array;

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


