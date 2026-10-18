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
with org.allbinary.input.motion.gesture.MotionGestureInput_Package; use org.allbinary.input.motion.gesture.MotionGestureInput_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.game.input.CompleteMotionGestureInputInterface_Package; use org.allbinary.game.input.CompleteMotionGestureInputInterface_Package;

package org.allbinary.game.input.CompleteMotionGestureInputEvent_Package is

   package MotionGestureInput_Package renames Standard.org.allbinary.input.motion.gesture.MotionGestureInput_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;

   type CompleteMotionGestureInputEvent is tagged;
   type CompleteMotionGestureInputEvent_Access is access all CompleteMotionGestureInputEvent'Class;
   type CompleteMotionGestureInputEvent_Access_Array is array (Natural range <>) of CompleteMotionGestureInputEvent_Access;
   type CompleteMotionGestureInputEvent_Access_Array_Access is access all CompleteMotionGestureInputEvent_Access_Array;
   type CompleteMotionGestureInputEvent_Access_Array_Access_Array is array (Natural range <>) of CompleteMotionGestureInputEvent_Access_Array_Access;
   type CompleteMotionGestureInputEvent_Access_Array_Access_Array_Access is access all CompleteMotionGestureInputEvent_Access_Array_Access_Array;

   type CompleteMotionGestureInputEvent is new AllBinaryEventObject and CompleteMotionGestureInputInterface with record
      logUtil : LogUtil_Access;
      name : Unbounded_String;
      motionGestureInput : MotionGestureInput_Access;
   end record;

   procedure Initialize (This : in out CompleteMotionGestureInputEvent'Class; name : Unbounded_String; motionGestureInput_Param : access MotionGestureInput_Package.MotionGestureInput'Class);
   function Create (name : Unbounded_String; motionGestureInput_Param : access MotionGestureInput_Package.MotionGestureInput'Class) return CompleteMotionGestureInputEvent_Access;
   procedure setName (This : in out CompleteMotionGestureInputEvent; name : Unbounded_String);
   function getName (This : in out CompleteMotionGestureInputEvent) return Unbounded_String;
   procedure setMotionGestureInput (This : in out CompleteMotionGestureInputEvent; motionGestureInput_Param : access MotionGestureInput_Package.MotionGestureInput'Class);
   function getMotionGestureInput (This : in out CompleteMotionGestureInputEvent) return MotionGestureInput_Access;

end org.allbinary.game.input.CompleteMotionGestureInputEvent_Package;


