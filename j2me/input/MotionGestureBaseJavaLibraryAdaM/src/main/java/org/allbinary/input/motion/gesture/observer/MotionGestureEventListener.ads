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

limited with org.allbinary.input.motion.gesture.observer.MotionGestureEventListener_Package;
package org.allbinary.input.motion.gesture.observer.MotionGestureEventListener_Package_References is
   type MotionGestureEventListener_Access is access all org.allbinary.input.motion.gesture.observer.MotionGestureEventListener_Package.MotionGestureEventListener'Class;
   type MotionGestureEventListener_Access_Array is array (Natural range <>) of MotionGestureEventListener_Access;
   type MotionGestureEventListener_Access_Array_Access is access all MotionGestureEventListener_Access_Array;
   type MotionGestureEventListener_Access_Array_Access_Array is array (Natural range <>) of MotionGestureEventListener_Access_Array_Access;
   type MotionGestureEventListener_Access_Array_Access_Array_Access is access all MotionGestureEventListener_Access_Array_Access_Array;
end org.allbinary.input.motion.gesture.observer.MotionGestureEventListener_Package_References;

with org.allbinary.input.motion.gesture.observer.MotionGestureEventListener_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.input.motion.gesture.observer.BaseMotionGestureEventListener_Package; use org.allbinary.input.motion.gesture.observer.BaseMotionGestureEventListener_Package;
limited with org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package;
with org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package_References;

package org.allbinary.input.motion.gesture.observer.MotionGestureEventListener_Package is

   package Reference_Types is
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


   type MotionGestureEventListener is interface and BaseMotionGestureEventListener;
   subtype MotionGestureEventListener_Access is org.allbinary.input.motion.gesture.observer.MotionGestureEventListener_Package_References.MotionGestureEventListener_Access;
   function "=" (Left, Right : MotionGestureEventListener_Access) return Boolean renames org.allbinary.input.motion.gesture.observer.MotionGestureEventListener_Package_References."=";
   subtype MotionGestureEventListener_Access_Array is org.allbinary.input.motion.gesture.observer.MotionGestureEventListener_Package_References.MotionGestureEventListener_Access_Array;
   function "=" (Left, Right : MotionGestureEventListener_Access_Array) return Boolean renames org.allbinary.input.motion.gesture.observer.MotionGestureEventListener_Package_References."=";
   subtype MotionGestureEventListener_Access_Array_Access is org.allbinary.input.motion.gesture.observer.MotionGestureEventListener_Package_References.MotionGestureEventListener_Access_Array_Access;
   function "=" (Left, Right : MotionGestureEventListener_Access_Array_Access) return Boolean renames org.allbinary.input.motion.gesture.observer.MotionGestureEventListener_Package_References."=";
   subtype MotionGestureEventListener_Access_Array_Access_Array is org.allbinary.input.motion.gesture.observer.MotionGestureEventListener_Package_References.MotionGestureEventListener_Access_Array_Access_Array;
   function "=" (Left, Right : MotionGestureEventListener_Access_Array_Access_Array) return Boolean renames org.allbinary.input.motion.gesture.observer.MotionGestureEventListener_Package_References."=";
   subtype MotionGestureEventListener_Access_Array_Access_Array_Access is org.allbinary.input.motion.gesture.observer.MotionGestureEventListener_Package_References.MotionGestureEventListener_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MotionGestureEventListener_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.motion.gesture.observer.MotionGestureEventListener_Package_References."=";
   function Java_Object_Access_From_MotionGestureEventListener (Value : MotionGestureEventListener_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure onPressedMotionGestureEvent (This : in out MotionGestureEventListener; ev_Param : access MotionGestureEvent_Package.MotionGestureEvent'Class) is abstract;
   procedure onUpMotionGestureEvent (This : in out MotionGestureEventListener; ev_Param : access MotionGestureEvent_Package.MotionGestureEvent'Class) is abstract;
   procedure onDownMotionGestureEvent (This : in out MotionGestureEventListener; ev_Param : access MotionGestureEvent_Package.MotionGestureEvent'Class) is abstract;
   procedure onLeftMotionGestureEvent (This : in out MotionGestureEventListener; ev_Param : access MotionGestureEvent_Package.MotionGestureEvent'Class) is abstract;
   procedure onRightMotionGestureEvent (This : in out MotionGestureEventListener; ev_Param : access MotionGestureEvent_Package.MotionGestureEvent'Class) is abstract;
   procedure onDiagonalDownRightMotionGestureEvent (This : in out MotionGestureEventListener; ev_Param : access MotionGestureEvent_Package.MotionGestureEvent'Class) is abstract;
   procedure onDiagonalDownLeftMotionGestureEvent (This : in out MotionGestureEventListener; ev_Param : access MotionGestureEvent_Package.MotionGestureEvent'Class) is abstract;
   procedure onDiagonalUpRightMotionGestureEvent (This : in out MotionGestureEventListener; ev_Param : access MotionGestureEvent_Package.MotionGestureEvent'Class) is abstract;
   procedure onDiagonalUpLeftMotionGestureEvent (This : in out MotionGestureEventListener; ev_Param : access MotionGestureEvent_Package.MotionGestureEvent'Class) is abstract;
   procedure released (This : in out MotionGestureEventListener; ev_Param : access MotionGestureEvent_Package.MotionGestureEvent'Class) is abstract;

end org.allbinary.input.motion.gesture.observer.MotionGestureEventListener_Package;


