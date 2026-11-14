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
limited with org.allbinary.business.user.commerce.inventory.item.option.BasicOptionItemData_Package;
package org.allbinary.business.user.commerce.inventory.item.option.BasicOptionItemData_Package_References is
   type BasicOptionItemData_Access is access all org.allbinary.business.user.commerce.inventory.item.option.BasicOptionItemData_Package.BasicOptionItemData'Class;
   type BasicOptionItemData_Access_Array is array (Natural range <>) of BasicOptionItemData_Access;
   type BasicOptionItemData_Access_Array_Access is access all BasicOptionItemData_Access_Array;
   type BasicOptionItemData_Access_Array_Access_Array is array (Natural range <>) of BasicOptionItemData_Access_Array_Access;
   type BasicOptionItemData_Access_Array_Access_Array_Access is access all BasicOptionItemData_Access_Array_Access_Array;
   type BasicOptionItemData_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicOptionItemData_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicOptionItemData_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicOptionItemData_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicOptionItemData_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicOptionItemData_Access_Array_Access is (if Value /= null and then Value.all in BasicOptionItemData_Access_Array_Object'Class then BasicOptionItemData_Access_Array_Object'Class (Value.all).Value else null);
   type BasicOptionItemData_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicOptionItemData_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicOptionItemData_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicOptionItemData_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicOptionItemData_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicOptionItemData_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in BasicOptionItemData_Access_Array_Access_Array_Object'Class then BasicOptionItemData_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.user.commerce.inventory.item.option.BasicOptionItemData_Package_References;

with org.allbinary.business.user.commerce.inventory.item.option.BasicOptionItemData_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.business.user.commerce.inventory.item.option.BasicOptionItemData_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype BasicOptionItemData_Access is org.allbinary.business.user.commerce.inventory.item.option.BasicOptionItemData_Package_References.BasicOptionItemData_Access;
   function "=" (Left, Right : BasicOptionItemData_Access) return Boolean renames org.allbinary.business.user.commerce.inventory.item.option.BasicOptionItemData_Package_References."=";
   subtype BasicOptionItemData_Access_Array is org.allbinary.business.user.commerce.inventory.item.option.BasicOptionItemData_Package_References.BasicOptionItemData_Access_Array;
   function "=" (Left, Right : BasicOptionItemData_Access_Array) return Boolean renames org.allbinary.business.user.commerce.inventory.item.option.BasicOptionItemData_Package_References."=";
   subtype BasicOptionItemData_Access_Array_Access is org.allbinary.business.user.commerce.inventory.item.option.BasicOptionItemData_Package_References.BasicOptionItemData_Access_Array_Access;
   function "=" (Left, Right : BasicOptionItemData_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.inventory.item.option.BasicOptionItemData_Package_References."=";
   function Java_Box (Value : BasicOptionItemData_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.commerce.inventory.item.option.BasicOptionItemData_Package_References.Java_Box;
   function Java_Unbox_BasicOptionItemData_Access_Array (Value : access Java_Object'Class) return BasicOptionItemData_Access_Array_Access renames org.allbinary.business.user.commerce.inventory.item.option.BasicOptionItemData_Package_References.Java_Unbox_BasicOptionItemData_Access_Array;
   subtype BasicOptionItemData_Access_Array_Access_Array is org.allbinary.business.user.commerce.inventory.item.option.BasicOptionItemData_Package_References.BasicOptionItemData_Access_Array_Access_Array;
   function "=" (Left, Right : BasicOptionItemData_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.commerce.inventory.item.option.BasicOptionItemData_Package_References."=";
   subtype BasicOptionItemData_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.inventory.item.option.BasicOptionItemData_Package_References.BasicOptionItemData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicOptionItemData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.inventory.item.option.BasicOptionItemData_Package_References."=";
   function Java_Box (Value : BasicOptionItemData_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.commerce.inventory.item.option.BasicOptionItemData_Package_References.Java_Box;
   function Java_Unbox_BasicOptionItemData_Access_Array_Access_Array (Value : access Java_Object'Class) return BasicOptionItemData_Access_Array_Access_Array_Access renames org.allbinary.business.user.commerce.inventory.item.option.BasicOptionItemData_Package_References.Java_Unbox_BasicOptionItemData_Access_Array_Access_Array;

   type BasicOptionItemData is new Java_Object with null record;
   OPTION_ONE_TITLE : Unbounded_String;
   DEFAULT_OPTION_ITEM : Unbounded_String;
   DEFAULT_OPTION_VALUE : Unbounded_String;
   OPTION_ONE_ONE_ITEM : Unbounded_String;
   OPTION_ONE_ONE_VALUE : Unbounded_String;
   OPTION_ONE_TWO_ITEM : Unbounded_String;
   OPTION_ONE_TWO_VALUE : Unbounded_String;
   OPTION_ONE_THREE_ITEM : Unbounded_String;
   OPTION_ONE_THREE_VALUE : Unbounded_String;
   OPTION_ONE_FOUR_ITEM : Unbounded_String;
   OPTION_ONE_FOUR_VALUE : Unbounded_String;
   OPTION_ONE_FIVE_ITEM : Unbounded_String;
   OPTION_ONE_FIVE_VALUE : Unbounded_String;
   OPTION_ONE_SIX_ITEM : Unbounded_String;
   OPTION_ONE_SIX_VALUE : Unbounded_String;
   OPTION_ONE_SEVEN_ITEM : Unbounded_String;
   OPTION_ONE_SEVEN_VALUE : Unbounded_String;
   OPTION_ONE_EIGHT_ITEM : Unbounded_String;
   OPTION_ONE_EIGHT_VALUE : Unbounded_String;
   OPTION_ONE_NINE_ITEM : Unbounded_String;
   OPTION_ONE_NINE_VALUE : Unbounded_String;

   procedure Initialize (This : in out BasicOptionItemData'Class);
   function Create return BasicOptionItemData_Access;

end org.allbinary.business.user.commerce.inventory.item.option.BasicOptionItemData_Package;


