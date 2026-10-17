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
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.input.motion.gesture.MotionGestureToMotionGestureActionAssociation_Package; use org.allbinary.input.motion.gesture.MotionGestureToMotionGestureActionAssociation_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;

package org.allbinary.input.motion.gesture.configuration.MotionGestureConfiguration_Package is

   package CompleteMotionGestureInputEvent_Package renames org.allbinary.game.input.CompleteMotionGestureInputEvent_Package;
   package BasicColor_Package renames org.allbinary.graphics.color.BasicColor_Package;
   package BasicColorFactory_Package renames org.allbinary.graphics.color.BasicColorFactory_Package;
   package MotionGestureToMotionGestureActionAssociation_Package renames org.allbinary.input.motion.gesture.MotionGestureToMotionGestureActionAssociation_Package;
   package StringUtil_Package renames org.allbinary.logic.string_Id.StringUtil_Package;
   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames org.allbinary.util.BasicArrayListD_Package;

   type MotionGestureConfiguration is tagged;
   type MotionGestureConfiguration_Access is access all MotionGestureConfiguration'Class;
   type MotionGestureConfiguration_Access_Array is array (Natural range <>) of MotionGestureConfiguration_Access;
   type MotionGestureConfiguration_Access_Array_Access is access all MotionGestureConfiguration_Access_Array;

   type MotionGestureConfiguration is new Java_Object with record
      diagonalMotionGestureAllowed : Boolean;
      diagonalTolerance : Integer;
      minimumMotionGesture : Integer;
      button : Unbounded_String;
      color : BasicColor_Access;
      executingActions : Boolean;
      mouseButtonMask : Integer;
      activeCommands : BasicArrayList_Access;
   end record;

   procedure Initialize (This : in out MotionGestureConfiguration'Class);
   function Create return MotionGestureConfiguration_Access;
   procedure addMotionGestureAction (This : in out MotionGestureConfiguration; list : BasicArrayList_Access; commandAction : CompleteMotionGestureInputEvent_Access);
   procedure clearMotionGestureAction (This : in out MotionGestureConfiguration);
   function getAssociateCommandActionsList (This : in out MotionGestureConfiguration) return BasicArrayList_Access;
   procedure getAssociateCommandActionsList (This : in out MotionGestureConfiguration);
   function isDiagonalMotionGestureAllowed (This : in out MotionGestureConfiguration) return Boolean;
   procedure isDiagonalMotionGestureAllowed (This : in out MotionGestureConfiguration);
   function isExecutingActionsAllowed (This : in out MotionGestureConfiguration) return Boolean;
   procedure isExecutingActionsAllowed (This : in out MotionGestureConfiguration);
   procedure setExecutingActionsAllowed (This : in out MotionGestureConfiguration; executingActionAllowed : Boolean);
   procedure setDiagonalMotionGestureAllowed (This : in out MotionGestureConfiguration; diagonalMotionGestureAllowed : Boolean);
   function getDiagonalTolerance (This : in out MotionGestureConfiguration) return Integer;
   procedure getDiagonalTolerance (This : in out MotionGestureConfiguration);
   procedure setDiagonalTolerance (This : in out MotionGestureConfiguration; diagonalTolerance : Integer);
   function getMinimumMotionGesture (This : in out MotionGestureConfiguration) return Integer;
   procedure getMinimumMotionGesture (This : in out MotionGestureConfiguration);
   procedure setMinimumMotionGesture (This : in out MotionGestureConfiguration; minimumMotionGesture : Integer);
   function getButton (This : in out MotionGestureConfiguration) return Unbounded_String;
   procedure getButton (This : in out MotionGestureConfiguration);
   procedure setButton (This : in out MotionGestureConfiguration; button : Unbounded_String);
   function getColor (This : in out MotionGestureConfiguration) return BasicColor_Access;
   procedure getColor (This : in out MotionGestureConfiguration);
   procedure setColor (This : in out MotionGestureConfiguration; color : BasicColor_Access);
   function getMouseButtonMask (This : in out MotionGestureConfiguration) return Integer;
   procedure getMouseButtonMask (This : in out MotionGestureConfiguration);
   procedure setMouseButtonMask (This : in out MotionGestureConfiguration; mouseButtonMask : Integer);

end org.allbinary.input.motion.gesture.configuration.MotionGestureConfiguration_Package;


