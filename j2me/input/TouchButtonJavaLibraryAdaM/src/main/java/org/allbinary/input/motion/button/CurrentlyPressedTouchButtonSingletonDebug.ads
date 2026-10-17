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
with org.allbinary.graphics.GPoint_Package; use org.allbinary.graphics.GPoint_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingleton_Package; use org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingleton_Package;

package org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingletonDebug_Package is

   package GPoint_Package renames org.allbinary.graphics.GPoint_Package;
   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames org.allbinary.logic.string_Id.StringUtil_Package;
   package CommonSeps_Package renames org.allbinary.string_Id.CommonSeps_Package;

   type CurrentlyPressedTouchButtonSingletonDebug is tagged;
   type CurrentlyPressedTouchButtonSingletonDebug_Access is access all CurrentlyPressedTouchButtonSingletonDebug'Class;
   type CurrentlyPressedTouchButtonSingletonDebug_Access_Array is array (Natural range <>) of CurrentlyPressedTouchButtonSingletonDebug_Access;
   type CurrentlyPressedTouchButtonSingletonDebug_Access_Array_Access is access all CurrentlyPressedTouchButtonSingletonDebug_Access_Array;

   type CurrentlyPressedTouchButtonSingletonDebug is new CurrentlyPressedTouchButtonSingleton with record
      string_Id : Unbounded_String;
      listString : Unbounded_String;
      append : Unbounded_String;
      PRESSED_AND_FIRED : Unbounded_String;
      PRESSED_AND_NOT_FIRED : Unbounded_String;
      ASSOCIATED_RELEASED_AND_FIRED : Unbounded_String;
      RELEASED_AND_FIRED : Unbounded_String;
      RELEASED_AND_FIRED_2 : Unbounded_String;
      RELEASED_AND_NOT_FIRED : Unbounded_String;
   end record;
   instanceC : CurrentlyPressedTouchButtonSingletonDebug_Access;

   procedure Initialize (This : in out CurrentlyPressedTouchButtonSingletonDebug'Class);
   function Create return CurrentlyPressedTouchButtonSingletonDebug_Access;
   function getInstance return CurrentlyPressedTouchButtonSingleton_Access;
   procedure getInstance;
   procedure appendTouchButtonInput (This : in out CurrentlyPressedTouchButtonSingletonDebug; append : Unbounded_String; touchButtonInput : TouchButtonInput_Access);
   procedure append (This : in out CurrentlyPressedTouchButtonSingletonDebug; append : Unbounded_String);
   procedure clearLog (This : in out CurrentlyPressedTouchButtonSingletonDebug; x : Integer; y : Integer);
   procedure releaseAndNotFired (This : in out CurrentlyPressedTouchButtonSingletonDebug);
   procedure releaseAndFired (This : in out CurrentlyPressedTouchButtonSingletonDebug; touchButtonInput : TouchButtonInput_Access);
   procedure releaseAndFired2 (This : in out CurrentlyPressedTouchButtonSingletonDebug; touchButtonInput : TouchButtonInput_Access);
   procedure releaseAndFiredAssociated (This : in out CurrentlyPressedTouchButtonSingletonDebug; touchButtonInput : TouchButtonInput_Access);
   procedure pressedAndFired (This : in out CurrentlyPressedTouchButtonSingletonDebug; touchButtonInput : TouchButtonInput_Access);
   procedure pressedAndNotFired (This : in out CurrentlyPressedTouchButtonSingletonDebug; touchButtonInput : TouchButtonInput_Access);
   function removeAt (This : in out CurrentlyPressedTouchButtonSingletonDebug; index : Integer) return TouchButtonInput_Access;
   procedure removeAt (This : in out CurrentlyPressedTouchButtonSingletonDebug; index : Integer);
   function remove (This : in out CurrentlyPressedTouchButtonSingletonDebug; touchButtonInput : TouchButtonInput_Access) return Boolean;
   procedure remove (This : in out CurrentlyPressedTouchButtonSingletonDebug; touchButtonInput : TouchButtonInput_Access);
   procedure add (This : in out CurrentlyPressedTouchButtonSingletonDebug; touchButtonInput : TouchButtonInput_Access);
   function toString (This : in out CurrentlyPressedTouchButtonSingletonDebug) return Unbounded_String;
   procedure toString (This : in out CurrentlyPressedTouchButtonSingletonDebug);

end org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingletonDebug_Package;


