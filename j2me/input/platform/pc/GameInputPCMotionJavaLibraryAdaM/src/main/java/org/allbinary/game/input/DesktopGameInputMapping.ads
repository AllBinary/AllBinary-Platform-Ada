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

package org.allbinary.game.input.DesktopGameInputMapping_Package is

   package InputToGameKeyMapping_Package renames org.allbinary.game.input.mapping.InputToGameKeyMapping_Package;

   type DesktopGameInputMapping is tagged;
   type DesktopGameInputMapping_Access is access all DesktopGameInputMapping'Class;
   type DesktopGameInputMapping_Access_Array is array (Natural range <>) of DesktopGameInputMapping_Access;
   type DesktopGameInputMapping_Access_Array_Access is access all DesktopGameInputMapping_Access_Array;

   type DesktopGameInputMapping is new PCGameInputMapping with null record;

   procedure Initialize (This : in out DesktopGameInputMapping'Class);
   function Create return DesktopGameInputMapping_Access;
   function getDefault (This : in out DesktopGameInputMapping) return InputToGameKeyMapping_Access;
   procedure getDefault (This : in out DesktopGameInputMapping);

end org.allbinary.game.input.DesktopGameInputMapping_Package;


