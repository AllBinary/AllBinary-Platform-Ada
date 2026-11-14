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
limited with org.allbinary.input.motion.gesture.MotionGestureRecognizer_Package;
package org.allbinary.input.motion.gesture.MotionGestureRecognizer_Package_References is
   type MotionGestureRecognizer_Access is access all org.allbinary.input.motion.gesture.MotionGestureRecognizer_Package.MotionGestureRecognizer'Class;
   type MotionGestureRecognizer_Access_Array is array (Natural range <>) of MotionGestureRecognizer_Access;
   type MotionGestureRecognizer_Access_Array_Access is access all MotionGestureRecognizer_Access_Array;
   type MotionGestureRecognizer_Access_Array_Access_Array is array (Natural range <>) of MotionGestureRecognizer_Access_Array_Access;
   type MotionGestureRecognizer_Access_Array_Access_Array_Access is access all MotionGestureRecognizer_Access_Array_Access_Array;
   type MotionGestureRecognizer_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MotionGestureRecognizer_Access_Array_Access;
   end record;
   function Java_Box (Value : MotionGestureRecognizer_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MotionGestureRecognizer_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MotionGestureRecognizer_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MotionGestureRecognizer_Access_Array_Access is (if Value /= null and then Value.all in MotionGestureRecognizer_Access_Array_Object'Class then MotionGestureRecognizer_Access_Array_Object'Class (Value.all).Value else null);
   type MotionGestureRecognizer_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MotionGestureRecognizer_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : MotionGestureRecognizer_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MotionGestureRecognizer_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MotionGestureRecognizer_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MotionGestureRecognizer_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in MotionGestureRecognizer_Access_Array_Access_Array_Object'Class then MotionGestureRecognizer_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.input.motion.gesture.MotionGestureRecognizer_Package_References;

with org.allbinary.input.motion.gesture.MotionGestureRecognizer_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.graphics.GPoint_Package;
with org.allbinary.graphics.GPoint_Package_References;
limited with org.allbinary.graphics.Line_Package;
with org.allbinary.graphics.Line_Package_References;
limited with org.allbinary.input.motion.gesture.observer.BasicMotionGesturesHandler_Package;
with org.allbinary.input.motion.gesture.observer.BasicMotionGesturesHandler_Package_References;
limited with org.allbinary.input.motion.gesture.observer.MotionEventCircularPool_Package;
with org.allbinary.input.motion.gesture.observer.MotionEventCircularPool_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.logic.math.J2SEMath_Package;
with org.allbinary.logic.math.J2SEMath_Package_References;
limited with org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
with org.allbinary.logic.util.event.handler.BasicEventHandler_Package_References;

package org.allbinary.input.motion.gesture.MotionGestureRecognizer_Package is

   package GPoint_Package renames Standard.org.allbinary.graphics.GPoint_Package;
   package Line_Package renames Standard.org.allbinary.graphics.Line_Package;
   package BasicMotionGesturesHandler_Package renames Standard.org.allbinary.input.motion.gesture.observer.BasicMotionGesturesHandler_Package;
   package MotionEventCircularPool_Package renames Standard.org.allbinary.input.motion.gesture.observer.MotionEventCircularPool_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package J2SEMath_Package renames Standard.org.allbinary.logic.math.J2SEMath_Package;
   package BasicEventHandler_Package renames Standard.org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
   package Reference_Types is
   subtype GPoint_Access is org.allbinary.graphics.GPoint_Package_References.GPoint_Access;
   use type GPoint_Access;
   subtype GPoint_Access_Array is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array;
   use type GPoint_Access_Array;
   subtype GPoint_Access_Array_Access is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array_Access;
   use type GPoint_Access_Array_Access;
   subtype GPoint_Access_Array_Access_Array is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array_Access_Array;
   use type GPoint_Access_Array_Access_Array;
   subtype GPoint_Access_Array_Access_Array_Access is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array_Access_Array_Access;
   use type GPoint_Access_Array_Access_Array_Access;
   subtype Line_Access is org.allbinary.graphics.Line_Package_References.Line_Access;
   use type Line_Access;
   subtype Line_Access_Array is org.allbinary.graphics.Line_Package_References.Line_Access_Array;
   use type Line_Access_Array;
   subtype Line_Access_Array_Access is org.allbinary.graphics.Line_Package_References.Line_Access_Array_Access;
   use type Line_Access_Array_Access;
   subtype Line_Access_Array_Access_Array is org.allbinary.graphics.Line_Package_References.Line_Access_Array_Access_Array;
   use type Line_Access_Array_Access_Array;
   subtype Line_Access_Array_Access_Array_Access is org.allbinary.graphics.Line_Package_References.Line_Access_Array_Access_Array_Access;
   use type Line_Access_Array_Access_Array_Access;
   subtype BasicMotionGesturesHandler_Access is org.allbinary.input.motion.gesture.observer.BasicMotionGesturesHandler_Package_References.BasicMotionGesturesHandler_Access;
   use type BasicMotionGesturesHandler_Access;
   subtype BasicMotionGesturesHandler_Access_Array is org.allbinary.input.motion.gesture.observer.BasicMotionGesturesHandler_Package_References.BasicMotionGesturesHandler_Access_Array;
   use type BasicMotionGesturesHandler_Access_Array;
   subtype BasicMotionGesturesHandler_Access_Array_Access is org.allbinary.input.motion.gesture.observer.BasicMotionGesturesHandler_Package_References.BasicMotionGesturesHandler_Access_Array_Access;
   use type BasicMotionGesturesHandler_Access_Array_Access;
   subtype BasicMotionGesturesHandler_Access_Array_Access_Array is org.allbinary.input.motion.gesture.observer.BasicMotionGesturesHandler_Package_References.BasicMotionGesturesHandler_Access_Array_Access_Array;
   use type BasicMotionGesturesHandler_Access_Array_Access_Array;
   subtype BasicMotionGesturesHandler_Access_Array_Access_Array_Access is org.allbinary.input.motion.gesture.observer.BasicMotionGesturesHandler_Package_References.BasicMotionGesturesHandler_Access_Array_Access_Array_Access;
   use type BasicMotionGesturesHandler_Access_Array_Access_Array_Access;
   subtype MotionEventCircularPool_Access is org.allbinary.input.motion.gesture.observer.MotionEventCircularPool_Package_References.MotionEventCircularPool_Access;
   use type MotionEventCircularPool_Access;
   subtype MotionEventCircularPool_Access_Array is org.allbinary.input.motion.gesture.observer.MotionEventCircularPool_Package_References.MotionEventCircularPool_Access_Array;
   use type MotionEventCircularPool_Access_Array;
   subtype MotionEventCircularPool_Access_Array_Access is org.allbinary.input.motion.gesture.observer.MotionEventCircularPool_Package_References.MotionEventCircularPool_Access_Array_Access;
   use type MotionEventCircularPool_Access_Array_Access;
   subtype MotionEventCircularPool_Access_Array_Access_Array is org.allbinary.input.motion.gesture.observer.MotionEventCircularPool_Package_References.MotionEventCircularPool_Access_Array_Access_Array;
   use type MotionEventCircularPool_Access_Array_Access_Array;
   subtype MotionEventCircularPool_Access_Array_Access_Array_Access is org.allbinary.input.motion.gesture.observer.MotionEventCircularPool_Package_References.MotionEventCircularPool_Access_Array_Access_Array_Access;
   use type MotionEventCircularPool_Access_Array_Access_Array_Access;
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
   subtype J2SEMath_Access is org.allbinary.logic.math.J2SEMath_Package_References.J2SEMath_Access;
   use type J2SEMath_Access;
   subtype J2SEMath_Access_Array is org.allbinary.logic.math.J2SEMath_Package_References.J2SEMath_Access_Array;
   use type J2SEMath_Access_Array;
   subtype J2SEMath_Access_Array_Access is org.allbinary.logic.math.J2SEMath_Package_References.J2SEMath_Access_Array_Access;
   use type J2SEMath_Access_Array_Access;
   subtype J2SEMath_Access_Array_Access_Array is org.allbinary.logic.math.J2SEMath_Package_References.J2SEMath_Access_Array_Access_Array;
   use type J2SEMath_Access_Array_Access_Array;
   subtype J2SEMath_Access_Array_Access_Array_Access is org.allbinary.logic.math.J2SEMath_Package_References.J2SEMath_Access_Array_Access_Array_Access;
   use type J2SEMath_Access_Array_Access_Array_Access;
   subtype BasicEventHandler_Access is org.allbinary.logic.util.event.handler.BasicEventHandler_Package_References.BasicEventHandler_Access;
   use type BasicEventHandler_Access;
   subtype BasicEventHandler_Access_Array is org.allbinary.logic.util.event.handler.BasicEventHandler_Package_References.BasicEventHandler_Access_Array;
   use type BasicEventHandler_Access_Array;
   subtype BasicEventHandler_Access_Array_Access is org.allbinary.logic.util.event.handler.BasicEventHandler_Package_References.BasicEventHandler_Access_Array_Access;
   use type BasicEventHandler_Access_Array_Access;
   subtype BasicEventHandler_Access_Array_Access_Array is org.allbinary.logic.util.event.handler.BasicEventHandler_Package_References.BasicEventHandler_Access_Array_Access_Array;
   use type BasicEventHandler_Access_Array_Access_Array;
   subtype BasicEventHandler_Access_Array_Access_Array_Access is org.allbinary.logic.util.event.handler.BasicEventHandler_Package_References.BasicEventHandler_Access_Array_Access_Array_Access;
   use type BasicEventHandler_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype MotionGestureRecognizer_Access is org.allbinary.input.motion.gesture.MotionGestureRecognizer_Package_References.MotionGestureRecognizer_Access;
   function "=" (Left, Right : MotionGestureRecognizer_Access) return Boolean renames org.allbinary.input.motion.gesture.MotionGestureRecognizer_Package_References."=";
   subtype MotionGestureRecognizer_Access_Array is org.allbinary.input.motion.gesture.MotionGestureRecognizer_Package_References.MotionGestureRecognizer_Access_Array;
   function "=" (Left, Right : MotionGestureRecognizer_Access_Array) return Boolean renames org.allbinary.input.motion.gesture.MotionGestureRecognizer_Package_References."=";
   subtype MotionGestureRecognizer_Access_Array_Access is org.allbinary.input.motion.gesture.MotionGestureRecognizer_Package_References.MotionGestureRecognizer_Access_Array_Access;
   function "=" (Left, Right : MotionGestureRecognizer_Access_Array_Access) return Boolean renames org.allbinary.input.motion.gesture.MotionGestureRecognizer_Package_References."=";
   function Java_Box (Value : MotionGestureRecognizer_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.motion.gesture.MotionGestureRecognizer_Package_References.Java_Box;
   function Java_Unbox_MotionGestureRecognizer_Access_Array (Value : access Java_Object'Class) return MotionGestureRecognizer_Access_Array_Access renames org.allbinary.input.motion.gesture.MotionGestureRecognizer_Package_References.Java_Unbox_MotionGestureRecognizer_Access_Array;
   subtype MotionGestureRecognizer_Access_Array_Access_Array is org.allbinary.input.motion.gesture.MotionGestureRecognizer_Package_References.MotionGestureRecognizer_Access_Array_Access_Array;
   function "=" (Left, Right : MotionGestureRecognizer_Access_Array_Access_Array) return Boolean renames org.allbinary.input.motion.gesture.MotionGestureRecognizer_Package_References."=";
   subtype MotionGestureRecognizer_Access_Array_Access_Array_Access is org.allbinary.input.motion.gesture.MotionGestureRecognizer_Package_References.MotionGestureRecognizer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MotionGestureRecognizer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.motion.gesture.MotionGestureRecognizer_Package_References."=";
   function Java_Box (Value : MotionGestureRecognizer_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.motion.gesture.MotionGestureRecognizer_Package_References.Java_Box;
   function Java_Unbox_MotionGestureRecognizer_Access_Array_Access_Array (Value : access Java_Object'Class) return MotionGestureRecognizer_Access_Array_Access_Array_Access renames org.allbinary.input.motion.gesture.MotionGestureRecognizer_Package_References.Java_Unbox_MotionGestureRecognizer_Access_Array_Access_Array;

   type MotionGestureRecognizer is new Java_Object with record
      logUtil : LogUtil_Access;
      j2seMath : J2SEMath_Access;
      origin : GPoint_Access;
      previous : GPoint_Access;
      intermediate : GPoint_Access;
      line : Line_Access;
      motionGesturesHandler : BasicMotionGesturesHandler_Access;
      movedMotionGesturesHandler : BasicEventHandler_Access;
      scrolledMotionGesturesHandler : BasicEventHandler_Access;
      motionEventCircularPool : MotionEventCircularPool_Access;
   end record;

   procedure Initialize (This : in out MotionGestureRecognizer'Class; id : Integer);
   function Create (id : Integer) return MotionGestureRecognizer_Access;
   function processPressedMotionEvent (This : in out MotionGestureRecognizer; current_Param : access GPoint_Package.GPoint'Class; deviceId : Integer; button : Integer) return Boolean;
   procedure processPressedMotionEvent (This : in out MotionGestureRecognizer; current_Param : access GPoint_Package.GPoint'Class; deviceId : Integer; button : Integer);
   function processReleasedMotionEvent (This : in out MotionGestureRecognizer; current_Param : access GPoint_Package.GPoint'Class; deviceId : Integer; button : Integer) return Boolean;
   procedure processReleasedMotionEvent (This : in out MotionGestureRecognizer; current_Param : access GPoint_Package.GPoint'Class; deviceId : Integer; button : Integer);
   procedure processDraggedMotionEvent (This : in out MotionGestureRecognizer; current_Param : access GPoint_Package.GPoint'Class; deviceId : Integer; buttonMask : Integer);
   function processMovedMotionEvent (This : in out MotionGestureRecognizer; current_Param : access GPoint_Package.GPoint'Class; deviceId : Integer; button : Integer) return Boolean;
   procedure processMovedMotionEvent (This : in out MotionGestureRecognizer; current_Param : access GPoint_Package.GPoint'Class; deviceId : Integer; button : Integer);
   function processScrolledMotionEvent (This : in out MotionGestureRecognizer; current_Param : access GPoint_Package.GPoint'Class; deviceId : Integer; button : Integer) return Boolean;
   procedure processScrolledMotionEvent (This : in out MotionGestureRecognizer; current_Param : access GPoint_Package.GPoint'Class; deviceId : Integer; button : Integer);
   function getMotionGesturesHandler (This : in out MotionGestureRecognizer) return BasicMotionGesturesHandler_Access;

end org.allbinary.input.motion.gesture.MotionGestureRecognizer_Package;


