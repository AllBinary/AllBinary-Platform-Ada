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

package org.allbinary.business.user.commerce.inventory.item.special.SpecialItemData_Package is


   type SpecialItemData is tagged;
   type SpecialItemData_Access is access all SpecialItemData'Class;
   type SpecialItemData_Access_Array is array (Natural range <>) of SpecialItemData_Access;
   type SpecialItemData_Access_Array_Access is access all SpecialItemData_Access_Array;
   type SpecialItemData_Access_Array_Access_Array is array (Natural range <>) of SpecialItemData_Access_Array_Access;
   type SpecialItemData_Access_Array_Access_Array_Access is access all SpecialItemData_Access_Array_Access_Array;

   type SpecialItemData is new Java_Object with null record;
   START_TIME : Unbounded_String;
   END_TIME : Unbounded_String;

   procedure Initialize (This : in out SpecialItemData'Class);
   function Create return SpecialItemData_Access;

end org.allbinary.business.user.commerce.inventory.item.special.SpecialItemData_Package;


