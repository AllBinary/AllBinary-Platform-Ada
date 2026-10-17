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
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;
with org.allbinary.data.tree.dom.ModDomHelper_Package; use org.allbinary.data.tree.dom.ModDomHelper_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterface_Package; use org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterface_Package;
with org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayMapping_Package; use org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayMapping_Package;
with org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayData_Package; use org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayData_Package;

package org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayView_Package is

   package DomNodeInterface_Package renames Standard.org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package ModDomHelper_Package renames Standard.org.allbinary.data.tree.dom.ModDomHelper_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type PaymentGatewayView is tagged;
   type PaymentGatewayView_Access is access all PaymentGatewayView'Class;
   type PaymentGatewayView_Access_Array is array (Natural range <>) of PaymentGatewayView_Access;
   type PaymentGatewayView_Access_Array_Access is access all PaymentGatewayView_Access_Array;

   type PaymentGatewayView is new DomNodeInterface with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      paymentGatewayInterface : PaymentGatewayInterface_Access;
   end record;

   procedure Initialize (This : in out PaymentGatewayView'Class; paymentGatewayInterface : PaymentGatewayInterface_Access);
   function Create (paymentGatewayInterface : PaymentGatewayInterface_Access) return PaymentGatewayView_Access;
   function getPaymentGatewayInterface (This : in out PaymentGatewayView) return PaymentGatewayInterface_Access;
   function toHashMap (This : in out PaymentGatewayView) return HashMap_Access;
   function toXmlNode (This : in out PaymentGatewayView; document : Document_Access) return Node_Access;
   procedure toXmlNode (This : in out PaymentGatewayView; document : Document_Access);

end org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayView_Package;


