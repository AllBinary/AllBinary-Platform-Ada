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
limited with org.allbinary.business.user.commerce.inventory.InventoryData_Package;
package org.allbinary.business.user.commerce.inventory.InventoryData_Package_References is
   type InventoryData_Access is access all org.allbinary.business.user.commerce.inventory.InventoryData_Package.InventoryData'Class;
   type InventoryData_Access_Array is array (Natural range <>) of InventoryData_Access;
   type InventoryData_Access_Array_Access is access all InventoryData_Access_Array;
   type InventoryData_Access_Array_Access_Array is array (Natural range <>) of InventoryData_Access_Array_Access;
   type InventoryData_Access_Array_Access_Array_Access is access all InventoryData_Access_Array_Access_Array;
   type InventoryData_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : InventoryData_Access_Array_Access;
   end record;
   function Java_Box (Value : InventoryData_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new InventoryData_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_InventoryData_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return InventoryData_Access_Array_Access is (if Value /= null and then Value.all in InventoryData_Access_Array_Object'Class then InventoryData_Access_Array_Object'Class (Value.all).Value else null);
   type InventoryData_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : InventoryData_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : InventoryData_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new InventoryData_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_InventoryData_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return InventoryData_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in InventoryData_Access_Array_Access_Array_Object'Class then InventoryData_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.user.commerce.inventory.InventoryData_Package_References;

with org.allbinary.business.user.commerce.inventory.InventoryData_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.business.user.commerce.inventory.InventoryData_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype InventoryData_Access is org.allbinary.business.user.commerce.inventory.InventoryData_Package_References.InventoryData_Access;
   function "=" (Left, Right : InventoryData_Access) return Boolean renames org.allbinary.business.user.commerce.inventory.InventoryData_Package_References."=";
   subtype InventoryData_Access_Array is org.allbinary.business.user.commerce.inventory.InventoryData_Package_References.InventoryData_Access_Array;
   function "=" (Left, Right : InventoryData_Access_Array) return Boolean renames org.allbinary.business.user.commerce.inventory.InventoryData_Package_References."=";
   subtype InventoryData_Access_Array_Access is org.allbinary.business.user.commerce.inventory.InventoryData_Package_References.InventoryData_Access_Array_Access;
   function "=" (Left, Right : InventoryData_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.inventory.InventoryData_Package_References."=";
   function Java_Box (Value : InventoryData_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.commerce.inventory.InventoryData_Package_References.Java_Box;
   function Java_Unbox_InventoryData_Access_Array (Value : access Java_Object'Class) return InventoryData_Access_Array_Access renames org.allbinary.business.user.commerce.inventory.InventoryData_Package_References.Java_Unbox_InventoryData_Access_Array;
   subtype InventoryData_Access_Array_Access_Array is org.allbinary.business.user.commerce.inventory.InventoryData_Package_References.InventoryData_Access_Array_Access_Array;
   function "=" (Left, Right : InventoryData_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.commerce.inventory.InventoryData_Package_References."=";
   subtype InventoryData_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.inventory.InventoryData_Package_References.InventoryData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InventoryData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.inventory.InventoryData_Package_References."=";
   function Java_Box (Value : InventoryData_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.commerce.inventory.InventoryData_Package_References.Java_Box;
   function Java_Unbox_InventoryData_Access_Array_Access_Array (Value : access Java_Object'Class) return InventoryData_Access_Array_Access_Array_Access renames org.allbinary.business.user.commerce.inventory.InventoryData_Package_References.Java_Unbox_InventoryData_Access_Array_Access_Array;

   type InventoryData is new Java_Object with null record;
   INVENTORY : Unbounded_String;

   procedure Initialize (This : in out InventoryData'Class);
   function Create return InventoryData_Access;

end org.allbinary.business.user.commerce.inventory.InventoryData_Package;


