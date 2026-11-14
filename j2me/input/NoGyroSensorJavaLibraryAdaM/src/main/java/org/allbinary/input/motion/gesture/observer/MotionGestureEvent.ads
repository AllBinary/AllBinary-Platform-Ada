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
limited with org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package;
package org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package_References is
   type MotionGestureEvent_Access is access all org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package.MotionGestureEvent'Class;
   type MotionGestureEvent_Access_Array is array (Natural range <>) of MotionGestureEvent_Access;
   type MotionGestureEvent_Access_Array_Access is access all MotionGestureEvent_Access_Array;
   type MotionGestureEvent_Access_Array_Access_Array is array (Natural range <>) of MotionGestureEvent_Access_Array_Access;
   type MotionGestureEvent_Access_Array_Access_Array_Access is access all MotionGestureEvent_Access_Array_Access_Array;
   type MotionGestureEvent_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MotionGestureEvent_Access_Array_Access;
   end record;
   function Java_Box (Value : MotionGestureEvent_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MotionGestureEvent_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MotionGestureEvent_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MotionGestureEvent_Access_Array_Access is (if Value /= null and then Value.all in MotionGestureEvent_Access_Array_Object'Class then MotionGestureEvent_Access_Array_Object'Class (Value.all).Value else null);
   type MotionGestureEvent_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MotionGestureEvent_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : MotionGestureEvent_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MotionGestureEvent_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MotionGestureEvent_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MotionGestureEvent_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in MotionGestureEvent_Access_Array_Access_Array_Object'Class then MotionGestureEvent_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package_References;

with org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package_References;
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
limited with org.allbinary.input.motion.gesture.MotionGestureInput_Package;
with org.allbinary.input.motion.gesture.MotionGestureInput_Package_References;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;
limited with org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonLabels_Package_References;

package org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package is

   package GPoint_Package renames Standard.org.allbinary.graphics.GPoint_Package;
   package MotionGestureInput_Package renames Standard.org.allbinary.input.motion.gesture.MotionGestureInput_Package;
   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
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
   subtype MotionGestureInput_Access is org.allbinary.input.motion.gesture.MotionGestureInput_Package_References.MotionGestureInput_Access;
   use type MotionGestureInput_Access;
   subtype MotionGestureInput_Access_Array is org.allbinary.input.motion.gesture.MotionGestureInput_Package_References.MotionGestureInput_Access_Array;
   use type MotionGestureInput_Access_Array;
   subtype MotionGestureInput_Access_Array_Access is org.allbinary.input.motion.gesture.MotionGestureInput_Package_References.MotionGestureInput_Access_Array_Access;
   use type MotionGestureInput_Access_Array_Access;
   subtype MotionGestureInput_Access_Array_Access_Array is org.allbinary.input.motion.gesture.MotionGestureInput_Package_References.MotionGestureInput_Access_Array_Access_Array;
   use type MotionGestureInput_Access_Array_Access_Array;
   subtype MotionGestureInput_Access_Array_Access_Array_Access is org.allbinary.input.motion.gesture.MotionGestureInput_Package_References.MotionGestureInput_Access_Array_Access_Array_Access;
   use type MotionGestureInput_Access_Array_Access_Array_Access;
   subtype CommonLabels_Access is org.allbinary.string_Id.CommonLabels_Package_References.CommonLabels_Access;
   use type CommonLabels_Access;
   subtype CommonLabels_Access_Array is org.allbinary.string_Id.CommonLabels_Package_References.CommonLabels_Access_Array;
   use type CommonLabels_Access_Array;
   subtype CommonLabels_Access_Array_Access is org.allbinary.string_Id.CommonLabels_Package_References.CommonLabels_Access_Array_Access;
   use type CommonLabels_Access_Array_Access;
   subtype CommonLabels_Access_Array_Access_Array is org.allbinary.string_Id.CommonLabels_Package_References.CommonLabels_Access_Array_Access_Array;
   use type CommonLabels_Access_Array_Access_Array;
   subtype CommonLabels_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonLabels_Package_References.CommonLabels_Access_Array_Access_Array_Access;
   use type CommonLabels_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype MotionGestureEvent_Access is org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package_References.MotionGestureEvent_Access;
   function "=" (Left, Right : MotionGestureEvent_Access) return Boolean renames org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package_References."=";
   subtype MotionGestureEvent_Access_Array is org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package_References.MotionGestureEvent_Access_Array;
   function "=" (Left, Right : MotionGestureEvent_Access_Array) return Boolean renames org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package_References."=";
   subtype MotionGestureEvent_Access_Array_Access is org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package_References.MotionGestureEvent_Access_Array_Access;
   function "=" (Left, Right : MotionGestureEvent_Access_Array_Access) return Boolean renames org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package_References."=";
   function Java_Box (Value : MotionGestureEvent_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package_References.Java_Box;
   function Java_Unbox_MotionGestureEvent_Access_Array (Value : access Java_Object'Class) return MotionGestureEvent_Access_Array_Access renames org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package_References.Java_Unbox_MotionGestureEvent_Access_Array;
   subtype MotionGestureEvent_Access_Array_Access_Array is org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package_References.MotionGestureEvent_Access_Array_Access_Array;
   function "=" (Left, Right : MotionGestureEvent_Access_Array_Access_Array) return Boolean renames org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package_References."=";
   subtype MotionGestureEvent_Access_Array_Access_Array_Access is org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package_References.MotionGestureEvent_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MotionGestureEvent_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package_References."=";
   function Java_Box (Value : MotionGestureEvent_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package_References.Java_Box;
   function Java_Unbox_MotionGestureEvent_Access_Array_Access_Array (Value : access Java_Object'Class) return MotionGestureEvent_Access_Array_Access_Array_Access renames org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package_References.Java_Unbox_MotionGestureEvent_Access_Array_Access_Array;

   type MotionGestureEvent is new AllBinaryEventObject with record
      motionGesture : MotionGestureInput_Access;
      id : Integer;
      previousPoint : GPoint_Access;
      currentPoint : GPoint_Access;
      commonLabels : CommonLabels_Access;
   end record;
   PREVIOUS : Unbounded_String;
   HASHCODE : Unbounded_String;

   procedure Initialize (This : in out MotionGestureEvent'Class; source_Param : access Java_Object'Class; id : Integer; motionGesture_Param : access MotionGestureInput_Package.MotionGestureInput'Class);
   function Create (source_Param : access Java_Object'Class; id : Integer; motionGesture_Param : access MotionGestureInput_Package.MotionGestureInput'Class) return MotionGestureEvent_Access;
   function getMotionGesture (This : in out MotionGestureEvent) return MotionGestureInput_Access;
   procedure setMotionGesture (This : in out MotionGestureEvent; motionGesture_Param : access MotionGestureInput_Package.MotionGestureInput'Class);
   function getPreviousPoint (This : in out MotionGestureEvent) return GPoint_Access;
   procedure setPreviousPoint (This : in out MotionGestureEvent; previousPoint_Param : access GPoint_Package.GPoint'Class);
   function getCurrentPoint (This : in out MotionGestureEvent) return GPoint_Access;
   procedure setCurrentPoint (This : in out MotionGestureEvent; currentPoint_Param : access GPoint_Package.GPoint'Class);
   function toString (This : in out MotionGestureEvent) return Unbounded_String;
   function getId (This : in out MotionGestureEvent) return Integer;

end org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package;


