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

package org.allbinary.business.user.commerce.shipping.modules.ShippingInterface_Package is

   package OrderInterface_Package renames Standard.org.allbinary.business.user.commerce.inventory.order.OrderInterface_Package;
   package Money_Package renames Standard.org.allbinary.business.user.commerce.money.Money_Package;

   type ShippingInterface is interface;
   type ShippingInterface_Access is access all ShippingInterface'Class;
   type ShippingInterface_Access_Array is array (Natural range <>) of ShippingInterface_Access;
   type ShippingInterface_Access_Array_Access is access all ShippingInterface_Access_Array;
   function getCost (This : in out ShippingInterface; order_Param : access OrderInterface'Class) return Money_Access is abstract;
   function getName (This : in out ShippingInterface) return Unbounded_String is abstract;
   function getDescription (This : in out ShippingInterface) return Unbounded_String is abstract;

end org.allbinary.business.user.commerce.shipping.modules.ShippingInterface_Package;


