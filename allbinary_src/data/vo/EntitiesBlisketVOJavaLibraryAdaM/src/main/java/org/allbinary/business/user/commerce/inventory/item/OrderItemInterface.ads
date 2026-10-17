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
with org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package; use org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package;

package org.allbinary.business.user.commerce.inventory.item.OrderItemInterface_Package is

   package StreetAddress_Package renames Standard.org.allbinary.business.user.address.StreetAddress_Package;

   type OrderItemInterface is interface and ItemInterface;
   type OrderItemInterface_Access is access all OrderItemInterface'Class;
   type OrderItemInterface_Access_Array is array (Natural range <>) of OrderItemInterface_Access;
   type OrderItemInterface_Access_Array_Access is access all OrderItemInterface_Access_Array;
   procedure setGroup (This : in out OrderItemInterface; value : Unbounded_String) is abstract;
   procedure setTax (This : in out OrderItemInterface; value : Unbounded_String) is abstract;
   procedure setShippingType (This : in out OrderItemInterface; value : Unbounded_String) is abstract;
   procedure setShippingCost (This : in out OrderItemInterface; value : Unbounded_String) is abstract;
   procedure setShippingAddress (This : in out OrderItemInterface; value_Param : access StreetAddress_Package.StreetAddress'Class) is abstract;
   procedure setSpecial (This : in out OrderItemInterface; value : Unbounded_String) is abstract;
   function getGroup (This : in out OrderItemInterface) return Unbounded_String is abstract;
   function getTax (This : in out OrderItemInterface) return Unbounded_String is abstract;
   function getShippingType (This : in out OrderItemInterface) return Unbounded_String is abstract;
   function getShippingCost (This : in out OrderItemInterface) return Unbounded_String is abstract;
   function getShippingAddress (This : in out OrderItemInterface) return StreetAddress_Access is abstract;
   function getSpecial (This : in out OrderItemInterface) return Unbounded_String is abstract;

end org.allbinary.business.user.commerce.inventory.item.OrderItemInterface_Package;


