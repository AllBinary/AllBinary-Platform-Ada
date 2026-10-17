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

package org.allbinary.business.user.commerce.shipping.modules.UspsShippingModule_Package is

   package OrderInterface_Package renames Standard.org.allbinary.business.user.commerce.inventory.order.OrderInterface_Package;
   package Money_Package renames Standard.org.allbinary.business.user.commerce.money.Money_Package;

   type UspsShippingModule is tagged;
   type UspsShippingModule_Access is access all UspsShippingModule'Class;
   type UspsShippingModule_Access_Array is array (Natural range <>) of UspsShippingModule_Access;
   type UspsShippingModule_Access_Array_Access is access all UspsShippingModule_Access_Array;

   type UspsShippingModule is new ShippingInterface with record
      name : Unbounded_String;
      description : Unbounded_String;
   end record;

   procedure Initialize (This : in out UspsShippingModule'Class);
   function Create return UspsShippingModule_Access;
   function getCost (This : in out UspsShippingModule; order : OrderInterface_Access) return Money_Access;
   procedure getCost (This : in out UspsShippingModule; order : OrderInterface_Access);
   function getDescription (This : in out UspsShippingModule) return Unbounded_String;
   function getName (This : in out UspsShippingModule) return Unbounded_String;

end org.allbinary.business.user.commerce.shipping.modules.UspsShippingModule_Package;


