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
with org.allbinary.game.input.motion.action.SingleKeyPressGameKeyFromMotionGestureEventListener_Package; use org.allbinary.game.input.motion.action.SingleKeyPressGameKeyFromMotionGestureEventListener_Package;
with org.allbinary.input.motion.trackball.action.DownTrackballInputToGameKeyEventAction_Package; use org.allbinary.input.motion.trackball.action.DownTrackballInputToGameKeyEventAction_Package;
with org.allbinary.input.motion.trackball.action.LeftTrackballInputToGameKeyEventAction_Package; use org.allbinary.input.motion.trackball.action.LeftTrackballInputToGameKeyEventAction_Package;
with org.allbinary.input.motion.trackball.action.RightTrackballInputToGameKeyEventAction_Package; use org.allbinary.input.motion.trackball.action.RightTrackballInputToGameKeyEventAction_Package;
with org.allbinary.input.motion.trackball.action.UpTrackballInputToGameKeyEventAction_Package; use org.allbinary.input.motion.trackball.action.UpTrackballInputToGameKeyEventAction_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.android.input.motion.MotionEventProcessor_Package; use org.allbinary.android.input.motion.MotionEventProcessor_Package;

package org.allbinary.android.input.motion.TrackballGameInputMotionEventProcessor_Package is

   package MotionEvent_Package renames android.view.MotionEvent_Package;
   package SingleKeyPressGameKeyFromMotionGestureEventListener_Package renames org.allbinary.game.input.motion.action.SingleKeyPressGameKeyFromMotionGestureEventListener_Package;
   package DownTrackballInputToGameKeyEventAction_Package renames org.allbinary.input.motion.trackball.action.DownTrackballInputToGameKeyEventAction_Package;
   package LeftTrackballInputToGameKeyEventAction_Package renames org.allbinary.input.motion.trackball.action.LeftTrackballInputToGameKeyEventAction_Package;
   package RightTrackballInputToGameKeyEventAction_Package renames org.allbinary.input.motion.trackball.action.RightTrackballInputToGameKeyEventAction_Package;
   package UpTrackballInputToGameKeyEventAction_Package renames org.allbinary.input.motion.trackball.action.UpTrackballInputToGameKeyEventAction_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;

   type TrackballGameInputMotionEventProcessor is tagged;
   type TrackballGameInputMotionEventProcessor_Access is access all TrackballGameInputMotionEventProcessor'Class;
   type TrackballGameInputMotionEventProcessor_Access_Array is array (Natural range <>) of TrackballGameInputMotionEventProcessor_Access;
   type TrackballGameInputMotionEventProcessor_Access_Array_Access is access all TrackballGameInputMotionEventProcessor_Access_Array;

   type TrackballGameInputMotionEventProcessor is new MotionEventProcessor with record
      logUtil : LogUtil_Access;
      listener : SingleKeyPressGameKeyFromMotionGestureEventListener_Access;
      commonStrings : CommonStrings_Access;
   end record;
   PROCESSOR : TrackballGameInputMotionEventProcessor_Access;

   procedure Initialize (This : in out TrackballGameInputMotionEventProcessor'Class);
   function Create return TrackballGameInputMotionEventProcessor_Access;
   function getInstance return TrackballGameInputMotionEventProcessor_Access;
   procedure getInstance;
   procedure process (This : in out TrackballGameInputMotionEventProcessor; motionEvent : MotionEvent_Access);

end org.allbinary.android.input.motion.TrackballGameInputMotionEventProcessor_Package;


