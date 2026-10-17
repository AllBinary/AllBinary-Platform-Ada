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
with org.allbinary.direction.Direction_Package; use org.allbinary.direction.Direction_Package;
with org.allbinary.direction.DirectionUtil_Package; use org.allbinary.direction.DirectionUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.math.Angle_Package; use org.allbinary.math.Angle_Package;
with org.allbinary.math.AngleInfo_Package; use org.allbinary.math.AngleInfo_Package;
with org.allbinary.math.FrameUtil_Package; use org.allbinary.math.FrameUtil_Package;
with org.allbinary.util.CircularIndexUtil_Package; use org.allbinary.util.CircularIndexUtil_Package;
with org.allbinary.animation.IndexedAnimation_Package; use org.allbinary.animation.IndexedAnimation_Package;
with org.allbinary.animation.RotationAnimationInterface_Package; use org.allbinary.animation.RotationAnimationInterface_Package;
with org.allbinary.animation.AnimationBehavior_Package; use org.allbinary.animation.AnimationBehavior_Package;

package org.allbinary.animation.RotationAnimation_Package is

   package Direction_Package renames Standard.org.allbinary.direction.Direction_Package;
   package DirectionUtil_Package renames Standard.org.allbinary.direction.DirectionUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package Angle_Package renames Standard.org.allbinary.math.Angle_Package;
   package AngleInfo_Package renames Standard.org.allbinary.math.AngleInfo_Package;
   package FrameUtil_Package renames Standard.org.allbinary.math.FrameUtil_Package;
   package CircularIndexUtil_Package renames Standard.org.allbinary.util.CircularIndexUtil_Package;

   type RotationAnimation is tagged;
   type RotationAnimation_Access is access all RotationAnimation'Class;
   type RotationAnimation_Access_Array is array (Natural range <>) of RotationAnimation_Access;
   type RotationAnimation_Access_Array_Access is access all RotationAnimation_Access_Array;

   type RotationAnimation is new IndexedAnimation and RotationAnimationInterface with record
      frameUtil : FrameUtil_Access;
      directionUtil : DirectionUtil_Access;
      angleInfo : AngleInfo_Access;
      circularIndexUtil : CircularIndexUtil_Access;
   end record;

   procedure Initialize (This : in out RotationAnimation'Class; angleInfo : AngleInfo_Access; circularIndexUtil : CircularIndexUtil_Access; animationBehavior : AnimationBehavior_Access);
   function Create (angleInfo : AngleInfo_Access; circularIndexUtil : CircularIndexUtil_Access; animationBehavior : AnimationBehavior_Access) return RotationAnimation_Access;
   procedure nextRotationX (This : in out RotationAnimation);
   procedure previousRotationX (This : in out RotationAnimation);
   procedure nextRotation (This : in out RotationAnimation);
   procedure previousRotation (This : in out RotationAnimation);
   procedure nextRotationZ (This : in out RotationAnimation);
   procedure previousRotationZ (This : in out RotationAnimation);
   procedure setFrame (This : in out RotationAnimation; index : Integer);
   procedure setFrameByDirection (This : in out RotationAnimation; direction : Direction_Access);
   procedure setFrameToAngle (This : in out RotationAnimation; angle : Angle_Access);
   procedure adjustFrameToAngle (This : in out RotationAnimation; angle : Angle_Access);
   procedure adjustFrame (This : in out RotationAnimation; angle : Short_Integer);
   function getFrame (This : in out RotationAnimation) return Integer;
   function getSize (This : in out RotationAnimation) return Integer;
   function getAngleInfoP (This : in out RotationAnimation) return AngleInfo_Access;
   function toString (This : in out RotationAnimation) return Unbounded_String;

end org.allbinary.animation.RotationAnimation_Package;


