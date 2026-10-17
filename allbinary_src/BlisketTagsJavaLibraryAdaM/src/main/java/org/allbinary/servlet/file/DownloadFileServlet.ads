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
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.io.CloudStreamUtil_Package; use org.allbinary.logic.io.CloudStreamUtil_Package;
with org.allbinary.logic.io.StreamUtil_Package; use org.allbinary.logic.io.StreamUtil_Package;
with org.allbinary.logic.io.file.AbFile_Package; use org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.servlet.BlisketServletUtil_Package; use org.allbinary.servlet.BlisketServletUtil_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package org.allbinary.servlet.file.DownloadFileServlet_Package is

   package AuthenticationHelper_Package renames admin.taghelpers.AuthenticationHelper_Package;
   package AuthenticationHelperFactory_Package renames admin.taghelpers.AuthenticationHelperFactory_Package;
   package AuthenticationHelperUtil_Package renames admin.taghelpers.AuthenticationHelperUtil_Package;
   package URLGLOBALS_Package renames org.allbinary.globals.URLGLOBALS_Package;
   package StdUtil_Package renames org.allbinary.logic.StdUtil_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package CloudStreamUtil_Package renames org.allbinary.logic.io.CloudStreamUtil_Package;
   package StreamUtil_Package renames org.allbinary.logic.io.StreamUtil_Package;
   package AbFile_Package renames org.allbinary.logic.io.file.AbFile_Package;
   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames org.allbinary.logic.string_Id.StringUtil_Package;
   package BlisketServletUtil_Package renames org.allbinary.servlet.BlisketServletUtil_Package;
   package CommonSeps_Package renames org.allbinary.string_Id.CommonSeps_Package;
   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;

   type DownloadFileServlet is tagged;
   type DownloadFileServlet_Access is access all DownloadFileServlet'Class;
   type DownloadFileServlet_Access_Array is array (Natural range <>) of DownloadFileServlet_Access;
   type DownloadFileServlet_Access_Array_Access is access all DownloadFileServlet_Access_Array;

   type DownloadFileServlet is new HttpServlet with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      DOWNLOAD : Unbounded_String;
      DEFAULT_BUFFER_SIZE : Integer;
   end record;

   procedure Initialize (This : in out DownloadFileServlet'Class);
   function Create return DownloadFileServlet_Access;
   procedure processRequest (This : in out DownloadFileServlet; request : HttpServletRequest_Access; response : HttpServletResponse_Access);
   procedure doGet (This : in out DownloadFileServlet; request : HttpServletRequest_Access; response : HttpServletResponse_Access);
   procedure doPost (This : in out DownloadFileServlet; request : HttpServletRequest_Access; response : HttpServletResponse_Access);
   function getServletInfo (This : in out DownloadFileServlet) return Unbounded_String;
   procedure getServletInfo (This : in out DownloadFileServlet);

end org.allbinary.servlet.file.DownloadFileServlet_Package;


