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

limited with org.allbinary.android.input.motion.api1.GameInputMotionEventProcessorAPI1_Package;
package org.allbinary.android.input.motion.api1.GameInputMotionEventProcessorAPI1_Package_References is
   type GameInputMotionEventProcessorAPI1_Access is access all org.allbinary.android.input.motion.api1.GameInputMotionEventProcessorAPI1_Package.GameInputMotionEventProcessorAPI1'Class;
   type GameInputMotionEventProcessorAPI1_Access_Array is array (Natural range <>) of GameInputMotionEventProcessorAPI1_Access;
   type GameInputMotionEventProcessorAPI1_Access_Array_Access is access all GameInputMotionEventProcessorAPI1_Access_Array;
   type GameInputMotionEventProcessorAPI1_Access_Array_Access_Array is array (Natural range <>) of GameInputMotionEventProcessorAPI1_Access_Array_Access;
   type GameInputMotionEventProcessorAPI1_Access_Array_Access_Array_Access is access all GameInputMotionEventProcessorAPI1_Access_Array_Access_Array;
end org.allbinary.android.input.motion.api1.GameInputMotionEventProcessorAPI1_Package_References;

with org.allbinary.android.input.motion.api1.GameInputMotionEventProcessorAPI1_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with android.view.MotionEvent_Package;
with android.view.MotionEvent_Package_References;
with org.allbinary.android.input.motion.BaseGameInputMotionEventProcessor_Package; use org.allbinary.android.input.motion.BaseGameInputMotionEventProcessor_Package;
limited with org.allbinary.input.motion.MotionRecognizer_Package;
with org.allbinary.input.motion.MotionRecognizer_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;

package org.allbinary.android.input.motion.api1.GameInputMotionEventProcessorAPI1_Package is

   package MotionEvent_Package renames Standard.android.view.MotionEvent_Package;
   package BaseGameInputMotionEventProcessor_Package renames Standard.org.allbinary.android.input.motion.BaseGameInputMotionEventProcessor_Package;
   package MotionRecognizer_Package renames Standard.org.allbinary.input.motion.MotionRecognizer_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Reference_Types is
   subtype MotionEvent_Access is android.view.MotionEvent_Package_References.MotionEvent_Access;
   use type MotionEvent_Access;
   subtype MotionEvent_Access_Array is android.view.MotionEvent_Package_References.MotionEvent_Access_Array;
   use type MotionEvent_Access_Array;
   subtype MotionEvent_Access_Array_Access is android.view.MotionEvent_Package_References.MotionEvent_Access_Array_Access;
   use type MotionEvent_Access_Array_Access;
   subtype MotionEvent_Access_Array_Access_Array is android.view.MotionEvent_Package_References.MotionEvent_Access_Array_Access_Array;
   use type MotionEvent_Access_Array_Access_Array;
   subtype MotionEvent_Access_Array_Access_Array_Access is android.view.MotionEvent_Package_References.MotionEvent_Access_Array_Access_Array_Access;
   use type MotionEvent_Access_Array_Access_Array_Access;
   subtype MotionRecognizer_Access is org.allbinary.input.motion.MotionRecognizer_Package_References.MotionRecognizer_Access;
   use type MotionRecognizer_Access;
   subtype MotionRecognizer_Access_Array is org.allbinary.input.motion.MotionRecognizer_Package_References.MotionRecognizer_Access_Array;
   use type MotionRecognizer_Access_Array;
   subtype MotionRecognizer_Access_Array_Access is org.allbinary.input.motion.MotionRecognizer_Package_References.MotionRecognizer_Access_Array_Access;
   use type MotionRecognizer_Access_Array_Access;
   subtype MotionRecognizer_Access_Array_Access_Array is org.allbinary.input.motion.MotionRecognizer_Package_References.MotionRecognizer_Access_Array_Access_Array;
   use type MotionRecognizer_Access_Array_Access_Array;
   subtype MotionRecognizer_Access_Array_Access_Array_Access is org.allbinary.input.motion.MotionRecognizer_Package_References.MotionRecognizer_Access_Array_Access_Array_Access;
   use type MotionRecognizer_Access_Array_Access_Array_Access;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype GameInputMotionEventProcessorAPI1_Access is org.allbinary.android.input.motion.api1.GameInputMotionEventProcessorAPI1_Package_References.GameInputMotionEventProcessorAPI1_Access;
   function "=" (Left, Right : GameInputMotionEventProcessorAPI1_Access) return Boolean renames org.allbinary.android.input.motion.api1.GameInputMotionEventProcessorAPI1_Package_References."=";
   subtype GameInputMotionEventProcessorAPI1_Access_Array is org.allbinary.android.input.motion.api1.GameInputMotionEventProcessorAPI1_Package_References.GameInputMotionEventProcessorAPI1_Access_Array;
   function "=" (Left, Right : GameInputMotionEventProcessorAPI1_Access_Array) return Boolean renames org.allbinary.android.input.motion.api1.GameInputMotionEventProcessorAPI1_Package_References."=";
   subtype GameInputMotionEventProcessorAPI1_Access_Array_Access is org.allbinary.android.input.motion.api1.GameInputMotionEventProcessorAPI1_Package_References.GameInputMotionEventProcessorAPI1_Access_Array_Access;
   function "=" (Left, Right : GameInputMotionEventProcessorAPI1_Access_Array_Access) return Boolean renames org.allbinary.android.input.motion.api1.GameInputMotionEventProcessorAPI1_Package_References."=";
   subtype GameInputMotionEventProcessorAPI1_Access_Array_Access_Array is org.allbinary.android.input.motion.api1.GameInputMotionEventProcessorAPI1_Package_References.GameInputMotionEventProcessorAPI1_Access_Array_Access_Array;
   function "=" (Left, Right : GameInputMotionEventProcessorAPI1_Access_Array_Access_Array) return Boolean renames org.allbinary.android.input.motion.api1.GameInputMotionEventProcessorAPI1_Package_References."=";
   subtype GameInputMotionEventProcessorAPI1_Access_Array_Access_Array_Access is org.allbinary.android.input.motion.api1.GameInputMotionEventProcessorAPI1_Package_References.GameInputMotionEventProcessorAPI1_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameInputMotionEventProcessorAPI1_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.android.input.motion.api1.GameInputMotionEventProcessorAPI1_Package_References."=";

   type GameInputMotionEventProcessorAPI1 is new BaseGameInputMotionEventProcessor with record
      logUtil : LogUtil_Access;
      motionRecognizer : MotionRecognizer_Access;
   end record;
   instance : Java_Object_Access;

   procedure Initialize (This : in out GameInputMotionEventProcessorAPI1'Class);
   function Create return GameInputMotionEventProcessorAPI1_Access;
   function getInstance return GameInputMotionEventProcessorAPI1_Access;
   procedure process (This : in out GameInputMotionEventProcessorAPI1; motionEvent_Param : access MotionEvent_Package.MotionEvent'Class);

end org.allbinary.android.input.motion.api1.GameInputMotionEventProcessorAPI1_Package;


