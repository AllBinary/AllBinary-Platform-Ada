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
limited with org.allbinary.data.tables.user.commerce.inventory.order.OrderItemsEntityFactory_Package;
package org.allbinary.data.tables.user.commerce.inventory.order.OrderItemsEntityFactory_Package_References is
   type OrderItemsEntityFactory_Access is access all org.allbinary.data.tables.user.commerce.inventory.order.OrderItemsEntityFactory_Package.OrderItemsEntityFactory'Class;
   type OrderItemsEntityFactory_Access_Array is array (Natural range <>) of OrderItemsEntityFactory_Access;
   type OrderItemsEntityFactory_Access_Array_Access is access all OrderItemsEntityFactory_Access_Array;
   type OrderItemsEntityFactory_Access_Array_Access_Array is array (Natural range <>) of OrderItemsEntityFactory_Access_Array_Access;
   type OrderItemsEntityFactory_Access_Array_Access_Array_Access is access all OrderItemsEntityFactory_Access_Array_Access_Array;
   type OrderItemsEntityFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : OrderItemsEntityFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : OrderItemsEntityFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new OrderItemsEntityFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_OrderItemsEntityFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return OrderItemsEntityFactory_Access_Array_Access is (if Value /= null and then Value.all in OrderItemsEntityFactory_Access_Array_Object'Class then OrderItemsEntityFactory_Access_Array_Object'Class (Value.all).Value else null);
   type OrderItemsEntityFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : OrderItemsEntityFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : OrderItemsEntityFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new OrderItemsEntityFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_OrderItemsEntityFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return OrderItemsEntityFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in OrderItemsEntityFactory_Access_Array_Access_Array_Object'Class then OrderItemsEntityFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.data.tables.user.commerce.inventory.order.OrderItemsEntityFactory_Package_References;

with org.allbinary.data.tables.user.commerce.inventory.order.OrderItemsEntityFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.data.tables.user.commerce.inventory.order.OrderItemsEntity_Package;
with org.allbinary.data.tables.user.commerce.inventory.order.OrderItemsEntity_Package_References;

package org.allbinary.data.tables.user.commerce.inventory.order.OrderItemsEntityFactory_Package is

   package Reference_Types is
   subtype OrderItemsEntity_Access is org.allbinary.data.tables.user.commerce.inventory.order.OrderItemsEntity_Package_References.OrderItemsEntity_Access;
   use type OrderItemsEntity_Access;
   subtype OrderItemsEntity_Access_Array is org.allbinary.data.tables.user.commerce.inventory.order.OrderItemsEntity_Package_References.OrderItemsEntity_Access_Array;
   use type OrderItemsEntity_Access_Array;
   subtype OrderItemsEntity_Access_Array_Access is org.allbinary.data.tables.user.commerce.inventory.order.OrderItemsEntity_Package_References.OrderItemsEntity_Access_Array_Access;
   use type OrderItemsEntity_Access_Array_Access;
   subtype OrderItemsEntity_Access_Array_Access_Array is org.allbinary.data.tables.user.commerce.inventory.order.OrderItemsEntity_Package_References.OrderItemsEntity_Access_Array_Access_Array;
   use type OrderItemsEntity_Access_Array_Access_Array;
   subtype OrderItemsEntity_Access_Array_Access_Array_Access is org.allbinary.data.tables.user.commerce.inventory.order.OrderItemsEntity_Package_References.OrderItemsEntity_Access_Array_Access_Array_Access;
   use type OrderItemsEntity_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype OrderItemsEntityFactory_Access is org.allbinary.data.tables.user.commerce.inventory.order.OrderItemsEntityFactory_Package_References.OrderItemsEntityFactory_Access;
   function "=" (Left, Right : OrderItemsEntityFactory_Access) return Boolean renames org.allbinary.data.tables.user.commerce.inventory.order.OrderItemsEntityFactory_Package_References."=";
   subtype OrderItemsEntityFactory_Access_Array is org.allbinary.data.tables.user.commerce.inventory.order.OrderItemsEntityFactory_Package_References.OrderItemsEntityFactory_Access_Array;
   function "=" (Left, Right : OrderItemsEntityFactory_Access_Array) return Boolean renames org.allbinary.data.tables.user.commerce.inventory.order.OrderItemsEntityFactory_Package_References."=";
   subtype OrderItemsEntityFactory_Access_Array_Access is org.allbinary.data.tables.user.commerce.inventory.order.OrderItemsEntityFactory_Package_References.OrderItemsEntityFactory_Access_Array_Access;
   function "=" (Left, Right : OrderItemsEntityFactory_Access_Array_Access) return Boolean renames org.allbinary.data.tables.user.commerce.inventory.order.OrderItemsEntityFactory_Package_References."=";
   function Java_Box (Value : OrderItemsEntityFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.data.tables.user.commerce.inventory.order.OrderItemsEntityFactory_Package_References.Java_Box;
   function Java_Unbox_OrderItemsEntityFactory_Access_Array (Value : access Java_Object'Class) return OrderItemsEntityFactory_Access_Array_Access renames org.allbinary.data.tables.user.commerce.inventory.order.OrderItemsEntityFactory_Package_References.Java_Unbox_OrderItemsEntityFactory_Access_Array;
   subtype OrderItemsEntityFactory_Access_Array_Access_Array is org.allbinary.data.tables.user.commerce.inventory.order.OrderItemsEntityFactory_Package_References.OrderItemsEntityFactory_Access_Array_Access_Array;
   function "=" (Left, Right : OrderItemsEntityFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.data.tables.user.commerce.inventory.order.OrderItemsEntityFactory_Package_References."=";
   subtype OrderItemsEntityFactory_Access_Array_Access_Array_Access is org.allbinary.data.tables.user.commerce.inventory.order.OrderItemsEntityFactory_Package_References.OrderItemsEntityFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OrderItemsEntityFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.data.tables.user.commerce.inventory.order.OrderItemsEntityFactory_Package_References."=";
   function Java_Box (Value : OrderItemsEntityFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.data.tables.user.commerce.inventory.order.OrderItemsEntityFactory_Package_References.Java_Box;
   function Java_Unbox_OrderItemsEntityFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return OrderItemsEntityFactory_Access_Array_Access_Array_Access renames org.allbinary.data.tables.user.commerce.inventory.order.OrderItemsEntityFactory_Package_References.Java_Unbox_OrderItemsEntityFactory_Access_Array_Access_Array;

   type OrderItemsEntityFactory is new Java_Object with null record;

   procedure Initialize (This : in out OrderItemsEntityFactory'Class);
   function Create return OrderItemsEntityFactory_Access;
   function getInstance return OrderItemsEntity_Access;

end org.allbinary.data.tables.user.commerce.inventory.order.OrderItemsEntityFactory_Package;


