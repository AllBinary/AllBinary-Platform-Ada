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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.business.user.commerce.inventory.item.group.BasicGroupItemData_Package is


   type BasicGroupItemData is tagged;
   type BasicGroupItemData_Access is access all BasicGroupItemData'Class;
   type BasicGroupItemData_Access_Array is array (Natural range <>) of BasicGroupItemData_Access;
   type BasicGroupItemData_Access_Array_Access is access all BasicGroupItemData_Access_Array;
   type BasicGroupItemData_Access_Array_Access_Array is array (Natural range <>) of BasicGroupItemData_Access_Array_Access;
   type BasicGroupItemData_Access_Array_Access_Array_Access is access all BasicGroupItemData_Access_Array_Access_Array;

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


