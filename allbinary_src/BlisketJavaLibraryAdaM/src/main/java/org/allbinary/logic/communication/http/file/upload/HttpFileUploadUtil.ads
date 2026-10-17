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
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.java.anyType.clazz.ClassUtil_Package; use org.allbinary.logic.java.anyType.clazz.ClassUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.apache.commons.fileupload.FileItem_Package; use org.apache.commons.fileupload.FileItem_Package;
with org.apache.commons.fileupload.FileItemStream_Package; use org.apache.commons.fileupload.FileItemStream_Package;

package org.allbinary.logic.communication.http.file.upload.HttpFileUploadUtil_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package ClassUtil_Package renames Standard.org.allbinary.logic.java.anyType.clazz.ClassUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package FileItem_Package renames Standard.org.apache.commons.fileupload.FileItem_Package;
   package FileItemStream_Package renames Standard.org.apache.commons.fileupload.FileItemStream_Package;

   type HttpFileUploadUtil is tagged;
   type HttpFileUploadUtil_Access is access all HttpFileUploadUtil'Class;
   type HttpFileUploadUtil_Access_Array is array (Natural range <>) of HttpFileUploadUtil_Access;
   type HttpFileUploadUtil_Access_Array_Access is access all HttpFileUploadUtil_Access_Array;

   type HttpFileUploadUtil is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   instance : HttpFileUploadUtil_Access;

   procedure Initialize (This : in out HttpFileUploadUtil'Class);
   function Create return HttpFileUploadUtil_Access;
   function getInstance return HttpFileUploadUtil_Access;
   function isValid (This : in out HttpFileUploadUtil; anyType_Param : access Java_Object'Class) return Boolean;
   procedure isValid (This : in out HttpFileUploadUtil; anyType_Param : access Java_Object'Class);
   procedure log (fileItem_Param : access FileItemStream'Class);
   procedure log (fileItem_Param : access FileItem'Class);

end org.allbinary.logic.communication.http.file.upload.HttpFileUploadUtil_Package;


