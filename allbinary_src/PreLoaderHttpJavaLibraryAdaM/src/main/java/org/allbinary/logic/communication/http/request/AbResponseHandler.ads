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
--  with javax.servlet.RequestDispatcher_Package; use javax.servlet.RequestDispatcher_Package;
--  with javax.servlet.ServletException_Package; use javax.servlet.ServletException_Package;
--  with javax.servlet.http.HttpServletRequest_Package; use javax.servlet.http.HttpServletRequest_Package;
--  with javax.servlet.http.HttpServletResponse_Package; use javax.servlet.http.HttpServletResponse_Package;
--  with javax.servlet.jsp.JspTagException_Package; use javax.servlet.jsp.JspTagException_Package;
--  with javax.servlet.jsp.PageContext_Package; use javax.servlet.jsp.PageContext_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;

package org.allbinary.logic.communication.http.request.AbResponseHandler_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;

   type AbResponseHandler is tagged;
   type AbResponseHandler_Access is access all AbResponseHandler'Class;
   type AbResponseHandler_Access_Array is array (Natural range <>) of AbResponseHandler_Access;
   type AbResponseHandler_Access_Array_Access is access all AbResponseHandler_Access_Array;
   type AbResponseHandler_Access_Array_Access_Array is array (Natural range <>) of AbResponseHandler_Access_Array_Access;
   type AbResponseHandler_Access_Array_Access_Array_Access is access all AbResponseHandler_Access_Array_Access_Array;

   type AbResponseHandler is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out AbResponseHandler'Class);
   function Create return AbResponseHandler_Access;
   procedure sendJspTagRedirect (pageContext_Param : access PageContext_Package.PageContext'Class; e_Param : access Java_Throwable_Object'Class);
   procedure sendServletRedirect (pageContext_Param : access PageContext_Package.PageContext'Class; e_Param : access Java_Throwable_Object'Class);
   procedure sendJspTagLicensingRedirect (pageContext_Param : access PageContext_Package.PageContext'Class; e_Param : access Java_Throwable_Object'Class);
   procedure sendServletLicensingRedirect (pageContext_Param : access PageContext_Package.PageContext'Class; e_Param : access Java_Throwable_Object'Class);
   procedure sendRedirect (pageContext_Param : access PageContext_Package.PageContext'Class; page : Unbounded_String);

end org.allbinary.logic.communication.http.request.AbResponseHandler_Package;


