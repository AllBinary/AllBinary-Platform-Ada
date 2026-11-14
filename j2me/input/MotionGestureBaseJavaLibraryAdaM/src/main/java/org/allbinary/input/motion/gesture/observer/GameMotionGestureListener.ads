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

with AllBinary_Java;
limited with org.allbinary.input.motion.gesture.observer.GameMotionGestureListener_Package;
package org.allbinary.input.motion.gesture.observer.GameMotionGestureListener_Package_References is
   type GameMotionGestureListener_Access is access all org.allbinary.input.motion.gesture.observer.GameMotionGestureListener_Package.GameMotionGestureListener'Class;
   type GameMotionGestureListener_Access_Array is array (Natural range <>) of GameMotionGestureListener_Access;
   type GameMotionGestureListener_Access_Array_Access is access all GameMotionGestureListener_Access_Array;
   type GameMotionGestureListener_Access_Array_Access_Array is array (Natural range <>) of GameMotionGestureListener_Access_Array_Access;
   type GameMotionGestureListener_Access_Array_Access_Array_Access is access all GameMotionGestureListener_Access_Array_Access_Array;
   type GameMotionGestureListener_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameMotionGestureListener_Access_Array_Access;
   end record;
   function Java_Box (Value : GameMotionGestureListener_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameMotionGestureListener_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameMotionGestureListener_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameMotionGestureListener_Access_Array_Access is (if Value /= null and then Value.all in GameMotionGestureListener_Access_Array_Object'Class then GameMotionGestureListener_Access_Array_Object'Class (Value.all).Value else null);
   type GameMotionGestureListener_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameMotionGestureListener_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : GameMotionGestureListener_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameMotionGestureListener_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameMotionGestureListener_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameMotionGestureListener_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in GameMotionGestureListener_Access_Array_Access_Array_Object'Class then GameMotionGestureListener_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.input.motion.gesture.observer.GameMotionGestureListener_Package_References;

with org.allbinary.input.motion.gesture.observer.GameMotionGestureListener_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.input.motion.gesture.observer.MotionGestureEventListener_Package; use org.allbinary.input.motion.gesture.observer.MotionGestureEventListener_Package;
limited with org.allbinary.input.motion.gesture.observer.CompleteMotionGestureListenerInterface_Package;
with org.allbinary.input.motion.gesture.observer.CompleteMotionGestureListenerInterface_Package_References;
limited with org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package;
with org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package_References;

package org.allbinary.input.motion.gesture.observer.GameMotionGestureListener_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Reference_Types is
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
   subtype AllBinaryEventObject_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access;
   use type AllBinaryEventObject_Access;
   subtype AllBinaryEventObject_Access_Array is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array;
   use type AllBinaryEventObject_Access_Array;
   subtype AllBinaryEventObject_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access;
   use type AllBinaryEventObject_Access_Array_Access;
   subtype AllBinaryEventObject_Access_Array_Access_Array is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access_Array;
   use type AllBinaryEventObject_Access_Array_Access_Array;
   subtype AllBinaryEventObject_Access_Array_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access_Array_Access;
   use type AllBinaryEventObject_Access_Array_Access_Array_Access;
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
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   subtype CompleteMotionGestureListenerInterface_Access is org.allbinary.input.motion.gesture.observer.CompleteMotionGestureListenerInterface_Package_References.CompleteMotionGestureListenerInterface_Access;
   use type CompleteMotionGestureListenerInterface_Access;
   subtype CompleteMotionGestureListenerInterface_Access_Array is org.allbinary.input.motion.gesture.observer.CompleteMotionGestureListenerInterface_Package_References.CompleteMotionGestureListenerInterface_Access_Array;
   use type CompleteMotionGestureListenerInterface_Access_Array;
   subtype CompleteMotionGestureListenerInterface_Access_Array_Access is org.allbinary.input.motion.gesture.observer.CompleteMotionGestureListenerInterface_Package_References.CompleteMotionGestureListenerInterface_Access_Array_Access;
   use type CompleteMotionGestureListenerInterface_Access_Array_Access;
   subtype CompleteMotionGestureListenerInterface_Access_Array_Access_Array is org.allbinary.input.motion.gesture.observer.CompleteMotionGestureListenerInterface_Package_References.CompleteMotionGestureListenerInterface_Access_Array_Access_Array;
   use type CompleteMotionGestureListenerInterface_Access_Array_Access_Array;
   subtype CompleteMotionGestureListenerInterface_Access_Array_Access_Array_Access is org.allbinary.input.motion.gesture.observer.CompleteMotionGestureListenerInterface_Package_References.CompleteMotionGestureListenerInterface_Access_Array_Access_Array_Access;
   use type CompleteMotionGestureListenerInterface_Access_Array_Access_Array_Access;
   subtype MotionGestureEvent_Access is org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package_References.MotionGestureEvent_Access;
   use type MotionGestureEvent_Access;
   subtype MotionGestureEvent_Access_Array is org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package_References.MotionGestureEvent_Access_Array;
   use type MotionGestureEvent_Access_Array;
   subtype MotionGestureEvent_Access_Array_Access is org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package_References.MotionGestureEvent_Access_Array_Access;
   use type MotionGestureEvent_Access_Array_Access;
   subtype MotionGestureEvent_Access_Array_Access_Array is org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package_References.MotionGestureEvent_Access_Array_Access_Array;
   use type MotionGestureEvent_Access_Array_Access_Array;
   subtype MotionGestureEvent_Access_Array_Access_Array_Access is org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package_References.MotionGestureEvent_Access_Array_Access_Array_Access;
   use type MotionGestureEvent_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype GameMotionGestureListener_Access is org.allbinary.input.motion.gesture.observer.GameMotionGestureListener_Package_References.GameMotionGestureListener_Access;
   function "=" (Left, Right : GameMotionGestureListener_Access) return Boolean renames org.allbinary.input.motion.gesture.observer.GameMotionGestureListener_Package_References."=";
   subtype GameMotionGestureListener_Access_Array is org.allbinary.input.motion.gesture.observer.GameMotionGestureListener_Package_References.GameMotionGestureListener_Access_Array;
   function "=" (Left, Right : GameMotionGestureListener_Access_Array) return Boolean renames org.allbinary.input.motion.gesture.observer.GameMotionGestureListener_Package_References."=";
   subtype GameMotionGestureListener_Access_Array_Access is org.allbinary.input.motion.gesture.observer.GameMotionGestureListener_Package_References.GameMotionGestureListener_Access_Array_Access;
   function "=" (Left, Right : GameMotionGestureListener_Access_Array_Access) return Boolean renames org.allbinary.input.motion.gesture.observer.GameMotionGestureListener_Package_References."=";
   function Java_Box (Value : GameMotionGestureListener_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.motion.gesture.observer.GameMotionGestureListener_Package_References.Java_Box;
   function Java_Unbox_GameMotionGestureListener_Access_Array (Value : access Java_Object'Class) return GameMotionGestureListener_Access_Array_Access renames org.allbinary.input.motion.gesture.observer.GameMotionGestureListener_Package_References.Java_Unbox_GameMotionGestureListener_Access_Array;
   subtype GameMotionGestureListener_Access_Array_Access_Array is org.allbinary.input.motion.gesture.observer.GameMotionGestureListener_Package_References.GameMotionGestureListener_Access_Array_Access_Array;
   function "=" (Left, Right : GameMotionGestureListener_Access_Array_Access_Array) return Boolean renames org.allbinary.input.motion.gesture.observer.GameMotionGestureListener_Package_References."=";
   subtype GameMotionGestureListener_Access_Array_Access_Array_Access is org.allbinary.input.motion.gesture.observer.GameMotionGestureListener_Package_References.GameMotionGestureListener_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameMotionGestureListener_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.motion.gesture.observer.GameMotionGestureListener_Package_References."=";
   function Java_Box (Value : GameMotionGestureListener_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.motion.gesture.observer.GameMotionGestureListener_Package_References.Java_Box;
   function Java_Unbox_GameMotionGestureListener_Access_Array_Access_Array (Value : access Java_Object'Class) return GameMotionGestureListener_Access_Array_Access_Array_Access renames org.allbinary.input.motion.gesture.observer.GameMotionGestureListener_Package_References.Java_Unbox_GameMotionGestureListener_Access_Array_Access_Array;

   type GameMotionGestureListener is new Java_Object and MotionGestureEventListener with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      motionGestureCollection : BasicArrayList_Access;
      touchGestureCollection : BasicArrayList_Access;
      signed : CompleteMotionGestureListenerInterface_Access;
   end record;

   procedure Initialize (This : in out GameMotionGestureListener'Class; signed_Param : access CompleteMotionGestureListenerInterface_Package.CompleteMotionGestureListenerInterface'Class);
   function Create (signed_Param : access CompleteMotionGestureListenerInterface_Package.CompleteMotionGestureListenerInterface'Class) return GameMotionGestureListener_Access;
   procedure onEvent (This : in out GameMotionGestureListener; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class);
   procedure onUpMotionGestureEvent (This : in out GameMotionGestureListener; ev_Param : access MotionGestureEvent_Package.MotionGestureEvent'Class);
   procedure onDownMotionGestureEvent (This : in out GameMotionGestureListener; ev_Param : access MotionGestureEvent_Package.MotionGestureEvent'Class);
   procedure onLeftMotionGestureEvent (This : in out GameMotionGestureListener; ev_Param : access MotionGestureEvent_Package.MotionGestureEvent'Class);
   procedure onRightMotionGestureEvent (This : in out GameMotionGestureListener; ev_Param : access MotionGestureEvent_Package.MotionGestureEvent'Class);
   procedure onDiagonalDownRightMotionGestureEvent (This : in out GameMotionGestureListener; ev_Param : access MotionGestureEvent_Package.MotionGestureEvent'Class);
   procedure onDiagonalDownLeftMotionGestureEvent (This : in out GameMotionGestureListener; ev_Param : access MotionGestureEvent_Package.MotionGestureEvent'Class);
   procedure onDiagonalUpRightMotionGestureEvent (This : in out GameMotionGestureListener; ev_Param : access MotionGestureEvent_Package.MotionGestureEvent'Class);
   procedure onDiagonalUpLeftMotionGestureEvent (This : in out GameMotionGestureListener; ev_Param : access MotionGestureEvent_Package.MotionGestureEvent'Class);
   procedure onPressedMotionGestureEvent (This : in out GameMotionGestureListener; ev_Param : access MotionGestureEvent_Package.MotionGestureEvent'Class);
   procedure released (This : in out GameMotionGestureListener; ev_Param : access MotionGestureEvent_Package.MotionGestureEvent'Class);
   procedure onScrolledMotionGestureEvent (This : in out GameMotionGestureListener; motionGestureEvent_Param : access MotionGestureEvent_Package.MotionGestureEvent'Class);
   procedure onMotionGestureEvent (This : in out GameMotionGestureListener; ev_Param : access MotionGestureEvent_Package.MotionGestureEvent'Class);

end org.allbinary.input.motion.gesture.observer.GameMotionGestureListener_Package;


