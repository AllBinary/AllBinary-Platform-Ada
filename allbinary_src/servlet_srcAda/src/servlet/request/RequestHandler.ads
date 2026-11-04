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

limited with servlet.request.RequestHandler_Package;
package servlet.request.RequestHandler_Package_References is
   type RequestHandler_Access is access all servlet.request.RequestHandler_Package.RequestHandler'Class;
   type RequestHandler_Access_Array is array (Natural range <>) of RequestHandler_Access;
   type RequestHandler_Access_Array_Access is access all RequestHandler_Access_Array;
   type RequestHandler_Access_Array_Access_Array is array (Natural range <>) of RequestHandler_Access_Array_Access;
   type RequestHandler_Access_Array_Access_Array_Access is access all RequestHandler_Access_Array_Access_Array;
end servlet.request.RequestHandler_Package_References;

with servlet.request.RequestHandler_Package_References;
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
with servlet.request.HttpServlet_Package; use servlet.request.HttpServlet_Package;
limited with servlet.request.ServletConfig_Package;
with servlet.request.ServletConfig_Package_References;
limited with servlet.request.HttpServletRequest_Package;
with servlet.request.HttpServletRequest_Package_References;
limited with servlet.request.HttpServletResponse_Package;
with servlet.request.HttpServletResponse_Package_References;

package servlet.request.RequestHandler_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
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
   subtype ServletConfig_Access is servlet.request.ServletConfig_Package_References.ServletConfig_Access;
   use type ServletConfig_Access;
   subtype ServletConfig_Access_Array is servlet.request.ServletConfig_Package_References.ServletConfig_Access_Array;
   use type ServletConfig_Access_Array;
   subtype ServletConfig_Access_Array_Access is servlet.request.ServletConfig_Package_References.ServletConfig_Access_Array_Access;
   use type ServletConfig_Access_Array_Access;
   subtype ServletConfig_Access_Array_Access_Array is servlet.request.ServletConfig_Package_References.ServletConfig_Access_Array_Access_Array;
   use type ServletConfig_Access_Array_Access_Array;
   subtype ServletConfig_Access_Array_Access_Array_Access is servlet.request.ServletConfig_Package_References.ServletConfig_Access_Array_Access_Array_Access;
   use type ServletConfig_Access_Array_Access_Array_Access;
   subtype HttpServletRequest_Access is servlet.request.HttpServletRequest_Package_References.HttpServletRequest_Access;
   use type HttpServletRequest_Access;
   subtype HttpServletRequest_Access_Array is servlet.request.HttpServletRequest_Package_References.HttpServletRequest_Access_Array;
   use type HttpServletRequest_Access_Array;
   subtype HttpServletRequest_Access_Array_Access is servlet.request.HttpServletRequest_Package_References.HttpServletRequest_Access_Array_Access;
   use type HttpServletRequest_Access_Array_Access;
   subtype HttpServletRequest_Access_Array_Access_Array is servlet.request.HttpServletRequest_Package_References.HttpServletRequest_Access_Array_Access_Array;
   use type HttpServletRequest_Access_Array_Access_Array;
   subtype HttpServletRequest_Access_Array_Access_Array_Access is servlet.request.HttpServletRequest_Package_References.HttpServletRequest_Access_Array_Access_Array_Access;
   use type HttpServletRequest_Access_Array_Access_Array_Access;
   subtype HttpServletResponse_Access is servlet.request.HttpServletResponse_Package_References.HttpServletResponse_Access;
   use type HttpServletResponse_Access;
   subtype HttpServletResponse_Access_Array is servlet.request.HttpServletResponse_Package_References.HttpServletResponse_Access_Array;
   use type HttpServletResponse_Access_Array;
   subtype HttpServletResponse_Access_Array_Access is servlet.request.HttpServletResponse_Package_References.HttpServletResponse_Access_Array_Access;
   use type HttpServletResponse_Access_Array_Access;
   subtype HttpServletResponse_Access_Array_Access_Array is servlet.request.HttpServletResponse_Package_References.HttpServletResponse_Access_Array_Access_Array;
   use type HttpServletResponse_Access_Array_Access_Array;
   subtype HttpServletResponse_Access_Array_Access_Array_Access is servlet.request.HttpServletResponse_Package_References.HttpServletResponse_Access_Array_Access_Array_Access;
   use type HttpServletResponse_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype RequestHandler_Access is servlet.request.RequestHandler_Package_References.RequestHandler_Access;
   function "=" (Left, Right : RequestHandler_Access) return Boolean renames servlet.request.RequestHandler_Package_References."=";
   subtype RequestHandler_Access_Array is servlet.request.RequestHandler_Package_References.RequestHandler_Access_Array;
   function "=" (Left, Right : RequestHandler_Access_Array) return Boolean renames servlet.request.RequestHandler_Package_References."=";
   subtype RequestHandler_Access_Array_Access is servlet.request.RequestHandler_Package_References.RequestHandler_Access_Array_Access;
   function "=" (Left, Right : RequestHandler_Access_Array_Access) return Boolean renames servlet.request.RequestHandler_Package_References."=";
   subtype RequestHandler_Access_Array_Access_Array is servlet.request.RequestHandler_Package_References.RequestHandler_Access_Array_Access_Array;
   function "=" (Left, Right : RequestHandler_Access_Array_Access_Array) return Boolean renames servlet.request.RequestHandler_Package_References."=";
   subtype RequestHandler_Access_Array_Access_Array_Access is servlet.request.RequestHandler_Package_References.RequestHandler_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RequestHandler_Access_Array_Access_Array_Access) return Boolean renames servlet.request.RequestHandler_Package_References."=";

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


