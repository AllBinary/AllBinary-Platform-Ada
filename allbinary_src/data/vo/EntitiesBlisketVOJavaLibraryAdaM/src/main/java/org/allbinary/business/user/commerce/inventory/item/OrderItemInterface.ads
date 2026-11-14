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
limited with org.allbinary.business.user.commerce.inventory.item.OrderItemInterface_Package;
package org.allbinary.business.user.commerce.inventory.item.OrderItemInterface_Package_References is
   type OrderItemInterface_Access is access all org.allbinary.business.user.commerce.inventory.item.OrderItemInterface_Package.OrderItemInterface'Class;
   type OrderItemInterface_Access_Array is array (Natural range <>) of OrderItemInterface_Access;
   type OrderItemInterface_Access_Array_Access is access all OrderItemInterface_Access_Array;
   type OrderItemInterface_Access_Array_Access_Array is array (Natural range <>) of OrderItemInterface_Access_Array_Access;
   type OrderItemInterface_Access_Array_Access_Array_Access is access all OrderItemInterface_Access_Array_Access_Array;
   type OrderItemInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : OrderItemInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : OrderItemInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new OrderItemInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_OrderItemInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return OrderItemInterface_Access_Array_Access is (if Value /= null and then Value.all in OrderItemInterface_Access_Array_Object'Class then OrderItemInterface_Access_Array_Object'Class (Value.all).Value else null);
   type OrderItemInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : OrderItemInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : OrderItemInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new OrderItemInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_OrderItemInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return OrderItemInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in OrderItemInterface_Access_Array_Access_Array_Object'Class then OrderItemInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.user.commerce.inventory.item.OrderItemInterface_Package_References;

with org.allbinary.business.user.commerce.inventory.item.OrderItemInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.business.user.address.StreetAddress_Package;
with org.allbinary.business.user.address.StreetAddress_Package_References;
with org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package; use org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package;

package org.allbinary.business.user.commerce.inventory.item.OrderItemInterface_Package is

   package StreetAddress_Package renames Standard.org.allbinary.business.user.address.StreetAddress_Package;
   package Reference_Types is
   subtype StreetAddress_Access is org.allbinary.business.user.address.StreetAddress_Package_References.StreetAddress_Access;
   use type StreetAddress_Access;
   subtype StreetAddress_Access_Array is org.allbinary.business.user.address.StreetAddress_Package_References.StreetAddress_Access_Array;
   use type StreetAddress_Access_Array;
   subtype StreetAddress_Access_Array_Access is org.allbinary.business.user.address.StreetAddress_Package_References.StreetAddress_Access_Array_Access;
   use type StreetAddress_Access_Array_Access;
   subtype StreetAddress_Access_Array_Access_Array is org.allbinary.business.user.address.StreetAddress_Package_References.StreetAddress_Access_Array_Access_Array;
   use type StreetAddress_Access_Array_Access_Array;
   subtype StreetAddress_Access_Array_Access_Array_Access is org.allbinary.business.user.address.StreetAddress_Package_References.StreetAddress_Access_Array_Access_Array_Access;
   use type StreetAddress_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type OrderItemInterface is interface and ItemInterface;
   subtype OrderItemInterface_Access is org.allbinary.business.user.commerce.inventory.item.OrderItemInterface_Package_References.OrderItemInterface_Access;
   function "=" (Left, Right : OrderItemInterface_Access) return Boolean renames org.allbinary.business.user.commerce.inventory.item.OrderItemInterface_Package_References."=";
   subtype OrderItemInterface_Access_Array is org.allbinary.business.user.commerce.inventory.item.OrderItemInterface_Package_References.OrderItemInterface_Access_Array;
   function "=" (Left, Right : OrderItemInterface_Access_Array) return Boolean renames org.allbinary.business.user.commerce.inventory.item.OrderItemInterface_Package_References."=";
   subtype OrderItemInterface_Access_Array_Access is org.allbinary.business.user.commerce.inventory.item.OrderItemInterface_Package_References.OrderItemInterface_Access_Array_Access;
   function "=" (Left, Right : OrderItemInterface_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.inventory.item.OrderItemInterface_Package_References."=";
   function Java_Box (Value : OrderItemInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.commerce.inventory.item.OrderItemInterface_Package_References.Java_Box;
   function Java_Unbox_OrderItemInterface_Access_Array (Value : access Java_Object'Class) return OrderItemInterface_Access_Array_Access renames org.allbinary.business.user.commerce.inventory.item.OrderItemInterface_Package_References.Java_Unbox_OrderItemInterface_Access_Array;
   subtype OrderItemInterface_Access_Array_Access_Array is org.allbinary.business.user.commerce.inventory.item.OrderItemInterface_Package_References.OrderItemInterface_Access_Array_Access_Array;
   function "=" (Left, Right : OrderItemInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.commerce.inventory.item.OrderItemInterface_Package_References."=";
   subtype OrderItemInterface_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.inventory.item.OrderItemInterface_Package_References.OrderItemInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OrderItemInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.inventory.item.OrderItemInterface_Package_References."=";
   function Java_Box (Value : OrderItemInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.commerce.inventory.item.OrderItemInterface_Package_References.Java_Box;
   function Java_Unbox_OrderItemInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return OrderItemInterface_Access_Array_Access_Array_Access renames org.allbinary.business.user.commerce.inventory.item.OrderItemInterface_Package_References.Java_Unbox_OrderItemInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_OrderItemInterface (Value : OrderItemInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
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


