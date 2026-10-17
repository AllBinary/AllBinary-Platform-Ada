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
with org.allbinary.input.motion.AllMotionRecognizer_Package; use org.allbinary.input.motion.AllMotionRecognizer_Package;
with org.allbinary.input.motion.MotionRecognizer_Package; use org.allbinary.input.motion.MotionRecognizer_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;

package org.allbinary.android.input.motion.api1.GameInputMotionEventProcessorAPI1_Package is

   package MotionEvent_Package renames Standard.android.view.MotionEvent_Package;
   package BaseGameInputMotionEventProcessor_Package renames Standard.org.allbinary.android.input.motion.BaseGameInputMotionEventProcessor_Package;
   package AllMotionRecognizer_Package renames Standard.org.allbinary.input.motion.AllMotionRecognizer_Package;
   package MotionRecognizer_Package renames Standard.org.allbinary.input.motion.MotionRecognizer_Package;
   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;

   type GameInputMotionEventProcessorAPI1 is tagged;
   type GameInputMotionEventProcessorAPI1_Access is access all GameInputMotionEventProcessorAPI1'Class;
   type GameInputMotionEventProcessorAPI1_Access_Array is array (Natural range <>) of GameInputMotionEventProcessorAPI1_Access;
   type GameInputMotionEventProcessorAPI1_Access_Array_Access is access all GameInputMotionEventProcessorAPI1_Access_Array;

   type GameInputMotionEventProcessorAPI1 is new BaseGameInputMotionEventProcessor with record
      logUtil : LogUtil_Access;
      motionRecognizer : MotionRecognizer_Access;
   end record;
   instance : Java_Object_Access;

   procedure Initialize (This : in out GameInputMotionEventProcessorAPI1'Class);
   function Create return GameInputMotionEventProcessorAPI1_Access;
   function getInstance return GameInputMotionEventProcessorAPI1_Access;
   procedure process (This : in out GameInputMotionEventProcessorAPI1; motionEvent_Param : access MotionEvent'Class);

end org.allbinary.android.input.motion.api1.GameInputMotionEventProcessorAPI1_Package;


