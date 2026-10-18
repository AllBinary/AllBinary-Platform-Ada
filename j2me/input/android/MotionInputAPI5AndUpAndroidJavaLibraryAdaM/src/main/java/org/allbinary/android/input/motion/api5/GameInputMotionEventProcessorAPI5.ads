--
-- AllBinary Open License Version 1
-- Copyright (c) 2009 AllBinary
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
with android.view.MotionEvent_Package; use android.view.MotionEvent_Package;
with org.allbinary.android.input.motion.BaseGameInputMotionEventProcessor_Package; use org.allbinary.android.input.motion.BaseGameInputMotionEventProcessor_Package;
with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package; use org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
with org.allbinary.input.motion.MotionRecognizer_Package; use org.allbinary.input.motion.MotionRecognizer_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;

package org.allbinary.android.input.motion.api5.GameInputMotionEventProcessorAPI5_Package is

   package MotionEvent_Package renames Standard.android.view.MotionEvent_Package;
   package BaseGameInputMotionEventProcessor_Package renames Standard.org.allbinary.android.input.motion.BaseGameInputMotionEventProcessor_Package;
   package DisplayInfoSingleton_Package renames Standard.org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
   package MotionRecognizer_Package renames Standard.org.allbinary.input.motion.MotionRecognizer_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;

   type GameInputMotionEventProcessorAPI5 is tagged;
   type GameInputMotionEventProcessorAPI5_Access is access all GameInputMotionEventProcessorAPI5'Class;
   type GameInputMotionEventProcessorAPI5_Access_Array is array (Natural range <>) of GameInputMotionEventProcessorAPI5_Access;
   type GameInputMotionEventProcessorAPI5_Access_Array_Access is access all GameInputMotionEventProcessorAPI5_Access_Array;
   type GameInputMotionEventProcessorAPI5_Access_Array_Access_Array is array (Natural range <>) of GameInputMotionEventProcessorAPI5_Access_Array_Access;
   type GameInputMotionEventProcessorAPI5_Access_Array_Access_Array_Access is access all GameInputMotionEventProcessorAPI5_Access_Array_Access_Array;

   type GameInputMotionEventProcessorAPI5 is new BaseGameInputMotionEventProcessor with record
      logUtil : LogUtil_Access;
      displayInfo : DisplayInfoSingleton_Access;
      motionRecognizerArray : MotionRecognizer_Access_Array_Access;
      TOTAL_MINUS_ONE : Integer;
   end record;
   instance : Java_Object_Access;

   procedure Initialize (This : in out GameInputMotionEventProcessorAPI5'Class);
   function Create return GameInputMotionEventProcessorAPI5_Access;
   function getInstance return GameInputMotionEventProcessorAPI5_Access;
   function isValid (This : in out GameInputMotionEventProcessorAPI5; pointerId : Integer) return Boolean;
   procedure isValid (This : in out GameInputMotionEventProcessorAPI5; pointerId : Integer);
   procedure process (This : in out GameInputMotionEventProcessorAPI5; motionEvent_Param : access MotionEvent_Package.MotionEvent'Class);

end org.allbinary.android.input.motion.api5.GameInputMotionEventProcessorAPI5_Package;


