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
with java.util.HashMap_Package; use java.util.HashMap_Package;
--  with java.util.Set_Package; use java.util.Set_Package;
with org.allbinary.business.user.address.StreetAddress_Package; use org.allbinary.business.user.address.StreetAddress_Package;
with org.allbinary.business.user.commerce.inventory.basket.BasketInterface_Package; use org.allbinary.business.user.commerce.inventory.basket.BasketInterface_Package;
with org.allbinary.business.user.commerce.money.Money_Package; use org.allbinary.business.user.commerce.money.Money_Package;
with org.allbinary.business.user.commerce.money.payment.Payment_Package; use org.allbinary.business.user.commerce.money.payment.Payment_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.allbinary.business.user.commerce.inventory.order.Order_Package; use org.allbinary.business.user.commerce.inventory.order.Order_Package;
with org.allbinary.business.user.commerce.inventory.order.OrderHistoryInterface_Package; use org.allbinary.business.user.commerce.inventory.order.OrderHistoryInterface_Package;

package org.allbinary.business.user.commerce.inventory.order.OrderHistory_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package StreetAddress_Package renames Standard.org.allbinary.business.user.address.StreetAddress_Package;
   package BasketInterface_Package renames Standard.org.allbinary.business.user.commerce.inventory.basket.BasketInterface_Package;
   package Money_Package renames Standard.org.allbinary.business.user.commerce.money.Money_Package;
   package Payment_Package renames Standard.org.allbinary.business.user.commerce.money.payment.Payment_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type OrderHistory is tagged;
   type OrderHistory_Access is access all OrderHistory'Class;
   type OrderHistory_Access_Array is array (Natural range <>) of OrderHistory_Access;
   type OrderHistory_Access_Array_Access is access all OrderHistory_Access_Array;
   type OrderHistory_Access_Array_Access_Array is array (Natural range <>) of OrderHistory_Access_Array_Access;
   type OrderHistory_Access_Array_Access_Array_Access is access all OrderHistory_Access_Array_Access_Array;

   type OrderHistory is new Order and OrderHistoryInterface with record
      userName : Unbounded_String;
      shippingAddress : StreetAddress_Access;
      billingAddress : StreetAddress_Access;
      payment : Payment_Access;
      shipDate : Unbounded_String;
      orderDate : Unbounded_String;
      transDate : Unbounded_String;
      cancelDate : Unbounded_String;
      status : Unbounded_String;
      subTotal : Money_Access;
      shippingCost : Money_Access;
      taxes : Money_Access;
      total : Money_Access;
   end record;

   procedure Initialize (This : in out OrderHistory'Class; basketInterface_Param : access BasketInterface_Package.BasketInterface'Class);
   function Create (basketInterface_Param : access BasketInterface_Package.BasketInterface'Class) return OrderHistory_Access;
   procedure Initialize (This : in out OrderHistory'Class; basketInterface_Param : access BasketInterface_Package.BasketInterface'Class; orderHistory_Param : access OrderHistory_Package.OrderHistory'Class);
   function Create (basketInterface_Param : access BasketInterface_Package.BasketInterface'Class; orderHistory_Param : access OrderHistory_Package.OrderHistory'Class) return OrderHistory_Access;
   procedure Initialize (This : in out OrderHistory'Class; basketInterface_Param : access BasketInterface_Package.BasketInterface'Class; orderHistoryHashMap_Param : access HashMap_Package.HashMap'Class);
   function Create (basketInterface_Param : access BasketInterface_Package.BasketInterface'Class; orderHistoryHashMap_Param : access HashMap_Package.HashMap'Class) return OrderHistory_Access;
   procedure setUserName (This : in out OrderHistory; value : Unbounded_String);
   procedure setDefaultShippingAddress (This : in out OrderHistory; shippingAddress_Param : access StreetAddress_Package.StreetAddress'Class);
   procedure setBillingAddress (This : in out OrderHistory; billingAddress_Param : access StreetAddress_Package.StreetAddress'Class);
   procedure setPaymentInfo (This : in out OrderHistory; payment_Param : access Payment_Package.Payment'Class);
   procedure setShipDate (This : in out OrderHistory; value : Unbounded_String);
   procedure setOrderDate (This : in out OrderHistory; value : Unbounded_String);
   procedure setTransDate (This : in out OrderHistory; value : Unbounded_String);
   procedure setCancelDate (This : in out OrderHistory; value : Unbounded_String);
   procedure setStatus (This : in out OrderHistory; value : Unbounded_String);
   procedure setSubTotal (This : in out OrderHistory; value_Param : access Money_Package.Money'Class);
   procedure setShippingCost (This : in out OrderHistory; value_Param : access Money_Package.Money'Class);
   procedure setTaxes (This : in out OrderHistory; value_Param : access Money_Package.Money'Class);
   procedure setTotal (This : in out OrderHistory; value_Param : access Money_Package.Money'Class);
   function getUserName (This : in out OrderHistory) return Unbounded_String;
   function getShippingAddress (This : in out OrderHistory) return StreetAddress_Access;
   function getBillingAddress (This : in out OrderHistory) return StreetAddress_Access;
   function getPaymentInfo (This : in out OrderHistory) return Payment_Access;
   function getShipDate (This : in out OrderHistory) return Unbounded_String;
   function getOrderDate (This : in out OrderHistory) return Unbounded_String;
   function getTransDate (This : in out OrderHistory) return Unbounded_String;
   function getCancelDate (This : in out OrderHistory) return Unbounded_String;
   function getStatus (This : in out OrderHistory) return Unbounded_String;
   function getSubTotal (This : in out OrderHistory) return Money_Access;
   function getShippingCost (This : in out OrderHistory) return Money_Access;
   function getTaxes (This : in out OrderHistory) return Money_Access;
   function getTotal (This : in out OrderHistory) return Money_Access;
   function toHashMap (This : in out OrderHistory) return HashMap_Access;
   function toXmlNode (This : in out OrderHistory; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toXmlNode (This : in out OrderHistory; document_Param : access Document_Package.Document'Class);

end org.allbinary.business.user.commerce.inventory.order.OrderHistory_Package;


