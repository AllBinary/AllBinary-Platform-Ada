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
--  with java.util.HashMap_Package; use java.util.HashMap_Package;
--  with java.util.List_Package; use java.util.List_Package;
--  with javax.servlet.http.HttpServletRequest_Package; use javax.servlet.http.HttpServletRequest_Package;
--  with javax.servlet.jsp.PageContext_Package; use javax.servlet.jsp.PageContext_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.http.file.upload.AbFileUploadFactory_Package; use org.allbinary.logic.communication.http.file.upload.AbFileUploadFactory_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringValidationUtil_Package; use org.allbinary.logic.string_Id.StringValidationUtil_Package;
with org.apache.commons.fileupload.FileItem_Package; use org.apache.commons.fileupload.FileItem_Package;
with org.apache.commons.fileupload.FileUploadBase.InvalidContentTypeException_Package; use org.apache.commons.fileupload.FileUploadBase.InvalidContentTypeException_Package;
with org.allbinary.logic.communication.http.request.RequestParams_Package; use org.allbinary.logic.communication.http.request.RequestParams_Package;

package org.allbinary.logic.communication.http.request.MultipartRequestParams_Package is

   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package AbFileUploadFactory_Package renames Standard.org.allbinary.logic.communication.http.file.upload.AbFileUploadFactory_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StringValidationUtil_Package renames Standard.org.allbinary.logic.string_Id.StringValidationUtil_Package;
   package FileItem_Package renames Standard.org.apache.commons.fileupload.FileItem_Package;
   package InvalidContentTypeException_Package renames Standard.org.apache.commons.fileupload.FileUploadBase.InvalidContentTypeException_Package;

   type MultipartRequestParams is tagged;
   type MultipartRequestParams_Access is access all MultipartRequestParams'Class;
   type MultipartRequestParams_Access_Array is array (Natural range <>) of MultipartRequestParams_Access;
   type MultipartRequestParams_Access_Array_Access is access all MultipartRequestParams_Access_Array;

   type MultipartRequestParams is new RequestParams with record
      logUtil : LogUtil_Access;
      special : Boolean;
   end record;

   procedure Initialize (This : in out MultipartRequestParams'Class; request : HttpServletRequest_Access);
   function Create (request : HttpServletRequest_Access) return MultipartRequestParams_Access;
   procedure setSpecial (This : in out MultipartRequestParams);
   procedure processMultipartRequest (This : in out MultipartRequestParams; request : HttpServletRequest_Access);
   function toHashMap (This : in out MultipartRequestParams) return HashMap_Access;

end org.allbinary.logic.communication.http.request.MultipartRequestParams_Package;


