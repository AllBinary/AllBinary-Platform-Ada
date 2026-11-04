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

limited with org.allbinary.input.motion.GestureOnlyMotionRecognizer_Package;
package org.allbinary.input.motion.GestureOnlyMotionRecognizer_Package_References is
   type GestureOnlyMotionRecognizer_Access is access all org.allbinary.input.motion.GestureOnlyMotionRecognizer_Package.GestureOnlyMotionRecognizer'Class;
   type GestureOnlyMotionRecognizer_Access_Array is array (Natural range <>) of GestureOnlyMotionRecognizer_Access;
   type GestureOnlyMotionRecognizer_Access_Array_Access is access all GestureOnlyMotionRecognizer_Access_Array;
   type GestureOnlyMotionRecognizer_Access_Array_Access_Array is array (Natural range <>) of GestureOnlyMotionRecognizer_Access_Array_Access;
   type GestureOnlyMotionRecognizer_Access_Array_Access_Array_Access is access all GestureOnlyMotionRecognizer_Access_Array_Access_Array;
end org.allbinary.input.motion.GestureOnlyMotionRecognizer_Package_References;

with org.allbinary.input.motion.GestureOnlyMotionRecognizer_Package_References;
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
limited with org.allbinary.input.motion.gesture.MotionGestureRecognizer_Package;
with org.allbinary.input.motion.gesture.MotionGestureRecognizer_Package_References;
with org.allbinary.input.motion.MotionRecognizer_Package; use org.allbinary.input.motion.MotionRecognizer_Package;

package org.allbinary.input.motion.GestureOnlyMotionRecognizer_Package is

   package GPointCircularPool_Package renames Standard.org.allbinary.graphics.GPointCircularPool_Package;
   package MotionGestureRecognizer_Package renames Standard.org.allbinary.input.motion.gesture.MotionGestureRecognizer_Package;
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
   end Reference_Types;
   use Reference_Types;


   subtype GestureOnlyMotionRecognizer_Access is org.allbinary.input.motion.GestureOnlyMotionRecognizer_Package_References.GestureOnlyMotionRecognizer_Access;
   function "=" (Left, Right : GestureOnlyMotionRecognizer_Access) return Boolean renames org.allbinary.input.motion.GestureOnlyMotionRecognizer_Package_References."=";
   subtype GestureOnlyMotionRecognizer_Access_Array is org.allbinary.input.motion.GestureOnlyMotionRecognizer_Package_References.GestureOnlyMotionRecognizer_Access_Array;
   function "=" (Left, Right : GestureOnlyMotionRecognizer_Access_Array) return Boolean renames org.allbinary.input.motion.GestureOnlyMotionRecognizer_Package_References."=";
   subtype GestureOnlyMotionRecognizer_Access_Array_Access is org.allbinary.input.motion.GestureOnlyMotionRecognizer_Package_References.GestureOnlyMotionRecognizer_Access_Array_Access;
   function "=" (Left, Right : GestureOnlyMotionRecognizer_Access_Array_Access) return Boolean renames org.allbinary.input.motion.GestureOnlyMotionRecognizer_Package_References."=";
   subtype GestureOnlyMotionRecognizer_Access_Array_Access_Array is org.allbinary.input.motion.GestureOnlyMotionRecognizer_Package_References.GestureOnlyMotionRecognizer_Access_Array_Access_Array;
   function "=" (Left, Right : GestureOnlyMotionRecognizer_Access_Array_Access_Array) return Boolean renames org.allbinary.input.motion.GestureOnlyMotionRecognizer_Package_References."=";
   subtype GestureOnlyMotionRecognizer_Access_Array_Access_Array_Access is org.allbinary.input.motion.GestureOnlyMotionRecognizer_Package_References.GestureOnlyMotionRecognizer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GestureOnlyMotionRecognizer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.motion.GestureOnlyMotionRecognizer_Package_References."=";

   type GestureOnlyMotionRecognizer is new MotionRecognizer with record
      motionGestureRecognizer : MotionGestureRecognizer_Access;
      id : Integer;
   end record;
   index : Integer;
   pointCircularPool : GPointCircularPool_Access;

   procedure Initialize (This : in out GestureOnlyMotionRecognizer'Class);
   function Create return GestureOnlyMotionRecognizer_Access;
   procedure processStartMotionEvent (This : in out GestureOnlyMotionRecognizer; x : Integer; y : Integer; deviceId : Integer; modifiers : Integer);
   procedure processEndMotionEvent (This : in out GestureOnlyMotionRecognizer; x : Integer; y : Integer; deviceId : Integer; modifiers : Integer);
   procedure processDraggedMotionEvent (This : in out GestureOnlyMotionRecognizer; x : Integer; y : Integer; deviceId : Integer; modifiers : Integer);

end org.allbinary.input.motion.GestureOnlyMotionRecognizer_Package;


