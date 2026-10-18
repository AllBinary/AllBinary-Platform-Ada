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
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with views.admin.payment.gateway.PaymentGatewayViewAbstract_Package; use views.admin.payment.gateway.PaymentGatewayViewAbstract_Package;

package views.admin.payment.gateways.SelectNewView_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package PaymentGatewayViewAbstract_Package renames Standard.views.admin.payment.gateway.PaymentGatewayViewAbstract_Package;

   type SelectNewView is tagged;
   type SelectNewView_Access is access all SelectNewView'Class;
   type SelectNewView_Access_Array is array (Natural range <>) of SelectNewView_Access;
   type SelectNewView_Access_Array_Access is access all SelectNewView_Access_Array;
   type SelectNewView_Access_Array_Access_Array is array (Natural range <>) of SelectNewView_Access_Array_Access;
   type SelectNewView_Access_Array_Access_Array_Access is access all SelectNewView_Access_Array_Access_Array;

   type SelectNewView is new PaymentGatewayViewAbstract with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out SelectNewView'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class);
   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return SelectNewView_Access;
   function view (This : in out SelectNewView) return Unbounded_String;

end views.admin.payment.gateways.SelectNewView_Package;


