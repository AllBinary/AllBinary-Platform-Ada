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
with org.allbinary.graphics.GPoint_Package; use org.allbinary.graphics.GPoint_Package;
with org.allbinary.graphics.PointFactory_Package; use org.allbinary.graphics.PointFactory_Package;
with org.allbinary.input.motion.gesture.MotionGestureInput_Package; use org.allbinary.input.motion.gesture.MotionGestureInput_Package;
with org.allbinary.input.motion.gesture.TouchMotionGestureFactory_Package; use org.allbinary.input.motion.gesture.TouchMotionGestureFactory_Package;
with org.allbinary.TsUtil_Package; use org.allbinary.TsUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;

package org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package is

   package GPoint_Package renames org.allbinary.graphics.GPoint_Package;
   package PointFactory_Package renames org.allbinary.graphics.PointFactory_Package;
   package MotionGestureInput_Package renames org.allbinary.input.motion.gesture.MotionGestureInput_Package;
   package TouchMotionGestureFactory_Package renames org.allbinary.input.motion.gesture.TouchMotionGestureFactory_Package;
   package TsUtil_Package renames org.allbinary.TsUtil_Package;
   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames org.allbinary.logic.string_Id.StringUtil_Package;
   package AllBinaryEventObject_Package renames org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package CommonLabels_Package renames org.allbinary.string_Id.CommonLabels_Package;

   type MotionGestureEvent is tagged;
   type MotionGestureEvent_Access is access all MotionGestureEvent'Class;
   type MotionGestureEvent_Access_Array is array (Natural range <>) of MotionGestureEvent_Access;
   type MotionGestureEvent_Access_Array_Access is access all MotionGestureEvent_Access_Array;

   type MotionGestureEvent is new AllBinaryEventObject with record
      motionGesture : MotionGestureInput_Access;
      id : Integer;
      previousPoint : GPoint_Access;
      currentPoint : GPoint_Access;
      commonLabels : CommonLabels_Access;
   end record;
   PREVIOUS : Unbounded_String;
   HASHCODE : Unbounded_String;

   procedure Initialize (This : in out MotionGestureEvent'Class; source : Java_Object_Access; id : Integer; motionGesture : MotionGestureInput_Access);
   function Create (source : Java_Object_Access; id : Integer; motionGesture : MotionGestureInput_Access) return MotionGestureEvent_Access;
   function getMotionGesture (This : in out MotionGestureEvent) return MotionGestureInput_Access;
   procedure getMotionGesture (This : in out MotionGestureEvent);
   procedure setMotionGesture (This : in out MotionGestureEvent; motionGesture : MotionGestureInput_Access);
   function getPreviousPoint (This : in out MotionGestureEvent) return GPoint_Access;
   procedure getPreviousPoint (This : in out MotionGestureEvent);
   procedure setPreviousPoint (This : in out MotionGestureEvent; previousPoint : GPoint_Access);
   function getCurrentPoint (This : in out MotionGestureEvent) return GPoint_Access;
   procedure getCurrentPoint (This : in out MotionGestureEvent);
   procedure setCurrentPoint (This : in out MotionGestureEvent; currentPoint : GPoint_Access);
   function toString (This : in out MotionGestureEvent) return Unbounded_String;
   procedure toString (This : in out MotionGestureEvent);
   function getId (This : in out MotionGestureEvent) return Integer;
   procedure getId (This : in out MotionGestureEvent);

end org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package;


