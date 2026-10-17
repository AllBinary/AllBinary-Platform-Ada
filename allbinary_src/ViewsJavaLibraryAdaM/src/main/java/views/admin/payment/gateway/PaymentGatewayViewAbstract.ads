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
with org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayData_Package; use org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayData_Package;
with org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayPrimaryKey_Package; use org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayPrimaryKey_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoHttpComposite_Package; use org.allbinary.logic.visual.transform.info.TransformInfoHttpComposite_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;

package views.admin.payment.gateway.PaymentGatewayViewAbstract_Package is

   package PaymentGatewayData_Package renames Standard.org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayData_Package;
   package PaymentGatewayPrimaryKey_Package renames Standard.org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayPrimaryKey_Package;
   package TransformInfoHttpComposite_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoHttpComposite_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;

   type PaymentGatewayViewAbstract is tagged;
   type PaymentGatewayViewAbstract_Access is access all PaymentGatewayViewAbstract'Class;
   type PaymentGatewayViewAbstract_Access_Array is array (Natural range <>) of PaymentGatewayViewAbstract_Access;
   type PaymentGatewayViewAbstract_Access_Array_Access is access all PaymentGatewayViewAbstract_Access_Array;

   type PaymentGatewayViewAbstract is new TransformInfoHttpComposite with record
      paymentGatewayPrimaryKey : PaymentGatewayPrimaryKey_Access;
   end record;

   procedure Initialize (This : in out PaymentGatewayViewAbstract'Class; transformInfoInterface : TransformInfoInterface_Access);
   function Create (transformInfoInterface : TransformInfoInterface_Access) return PaymentGatewayViewAbstract_Access;
   procedure getFormData (This : in out PaymentGatewayViewAbstract; request : HttpServletRequest_Access);
   function getPaymentGatewayPrimaryKey (This : in out PaymentGatewayViewAbstract) return PaymentGatewayPrimaryKey_Access;
   procedure setPaymentGatewayPrimaryKey (This : in out PaymentGatewayViewAbstract; paymentGatewayPrimaryKey : PaymentGatewayPrimaryKey_Access);

end views.admin.payment.gateway.PaymentGatewayViewAbstract_Package;


