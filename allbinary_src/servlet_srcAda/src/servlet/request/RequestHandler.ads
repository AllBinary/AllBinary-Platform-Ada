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
with servlet.request.HttpServlet_Package; use servlet.request.HttpServlet_Package;
with servlet.request.ServletConfig_Package; use servlet.request.ServletConfig_Package;
with servlet.request.HttpServletRequest_Package; use servlet.request.HttpServletRequest_Package;
with servlet.request.HttpServletResponse_Package; use servlet.request.HttpServletResponse_Package;

package servlet.request.RequestHandler_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;

   type RequestHandler is tagged;
   type RequestHandler_Access is access all RequestHandler'Class;
   type RequestHandler_Access_Array is array (Natural range <>) of RequestHandler_Access;
   type RequestHandler_Access_Array_Access is access all RequestHandler_Access_Array;
   type RequestHandler_Access_Array_Access_Array is array (Natural range <>) of RequestHandler_Access_Array_Access;
   type RequestHandler_Access_Array_Access_Array_Access is access all RequestHandler_Access_Array_Access_Array;

   type RequestHandler is new HttpServlet with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out RequestHandler'Class);
   function Create return RequestHandler_Access;
   procedure init (This : in out RequestHandler; config_Param : access ServletConfig_Package.ServletConfig'Class);
   procedure destroy (This : in out RequestHandler);
   procedure processRequest (This : in out RequestHandler; request_Param : access HttpServletRequest_Package.HttpServletRequest'Class; response_Param : access HttpServletResponse_Package.HttpServletResponse'Class);
   procedure doGet (This : in out RequestHandler; request_Param : access HttpServletRequest_Package.HttpServletRequest'Class; response_Param : access HttpServletResponse_Package.HttpServletResponse'Class);
   procedure doPost (This : in out RequestHandler; request_Param : access HttpServletRequest_Package.HttpServletRequest'Class; response_Param : access HttpServletResponse_Package.HttpServletResponse'Class);
   function getServletInfo (This : in out RequestHandler) return Unbounded_String;

end servlet.request.RequestHandler_Package;


