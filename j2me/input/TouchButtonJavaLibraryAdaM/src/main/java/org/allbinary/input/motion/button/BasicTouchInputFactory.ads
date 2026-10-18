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
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.input.motion.button.TouchButtonInput_Package; use org.allbinary.input.motion.button.TouchButtonInput_Package;

package org.allbinary.input.motion.button.BasicTouchInputFactory_Package is

   package InputToGameKeyMapping_Package renames Standard.org.allbinary.game.input.mapping.InputToGameKeyMapping_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;

   type BasicTouchInputFactory is tagged;
   type BasicTouchInputFactory_Access is access all BasicTouchInputFactory'Class;
   type BasicTouchInputFactory_Access_Array is array (Natural range <>) of BasicTouchInputFactory_Access;
   type BasicTouchInputFactory_Access_Array_Access is access all BasicTouchInputFactory_Access_Array;
   type BasicTouchInputFactory_Access_Array_Access_Array is array (Natural range <>) of BasicTouchInputFactory_Access_Array_Access;
   type BasicTouchInputFactory_Access_Array_Access_Array_Access is access all BasicTouchInputFactory_Access_Array_Access_Array;

   type BasicTouchInputFactory is new Java_Object with record
      logUtil : LogUtil_Access;
      SPECIAL_BUTTON_SEVEN_TESTING_ONLY : TouchButtonInput_Access;
      SPECIAL_BUTTON_EIGHT_TESTING_ONLY : TouchButtonInput_Access;
      SPECIAL_BUTTON_SIX : TouchButtonInput_Access;
      SPECIAL_BUTTON_FIVE : TouchButtonInput_Access;
      SPECIAL_BUTTON_FOUR : TouchButtonInput_Access;
      SPECIAL_BUTTON_THREE : TouchButtonInput_Access;
      SPECIAL_BUTTON_TWO : TouchButtonInput_Access;
      SPECIAL_BUTTON_ONE : TouchButtonInput_Access;
      UP : TouchButtonInput_Access;
      LEFT : TouchButtonInput_Access;
      RIGHT : TouchButtonInput_Access;
      DOWN : TouchButtonInput_Access;
      NONE : TouchButtonInput_Access;
      initialized : Boolean;
      list : BasicArrayList_Access;
   end record;
   instance : Java_Object_Access;

   procedure Initialize (This : in out BasicTouchInputFactory'Class);
   function Create return BasicTouchInputFactory_Access;
   function getInstance return BasicTouchInputFactory_Access;
   procedure init (This : in out BasicTouchInputFactory; inputToGameKeyMapping_Param : access InputToGameKeyMapping_Package.InputToGameKeyMapping'Class);
   procedure updateAll (This : in out BasicTouchInputFactory; inputToGameKeyMapping_Param : access InputToGameKeyMapping_Package.InputToGameKeyMapping'Class);
   procedure updateAllFromList (This : in out BasicTouchInputFactory; list_Param : access BasicArrayList_Package.BasicArrayList'Class; inputToGameKeyMapping_Param : access InputToGameKeyMapping_Package.InputToGameKeyMapping'Class);
   function getList (This : in out BasicTouchInputFactory) return BasicArrayList_Access;

end org.allbinary.input.motion.button.BasicTouchInputFactory_Package;


