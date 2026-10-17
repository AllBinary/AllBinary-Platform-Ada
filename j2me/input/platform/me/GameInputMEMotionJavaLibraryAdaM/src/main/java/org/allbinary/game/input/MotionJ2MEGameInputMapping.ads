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
with org.allbinary.game.input.J2MEGameInputMapping_Package; use org.allbinary.game.input.J2MEGameInputMapping_Package;

package org.allbinary.game.input.MotionJ2MEGameInputMapping_Package is

   package InputToGameKeyMapping_Package renames org.allbinary.game.input.mapping.InputToGameKeyMapping_Package;

   type MotionJ2MEGameInputMapping is tagged;
   type MotionJ2MEGameInputMapping_Access is access all MotionJ2MEGameInputMapping'Class;
   type MotionJ2MEGameInputMapping_Access_Array is array (Natural range <>) of MotionJ2MEGameInputMapping_Access;
   type MotionJ2MEGameInputMapping_Access_Array_Access is access all MotionJ2MEGameInputMapping_Access_Array;

   type MotionJ2MEGameInputMapping is new J2MEGameInputMapping with null record;

   procedure Initialize (This : in out MotionJ2MEGameInputMapping'Class);
   function Create return MotionJ2MEGameInputMapping_Access;
   function getDefault (This : in out MotionJ2MEGameInputMapping) return InputToGameKeyMapping_Access;
   procedure getDefault (This : in out MotionJ2MEGameInputMapping);

end org.allbinary.game.input.MotionJ2MEGameInputMapping_Package;


