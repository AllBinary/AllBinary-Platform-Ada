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

limited with org.allbinary.logic.communication.http.file.upload.HttpFileUploadUtil_Package;
package org.allbinary.logic.communication.http.file.upload.HttpFileUploadUtil_Package_References is
   type HttpFileUploadUtil_Access is access all org.allbinary.logic.communication.http.file.upload.HttpFileUploadUtil_Package.HttpFileUploadUtil'Class;
   type HttpFileUploadUtil_Access_Array is array (Natural range <>) of HttpFileUploadUtil_Access;
   type HttpFileUploadUtil_Access_Array_Access is access all HttpFileUploadUtil_Access_Array;
   type HttpFileUploadUtil_Access_Array_Access_Array is array (Natural range <>) of HttpFileUploadUtil_Access_Array_Access;
   type HttpFileUploadUtil_Access_Array_Access_Array_Access is access all HttpFileUploadUtil_Access_Array_Access_Array;
end org.allbinary.logic.communication.http.file.upload.HttpFileUploadUtil_Package_References;

with org.allbinary.logic.communication.http.file.upload.HttpFileUploadUtil_Package_References;
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
limited with org.apache.commons.fileupload.FileItem_Package;
with org.apache.commons.fileupload.FileItem_Package_References;
limited with org.apache.commons.fileupload.FileItemStream_Package;
with org.apache.commons.fileupload.FileItemStream_Package_References;

package org.allbinary.logic.communication.http.file.upload.HttpFileUploadUtil_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package FileItem_Package renames Standard.org.apache.commons.fileupload.FileItem_Package;
   package FileItemStream_Package renames Standard.org.apache.commons.fileupload.FileItemStream_Package;
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
   end Reference_Types;
   use Reference_Types;


   subtype HttpFileUploadUtil_Access is org.allbinary.logic.communication.http.file.upload.HttpFileUploadUtil_Package_References.HttpFileUploadUtil_Access;
   function "=" (Left, Right : HttpFileUploadUtil_Access) return Boolean renames org.allbinary.logic.communication.http.file.upload.HttpFileUploadUtil_Package_References."=";
   subtype HttpFileUploadUtil_Access_Array is org.allbinary.logic.communication.http.file.upload.HttpFileUploadUtil_Package_References.HttpFileUploadUtil_Access_Array;
   function "=" (Left, Right : HttpFileUploadUtil_Access_Array) return Boolean renames org.allbinary.logic.communication.http.file.upload.HttpFileUploadUtil_Package_References."=";
   subtype HttpFileUploadUtil_Access_Array_Access is org.allbinary.logic.communication.http.file.upload.HttpFileUploadUtil_Package_References.HttpFileUploadUtil_Access_Array_Access;
   function "=" (Left, Right : HttpFileUploadUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.http.file.upload.HttpFileUploadUtil_Package_References."=";
   subtype HttpFileUploadUtil_Access_Array_Access_Array is org.allbinary.logic.communication.http.file.upload.HttpFileUploadUtil_Package_References.HttpFileUploadUtil_Access_Array_Access_Array;
   function "=" (Left, Right : HttpFileUploadUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.http.file.upload.HttpFileUploadUtil_Package_References."=";
   subtype HttpFileUploadUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.http.file.upload.HttpFileUploadUtil_Package_References.HttpFileUploadUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HttpFileUploadUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.http.file.upload.HttpFileUploadUtil_Package_References."=";

   type HttpFileUploadUtil is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   instance : HttpFileUploadUtil_Access;

   procedure Initialize (This : in out HttpFileUploadUtil'Class);
   function Create return HttpFileUploadUtil_Access;
   function getInstance return HttpFileUploadUtil_Access;
   function isValid (This : in out HttpFileUploadUtil; anyType_Param : access Java_Object'Class) return Boolean;
   procedure isValid (This : in out HttpFileUploadUtil; anyType_Param : access Java_Object'Class);
   procedure log (fileItem_Param : access FileItemStream_Package.FileItemStream'Class);
   procedure log (fileItem_Param : access FileItem_Package.FileItem'Class);
   function isValid (This : in out HttpFileUploadUtil; Value : Unbounded_String) return Boolean;
   procedure isValid (This : in out HttpFileUploadUtil; Value : Unbounded_String);

end org.allbinary.logic.communication.http.file.upload.HttpFileUploadUtil_Package;


