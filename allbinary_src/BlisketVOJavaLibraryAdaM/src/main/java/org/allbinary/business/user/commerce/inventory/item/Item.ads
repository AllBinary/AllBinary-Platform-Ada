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
with org.allbinary.business.entry_Id.EntryData_Package; use org.allbinary.business.entry_Id.EntryData_Package;
with org.allbinary.business.user.address.ShippingAddressData_Package; use org.allbinary.business.user.address.ShippingAddressData_Package;
with org.allbinary.business.user.address.StreetAddress_Package; use org.allbinary.business.user.address.StreetAddress_Package;
with org.allbinary.business.user.address.StreetAddressData_Package; use org.allbinary.business.user.address.StreetAddressData_Package;
with org.allbinary.business.user.commerce.inventory.order.OrderHistoryData_Package; use org.allbinary.business.user.commerce.inventory.order.OrderHistoryData_Package;
with org.allbinary.business.user.commerce.money.MoneyException_Package; use org.allbinary.business.user.commerce.money.MoneyException_Package;
with org.allbinary.business.user.commerce.shipping.ShippingMethodData_Package; use org.allbinary.business.user.commerce.shipping.ShippingMethodData_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.business.user.commerce.inventory.item.BasicItem_Package; use org.allbinary.business.user.commerce.inventory.item.BasicItem_Package;
with org.allbinary.business.user.commerce.inventory.item.OrderItemInterface_Package; use org.allbinary.business.user.commerce.inventory.item.OrderItemInterface_Package;

package org.allbinary.business.user.commerce.inventory.item.Item_Package is

   package EntryData_Package renames org.allbinary.business.entry_Id.EntryData_Package;
   package ShippingAddressData_Package renames org.allbinary.business.user.address.ShippingAddressData_Package;
   package StreetAddress_Package renames org.allbinary.business.user.address.StreetAddress_Package;
   package StreetAddressData_Package renames org.allbinary.business.user.address.StreetAddressData_Package;
   package OrderHistoryData_Package renames org.allbinary.business.user.commerce.inventory.order.OrderHistoryData_Package;
   package MoneyException_Package renames org.allbinary.business.user.commerce.money.MoneyException_Package;
   package ShippingMethodData_Package renames org.allbinary.business.user.commerce.shipping.ShippingMethodData_Package;
   package StringUtil_Package renames org.allbinary.logic.string_Id.StringUtil_Package;

   type Item is tagged;
   type Item_Access is access all Item'Class;
   type Item_Access_Array is array (Natural range <>) of Item_Access;
   type Item_Access_Array_Access is access all Item_Access_Array;

   type Item is new BasicItem and OrderItemInterface with record
      group : Unbounded_String;
      tax : Unbounded_String;
      shippingType : Unbounded_String;
      shippingCost : Unbounded_String;
      shippedDate : Unbounded_String;
      shippingAddress : StreetAddress_Access;
      special : Unbounded_String;
   end record;

   procedure Initialize (This : in out Item'Class; itemHashMap : HashMap_Access);
   function Create (itemHashMap : HashMap_Access) return Item_Access;
   procedure setData (This : in out Item; itemHashMap : HashMap_Access);
   procedure setGroup (This : in out Item; value : Unbounded_String);
   procedure setTax (This : in out Item; value : Unbounded_String);
   procedure setShippingType (This : in out Item; value : Unbounded_String);
   procedure setShippingCost (This : in out Item; value : Unbounded_String);
   procedure setShippingAddress (This : in out Item; value : StreetAddress_Access);
   procedure setSpecial (This : in out Item; value : Unbounded_String);
   function getGroup (This : in out Item) return Unbounded_String;
   procedure getGroup (This : in out Item);
   function getTax (This : in out Item) return Unbounded_String;
   procedure getTax (This : in out Item);
   function getShippingType (This : in out Item) return Unbounded_String;
   procedure getShippingType (This : in out Item);
   function getShippingCost (This : in out Item) return Unbounded_String;
   procedure getShippingCost (This : in out Item);
   function getShippingAddress (This : in out Item) return StreetAddress_Access;
   procedure getShippingAddress (This : in out Item);
   function getSpecial (This : in out Item) return Unbounded_String;
   procedure getSpecial (This : in out Item);
   function toHashMap (This : in out Item) return HashMap_Access;
   procedure toHashMap (This : in out Item);

end org.allbinary.business.user.commerce.inventory.item.Item_Package;


