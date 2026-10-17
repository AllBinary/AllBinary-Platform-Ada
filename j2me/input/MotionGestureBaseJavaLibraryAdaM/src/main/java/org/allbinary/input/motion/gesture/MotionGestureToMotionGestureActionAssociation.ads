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
with org.allbinary.game.input.CompleteMotionGestureInputEvent_Package; use org.allbinary.game.input.CompleteMotionGestureInputEvent_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;

package org.allbinary.input.motion.gesture.MotionGestureToMotionGestureActionAssociation_Package is

   package CompleteMotionGestureInputEvent_Package renames Standard.org.allbinary.game.input.CompleteMotionGestureInputEvent_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;

   type MotionGestureToMotionGestureActionAssociation is tagged;
   type MotionGestureToMotionGestureActionAssociation_Access is access all MotionGestureToMotionGestureActionAssociation'Class;
   type MotionGestureToMotionGestureActionAssociation_Access_Array is array (Natural range <>) of MotionGestureToMotionGestureActionAssociation_Access;
   type MotionGestureToMotionGestureActionAssociation_Access_Array_Access is access all MotionGestureToMotionGestureActionAssociation_Access_Array;

   type MotionGestureToMotionGestureActionAssociation is new Java_Object with record
      list : BasicArrayList_Access;
      motionGestureAction : CompleteMotionGestureInputEvent_Access;
   end record;

   procedure Initialize (This : in out MotionGestureToMotionGestureActionAssociation'Class; list_Param : access BasicArrayList'Class; commandAction_Param : access CompleteMotionGestureInputEvent'Class);
   function Create (list_Param : access BasicArrayList'Class; commandAction_Param : access CompleteMotionGestureInputEvent'Class) return MotionGestureToMotionGestureActionAssociation_Access;
   function getMotionGesture (This : in out MotionGestureToMotionGestureActionAssociation) return BasicArrayList_Access;
   procedure setMotionGestures (This : in out MotionGestureToMotionGestureActionAssociation; list_Param : access BasicArrayList'Class);
   function getCommandAction (This : in out MotionGestureToMotionGestureActionAssociation) return CompleteMotionGestureInputEvent_Access;
   procedure setMotionGestureAction (This : in out MotionGestureToMotionGestureActionAssociation; commandAction_Param : access CompleteMotionGestureInputEvent'Class);
   function isMotionGestureArrayEquals (This : in out MotionGestureToMotionGestureActionAssociation; aList_Param : access BasicArrayList'Class) return Boolean;
   procedure isMotionGestureArrayEquals (This : in out MotionGestureToMotionGestureActionAssociation; aList_Param : access BasicArrayList'Class);

end org.allbinary.input.motion.gesture.MotionGestureToMotionGestureActionAssociation_Package;


