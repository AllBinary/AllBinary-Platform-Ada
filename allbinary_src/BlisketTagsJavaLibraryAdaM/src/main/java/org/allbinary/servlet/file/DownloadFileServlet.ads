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
--  with javax.servlet.ServletException_Package; use javax.servlet.ServletException_Package;
--  with javax.servlet.http.HttpServlet_Package; use javax.servlet.http.HttpServlet_Package;
--  with javax.servlet.http.HttpServletRequest_Package; use javax.servlet.http.HttpServletRequest_Package;
--  with javax.servlet.http.HttpServletResponse_Package; use javax.servlet.http.HttpServletResponse_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package org.allbinary.servlet.file.DownloadFileServlet_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type DownloadFileServlet is tagged;
   type DownloadFileServlet_Access is access all DownloadFileServlet'Class;
   type DownloadFileServlet_Access_Array is array (Natural range <>) of DownloadFileServlet_Access;
   type DownloadFileServlet_Access_Array_Access is access all DownloadFileServlet_Access_Array;
   type DownloadFileServlet_Access_Array_Access_Array is array (Natural range <>) of DownloadFileServlet_Access_Array_Access;
   type DownloadFileServlet_Access_Array_Access_Array_Access is access all DownloadFileServlet_Access_Array_Access_Array;

   type DownloadFileServlet is new Java_Object with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      DOWNLOAD : Unbounded_String;
      DEFAULT_BUFFER_SIZE : Integer;
   end record;

   procedure Initialize (This : in out DownloadFileServlet'Class);
   function Create return DownloadFileServlet_Access;
   procedure processRequest (This : in out DownloadFileServlet; request_Param : access HttpServletRequest_Package.HttpServletRequest'Class; response_Param : access HttpServletResponse_Package.HttpServletResponse'Class);
   procedure doGet (This : in out DownloadFileServlet; request_Param : access HttpServletRequest_Package.HttpServletRequest'Class; response_Param : access HttpServletResponse_Package.HttpServletResponse'Class);
   procedure doPost (This : in out DownloadFileServlet; request_Param : access HttpServletRequest_Package.HttpServletRequest'Class; response_Param : access HttpServletResponse_Package.HttpServletResponse'Class);
   function getServletInfo (This : in out DownloadFileServlet) return Unbounded_String;

end org.allbinary.servlet.file.DownloadFileServlet_Package;


