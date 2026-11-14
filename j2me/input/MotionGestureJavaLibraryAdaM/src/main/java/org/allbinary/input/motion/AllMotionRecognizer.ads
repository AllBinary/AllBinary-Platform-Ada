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
limited with org.allbinary.input.motion.AllMotionRecognizer_Package;
package org.allbinary.input.motion.AllMotionRecognizer_Package_References is
   type AllMotionRecognizer_Access is access all org.allbinary.input.motion.AllMotionRecognizer_Package.AllMotionRecognizer'Class;
   type AllMotionRecognizer_Access_Array is array (Natural range <>) of AllMotionRecognizer_Access;
   type AllMotionRecognizer_Access_Array_Access is access all AllMotionRecognizer_Access_Array;
   type AllMotionRecognizer_Access_Array_Access_Array is array (Natural range <>) of AllMotionRecognizer_Access_Array_Access;
   type AllMotionRecognizer_Access_Array_Access_Array_Access is access all AllMotionRecognizer_Access_Array_Access_Array;
   type AllMotionRecognizer_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AllMotionRecognizer_Access_Array_Access;
   end record;
   function Java_Box (Value : AllMotionRecognizer_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AllMotionRecognizer_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AllMotionRecognizer_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AllMotionRecognizer_Access_Array_Access is (if Value /= null and then Value.all in AllMotionRecognizer_Access_Array_Object'Class then AllMotionRecognizer_Access_Array_Object'Class (Value.all).Value else null);
   type AllMotionRecognizer_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AllMotionRecognizer_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AllMotionRecognizer_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AllMotionRecognizer_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AllMotionRecognizer_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AllMotionRecognizer_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AllMotionRecognizer_Access_Array_Access_Array_Object'Class then AllMotionRecognizer_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.input.motion.AllMotionRecognizer_Package_References;

with org.allbinary.input.motion.AllMotionRecognizer_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.graphics.GPointCircularPool_Package;
with org.allbinary.graphics.GPointCircularPool_Package_References;
limited with org.allbinary.input.motion.button.TouchButtonRecognizer_Package;
with org.allbinary.input.motion.button.TouchButtonRecognizer_Package_References;
limited with org.allbinary.input.motion.gesture.MotionGestureRecognizer_Package;
with org.allbinary.input.motion.gesture.MotionGestureRecognizer_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.input.motion.MotionRecognizer_Package; use org.allbinary.input.motion.MotionRecognizer_Package;

package org.allbinary.input.motion.AllMotionRecognizer_Package is

   package GPointCircularPool_Package renames Standard.org.allbinary.graphics.GPointCircularPool_Package;
   package TouchButtonRecognizer_Package renames Standard.org.allbinary.input.motion.button.TouchButtonRecognizer_Package;
   package MotionGestureRecognizer_Package renames Standard.org.allbinary.input.motion.gesture.MotionGestureRecognizer_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Reference_Types is
   subtype GPointCircularPool_Access is org.allbinary.graphics.GPointCircularPool_Package_References.GPointCircularPool_Access;
   use type GPointCircularPool_Access;
   subtype GPointCircularPool_Access_Array is org.allbinary.graphics.GPointCircularPool_Package_References.GPointCircularPool_Access_Array;
   use type GPointCircularPool_Access_Array;
   subtype GPointCircularPool_Access_Array_Access is org.allbinary.graphics.GPointCircularPool_Package_References.GPointCircularPool_Access_Array_Access;
   use type GPointCircularPool_Access_Array_Access;
   subtype GPointCircularPool_Access_Array_Access_Array is org.allbinary.graphics.GPointCircularPool_Package_References.GPointCircularPool_Access_Array_Access_Array;
   use type GPointCircularPool_Access_Array_Access_Array;
   subtype GPointCircularPool_Access_Array_Access_Array_Access is org.allbinary.graphics.GPointCircularPool_Package_References.GPointCircularPool_Access_Array_Access_Array_Access;
   use type GPointCircularPool_Access_Array_Access_Array_Access;
   subtype TouchButtonRecognizer_Access is org.allbinary.input.motion.button.TouchButtonRecognizer_Package_References.TouchButtonRecognizer_Access;
   use type TouchButtonRecognizer_Access;
   subtype TouchButtonRecognizer_Access_Array is org.allbinary.input.motion.button.TouchButtonRecognizer_Package_References.TouchButtonRecognizer_Access_Array;
   use type TouchButtonRecognizer_Access_Array;
   subtype TouchButtonRecognizer_Access_Array_Access is org.allbinary.input.motion.button.TouchButtonRecognizer_Package_References.TouchButtonRecognizer_Access_Array_Access;
   use type TouchButtonRecognizer_Access_Array_Access;
   subtype TouchButtonRecognizer_Access_Array_Access_Array is org.allbinary.input.motion.button.TouchButtonRecognizer_Package_References.TouchButtonRecognizer_Access_Array_Access_Array;
   use type TouchButtonRecognizer_Access_Array_Access_Array;
   subtype TouchButtonRecognizer_Access_Array_Access_Array_Access is org.allbinary.input.motion.button.TouchButtonRecognizer_Package_References.TouchButtonRecognizer_Access_Array_Access_Array_Access;
   use type TouchButtonRecognizer_Access_Array_Access_Array_Access;
   subtype MotionGestureRecognizer_Access is org.allbinary.input.motion.gesture.MotionGestureRecognizer_Package_References.MotionGestureRecognizer_Access;
   use type MotionGestureRecognizer_Access;
   subtype MotionGestureRecognizer_Access_Array is org.allbinary.input.motion.gesture.MotionGestureRecognizer_Package_References.MotionGestureRecognizer_Access_Array;
   use type MotionGestureRecognizer_Access_Array;
   subtype MotionGestureRecognizer_Access_Array_Access is org.allbinary.input.motion.gesture.MotionGestureRecognizer_Package_References.MotionGestureRecognizer_Access_Array_Access;
   use type MotionGestureRecognizer_Access_Array_Access;
   subtype MotionGestureRecognizer_Access_Array_Access_Array is org.allbinary.input.motion.gesture.MotionGestureRecognizer_Package_References.MotionGestureRecognizer_Access_Array_Access_Array;
   use type MotionGestureRecognizer_Access_Array_Access_Array;
   subtype MotionGestureRecognizer_Access_Array_Access_Array_Access is org.allbinary.input.motion.gesture.MotionGestureRecognizer_Package_References.MotionGestureRecognizer_Access_Array_Access_Array_Access;
   use type MotionGestureRecognizer_Access_Array_Access_Array_Access;
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


   subtype AllMotionRecognizer_Access is org.allbinary.input.motion.AllMotionRecognizer_Package_References.AllMotionRecognizer_Access;
   function "=" (Left, Right : AllMotionRecognizer_Access) return Boolean renames org.allbinary.input.motion.AllMotionRecognizer_Package_References."=";
   subtype AllMotionRecognizer_Access_Array is org.allbinary.input.motion.AllMotionRecognizer_Package_References.AllMotionRecognizer_Access_Array;
   function "=" (Left, Right : AllMotionRecognizer_Access_Array) return Boolean renames org.allbinary.input.motion.AllMotionRecognizer_Package_References."=";
   subtype AllMotionRecognizer_Access_Array_Access is org.allbinary.input.motion.AllMotionRecognizer_Package_References.AllMotionRecognizer_Access_Array_Access;
   function "=" (Left, Right : AllMotionRecognizer_Access_Array_Access) return Boolean renames org.allbinary.input.motion.AllMotionRecognizer_Package_References."=";
   function Java_Box (Value : AllMotionRecognizer_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.motion.AllMotionRecognizer_Package_References.Java_Box;
   function Java_Unbox_AllMotionRecognizer_Access_Array (Value : access Java_Object'Class) return AllMotionRecognizer_Access_Array_Access renames org.allbinary.input.motion.AllMotionRecognizer_Package_References.Java_Unbox_AllMotionRecognizer_Access_Array;
   subtype AllMotionRecognizer_Access_Array_Access_Array is org.allbinary.input.motion.AllMotionRecognizer_Package_References.AllMotionRecognizer_Access_Array_Access_Array;
   function "=" (Left, Right : AllMotionRecognizer_Access_Array_Access_Array) return Boolean renames org.allbinary.input.motion.AllMotionRecognizer_Package_References."=";
   subtype AllMotionRecognizer_Access_Array_Access_Array_Access is org.allbinary.input.motion.AllMotionRecognizer_Package_References.AllMotionRecognizer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllMotionRecognizer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.motion.AllMotionRecognizer_Package_References."=";
   function Java_Box (Value : AllMotionRecognizer_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.motion.AllMotionRecognizer_Package_References.Java_Box;
   function Java_Unbox_AllMotionRecognizer_Access_Array_Access_Array (Value : access Java_Object'Class) return AllMotionRecognizer_Access_Array_Access_Array_Access renames org.allbinary.input.motion.AllMotionRecognizer_Package_References.Java_Unbox_AllMotionRecognizer_Access_Array_Access_Array;

   type AllMotionRecognizer is new MotionRecognizer with record
      logUtil : LogUtil_Access;
      motionGestureRecognizer : MotionGestureRecognizer_Access;
      touchButtonProcessing : Boolean;
      touchButtonRecognizer : TouchButtonRecognizer_Access;
      id : Integer;
      lastX : Integer;
      lastY : Integer;
   end record;
   index : Integer;
   pointCircularPool : GPointCircularPool_Access;

   procedure Initialize (This : in out AllMotionRecognizer'Class);
   function Create return AllMotionRecognizer_Access;
   procedure processStartMotionEvent (This : in out AllMotionRecognizer; x : Integer; y : Integer; deviceId : Integer; modifiers : Integer);
   procedure processEndMotionEvent (This : in out AllMotionRecognizer; x : Integer; y : Integer; deviceId : Integer; modifiers : Integer);
   procedure processDraggedMotionEvent (This : in out AllMotionRecognizer; x : Integer; y : Integer; deviceId : Integer; modifiers : Integer);
   procedure processMovedMotionEvent (This : in out AllMotionRecognizer; x : Integer; y : Integer; deviceId : Integer; modifiers : Integer);
   procedure processScrolledMotionEvent (This : in out AllMotionRecognizer; x : Integer; y : Integer; deviceId : Integer; modifiers : Integer);
   function getMotionGestureRecognizer (This : in out AllMotionRecognizer) return MotionGestureRecognizer_Access;

end org.allbinary.input.motion.AllMotionRecognizer_Package;


