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
--  with java.io.Serializable_Package; use java.io.Serializable_Package;
--  with java.util.HashMap_Package; use java.util.HashMap_Package;
--  with java.util.Set_Package; use java.util.Set_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontData_Package; use org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package; use org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
with org.allbinary.business.entry_Id.EntryData_Package; use org.allbinary.business.entry_Id.EntryData_Package;
with org.allbinary.business.user.commerce.inventory.basket.BasketInterface_Package; use org.allbinary.business.user.commerce.inventory.basket.BasketInterface_Package;
with org.allbinary.business.user.commerce.money.payment.PaymentData_Package; use org.allbinary.business.user.commerce.money.payment.PaymentData_Package;
with org.allbinary.business.user.commerce.shipping.ShippingMethodData_Package; use org.allbinary.business.user.commerce.shipping.ShippingMethodData_Package;
with org.allbinary.data.tree.dom.ModDomHelper_Package; use org.allbinary.data.tree.dom.ModDomHelper_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.string_Id.StringValidationUtil_Package; use org.allbinary.logic.string_Id.StringValidationUtil_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.allbinary.business.user.commerce.inventory.order.OrderInterface_Package; use org.allbinary.business.user.commerce.inventory.order.OrderInterface_Package;

package org.allbinary.business.user.commerce.inventory.order.Order_Package is

   package StoreFrontData_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
   package StoreFrontInterface_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
   package EntryData_Package renames Standard.org.allbinary.business.entry_Id.EntryData_Package;
   package BasketInterface_Package renames Standard.org.allbinary.business.user.commerce.inventory.basket.BasketInterface_Package;
   package PaymentData_Package renames Standard.org.allbinary.business.user.commerce.money.payment.PaymentData_Package;
   package ShippingMethodData_Package renames Standard.org.allbinary.business.user.commerce.shipping.ShippingMethodData_Package;
   package ModDomHelper_Package renames Standard.org.allbinary.data.tree.dom.ModDomHelper_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package StringValidationUtil_Package renames Standard.org.allbinary.logic.string_Id.StringValidationUtil_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type Order is tagged;
   type Order_Access is access all Order'Class;
   type Order_Access_Array is array (Natural range <>) of Order_Access;
   type Order_Access_Array_Access is access all Order_Access_Array;

   type Order is new OrderInterface and Serializable with record
      basket : BasketInterface_Access;
      paymentMethod : Unbounded_String;
      shippingType : Unbounded_String;
      storeName : Unbounded_String;
      special : Unbounded_String;
      id : Unbounded_String;
      userComment : Unbounded_String;
      userCancelComment : Unbounded_String;
      storeComment : Unbounded_String;
      storeCancelComment : Unbounded_String;
   end record;

   procedure Initialize (This : in out Order'Class; basket : BasketInterface_Access);
   function Create (basket : BasketInterface_Access) return Order_Access;
   function isIdValid (This : in out Order) return Boolean;
   procedure isIdValid (This : in out Order);
   function isValid (This : in out Order) return Boolean;
   procedure isValid (This : in out Order);
   function getIdValidationInfo (This : in out Order) return Unbounded_String;
   procedure getIdValidationInfo (This : in out Order);
   procedure setShippingMethod (This : in out Order; shippingType : Unbounded_String);
   procedure setPaymentMethod (This : in out Order; value : Unbounded_String);
   procedure setSpecial (This : in out Order; special : Unbounded_String);
   procedure setId (This : in out Order; value : Unbounded_String);
   procedure setStoreName (This : in out Order; value : Unbounded_String);
   procedure setUserComments (This : in out Order; value : Unbounded_String);
   procedure setUserCancelComments (This : in out Order; value : Unbounded_String);
   procedure setStoreComments (This : in out Order; value : Unbounded_String);
   procedure setStoreCancelComments (This : in out Order; value : Unbounded_String);
   function getBasket (This : in out Order) return BasketInterface_Access;
   procedure getBasket (This : in out Order);
   function getShippingMethod (This : in out Order) return Unbounded_String;
   procedure getShippingMethod (This : in out Order);
   function getPaymentMethod (This : in out Order) return Unbounded_String;
   procedure getPaymentMethod (This : in out Order);
   function getSpecial (This : in out Order) return Unbounded_String;
   procedure getSpecial (This : in out Order);
   function getId (This : in out Order) return Unbounded_String;
   procedure getId (This : in out Order);
   function getStoreName (This : in out Order) return Unbounded_String;
   procedure getStoreName (This : in out Order);
   function getUserComments (This : in out Order) return Unbounded_String;
   procedure getUserComments (This : in out Order);
   function getUserCancelComments (This : in out Order) return Unbounded_String;
   procedure getUserCancelComments (This : in out Order);
   function getStoreComments (This : in out Order) return Unbounded_String;
   procedure getStoreComments (This : in out Order);
   function getStoreCancelComments (This : in out Order) return Unbounded_String;
   procedure getStoreCancelComments (This : in out Order);
   function reviewOrder (This : in out Order; paymentMethod : Unbounded_String) return Unbounded_String;
   procedure reviewOrder (This : in out Order; paymentMethod : Unbounded_String);
   function viewOrder (This : in out Order; paymentMethod : Unbounded_String) return Unbounded_String;
   procedure viewOrder (This : in out Order; paymentMethod : Unbounded_String);
   function emailOrder (This : in out Order; userName : Unbounded_String; paymentMethod : Unbounded_String; storeFrontInterface : StoreFrontInterface_Access) return Unbounded_String;
   procedure emailOrder (This : in out Order; userName : Unbounded_String; paymentMethod : Unbounded_String; storeFrontInterface : StoreFrontInterface_Access);
   function toHashMapOrder (This : in out Order) return HashMap_Access;
   procedure toHashMapOrder (This : in out Order);
   function toXmlNode (This : in out Order; document : Document_Access) return Node_Access;
   procedure toXmlNode (This : in out Order; document : Document_Access);

end org.allbinary.business.user.commerce.inventory.order.Order_Package;


