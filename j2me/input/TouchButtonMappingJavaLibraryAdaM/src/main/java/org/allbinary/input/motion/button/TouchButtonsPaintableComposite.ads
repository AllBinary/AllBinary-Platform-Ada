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
with org.allbinary.game.input.CompleteMotionGestureInputEvent_Package; use org.allbinary.game.input.CompleteMotionGestureInputEvent_Package;
with org.allbinary.game.input.CompleteMotionGestureInputEventHandler_Package; use org.allbinary.game.input.CompleteMotionGestureInputEventHandler_Package;
with org.allbinary.game.input.CompleteMotionGestureInputEventListenerInterface_Package; use org.allbinary.game.input.CompleteMotionGestureInputEventListenerInterface_Package;
with org.allbinary.game.input.GameKey_Package; use org.allbinary.game.input.GameKey_Package;
with org.allbinary.game.input.mapping.InputMappingInterface_Package; use org.allbinary.game.input.mapping.InputMappingInterface_Package;
with org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEvent_Package; use org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEvent_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.paint.ProcessPaintable_Package; use org.allbinary.graphics.paint.ProcessPaintable_Package;
with org.allbinary.input.motion.gesture.MotionGestureInput_Package; use org.allbinary.input.motion.gesture.MotionGestureInput_Package;
with org.allbinary.input.motion.gesture.TouchMotionGestureFactory_Package; use org.allbinary.input.motion.gesture.TouchMotionGestureFactory_Package;
with org.allbinary.logic.communication.log.ForcedLogUtil_Package; use org.allbinary.logic.communication.log.ForcedLogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.EventStrings_Package; use org.allbinary.logic.util.event.EventStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.time.TimeDelayHelper_Package; use org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.input.motion.button.TouchButtonsMappingPaintable_Package; use org.allbinary.input.motion.button.TouchButtonsMappingPaintable_Package;

package org.allbinary.input.motion.button.TouchButtonsPaintableComposite_Package is

   package CompleteMotionGestureInputEvent_Package renames Standard.org.allbinary.game.input.CompleteMotionGestureInputEvent_Package;
   package CompleteMotionGestureInputEventHandler_Package renames Standard.org.allbinary.game.input.CompleteMotionGestureInputEventHandler_Package;
   package CompleteMotionGestureInputEventListenerInterface_Package renames Standard.org.allbinary.game.input.CompleteMotionGestureInputEventListenerInterface_Package;
   package GameKey_Package renames Standard.org.allbinary.game.input.GameKey_Package;
   package InputMappingInterface_Package renames Standard.org.allbinary.game.input.mapping.InputMappingInterface_Package;
   package GameKeyCompleteMotionGestureInputEvent_Package renames Standard.org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEvent_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package ProcessPaintable_Package renames Standard.org.allbinary.graphics.paint.ProcessPaintable_Package;
   package MotionGestureInput_Package renames Standard.org.allbinary.input.motion.gesture.MotionGestureInput_Package;
   package TouchMotionGestureFactory_Package renames Standard.org.allbinary.input.motion.gesture.TouchMotionGestureFactory_Package;
   package ForcedLogUtil_Package renames Standard.org.allbinary.logic.communication.log.ForcedLogUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package EventStrings_Package renames Standard.org.allbinary.logic.util.event.EventStrings_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package TimeDelayHelper_Package renames Standard.org.allbinary.time.TimeDelayHelper_Package;

   type TouchButtonsPaintableComposite is tagged;
   type TouchButtonsPaintableComposite_Access is access all TouchButtonsPaintableComposite'Class;
   type TouchButtonsPaintableComposite_Access_Array is array (Natural range <>) of TouchButtonsPaintableComposite_Access;
   type TouchButtonsPaintableComposite_Access_Array_Access is access all TouchButtonsPaintableComposite_Access_Array;

   type TouchButtonsPaintableComposite is new ProcessPaintable and CompleteMotionGestureInputEventListenerInterface with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      inputMappingInterface : InputMappingInterface_Access;
      touchButtonsPaintable : TouchButtonsMappingPaintable_Access;
      timeHelper : TimeDelayHelper_Access;
      released : Boolean;
      METHOD_NAME : Unbounded_String;
      RELEASE : Unbounded_String;
      FAST_REPEAT : Unbounded_String;
      IGNORE : Unbounded_String;
   end record;

   procedure Initialize (This : in out TouchButtonsPaintableComposite'Class; inputMappingInterface : InputMappingInterface_Access; basicColor : BasicColor_Access);
   function Create (inputMappingInterface : InputMappingInterface_Access; basicColor : BasicColor_Access) return TouchButtonsPaintableComposite_Access;
   procedure onEvent (This : in out TouchButtonsPaintableComposite; eventObject : AllBinaryEventObject_Access);
   procedure onCompleteMotionGestureInputEvent (This : in out TouchButtonsPaintableComposite; completeMotionGestureInputEvent : CompleteMotionGestureInputEvent_Access);
   procedure process (This : in out TouchButtonsPaintableComposite);

end org.allbinary.input.motion.button.TouchButtonsPaintableComposite_Package;


