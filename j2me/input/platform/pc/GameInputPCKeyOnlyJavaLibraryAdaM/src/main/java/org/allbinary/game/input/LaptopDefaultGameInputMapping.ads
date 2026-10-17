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
with org.allbinary.game.configuration.persistance.GamePersistanceStrings_Package; use org.allbinary.game.configuration.persistance.GamePersistanceStrings_Package;
with org.allbinary.game.input.mapping.InputToGameKeyMapping_Package; use org.allbinary.game.input.mapping.InputToGameKeyMapping_Package;
with org.allbinary.game.input.mapping.PersistentInputMapping_Package; use org.allbinary.game.input.mapping.PersistentInputMapping_Package;
with org.allbinary.game.input.PCKeyFactory_Package; use org.allbinary.game.input.PCKeyFactory_Package;
with org.allbinary.game.input.GameKeyFactory_Package; use org.allbinary.game.input.GameKeyFactory_Package;

package org.allbinary.game.input.LaptopDefaultGameInputMapping_Package is

   package GamePersistanceStrings_Package renames Standard.org.allbinary.game.configuration.persistance.GamePersistanceStrings_Package;
   package InputToGameKeyMapping_Package renames Standard.org.allbinary.game.input.mapping.InputToGameKeyMapping_Package;
   package PersistentInputMapping_Package renames Standard.org.allbinary.game.input.mapping.PersistentInputMapping_Package;

   type LaptopDefaultGameInputMapping is tagged;
   type LaptopDefaultGameInputMapping_Access is access all LaptopDefaultGameInputMapping'Class;
   type LaptopDefaultGameInputMapping_Access_Array is array (Natural range <>) of LaptopDefaultGameInputMapping_Access;
   type LaptopDefaultGameInputMapping_Access_Array_Access is access all LaptopDefaultGameInputMapping_Access_Array;

   type LaptopDefaultGameInputMapping is new PersistentInputMapping with null record;

   procedure Initialize (This : in out LaptopDefaultGameInputMapping'Class);
   function Create return LaptopDefaultGameInputMapping_Access;

end org.allbinary.game.input.LaptopDefaultGameInputMapping_Package;


