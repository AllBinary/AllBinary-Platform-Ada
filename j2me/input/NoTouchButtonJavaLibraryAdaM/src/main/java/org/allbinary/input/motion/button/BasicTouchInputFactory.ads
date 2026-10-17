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
with org.allbinary.game.input.InputFactory_Package; use org.allbinary.game.input.InputFactory_Package;
with org.allbinary.game.input.mapping.InputToGameKeyMapping_Package; use org.allbinary.game.input.mapping.InputToGameKeyMapping_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;

package org.allbinary.input.motion.button.BasicTouchInputFactory_Package is

   package InputFactory_Package renames Standard.org.allbinary.game.input.InputFactory_Package;
   package InputToGameKeyMapping_Package renames Standard.org.allbinary.game.input.mapping.InputToGameKeyMapping_Package;
   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;

   type BasicTouchInputFactory is tagged;
   type BasicTouchInputFactory_Access is access all BasicTouchInputFactory'Class;
   type BasicTouchInputFactory_Access_Array is array (Natural range <>) of BasicTouchInputFactory_Access;
   type BasicTouchInputFactory_Access_Array_Access is access all BasicTouchInputFactory_Access_Array;

   type BasicTouchInputFactory is new Java_Object with record
      logUtil : LogUtil_Access;
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
   procedure getInstance;
   procedure init (This : in out BasicTouchInputFactory; inputToGameKeyMapping : InputToGameKeyMapping_Access);
   procedure updateAll (This : in out BasicTouchInputFactory; inputToGameKeyMapping : InputToGameKeyMapping_Access);
   procedure updateAllList (This : in out BasicTouchInputFactory; list : BasicArrayList_Access; inputToGameKeyMapping : InputToGameKeyMapping_Access);
   function getList (This : in out BasicTouchInputFactory) return BasicArrayList_Access;
   procedure getList (This : in out BasicTouchInputFactory);

end org.allbinary.input.motion.button.BasicTouchInputFactory_Package;


