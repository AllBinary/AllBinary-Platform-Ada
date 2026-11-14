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
limited with org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntityFactory_Package;
package org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntityFactory_Package_References is
   type OrderHistoryEntityFactory_Access is access all org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntityFactory_Package.OrderHistoryEntityFactory'Class;
   type OrderHistoryEntityFactory_Access_Array is array (Natural range <>) of OrderHistoryEntityFactory_Access;
   type OrderHistoryEntityFactory_Access_Array_Access is access all OrderHistoryEntityFactory_Access_Array;
   type OrderHistoryEntityFactory_Access_Array_Access_Array is array (Natural range <>) of OrderHistoryEntityFactory_Access_Array_Access;
   type OrderHistoryEntityFactory_Access_Array_Access_Array_Access is access all OrderHistoryEntityFactory_Access_Array_Access_Array;
   type OrderHistoryEntityFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : OrderHistoryEntityFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : OrderHistoryEntityFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new OrderHistoryEntityFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_OrderHistoryEntityFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return OrderHistoryEntityFactory_Access_Array_Access is (if Value /= null and then Value.all in OrderHistoryEntityFactory_Access_Array_Object'Class then OrderHistoryEntityFactory_Access_Array_Object'Class (Value.all).Value else null);
   type OrderHistoryEntityFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : OrderHistoryEntityFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : OrderHistoryEntityFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new OrderHistoryEntityFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_OrderHistoryEntityFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return OrderHistoryEntityFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in OrderHistoryEntityFactory_Access_Array_Access_Array_Object'Class then OrderHistoryEntityFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntityFactory_Package_References;

with org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntityFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntity_Package;
with org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntity_Package_References;

package org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntityFactory_Package is

   package Reference_Types is
   subtype OrderHistoryEntity_Access is org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntity_Package_References.OrderHistoryEntity_Access;
   use type OrderHistoryEntity_Access;
   subtype OrderHistoryEntity_Access_Array is org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntity_Package_References.OrderHistoryEntity_Access_Array;
   use type OrderHistoryEntity_Access_Array;
   subtype OrderHistoryEntity_Access_Array_Access is org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntity_Package_References.OrderHistoryEntity_Access_Array_Access;
   use type OrderHistoryEntity_Access_Array_Access;
   subtype OrderHistoryEntity_Access_Array_Access_Array is org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntity_Package_References.OrderHistoryEntity_Access_Array_Access_Array;
   use type OrderHistoryEntity_Access_Array_Access_Array;
   subtype OrderHistoryEntity_Access_Array_Access_Array_Access is org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntity_Package_References.OrderHistoryEntity_Access_Array_Access_Array_Access;
   use type OrderHistoryEntity_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype OrderHistoryEntityFactory_Access is org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntityFactory_Package_References.OrderHistoryEntityFactory_Access;
   function "=" (Left, Right : OrderHistoryEntityFactory_Access) return Boolean renames org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntityFactory_Package_References."=";
   subtype OrderHistoryEntityFactory_Access_Array is org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntityFactory_Package_References.OrderHistoryEntityFactory_Access_Array;
   function "=" (Left, Right : OrderHistoryEntityFactory_Access_Array) return Boolean renames org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntityFactory_Package_References."=";
   subtype OrderHistoryEntityFactory_Access_Array_Access is org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntityFactory_Package_References.OrderHistoryEntityFactory_Access_Array_Access;
   function "=" (Left, Right : OrderHistoryEntityFactory_Access_Array_Access) return Boolean renames org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntityFactory_Package_References."=";
   function Java_Box (Value : OrderHistoryEntityFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntityFactory_Package_References.Java_Box;
   function Java_Unbox_OrderHistoryEntityFactory_Access_Array (Value : access Java_Object'Class) return OrderHistoryEntityFactory_Access_Array_Access renames org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntityFactory_Package_References.Java_Unbox_OrderHistoryEntityFactory_Access_Array;
   subtype OrderHistoryEntityFactory_Access_Array_Access_Array is org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntityFactory_Package_References.OrderHistoryEntityFactory_Access_Array_Access_Array;
   function "=" (Left, Right : OrderHistoryEntityFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntityFactory_Package_References."=";
   subtype OrderHistoryEntityFactory_Access_Array_Access_Array_Access is org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntityFactory_Package_References.OrderHistoryEntityFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OrderHistoryEntityFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntityFactory_Package_References."=";
   function Java_Box (Value : OrderHistoryEntityFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntityFactory_Package_References.Java_Box;
   function Java_Unbox_OrderHistoryEntityFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return OrderHistoryEntityFactory_Access_Array_Access_Array_Access renames org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntityFactory_Package_References.Java_Unbox_OrderHistoryEntityFactory_Access_Array_Access_Array;

   type OrderHistoryEntityFactory is new Java_Object with null record;

   procedure Initialize (This : in out OrderHistoryEntityFactory'Class);
   function Create return OrderHistoryEntityFactory_Access;
   function getInstance return OrderHistoryEntity_Access;

end org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntityFactory_Package;


