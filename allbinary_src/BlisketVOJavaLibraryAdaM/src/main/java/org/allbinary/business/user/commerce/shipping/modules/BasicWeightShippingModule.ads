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
with org.allbinary.business.user.commerce.inventory.basket.BasketInterface_Package; use org.allbinary.business.user.commerce.inventory.basket.BasketInterface_Package;
with org.allbinary.business.user.commerce.inventory.order.OrderInterface_Package; use org.allbinary.business.user.commerce.inventory.order.OrderInterface_Package;
with org.allbinary.business.user.commerce.money.Money_Package; use org.allbinary.business.user.commerce.money.Money_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.business.user.commerce.shipping.modules.ShippingInterface_Package; use org.allbinary.business.user.commerce.shipping.modules.ShippingInterface_Package;

package org.allbinary.business.user.commerce.shipping.modules.BasicWeightShippingModule_Package is

   package BasketInterface_Package renames Standard.org.allbinary.business.user.commerce.inventory.basket.BasketInterface_Package;
   package OrderInterface_Package renames Standard.org.allbinary.business.user.commerce.inventory.order.OrderInterface_Package;
   package Money_Package renames Standard.org.allbinary.business.user.commerce.money.Money_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type BasicWeightShippingModule is tagged;
   type BasicWeightShippingModule_Access is access all BasicWeightShippingModule'Class;
   type BasicWeightShippingModule_Access_Array is array (Natural range <>) of BasicWeightShippingModule_Access;
   type BasicWeightShippingModule_Access_Array_Access is access all BasicWeightShippingModule_Access_Array;

   type BasicWeightShippingModule is new ShippingInterface with record
      commonStrings : CommonStrings_Access;
      name : Unbounded_String;
      description : Unbounded_String;
   end record;

   procedure Initialize (This : in out BasicWeightShippingModule'Class);
   function Create return BasicWeightShippingModule_Access;
   function getCost (This : in out BasicWeightShippingModule; order : OrderInterface_Access) return Money_Access;
   procedure getCost (This : in out BasicWeightShippingModule; order : OrderInterface_Access);
   function getDescription (This : in out BasicWeightShippingModule) return Unbounded_String;
   procedure getDescription (This : in out BasicWeightShippingModule);
   function getName (This : in out BasicWeightShippingModule) return Unbounded_String;
   procedure getName (This : in out BasicWeightShippingModule);

end org.allbinary.business.user.commerce.shipping.modules.BasicWeightShippingModule_Package;


