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
with org.allbinary.game.input.mapping.event.InputMappingEvent_Package; use org.allbinary.game.input.mapping.event.InputMappingEvent_Package;
with org.allbinary.game.input.mapping.event.InputMappingEventListenerInterface_Package; use org.allbinary.game.input.mapping.event.InputMappingEventListenerInterface_Package;
with org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEventFactory_Package; use org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEventFactory_Package;
with org.allbinary.input.motion.button.BasicTouchInputFactory_Package; use org.allbinary.input.motion.button.BasicTouchInputFactory_Package;
with org.allbinary.logic.communication.log.ForcedLogUtil_Package; use org.allbinary.logic.communication.log.ForcedLogUtil_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.EventStrings_Package; use org.allbinary.logic.util.event.EventStrings_Package;

package org.allbinary.game.input.mapping.MotionInputMappingEventListener_Package is

   package InputMappingEvent_Package renames org.allbinary.game.input.mapping.event.InputMappingEvent_Package;
   package InputMappingEventListenerInterface_Package renames org.allbinary.game.input.mapping.event.InputMappingEventListenerInterface_Package;
   package GameKeyCompleteMotionGestureInputEventFactory_Package renames org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEventFactory_Package;
   package BasicTouchInputFactory_Package renames org.allbinary.input.motion.button.BasicTouchInputFactory_Package;
   package ForcedLogUtil_Package renames org.allbinary.logic.communication.log.ForcedLogUtil_Package;
   package AllBinaryEventObject_Package renames org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package EventStrings_Package renames org.allbinary.logic.util.event.EventStrings_Package;

   type MotionInputMappingEventListener is tagged;
   type MotionInputMappingEventListener_Access is access all MotionInputMappingEventListener'Class;
   type MotionInputMappingEventListener_Access_Array is array (Natural range <>) of MotionInputMappingEventListener_Access;
   type MotionInputMappingEventListener_Access_Array_Access is access all MotionInputMappingEventListener_Access_Array;

   type MotionInputMappingEventListener is new InputMappingEventListenerInterface with null record;

   procedure Initialize (This : in out MotionInputMappingEventListener'Class);
   function Create return MotionInputMappingEventListener_Access;
   procedure onEvent (This : in out MotionInputMappingEventListener; eventObject : AllBinaryEventObject_Access);
   procedure onInputMappingEvent (This : in out MotionInputMappingEventListener; inputMappingEvent : InputMappingEvent_Access);

end org.allbinary.game.input.mapping.MotionInputMappingEventListener_Package;


