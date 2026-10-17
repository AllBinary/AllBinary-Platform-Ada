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

package org.allbinary.business.user.commerce.inventory.item.option.BasicOptionItemData_Package is


   type BasicOptionItemData is tagged;
   type BasicOptionItemData_Access is access all BasicOptionItemData'Class;
   type BasicOptionItemData_Access_Array is array (Natural range <>) of BasicOptionItemData_Access;
   type BasicOptionItemData_Access_Array_Access is access all BasicOptionItemData_Access_Array;

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


