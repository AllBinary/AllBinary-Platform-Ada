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
with org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterface_Package; use org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterface_Package;
with org.allbinary.business.user.commerce.money.payment.gateway.modules.gateway.PaymentGatewayDomNodeFactoryInterface_Package; use org.allbinary.business.user.commerce.money.payment.gateway.modules.gateway.PaymentGatewayDomNodeFactoryInterface_Package;
with org.allbinary.business.user.commerce.money.payment.types.BasicPaymentType_Package; use org.allbinary.business.user.commerce.money.payment.types.BasicPaymentType_Package;
with org.allbinary.business.user.commerce.money.payment.types.BasicPaymentTypeUtil_Package; use org.allbinary.business.user.commerce.money.payment.types.BasicPaymentTypeUtil_Package;
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with views.business.context.modules.storefront.HttpStoreComponentView_Package; use views.business.context.modules.storefront.HttpStoreComponentView_Package;

package views.admin.payment.gateway.PaymentGatewayComponent_Package is

   package PaymentGatewayInterface_Package renames Standard.org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterface_Package;
   package PaymentGatewayDomNodeFactoryInterface_Package renames Standard.org.allbinary.business.user.commerce.money.payment.gateway.modules.gateway.PaymentGatewayDomNodeFactoryInterface_Package;
   package BasicPaymentType_Package renames Standard.org.allbinary.business.user.commerce.money.payment.types.BasicPaymentType_Package;
   package BasicPaymentTypeUtil_Package renames Standard.org.allbinary.business.user.commerce.money.payment.types.BasicPaymentTypeUtil_Package;
   package DomNodeInterface_Package renames Standard.org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package HttpStoreComponentView_Package renames Standard.views.business.context.modules.storefront.HttpStoreComponentView_Package;

   type PaymentGatewayComponent is tagged;
   type PaymentGatewayComponent_Access is access all PaymentGatewayComponent'Class;
   type PaymentGatewayComponent_Access_Array is array (Natural range <>) of PaymentGatewayComponent_Access;
   type PaymentGatewayComponent_Access_Array_Access is access all PaymentGatewayComponent_Access_Array;

   type PaymentGatewayComponent is new HttpStoreComponentView with record
      logUtil : LogUtil_Access;
      paymentGatewayInterface : PaymentGatewayInterface_Access;
   end record;

   procedure Initialize (This : in out PaymentGatewayComponent'Class; transformInfoInterface : TransformInfoInterface_Access; paymentGatewayInterface : PaymentGatewayInterface_Access);
   function Create (transformInfoInterface : TransformInfoInterface_Access; paymentGatewayInterface : PaymentGatewayInterface_Access) return PaymentGatewayComponent_Access;
   procedure addDomNodeInterfaces (This : in out PaymentGatewayComponent);
   function view (This : in out PaymentGatewayComponent) return Unbounded_String;

end views.admin.payment.gateway.PaymentGatewayComponent_Package;


