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

package org.allbinary.servlet.ImageServlet_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type ImageServlet is tagged;
   type ImageServlet_Access is access all ImageServlet'Class;
   type ImageServlet_Access_Array is array (Natural range <>) of ImageServlet_Access;
   type ImageServlet_Access_Array_Access is access all ImageServlet_Access_Array;
   type ImageServlet_Access_Array_Access_Array is array (Natural range <>) of ImageServlet_Access_Array_Access;
   type ImageServlet_Access_Array_Access_Array_Access is access all ImageServlet_Access_Array_Access_Array;

   type ImageServlet is new Java_Object with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
   end record;

   procedure Initialize (This : in out ImageServlet'Class);
   function Create return ImageServlet_Access;
   procedure processRequest (This : in out ImageServlet; request_Param : access HttpServletRequest_Package.HttpServletRequest'Class; response_Param : access HttpServletResponse_Package.HttpServletResponse'Class);
   procedure doGet (This : in out ImageServlet; request_Param : access HttpServletRequest_Package.HttpServletRequest'Class; response_Param : access HttpServletResponse_Package.HttpServletResponse'Class);
   procedure doPost (This : in out ImageServlet; request_Param : access HttpServletRequest_Package.HttpServletRequest'Class; response_Param : access HttpServletResponse_Package.HttpServletResponse'Class);
   function getServletInfo (This : in out ImageServlet) return Unbounded_String;

end org.allbinary.servlet.ImageServlet_Package;


