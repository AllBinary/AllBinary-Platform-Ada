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
with org.allbinary.input.motion.button.BasicTouchInputFactory_Package; use org.allbinary.input.motion.button.BasicTouchInputFactory_Package;
with org.allbinary.input.motion.gesture.TouchMotionGestureFactory_Package; use org.allbinary.input.motion.gesture.TouchMotionGestureFactory_Package;

package org.allbinary.game.input.MotionJ2MEDefaultGameInputMapping_Package is

   package GamePersistanceStrings_Package renames org.allbinary.game.configuration.persistance.GamePersistanceStrings_Package;
   package InputToGameKeyMapping_Package renames org.allbinary.game.input.mapping.InputToGameKeyMapping_Package;
   package PersistentInputMapping_Package renames org.allbinary.game.input.mapping.PersistentInputMapping_Package;
   package BasicTouchInputFactory_Package renames org.allbinary.input.motion.button.BasicTouchInputFactory_Package;
   package TouchMotionGestureFactory_Package renames org.allbinary.input.motion.gesture.TouchMotionGestureFactory_Package;

   type MotionJ2MEDefaultGameInputMapping is tagged;
   type MotionJ2MEDefaultGameInputMapping_Access is access all MotionJ2MEDefaultGameInputMapping'Class;
   type MotionJ2MEDefaultGameInputMapping_Access_Array is array (Natural range <>) of MotionJ2MEDefaultGameInputMapping_Access;
   type MotionJ2MEDefaultGameInputMapping_Access_Array_Access is access all MotionJ2MEDefaultGameInputMapping_Access_Array;

   type MotionJ2MEDefaultGameInputMapping is new PersistentInputMapping with null record;

   procedure Initialize (This : in out MotionJ2MEDefaultGameInputMapping'Class);
   function Create return MotionJ2MEDefaultGameInputMapping_Access;

end org.allbinary.game.input.MotionJ2MEDefaultGameInputMapping_Package;


