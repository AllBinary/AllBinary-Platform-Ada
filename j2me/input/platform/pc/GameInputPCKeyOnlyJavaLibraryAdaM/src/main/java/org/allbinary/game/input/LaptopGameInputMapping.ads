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
with org.allbinary.game.input.mapping.InputToGameKeyMapping_Package; use org.allbinary.game.input.mapping.InputToGameKeyMapping_Package;
with org.allbinary.game.input.PCGameInputMapping_Package; use org.allbinary.game.input.PCGameInputMapping_Package;

package org.allbinary.game.input.LaptopGameInputMapping_Package is

   package InputToGameKeyMapping_Package renames Standard.org.allbinary.game.input.mapping.InputToGameKeyMapping_Package;

   type LaptopGameInputMapping is tagged;
   type LaptopGameInputMapping_Access is access all LaptopGameInputMapping'Class;
   type LaptopGameInputMapping_Access_Array is array (Natural range <>) of LaptopGameInputMapping_Access;
   type LaptopGameInputMapping_Access_Array_Access is access all LaptopGameInputMapping_Access_Array;

   type LaptopGameInputMapping is new PCGameInputMapping with null record;

   procedure Initialize (This : in out LaptopGameInputMapping'Class);
   function Create return LaptopGameInputMapping_Access;
   function getDefault (This : in out LaptopGameInputMapping) return InputToGameKeyMapping_Access;
   procedure getDefault (This : in out LaptopGameInputMapping);

end org.allbinary.game.input.LaptopGameInputMapping_Package;


