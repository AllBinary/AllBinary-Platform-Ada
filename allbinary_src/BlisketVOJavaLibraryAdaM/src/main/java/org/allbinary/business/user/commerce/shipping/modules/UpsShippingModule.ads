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
with org.allbinary.business.user.commerce.inventory.order.OrderInterface_Package; use org.allbinary.business.user.commerce.inventory.order.OrderInterface_Package;
with org.allbinary.business.user.commerce.money.Money_Package; use org.allbinary.business.user.commerce.money.Money_Package;
with org.allbinary.business.user.commerce.shipping.modules.ShippingInterface_Package; use org.allbinary.business.user.commerce.shipping.modules.ShippingInterface_Package;

package org.allbinary.business.user.commerce.shipping.modules.UpsShippingModule_Package is

   package OrderInterface_Package renames Standard.org.allbinary.business.user.commerce.inventory.order.OrderInterface_Package;
   package Money_Package renames Standard.org.allbinary.business.user.commerce.money.Money_Package;

   type UpsShippingModule is tagged;
   type UpsShippingModule_Access is access all UpsShippingModule'Class;
   type UpsShippingModule_Access_Array is array (Natural range <>) of UpsShippingModule_Access;
   type UpsShippingModule_Access_Array_Access is access all UpsShippingModule_Access_Array;
   type UpsShippingModule_Access_Array_Access_Array is array (Natural range <>) of UpsShippingModule_Access_Array_Access;
   type UpsShippingModule_Access_Array_Access_Array_Access is access all UpsShippingModule_Access_Array_Access_Array;

   type UpsShippingModule is new Java_Object and ShippingInterface with record
      name : Unbounded_String;
      description : Unbounded_String;
   end record;

   procedure Initialize (This : in out UpsShippingModule'Class);
   function Create return UpsShippingModule_Access;
   function getCost (This : in out UpsShippingModule; order_Param : access OrderInterface_Package.OrderInterface'Class) return Money_Access;
   procedure getCost (This : in out UpsShippingModule; order_Param : access OrderInterface_Package.OrderInterface'Class);
   function getDescription (This : in out UpsShippingModule) return Unbounded_String;
   function getName (This : in out UpsShippingModule) return Unbounded_String;

end org.allbinary.business.user.commerce.shipping.modules.UpsShippingModule_Package;


