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
--  with java.io.IOException_Package; use java.io.IOException_Package;
--  with java.io.InputStream_Package; use java.io.InputStream_Package;
--  with java.util.HashMap_Package; use java.util.HashMap_Package;
--  with javax.servlet.ServletException_Package; use javax.servlet.ServletException_Package;
--  with javax.servlet.http.HttpServlet_Package; use javax.servlet.http.HttpServlet_Package;
--  with javax.servlet.http.HttpServletRequest_Package; use javax.servlet.http.HttpServletRequest_Package;
--  with javax.servlet.http.HttpServletResponse_Package; use javax.servlet.http.HttpServletResponse_Package;
with admin.taghelpers.AuthenticationHelper_Package; use admin.taghelpers.AuthenticationHelper_Package;
with admin.taghelpers.AuthenticationHelperFactory_Package; use admin.taghelpers.AuthenticationHelperFactory_Package;
with admin.taghelpers.AuthenticationHelperUtil_Package; use admin.taghelpers.AuthenticationHelperUtil_Package;
with org.allbinary.globals.URLGLOBALS_Package; use org.allbinary.globals.URLGLOBALS_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.http.file.upload.FileUploadData_Package; use org.allbinary.logic.communication.http.file.upload.FileUploadData_Package;
with org.allbinary.logic.communication.http.file.upload.HttpFileUploadUtil_Package; use org.allbinary.logic.communication.http.file.upload.HttpFileUploadUtil_Package;
with org.allbinary.logic.communication.http.request.HttpRequestUtil_Package; use org.allbinary.logic.communication.http.request.HttpRequestUtil_Package;
with org.allbinary.logic.communication.http.request.MultipartRequestParams_Package; use org.allbinary.logic.communication.http.request.MultipartRequestParams_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.io.AbFileOutputStream_Package; use org.allbinary.logic.io.AbFileOutputStream_Package;
with org.allbinary.logic.io.StreamUtil_Package; use org.allbinary.logic.io.StreamUtil_Package;
with org.allbinary.logic.io.file.AbFile_Package; use org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.servlet.BlisketServletUtil_Package; use org.allbinary.servlet.BlisketServletUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.apache.commons.fileupload.FileItem_Package; use org.apache.commons.fileupload.FileItem_Package;

package org.allbinary.servlet.file.UploadFileServlet_Package is

   package AuthenticationHelper_Package renames Standard.admin.taghelpers.AuthenticationHelper_Package;
   package AuthenticationHelperFactory_Package renames Standard.admin.taghelpers.AuthenticationHelperFactory_Package;
   package AuthenticationHelperUtil_Package renames Standard.admin.taghelpers.AuthenticationHelperUtil_Package;
   package URLGLOBALS_Package renames Standard.org.allbinary.globals.URLGLOBALS_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package FileUploadData_Package renames Standard.org.allbinary.logic.communication.http.file.upload.FileUploadData_Package;
   package HttpFileUploadUtil_Package renames Standard.org.allbinary.logic.communication.http.file.upload.HttpFileUploadUtil_Package;
   package HttpRequestUtil_Package renames Standard.org.allbinary.logic.communication.http.request.HttpRequestUtil_Package;
   package MultipartRequestParams_Package renames Standard.org.allbinary.logic.communication.http.request.MultipartRequestParams_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbFileOutputStream_Package renames Standard.org.allbinary.logic.io.AbFileOutputStream_Package;
   package StreamUtil_Package renames Standard.org.allbinary.logic.io.StreamUtil_Package;
   package AbFile_Package renames Standard.org.allbinary.logic.io.file.AbFile_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package BlisketServletUtil_Package renames Standard.org.allbinary.servlet.BlisketServletUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package FileItem_Package renames Standard.org.apache.commons.fileupload.FileItem_Package;

   type UploadFileServlet is tagged;
   type UploadFileServlet_Access is access all UploadFileServlet'Class;
   type UploadFileServlet_Access_Array is array (Natural range <>) of UploadFileServlet_Access;
   type UploadFileServlet_Access_Array_Access is access all UploadFileServlet_Access_Array;

   type UploadFileServlet is new HttpServlet with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      requestHashMap : HashMap_Access;
      fileName : Unbounded_String;
   end record;

   procedure Initialize (This : in out UploadFileServlet'Class);
   function Create return UploadFileServlet_Access;
   procedure processRequest (This : in out UploadFileServlet; request : HttpServletRequest_Access; response : HttpServletResponse_Access);
   procedure saveFile (This : in out UploadFileServlet; filePath_Param : Unbounded_String);
   procedure doGet (This : in out UploadFileServlet; request : HttpServletRequest_Access; response : HttpServletResponse_Access);
   procedure doPost (This : in out UploadFileServlet; request : HttpServletRequest_Access; response : HttpServletResponse_Access);
   function getServletInfo (This : in out UploadFileServlet) return Unbounded_String;

end org.allbinary.servlet.file.UploadFileServlet_Package;


