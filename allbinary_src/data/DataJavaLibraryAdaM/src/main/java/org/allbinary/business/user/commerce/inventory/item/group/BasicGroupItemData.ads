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

limited with org.allbinary.business.user.commerce.inventory.item.group.BasicGroupItemData_Package;
package org.allbinary.business.user.commerce.inventory.item.group.BasicGroupItemData_Package_References is
   type BasicGroupItemData_Access is access all org.allbinary.business.user.commerce.inventory.item.group.BasicGroupItemData_Package.BasicGroupItemData'Class;
   type BasicGroupItemData_Access_Array is array (Natural range <>) of BasicGroupItemData_Access;
   type BasicGroupItemData_Access_Array_Access is access all BasicGroupItemData_Access_Array;
   type BasicGroupItemData_Access_Array_Access_Array is array (Natural range <>) of BasicGroupItemData_Access_Array_Access;
   type BasicGroupItemData_Access_Array_Access_Array_Access is access all BasicGroupItemData_Access_Array_Access_Array;
end org.allbinary.business.user.commerce.inventory.item.group.BasicGroupItemData_Package_References;

with org.allbinary.business.user.commerce.inventory.item.group.BasicGroupItemData_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.business.user.commerce.inventory.item.group.BasicGroupItemData_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype BasicGroupItemData_Access is org.allbinary.business.user.commerce.inventory.item.group.BasicGroupItemData_Package_References.BasicGroupItemData_Access;
   function "=" (Left, Right : BasicGroupItemData_Access) return Boolean renames org.allbinary.business.user.commerce.inventory.item.group.BasicGroupItemData_Package_References."=";
   subtype BasicGroupItemData_Access_Array is org.allbinary.business.user.commerce.inventory.item.group.BasicGroupItemData_Package_References.BasicGroupItemData_Access_Array;
   function "=" (Left, Right : BasicGroupItemData_Access_Array) return Boolean renames org.allbinary.business.user.commerce.inventory.item.group.BasicGroupItemData_Package_References."=";
   subtype BasicGroupItemData_Access_Array_Access is org.allbinary.business.user.commerce.inventory.item.group.BasicGroupItemData_Package_References.BasicGroupItemData_Access_Array_Access;
   function "=" (Left, Right : BasicGroupItemData_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.inventory.item.group.BasicGroupItemData_Package_References."=";
   subtype BasicGroupItemData_Access_Array_Access_Array is org.allbinary.business.user.commerce.inventory.item.group.BasicGroupItemData_Package_References.BasicGroupItemData_Access_Array_Access_Array;
   function "=" (Left, Right : BasicGroupItemData_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.commerce.inventory.item.group.BasicGroupItemData_Package_References."=";
   subtype BasicGroupItemData_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.inventory.item.group.BasicGroupItemData_Package_References.BasicGroupItemData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicGroupItemData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.inventory.item.group.BasicGroupItemData_Package_References."=";

   type BasicGroupItemData is new Java_Object with null record;
   ITEM_ONE : Unbounded_String;
   ITEM_TWO : Unbounded_String;
   ITEM_THREE : Unbounded_String;
   ITEM_FOUR : Unbounded_String;
   ITEM_FIVE : Unbounded_String;
   ITEM_SIX : Unbounded_String;
   ITEM_SEVEN : Unbounded_String;
   ITEM_EIGHT : Unbounded_String;
   ITEM_NINE : Unbounded_String;
   ITEM_TEN : Unbounded_String;

   procedure Initialize (This : in out BasicGroupItemData'Class);
   function Create return BasicGroupItemData_Access;

end org.allbinary.business.user.commerce.inventory.item.group.BasicGroupItemData_Package;


