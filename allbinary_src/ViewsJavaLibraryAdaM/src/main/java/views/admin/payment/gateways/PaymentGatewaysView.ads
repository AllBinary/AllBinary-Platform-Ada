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
--  with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.business.entry_Id.EntryData_Package; use org.allbinary.business.entry_Id.EntryData_Package;
with org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayData_Package; use org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayData_Package;
with org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewaysData_Package; use org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewaysData_Package;
with org.allbinary.business.user.commerce.money.payment.types.BasicPaymentType_Package; use org.allbinary.business.user.commerce.money.payment.types.BasicPaymentType_Package;
with org.allbinary.business.user.commerce.money.payment.types.PaymentTypeUtil_Package; use org.allbinary.business.user.commerce.money.payment.types.PaymentTypeUtil_Package;
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;
with org.allbinary.data.tree.dom.ModDomHelper_Package; use org.allbinary.data.tree.dom.ModDomHelper_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with views.business.context.modules.storefront.HttpStoreComponentView_Package; use views.business.context.modules.storefront.HttpStoreComponentView_Package;

package views.admin.payment.gateways.PaymentGatewaysView_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package EntryData_Package renames Standard.org.allbinary.business.entry_Id.EntryData_Package;
   package PaymentGatewayData_Package renames Standard.org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayData_Package;
   package PaymentGatewaysData_Package renames Standard.org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewaysData_Package;
   package BasicPaymentType_Package renames Standard.org.allbinary.business.user.commerce.money.payment.types.BasicPaymentType_Package;
   package PaymentTypeUtil_Package renames Standard.org.allbinary.business.user.commerce.money.payment.types.PaymentTypeUtil_Package;
   package DomNodeInterface_Package renames Standard.org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package ModDomHelper_Package renames Standard.org.allbinary.data.tree.dom.ModDomHelper_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   package HttpStoreComponentView_Package renames Standard.views.business.context.modules.storefront.HttpStoreComponentView_Package;

   type PaymentGatewaysView is tagged;
   type PaymentGatewaysView_Access is access all PaymentGatewaysView'Class;
   type PaymentGatewaysView_Access_Array is array (Natural range <>) of PaymentGatewaysView_Access;
   type PaymentGatewaysView_Access_Array_Access is access all PaymentGatewaysView_Access_Array;

   type PaymentGatewaysView is new HttpStoreComponentView and DomNodeInterface with record
      logUtil : LogUtil_Access;
      paymentGatewayVector : BasicArrayList_Access;
   end record;

   procedure Initialize (This : in out PaymentGatewaysView'Class; transformInfoInterface_Param : access TransformInfoInterface'Class; gatewayVector_Param : access BasicArrayList'Class);
   function Create (transformInfoInterface_Param : access TransformInfoInterface'Class; gatewayVector_Param : access BasicArrayList'Class) return PaymentGatewaysView_Access;
   function toXmlNode (This : in out PaymentGatewaysView; document_Param : access Document'Class) return Node_Access;
   procedure toXmlNode (This : in out PaymentGatewaysView; document_Param : access Document'Class);
   procedure addDomNodeInterfaces (This : in out PaymentGatewaysView);
   function view (This : in out PaymentGatewaysView) return Unbounded_String;

end views.admin.payment.gateways.PaymentGatewaysView_Package;


