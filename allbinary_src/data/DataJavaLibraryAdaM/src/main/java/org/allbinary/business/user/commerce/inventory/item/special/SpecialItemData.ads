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
limited with org.allbinary.business.user.commerce.inventory.item.special.SpecialItemData_Package;
package org.allbinary.business.user.commerce.inventory.item.special.SpecialItemData_Package_References is
   type SpecialItemData_Access is access all org.allbinary.business.user.commerce.inventory.item.special.SpecialItemData_Package.SpecialItemData'Class;
   type SpecialItemData_Access_Array is array (Natural range <>) of SpecialItemData_Access;
   type SpecialItemData_Access_Array_Access is access all SpecialItemData_Access_Array;
   type SpecialItemData_Access_Array_Access_Array is array (Natural range <>) of SpecialItemData_Access_Array_Access;
   type SpecialItemData_Access_Array_Access_Array_Access is access all SpecialItemData_Access_Array_Access_Array;
   type SpecialItemData_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : SpecialItemData_Access_Array_Access;
   end record;
   function Java_Box (Value : SpecialItemData_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new SpecialItemData_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_SpecialItemData_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return SpecialItemData_Access_Array_Access is (if Value /= null and then Value.all in SpecialItemData_Access_Array_Object'Class then SpecialItemData_Access_Array_Object'Class (Value.all).Value else null);
   type SpecialItemData_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : SpecialItemData_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : SpecialItemData_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new SpecialItemData_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_SpecialItemData_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return SpecialItemData_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in SpecialItemData_Access_Array_Access_Array_Object'Class then SpecialItemData_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.user.commerce.inventory.item.special.SpecialItemData_Package_References;

with org.allbinary.business.user.commerce.inventory.item.special.SpecialItemData_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.business.user.commerce.inventory.item.special.SpecialItemData_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype SpecialItemData_Access is org.allbinary.business.user.commerce.inventory.item.special.SpecialItemData_Package_References.SpecialItemData_Access;
   function "=" (Left, Right : SpecialItemData_Access) return Boolean renames org.allbinary.business.user.commerce.inventory.item.special.SpecialItemData_Package_References."=";
   subtype SpecialItemData_Access_Array is org.allbinary.business.user.commerce.inventory.item.special.SpecialItemData_Package_References.SpecialItemData_Access_Array;
   function "=" (Left, Right : SpecialItemData_Access_Array) return Boolean renames org.allbinary.business.user.commerce.inventory.item.special.SpecialItemData_Package_References."=";
   subtype SpecialItemData_Access_Array_Access is org.allbinary.business.user.commerce.inventory.item.special.SpecialItemData_Package_References.SpecialItemData_Access_Array_Access;
   function "=" (Left, Right : SpecialItemData_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.inventory.item.special.SpecialItemData_Package_References."=";
   function Java_Box (Value : SpecialItemData_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.commerce.inventory.item.special.SpecialItemData_Package_References.Java_Box;
   function Java_Unbox_SpecialItemData_Access_Array (Value : access Java_Object'Class) return SpecialItemData_Access_Array_Access renames org.allbinary.business.user.commerce.inventory.item.special.SpecialItemData_Package_References.Java_Unbox_SpecialItemData_Access_Array;
   subtype SpecialItemData_Access_Array_Access_Array is org.allbinary.business.user.commerce.inventory.item.special.SpecialItemData_Package_References.SpecialItemData_Access_Array_Access_Array;
   function "=" (Left, Right : SpecialItemData_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.commerce.inventory.item.special.SpecialItemData_Package_References."=";
   subtype SpecialItemData_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.inventory.item.special.SpecialItemData_Package_References.SpecialItemData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SpecialItemData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.inventory.item.special.SpecialItemData_Package_References."=";
   function Java_Box (Value : SpecialItemData_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.commerce.inventory.item.special.SpecialItemData_Package_References.Java_Box;
   function Java_Unbox_SpecialItemData_Access_Array_Access_Array (Value : access Java_Object'Class) return SpecialItemData_Access_Array_Access_Array_Access renames org.allbinary.business.user.commerce.inventory.item.special.SpecialItemData_Package_References.Java_Unbox_SpecialItemData_Access_Array_Access_Array;

   type SpecialItemData is new Java_Object with null record;
   START_TIME : Unbounded_String;
   END_TIME : Unbounded_String;

   procedure Initialize (This : in out SpecialItemData'Class);
   function Create return SpecialItemData_Access;

end org.allbinary.business.user.commerce.inventory.item.special.SpecialItemData_Package;


