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
--  with javax.servlet.http.HttpServletRequest_Package; use javax.servlet.http.HttpServletRequest_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with views.admin.payment.gateway.PaymentGatewayViewAbstract_Package; use views.admin.payment.gateway.PaymentGatewayViewAbstract_Package;

package views.admin.payment.gateway.GatewayView_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;

   type GatewayView is tagged;
   type GatewayView_Access is access all GatewayView'Class;
   type GatewayView_Access_Array is array (Natural range <>) of GatewayView_Access;
   type GatewayView_Access_Array_Access is access all GatewayView_Access_Array;
   type GatewayView_Access_Array_Access_Array is array (Natural range <>) of GatewayView_Access_Array_Access;
   type GatewayView_Access_Array_Access_Array_Access is access all GatewayView_Access_Array_Access_Array;

   type GatewayView is new PaymentGatewayViewAbstract with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out GatewayView'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class);
   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return GatewayView_Access;
   procedure getFormData (This : in out GatewayView; request_Param : access HttpServletRequest_Package.HttpServletRequest'Class);
   function view (This : in out GatewayView) return Unbounded_String;

end views.admin.payment.gateway.GatewayView_Package;


