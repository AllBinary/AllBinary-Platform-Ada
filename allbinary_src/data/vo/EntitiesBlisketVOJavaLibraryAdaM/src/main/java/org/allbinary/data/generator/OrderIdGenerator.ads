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
limited with org.allbinary.data.generator.OrderIdGenerator_Package;
package org.allbinary.data.generator.OrderIdGenerator_Package_References is
   type OrderIdGenerator_Access is access all org.allbinary.data.generator.OrderIdGenerator_Package.OrderIdGenerator'Class;
   type OrderIdGenerator_Access_Array is array (Natural range <>) of OrderIdGenerator_Access;
   type OrderIdGenerator_Access_Array_Access is access all OrderIdGenerator_Access_Array;
   type OrderIdGenerator_Access_Array_Access_Array is array (Natural range <>) of OrderIdGenerator_Access_Array_Access;
   type OrderIdGenerator_Access_Array_Access_Array_Access is access all OrderIdGenerator_Access_Array_Access_Array;
   type OrderIdGenerator_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : OrderIdGenerator_Access_Array_Access;
   end record;
   function Java_Box (Value : OrderIdGenerator_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new OrderIdGenerator_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_OrderIdGenerator_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return OrderIdGenerator_Access_Array_Access is (if Value /= null and then Value.all in OrderIdGenerator_Access_Array_Object'Class then OrderIdGenerator_Access_Array_Object'Class (Value.all).Value else null);
   type OrderIdGenerator_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : OrderIdGenerator_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : OrderIdGenerator_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new OrderIdGenerator_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_OrderIdGenerator_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return OrderIdGenerator_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in OrderIdGenerator_Access_Array_Access_Array_Object'Class then OrderIdGenerator_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.data.generator.OrderIdGenerator_Package_References;

with org.allbinary.data.generator.OrderIdGenerator_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.data.generator.UniqueIdGenerator_Package; use org.allbinary.data.generator.UniqueIdGenerator_Package;

package org.allbinary.data.generator.OrderIdGenerator_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype OrderIdGenerator_Access is org.allbinary.data.generator.OrderIdGenerator_Package_References.OrderIdGenerator_Access;
   function "=" (Left, Right : OrderIdGenerator_Access) return Boolean renames org.allbinary.data.generator.OrderIdGenerator_Package_References."=";
   subtype OrderIdGenerator_Access_Array is org.allbinary.data.generator.OrderIdGenerator_Package_References.OrderIdGenerator_Access_Array;
   function "=" (Left, Right : OrderIdGenerator_Access_Array) return Boolean renames org.allbinary.data.generator.OrderIdGenerator_Package_References."=";
   subtype OrderIdGenerator_Access_Array_Access is org.allbinary.data.generator.OrderIdGenerator_Package_References.OrderIdGenerator_Access_Array_Access;
   function "=" (Left, Right : OrderIdGenerator_Access_Array_Access) return Boolean renames org.allbinary.data.generator.OrderIdGenerator_Package_References."=";
   function Java_Box (Value : OrderIdGenerator_Access_Array_Access) return Java_Object_Access renames org.allbinary.data.generator.OrderIdGenerator_Package_References.Java_Box;
   function Java_Unbox_OrderIdGenerator_Access_Array (Value : access Java_Object'Class) return OrderIdGenerator_Access_Array_Access renames org.allbinary.data.generator.OrderIdGenerator_Package_References.Java_Unbox_OrderIdGenerator_Access_Array;
   subtype OrderIdGenerator_Access_Array_Access_Array is org.allbinary.data.generator.OrderIdGenerator_Package_References.OrderIdGenerator_Access_Array_Access_Array;
   function "=" (Left, Right : OrderIdGenerator_Access_Array_Access_Array) return Boolean renames org.allbinary.data.generator.OrderIdGenerator_Package_References."=";
   subtype OrderIdGenerator_Access_Array_Access_Array_Access is org.allbinary.data.generator.OrderIdGenerator_Package_References.OrderIdGenerator_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OrderIdGenerator_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.data.generator.OrderIdGenerator_Package_References."=";
   function Java_Box (Value : OrderIdGenerator_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.data.generator.OrderIdGenerator_Package_References.Java_Box;
   function Java_Unbox_OrderIdGenerator_Access_Array_Access_Array (Value : access Java_Object'Class) return OrderIdGenerator_Access_Array_Access_Array_Access renames org.allbinary.data.generator.OrderIdGenerator_Package_References.Java_Unbox_OrderIdGenerator_Access_Array_Access_Array;

   type OrderIdGenerator is new UniqueIdGenerator with record
      IDFILE : Unbounded_String;
   end record;

   procedure Initialize (This : in out OrderIdGenerator'Class);
   function Create return OrderIdGenerator_Access;

end org.allbinary.data.generator.OrderIdGenerator_Package;


