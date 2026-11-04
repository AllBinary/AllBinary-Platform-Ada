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

limited with org.allbinary.business.user.commerce.shipping.modules.FedExShippingModule_Package;
package org.allbinary.business.user.commerce.shipping.modules.FedExShippingModule_Package_References is
   type FedExShippingModule_Access is access all org.allbinary.business.user.commerce.shipping.modules.FedExShippingModule_Package.FedExShippingModule'Class;
   type FedExShippingModule_Access_Array is array (Natural range <>) of FedExShippingModule_Access;
   type FedExShippingModule_Access_Array_Access is access all FedExShippingModule_Access_Array;
   type FedExShippingModule_Access_Array_Access_Array is array (Natural range <>) of FedExShippingModule_Access_Array_Access;
   type FedExShippingModule_Access_Array_Access_Array_Access is access all FedExShippingModule_Access_Array_Access_Array;
end org.allbinary.business.user.commerce.shipping.modules.FedExShippingModule_Package_References;

with org.allbinary.business.user.commerce.shipping.modules.FedExShippingModule_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.business.user.commerce.inventory.order.OrderInterface_Package;
with org.allbinary.business.user.commerce.inventory.order.OrderInterface_Package_References;
limited with org.allbinary.business.user.commerce.money.Money_Package;
with org.allbinary.business.user.commerce.money.Money_Package_References;
with org.allbinary.business.user.commerce.shipping.modules.ShippingInterface_Package; use org.allbinary.business.user.commerce.shipping.modules.ShippingInterface_Package;

package org.allbinary.business.user.commerce.shipping.modules.FedExShippingModule_Package is

   package OrderInterface_Package renames Standard.org.allbinary.business.user.commerce.inventory.order.OrderInterface_Package;
   package Money_Package renames Standard.org.allbinary.business.user.commerce.money.Money_Package;
   package Reference_Types is
   subtype OrderInterface_Access is org.allbinary.business.user.commerce.inventory.order.OrderInterface_Package_References.OrderInterface_Access;
   use type OrderInterface_Access;
   subtype OrderInterface_Access_Array is org.allbinary.business.user.commerce.inventory.order.OrderInterface_Package_References.OrderInterface_Access_Array;
   use type OrderInterface_Access_Array;
   subtype OrderInterface_Access_Array_Access is org.allbinary.business.user.commerce.inventory.order.OrderInterface_Package_References.OrderInterface_Access_Array_Access;
   use type OrderInterface_Access_Array_Access;
   subtype OrderInterface_Access_Array_Access_Array is org.allbinary.business.user.commerce.inventory.order.OrderInterface_Package_References.OrderInterface_Access_Array_Access_Array;
   use type OrderInterface_Access_Array_Access_Array;
   subtype OrderInterface_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.inventory.order.OrderInterface_Package_References.OrderInterface_Access_Array_Access_Array_Access;
   use type OrderInterface_Access_Array_Access_Array_Access;
   subtype Money_Access is org.allbinary.business.user.commerce.money.Money_Package_References.Money_Access;
   use type Money_Access;
   subtype Money_Access_Array is org.allbinary.business.user.commerce.money.Money_Package_References.Money_Access_Array;
   use type Money_Access_Array;
   subtype Money_Access_Array_Access is org.allbinary.business.user.commerce.money.Money_Package_References.Money_Access_Array_Access;
   use type Money_Access_Array_Access;
   subtype Money_Access_Array_Access_Array is org.allbinary.business.user.commerce.money.Money_Package_References.Money_Access_Array_Access_Array;
   use type Money_Access_Array_Access_Array;
   subtype Money_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.money.Money_Package_References.Money_Access_Array_Access_Array_Access;
   use type Money_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype FedExShippingModule_Access is org.allbinary.business.user.commerce.shipping.modules.FedExShippingModule_Package_References.FedExShippingModule_Access;
   function "=" (Left, Right : FedExShippingModule_Access) return Boolean renames org.allbinary.business.user.commerce.shipping.modules.FedExShippingModule_Package_References."=";
   subtype FedExShippingModule_Access_Array is org.allbinary.business.user.commerce.shipping.modules.FedExShippingModule_Package_References.FedExShippingModule_Access_Array;
   function "=" (Left, Right : FedExShippingModule_Access_Array) return Boolean renames org.allbinary.business.user.commerce.shipping.modules.FedExShippingModule_Package_References."=";
   subtype FedExShippingModule_Access_Array_Access is org.allbinary.business.user.commerce.shipping.modules.FedExShippingModule_Package_References.FedExShippingModule_Access_Array_Access;
   function "=" (Left, Right : FedExShippingModule_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.shipping.modules.FedExShippingModule_Package_References."=";
   subtype FedExShippingModule_Access_Array_Access_Array is org.allbinary.business.user.commerce.shipping.modules.FedExShippingModule_Package_References.FedExShippingModule_Access_Array_Access_Array;
   function "=" (Left, Right : FedExShippingModule_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.commerce.shipping.modules.FedExShippingModule_Package_References."=";
   subtype FedExShippingModule_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.shipping.modules.FedExShippingModule_Package_References.FedExShippingModule_Access_Array_Access_Array_Access;
   function "=" (Left, Right : FedExShippingModule_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.shipping.modules.FedExShippingModule_Package_References."=";

   type FedExShippingModule is new Java_Object and ShippingInterface with record
      name : Unbounded_String;
      description : Unbounded_String;
   end record;

   procedure Initialize (This : in out FedExShippingModule'Class);
   function Create return FedExShippingModule_Access;
   function getCost (This : in out FedExShippingModule; order_Param : access OrderInterface_Package.OrderInterface'Class) return Money_Access;
   procedure getCost (This : in out FedExShippingModule; order_Param : access OrderInterface_Package.OrderInterface'Class);
   function getDescription (This : in out FedExShippingModule) return Unbounded_String;
   function getName (This : in out FedExShippingModule) return Unbounded_String;

end org.allbinary.business.user.commerce.shipping.modules.FedExShippingModule_Package;


