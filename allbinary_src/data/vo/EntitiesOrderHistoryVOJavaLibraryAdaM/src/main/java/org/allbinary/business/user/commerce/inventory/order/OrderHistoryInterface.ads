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
with org.allbinary.business.user.address.StreetAddress_Package; use org.allbinary.business.user.address.StreetAddress_Package;
with org.allbinary.business.user.commerce.money.Money_Package; use org.allbinary.business.user.commerce.money.Money_Package;
with org.allbinary.business.user.commerce.money.payment.Payment_Package; use org.allbinary.business.user.commerce.money.payment.Payment_Package;

package org.allbinary.business.user.commerce.inventory.order.OrderHistoryInterface_Package is

   package StreetAddress_Package renames Standard.org.allbinary.business.user.address.StreetAddress_Package;
   package Money_Package renames Standard.org.allbinary.business.user.commerce.money.Money_Package;
   package Payment_Package renames Standard.org.allbinary.business.user.commerce.money.payment.Payment_Package;

   type OrderHistoryInterface is interface;
   type OrderHistoryInterface_Access is access all OrderHistoryInterface'Class;
   type OrderHistoryInterface_Access_Array is array (Natural range <>) of OrderHistoryInterface_Access;
   type OrderHistoryInterface_Access_Array_Access is access all OrderHistoryInterface_Access_Array;
   procedure setUserName (This : in out OrderHistoryInterface; value : Unbounded_String) is abstract;
   procedure setDefaultShippingAddress (This : in out OrderHistoryInterface; shippingAddress : StreetAddress_Access) is abstract;
   procedure setBillingAddress (This : in out OrderHistoryInterface; billingAddress : StreetAddress_Access) is abstract;
   procedure setPaymentInfo (This : in out OrderHistoryInterface; payment : Payment_Access) is abstract;
   procedure setShipDate (This : in out OrderHistoryInterface; value : Unbounded_String) is abstract;
   procedure setOrderDate (This : in out OrderHistoryInterface; value : Unbounded_String) is abstract;
   procedure setTransDate (This : in out OrderHistoryInterface; value : Unbounded_String) is abstract;
   procedure setCancelDate (This : in out OrderHistoryInterface; value : Unbounded_String) is abstract;
   procedure setStatus (This : in out OrderHistoryInterface; value : Unbounded_String) is abstract;
   procedure setSubTotal (This : in out OrderHistoryInterface; value : Money_Access) is abstract;
   procedure setShippingCost (This : in out OrderHistoryInterface; value : Money_Access) is abstract;
   procedure setTaxes (This : in out OrderHistoryInterface; value : Money_Access) is abstract;
   procedure setTotal (This : in out OrderHistoryInterface; value : Money_Access) is abstract;
   function getUserName (This : in out OrderHistoryInterface) return Unbounded_String is abstract;
   function getShippingAddress (This : in out OrderHistoryInterface) return StreetAddress_Access is abstract;
   function getBillingAddress (This : in out OrderHistoryInterface) return StreetAddress_Access is abstract;
   function getPaymentInfo (This : in out OrderHistoryInterface) return Payment_Access is abstract;
   function getShipDate (This : in out OrderHistoryInterface) return Unbounded_String is abstract;
   function getOrderDate (This : in out OrderHistoryInterface) return Unbounded_String is abstract;
   function getTransDate (This : in out OrderHistoryInterface) return Unbounded_String is abstract;
   function getCancelDate (This : in out OrderHistoryInterface) return Unbounded_String is abstract;
   function getStatus (This : in out OrderHistoryInterface) return Unbounded_String is abstract;
   function getSubTotal (This : in out OrderHistoryInterface) return Money_Access is abstract;
   function getShippingCost (This : in out OrderHistoryInterface) return Money_Access is abstract;
   function getTaxes (This : in out OrderHistoryInterface) return Money_Access is abstract;
   function getTotal (This : in out OrderHistoryInterface) return Money_Access is abstract;
   function getPaymentMethod (This : in out OrderHistoryInterface) return Unbounded_String is abstract;

end org.allbinary.business.user.commerce.inventory.order.OrderHistoryInterface_Package;


