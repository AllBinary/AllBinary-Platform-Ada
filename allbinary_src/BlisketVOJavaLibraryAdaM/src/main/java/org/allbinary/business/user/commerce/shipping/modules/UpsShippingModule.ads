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

with AllBinary_Java;
limited with org.allbinary.business.user.commerce.shipping.modules.UpsShippingModule_Package;
package org.allbinary.business.user.commerce.shipping.modules.UpsShippingModule_Package_References is
   type UpsShippingModule_Access is access all org.allbinary.business.user.commerce.shipping.modules.UpsShippingModule_Package.UpsShippingModule'Class;
   type UpsShippingModule_Access_Array is array (Natural range <>) of UpsShippingModule_Access;
   type UpsShippingModule_Access_Array_Access is access all UpsShippingModule_Access_Array;
   type UpsShippingModule_Access_Array_Access_Array is array (Natural range <>) of UpsShippingModule_Access_Array_Access;
   type UpsShippingModule_Access_Array_Access_Array_Access is access all UpsShippingModule_Access_Array_Access_Array;
   type UpsShippingModule_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : UpsShippingModule_Access_Array_Access;
   end record;
   function Java_Box (Value : UpsShippingModule_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new UpsShippingModule_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_UpsShippingModule_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return UpsShippingModule_Access_Array_Access is (if Value /= null and then Value.all in UpsShippingModule_Access_Array_Object'Class then UpsShippingModule_Access_Array_Object'Class (Value.all).Value else null);
   type UpsShippingModule_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : UpsShippingModule_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : UpsShippingModule_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new UpsShippingModule_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_UpsShippingModule_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return UpsShippingModule_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in UpsShippingModule_Access_Array_Access_Array_Object'Class then UpsShippingModule_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.user.commerce.shipping.modules.UpsShippingModule_Package_References;

with org.allbinary.business.user.commerce.shipping.modules.UpsShippingModule_Package_References;
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

package org.allbinary.business.user.commerce.shipping.modules.UpsShippingModule_Package is

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


   subtype UpsShippingModule_Access is org.allbinary.business.user.commerce.shipping.modules.UpsShippingModule_Package_References.UpsShippingModule_Access;
   function "=" (Left, Right : UpsShippingModule_Access) return Boolean renames org.allbinary.business.user.commerce.shipping.modules.UpsShippingModule_Package_References."=";
   subtype UpsShippingModule_Access_Array is org.allbinary.business.user.commerce.shipping.modules.UpsShippingModule_Package_References.UpsShippingModule_Access_Array;
   function "=" (Left, Right : UpsShippingModule_Access_Array) return Boolean renames org.allbinary.business.user.commerce.shipping.modules.UpsShippingModule_Package_References."=";
   subtype UpsShippingModule_Access_Array_Access is org.allbinary.business.user.commerce.shipping.modules.UpsShippingModule_Package_References.UpsShippingModule_Access_Array_Access;
   function "=" (Left, Right : UpsShippingModule_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.shipping.modules.UpsShippingModule_Package_References."=";
   function Java_Box (Value : UpsShippingModule_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.commerce.shipping.modules.UpsShippingModule_Package_References.Java_Box;
   function Java_Unbox_UpsShippingModule_Access_Array (Value : access Java_Object'Class) return UpsShippingModule_Access_Array_Access renames org.allbinary.business.user.commerce.shipping.modules.UpsShippingModule_Package_References.Java_Unbox_UpsShippingModule_Access_Array;
   subtype UpsShippingModule_Access_Array_Access_Array is org.allbinary.business.user.commerce.shipping.modules.UpsShippingModule_Package_References.UpsShippingModule_Access_Array_Access_Array;
   function "=" (Left, Right : UpsShippingModule_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.commerce.shipping.modules.UpsShippingModule_Package_References."=";
   subtype UpsShippingModule_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.shipping.modules.UpsShippingModule_Package_References.UpsShippingModule_Access_Array_Access_Array_Access;
   function "=" (Left, Right : UpsShippingModule_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.shipping.modules.UpsShippingModule_Package_References."=";
   function Java_Box (Value : UpsShippingModule_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.commerce.shipping.modules.UpsShippingModule_Package_References.Java_Box;
   function Java_Unbox_UpsShippingModule_Access_Array_Access_Array (Value : access Java_Object'Class) return UpsShippingModule_Access_Array_Access_Array_Access renames org.allbinary.business.user.commerce.shipping.modules.UpsShippingModule_Package_References.Java_Unbox_UpsShippingModule_Access_Array_Access_Array;

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


