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

limited with org.allbinary.android.input.motion.TrackballGameInputMotionEventProcessor_Package;
package org.allbinary.android.input.motion.TrackballGameInputMotionEventProcessor_Package_References is
   type TrackballGameInputMotionEventProcessor_Access is access all org.allbinary.android.input.motion.TrackballGameInputMotionEventProcessor_Package.TrackballGameInputMotionEventProcessor'Class;
   type TrackballGameInputMotionEventProcessor_Access_Array is array (Natural range <>) of TrackballGameInputMotionEventProcessor_Access;
   type TrackballGameInputMotionEventProcessor_Access_Array_Access is access all TrackballGameInputMotionEventProcessor_Access_Array;
   type TrackballGameInputMotionEventProcessor_Access_Array_Access_Array is array (Natural range <>) of TrackballGameInputMotionEventProcessor_Access_Array_Access;
   type TrackballGameInputMotionEventProcessor_Access_Array_Access_Array_Access is access all TrackballGameInputMotionEventProcessor_Access_Array_Access_Array;
end org.allbinary.android.input.motion.TrackballGameInputMotionEventProcessor_Package_References;

with org.allbinary.android.input.motion.TrackballGameInputMotionEventProcessor_Package_References;
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
limited with org.allbinary.game.input.motion.action.SingleKeyPressGameKeyFromMotionGestureEventListener_Package;
with org.allbinary.game.input.motion.action.SingleKeyPressGameKeyFromMotionGestureEventListener_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with org.allbinary.android.input.motion.MotionEventProcessor_Package; use org.allbinary.android.input.motion.MotionEventProcessor_Package;

package org.allbinary.android.input.motion.TrackballGameInputMotionEventProcessor_Package is

   package MotionEvent_Package renames Standard.android.view.MotionEvent_Package;
   package SingleKeyPressGameKeyFromMotionGestureEventListener_Package renames Standard.org.allbinary.game.input.motion.action.SingleKeyPressGameKeyFromMotionGestureEventListener_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
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
   subtype SingleKeyPressGameKeyFromMotionGestureEventListener_Access is org.allbinary.game.input.motion.action.SingleKeyPressGameKeyFromMotionGestureEventListener_Package_References.SingleKeyPressGameKeyFromMotionGestureEventListener_Access;
   use type SingleKeyPressGameKeyFromMotionGestureEventListener_Access;
   subtype SingleKeyPressGameKeyFromMotionGestureEventListener_Access_Array is org.allbinary.game.input.motion.action.SingleKeyPressGameKeyFromMotionGestureEventListener_Package_References.SingleKeyPressGameKeyFromMotionGestureEventListener_Access_Array;
   use type SingleKeyPressGameKeyFromMotionGestureEventListener_Access_Array;
   subtype SingleKeyPressGameKeyFromMotionGestureEventListener_Access_Array_Access is org.allbinary.game.input.motion.action.SingleKeyPressGameKeyFromMotionGestureEventListener_Package_References.SingleKeyPressGameKeyFromMotionGestureEventListener_Access_Array_Access;
   use type SingleKeyPressGameKeyFromMotionGestureEventListener_Access_Array_Access;
   subtype SingleKeyPressGameKeyFromMotionGestureEventListener_Access_Array_Access_Array is org.allbinary.game.input.motion.action.SingleKeyPressGameKeyFromMotionGestureEventListener_Package_References.SingleKeyPressGameKeyFromMotionGestureEventListener_Access_Array_Access_Array;
   use type SingleKeyPressGameKeyFromMotionGestureEventListener_Access_Array_Access_Array;
   subtype SingleKeyPressGameKeyFromMotionGestureEventListener_Access_Array_Access_Array_Access is org.allbinary.game.input.motion.action.SingleKeyPressGameKeyFromMotionGestureEventListener_Package_References.SingleKeyPressGameKeyFromMotionGestureEventListener_Access_Array_Access_Array_Access;
   use type SingleKeyPressGameKeyFromMotionGestureEventListener_Access_Array_Access_Array_Access;
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
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype TrackballGameInputMotionEventProcessor_Access is org.allbinary.android.input.motion.TrackballGameInputMotionEventProcessor_Package_References.TrackballGameInputMotionEventProcessor_Access;
   function "=" (Left, Right : TrackballGameInputMotionEventProcessor_Access) return Boolean renames org.allbinary.android.input.motion.TrackballGameInputMotionEventProcessor_Package_References."=";
   subtype TrackballGameInputMotionEventProcessor_Access_Array is org.allbinary.android.input.motion.TrackballGameInputMotionEventProcessor_Package_References.TrackballGameInputMotionEventProcessor_Access_Array;
   function "=" (Left, Right : TrackballGameInputMotionEventProcessor_Access_Array) return Boolean renames org.allbinary.android.input.motion.TrackballGameInputMotionEventProcessor_Package_References."=";
   subtype TrackballGameInputMotionEventProcessor_Access_Array_Access is org.allbinary.android.input.motion.TrackballGameInputMotionEventProcessor_Package_References.TrackballGameInputMotionEventProcessor_Access_Array_Access;
   function "=" (Left, Right : TrackballGameInputMotionEventProcessor_Access_Array_Access) return Boolean renames org.allbinary.android.input.motion.TrackballGameInputMotionEventProcessor_Package_References."=";
   subtype TrackballGameInputMotionEventProcessor_Access_Array_Access_Array is org.allbinary.android.input.motion.TrackballGameInputMotionEventProcessor_Package_References.TrackballGameInputMotionEventProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : TrackballGameInputMotionEventProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.android.input.motion.TrackballGameInputMotionEventProcessor_Package_References."=";
   subtype TrackballGameInputMotionEventProcessor_Access_Array_Access_Array_Access is org.allbinary.android.input.motion.TrackballGameInputMotionEventProcessor_Package_References.TrackballGameInputMotionEventProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TrackballGameInputMotionEventProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.android.input.motion.TrackballGameInputMotionEventProcessor_Package_References."=";

   type TrackballGameInputMotionEventProcessor is new MotionEventProcessor with record
      logUtil : LogUtil_Access;
      listener : SingleKeyPressGameKeyFromMotionGestureEventListener_Access;
      commonStrings : CommonStrings_Access;
   end record;
   PROCESSOR : TrackballGameInputMotionEventProcessor_Access;

   procedure Initialize (This : in out TrackballGameInputMotionEventProcessor'Class);
   function Create return TrackballGameInputMotionEventProcessor_Access;
   function getInstance return TrackballGameInputMotionEventProcessor_Access;
   procedure process (This : in out TrackballGameInputMotionEventProcessor; motionEvent_Param : access MotionEvent_Package.MotionEvent'Class);

end org.allbinary.android.input.motion.TrackballGameInputMotionEventProcessor_Package;


