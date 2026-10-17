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
with org.allbinary.game.input.CompleteMotionGestureInputEventHandler_Package; use org.allbinary.game.input.CompleteMotionGestureInputEventHandler_Package;
with org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEvent_Package; use org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEvent_Package;
with org.allbinary.game.input.motion.action.GameKeyFromMotionGestureEventListener_Package; use org.allbinary.game.input.motion.action.GameKeyFromMotionGestureEventListener_Package;
with org.allbinary.input.motion.gesture.MotionGestureToMotionGestureActionAssociation_Package; use org.allbinary.input.motion.gesture.MotionGestureToMotionGestureActionAssociation_Package;
with org.allbinary.input.motion.gesture.configuration.MotionGestureConfiguration_Package; use org.allbinary.input.motion.gesture.configuration.MotionGestureConfiguration_Package;
with org.allbinary.input.motion.gesture.configuration.MotionGestureConfigurationFactory_Package; use org.allbinary.input.motion.gesture.configuration.MotionGestureConfigurationFactory_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.input.motion.gesture.observer.CompleteMotionGestureListenerInterface_Package; use org.allbinary.input.motion.gesture.observer.CompleteMotionGestureListenerInterface_Package;

package org.allbinary.input.motion.gesture.observer.ResolveCompleteMotionGestureListener_Package is

   package CompleteMotionGestureInputEventHandler_Package renames Standard.org.allbinary.game.input.CompleteMotionGestureInputEventHandler_Package;
   package GameKeyCompleteMotionGestureInputEvent_Package renames Standard.org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEvent_Package;
   package GameKeyFromMotionGestureEventListener_Package renames Standard.org.allbinary.game.input.motion.action.GameKeyFromMotionGestureEventListener_Package;
   package MotionGestureToMotionGestureActionAssociation_Package renames Standard.org.allbinary.input.motion.gesture.MotionGestureToMotionGestureActionAssociation_Package;
   package MotionGestureConfiguration_Package renames Standard.org.allbinary.input.motion.gesture.configuration.MotionGestureConfiguration_Package;
   package MotionGestureConfigurationFactory_Package renames Standard.org.allbinary.input.motion.gesture.configuration.MotionGestureConfigurationFactory_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;

   type ResolveCompleteMotionGestureListener is tagged;
   type ResolveCompleteMotionGestureListener_Access is access all ResolveCompleteMotionGestureListener'Class;
   type ResolveCompleteMotionGestureListener_Access_Array is array (Natural range <>) of ResolveCompleteMotionGestureListener_Access;
   type ResolveCompleteMotionGestureListener_Access_Array_Access is access all ResolveCompleteMotionGestureListener_Access_Array;

   type ResolveCompleteMotionGestureListener is new CompleteMotionGestureListenerInterface with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out ResolveCompleteMotionGestureListener'Class);
   function Create return ResolveCompleteMotionGestureListener_Access;
   procedure onMotionGestureCompleted (This : in out ResolveCompleteMotionGestureListener; list_Param : access BasicArrayList_Package.BasicArrayList'Class);

end org.allbinary.input.motion.gesture.observer.ResolveCompleteMotionGestureListener_Package;


