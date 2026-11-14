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

with AllBinary_Java;
limited with org.allbinary.android.input.motion.api5.GameInputMotionEventProcessorAPI5_Package;
package org.allbinary.android.input.motion.api5.GameInputMotionEventProcessorAPI5_Package_References is
   type GameInputMotionEventProcessorAPI5_Access is access all org.allbinary.android.input.motion.api5.GameInputMotionEventProcessorAPI5_Package.GameInputMotionEventProcessorAPI5'Class;
   type GameInputMotionEventProcessorAPI5_Access_Array is array (Natural range <>) of GameInputMotionEventProcessorAPI5_Access;
   type GameInputMotionEventProcessorAPI5_Access_Array_Access is access all GameInputMotionEventProcessorAPI5_Access_Array;
   type GameInputMotionEventProcessorAPI5_Access_Array_Access_Array is array (Natural range <>) of GameInputMotionEventProcessorAPI5_Access_Array_Access;
   type GameInputMotionEventProcessorAPI5_Access_Array_Access_Array_Access is access all GameInputMotionEventProcessorAPI5_Access_Array_Access_Array;
   type GameInputMotionEventProcessorAPI5_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameInputMotionEventProcessorAPI5_Access_Array_Access;
   end record;
   function Java_Box (Value : GameInputMotionEventProcessorAPI5_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameInputMotionEventProcessorAPI5_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameInputMotionEventProcessorAPI5_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameInputMotionEventProcessorAPI5_Access_Array_Access is (if Value /= null and then Value.all in GameInputMotionEventProcessorAPI5_Access_Array_Object'Class then GameInputMotionEventProcessorAPI5_Access_Array_Object'Class (Value.all).Value else null);
   type GameInputMotionEventProcessorAPI5_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameInputMotionEventProcessorAPI5_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : GameInputMotionEventProcessorAPI5_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameInputMotionEventProcessorAPI5_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameInputMotionEventProcessorAPI5_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameInputMotionEventProcessorAPI5_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in GameInputMotionEventProcessorAPI5_Access_Array_Access_Array_Object'Class then GameInputMotionEventProcessorAPI5_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.android.input.motion.api5.GameInputMotionEventProcessorAPI5_Package_References;

with org.allbinary.android.input.motion.api5.GameInputMotionEventProcessorAPI5_Package_References;
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
limited with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References;
limited with org.allbinary.input.motion.MotionRecognizer_Package;
with org.allbinary.input.motion.MotionRecognizer_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;

package org.allbinary.android.input.motion.api5.GameInputMotionEventProcessorAPI5_Package is

   package MotionEvent_Package renames Standard.android.view.MotionEvent_Package;
   package BaseGameInputMotionEventProcessor_Package renames Standard.org.allbinary.android.input.motion.BaseGameInputMotionEventProcessor_Package;
   package DisplayInfoSingleton_Package renames Standard.org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
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
   subtype DisplayInfoSingleton_Access is org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References.DisplayInfoSingleton_Access;
   use type DisplayInfoSingleton_Access;
   subtype DisplayInfoSingleton_Access_Array is org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References.DisplayInfoSingleton_Access_Array;
   use type DisplayInfoSingleton_Access_Array;
   subtype DisplayInfoSingleton_Access_Array_Access is org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References.DisplayInfoSingleton_Access_Array_Access;
   use type DisplayInfoSingleton_Access_Array_Access;
   subtype DisplayInfoSingleton_Access_Array_Access_Array is org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References.DisplayInfoSingleton_Access_Array_Access_Array;
   use type DisplayInfoSingleton_Access_Array_Access_Array;
   subtype DisplayInfoSingleton_Access_Array_Access_Array_Access is org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References.DisplayInfoSingleton_Access_Array_Access_Array_Access;
   use type DisplayInfoSingleton_Access_Array_Access_Array_Access;
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


   subtype GameInputMotionEventProcessorAPI5_Access is org.allbinary.android.input.motion.api5.GameInputMotionEventProcessorAPI5_Package_References.GameInputMotionEventProcessorAPI5_Access;
   function "=" (Left, Right : GameInputMotionEventProcessorAPI5_Access) return Boolean renames org.allbinary.android.input.motion.api5.GameInputMotionEventProcessorAPI5_Package_References."=";
   subtype GameInputMotionEventProcessorAPI5_Access_Array is org.allbinary.android.input.motion.api5.GameInputMotionEventProcessorAPI5_Package_References.GameInputMotionEventProcessorAPI5_Access_Array;
   function "=" (Left, Right : GameInputMotionEventProcessorAPI5_Access_Array) return Boolean renames org.allbinary.android.input.motion.api5.GameInputMotionEventProcessorAPI5_Package_References."=";
   subtype GameInputMotionEventProcessorAPI5_Access_Array_Access is org.allbinary.android.input.motion.api5.GameInputMotionEventProcessorAPI5_Package_References.GameInputMotionEventProcessorAPI5_Access_Array_Access;
   function "=" (Left, Right : GameInputMotionEventProcessorAPI5_Access_Array_Access) return Boolean renames org.allbinary.android.input.motion.api5.GameInputMotionEventProcessorAPI5_Package_References."=";
   function Java_Box (Value : GameInputMotionEventProcessorAPI5_Access_Array_Access) return Java_Object_Access renames org.allbinary.android.input.motion.api5.GameInputMotionEventProcessorAPI5_Package_References.Java_Box;
   function Java_Unbox_GameInputMotionEventProcessorAPI5_Access_Array (Value : access Java_Object'Class) return GameInputMotionEventProcessorAPI5_Access_Array_Access renames org.allbinary.android.input.motion.api5.GameInputMotionEventProcessorAPI5_Package_References.Java_Unbox_GameInputMotionEventProcessorAPI5_Access_Array;
   subtype GameInputMotionEventProcessorAPI5_Access_Array_Access_Array is org.allbinary.android.input.motion.api5.GameInputMotionEventProcessorAPI5_Package_References.GameInputMotionEventProcessorAPI5_Access_Array_Access_Array;
   function "=" (Left, Right : GameInputMotionEventProcessorAPI5_Access_Array_Access_Array) return Boolean renames org.allbinary.android.input.motion.api5.GameInputMotionEventProcessorAPI5_Package_References."=";
   subtype GameInputMotionEventProcessorAPI5_Access_Array_Access_Array_Access is org.allbinary.android.input.motion.api5.GameInputMotionEventProcessorAPI5_Package_References.GameInputMotionEventProcessorAPI5_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameInputMotionEventProcessorAPI5_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.android.input.motion.api5.GameInputMotionEventProcessorAPI5_Package_References."=";
   function Java_Box (Value : GameInputMotionEventProcessorAPI5_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.android.input.motion.api5.GameInputMotionEventProcessorAPI5_Package_References.Java_Box;
   function Java_Unbox_GameInputMotionEventProcessorAPI5_Access_Array_Access_Array (Value : access Java_Object'Class) return GameInputMotionEventProcessorAPI5_Access_Array_Access_Array_Access renames org.allbinary.android.input.motion.api5.GameInputMotionEventProcessorAPI5_Package_References.Java_Unbox_GameInputMotionEventProcessorAPI5_Access_Array_Access_Array;

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


