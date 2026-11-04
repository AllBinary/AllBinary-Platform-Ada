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

limited with org.allbinary.animation.RotationAnimation_Package;
package org.allbinary.animation.RotationAnimation_Package_References is
   type RotationAnimation_Access is access all org.allbinary.animation.RotationAnimation_Package.RotationAnimation'Class;
   type RotationAnimation_Access_Array is array (Natural range <>) of RotationAnimation_Access;
   type RotationAnimation_Access_Array_Access is access all RotationAnimation_Access_Array;
   type RotationAnimation_Access_Array_Access_Array is array (Natural range <>) of RotationAnimation_Access_Array_Access;
   type RotationAnimation_Access_Array_Access_Array_Access is access all RotationAnimation_Access_Array_Access_Array;
end org.allbinary.animation.RotationAnimation_Package_References;

with org.allbinary.animation.RotationAnimation_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.direction.Direction_Package;
with org.allbinary.direction.Direction_Package_References;
limited with org.allbinary.direction.DirectionUtil_Package;
with org.allbinary.direction.DirectionUtil_Package_References;
limited with org.allbinary.math.Angle_Package;
with org.allbinary.math.Angle_Package_References;
limited with org.allbinary.math.AngleInfo_Package;
with org.allbinary.math.AngleInfo_Package_References;
limited with org.allbinary.math.FrameUtil_Package;
with org.allbinary.math.FrameUtil_Package_References;
limited with org.allbinary.util.CircularIndexUtil_Package;
with org.allbinary.util.CircularIndexUtil_Package_References;
with org.allbinary.animation.IndexedAnimation_Package; use org.allbinary.animation.IndexedAnimation_Package;
with org.allbinary.animation.RotationAnimationInterface_Package; use org.allbinary.animation.RotationAnimationInterface_Package;
limited with org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.animation.AnimationBehavior_Package_References;

package org.allbinary.animation.RotationAnimation_Package is

   package Direction_Package renames Standard.org.allbinary.direction.Direction_Package;
   package DirectionUtil_Package renames Standard.org.allbinary.direction.DirectionUtil_Package;
   package Angle_Package renames Standard.org.allbinary.math.Angle_Package;
   package AngleInfo_Package renames Standard.org.allbinary.math.AngleInfo_Package;
   package FrameUtil_Package renames Standard.org.allbinary.math.FrameUtil_Package;
   package CircularIndexUtil_Package renames Standard.org.allbinary.util.CircularIndexUtil_Package;
   package Reference_Types is
   subtype Direction_Access is org.allbinary.direction.Direction_Package_References.Direction_Access;
   use type Direction_Access;
   subtype Direction_Access_Array is org.allbinary.direction.Direction_Package_References.Direction_Access_Array;
   use type Direction_Access_Array;
   subtype Direction_Access_Array_Access is org.allbinary.direction.Direction_Package_References.Direction_Access_Array_Access;
   use type Direction_Access_Array_Access;
   subtype Direction_Access_Array_Access_Array is org.allbinary.direction.Direction_Package_References.Direction_Access_Array_Access_Array;
   use type Direction_Access_Array_Access_Array;
   subtype Direction_Access_Array_Access_Array_Access is org.allbinary.direction.Direction_Package_References.Direction_Access_Array_Access_Array_Access;
   use type Direction_Access_Array_Access_Array_Access;
   subtype DirectionUtil_Access is org.allbinary.direction.DirectionUtil_Package_References.DirectionUtil_Access;
   use type DirectionUtil_Access;
   subtype DirectionUtil_Access_Array is org.allbinary.direction.DirectionUtil_Package_References.DirectionUtil_Access_Array;
   use type DirectionUtil_Access_Array;
   subtype DirectionUtil_Access_Array_Access is org.allbinary.direction.DirectionUtil_Package_References.DirectionUtil_Access_Array_Access;
   use type DirectionUtil_Access_Array_Access;
   subtype DirectionUtil_Access_Array_Access_Array is org.allbinary.direction.DirectionUtil_Package_References.DirectionUtil_Access_Array_Access_Array;
   use type DirectionUtil_Access_Array_Access_Array;
   subtype DirectionUtil_Access_Array_Access_Array_Access is org.allbinary.direction.DirectionUtil_Package_References.DirectionUtil_Access_Array_Access_Array_Access;
   use type DirectionUtil_Access_Array_Access_Array_Access;
   subtype Angle_Access is org.allbinary.math.Angle_Package_References.Angle_Access;
   use type Angle_Access;
   subtype Angle_Access_Array is org.allbinary.math.Angle_Package_References.Angle_Access_Array;
   use type Angle_Access_Array;
   subtype Angle_Access_Array_Access is org.allbinary.math.Angle_Package_References.Angle_Access_Array_Access;
   use type Angle_Access_Array_Access;
   subtype Angle_Access_Array_Access_Array is org.allbinary.math.Angle_Package_References.Angle_Access_Array_Access_Array;
   use type Angle_Access_Array_Access_Array;
   subtype Angle_Access_Array_Access_Array_Access is org.allbinary.math.Angle_Package_References.Angle_Access_Array_Access_Array_Access;
   use type Angle_Access_Array_Access_Array_Access;
   subtype AngleInfo_Access is org.allbinary.math.AngleInfo_Package_References.AngleInfo_Access;
   use type AngleInfo_Access;
   subtype AngleInfo_Access_Array is org.allbinary.math.AngleInfo_Package_References.AngleInfo_Access_Array;
   use type AngleInfo_Access_Array;
   subtype AngleInfo_Access_Array_Access is org.allbinary.math.AngleInfo_Package_References.AngleInfo_Access_Array_Access;
   use type AngleInfo_Access_Array_Access;
   subtype AngleInfo_Access_Array_Access_Array is org.allbinary.math.AngleInfo_Package_References.AngleInfo_Access_Array_Access_Array;
   use type AngleInfo_Access_Array_Access_Array;
   subtype AngleInfo_Access_Array_Access_Array_Access is org.allbinary.math.AngleInfo_Package_References.AngleInfo_Access_Array_Access_Array_Access;
   use type AngleInfo_Access_Array_Access_Array_Access;
   subtype FrameUtil_Access is org.allbinary.math.FrameUtil_Package_References.FrameUtil_Access;
   use type FrameUtil_Access;
   subtype FrameUtil_Access_Array is org.allbinary.math.FrameUtil_Package_References.FrameUtil_Access_Array;
   use type FrameUtil_Access_Array;
   subtype FrameUtil_Access_Array_Access is org.allbinary.math.FrameUtil_Package_References.FrameUtil_Access_Array_Access;
   use type FrameUtil_Access_Array_Access;
   subtype FrameUtil_Access_Array_Access_Array is org.allbinary.math.FrameUtil_Package_References.FrameUtil_Access_Array_Access_Array;
   use type FrameUtil_Access_Array_Access_Array;
   subtype FrameUtil_Access_Array_Access_Array_Access is org.allbinary.math.FrameUtil_Package_References.FrameUtil_Access_Array_Access_Array_Access;
   use type FrameUtil_Access_Array_Access_Array_Access;
   subtype CircularIndexUtil_Access is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access;
   use type CircularIndexUtil_Access;
   subtype CircularIndexUtil_Access_Array is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access_Array;
   use type CircularIndexUtil_Access_Array;
   subtype CircularIndexUtil_Access_Array_Access is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access_Array_Access;
   use type CircularIndexUtil_Access_Array_Access;
   subtype CircularIndexUtil_Access_Array_Access_Array is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access_Array_Access_Array;
   use type CircularIndexUtil_Access_Array_Access_Array;
   subtype CircularIndexUtil_Access_Array_Access_Array_Access is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access_Array_Access_Array_Access;
   use type CircularIndexUtil_Access_Array_Access_Array_Access;
   subtype AnimationBehavior_Access is org.allbinary.animation.AnimationBehavior_Package_References.AnimationBehavior_Access;
   use type AnimationBehavior_Access;
   subtype AnimationBehavior_Access_Array is org.allbinary.animation.AnimationBehavior_Package_References.AnimationBehavior_Access_Array;
   use type AnimationBehavior_Access_Array;
   subtype AnimationBehavior_Access_Array_Access is org.allbinary.animation.AnimationBehavior_Package_References.AnimationBehavior_Access_Array_Access;
   use type AnimationBehavior_Access_Array_Access;
   subtype AnimationBehavior_Access_Array_Access_Array is org.allbinary.animation.AnimationBehavior_Package_References.AnimationBehavior_Access_Array_Access_Array;
   use type AnimationBehavior_Access_Array_Access_Array;
   subtype AnimationBehavior_Access_Array_Access_Array_Access is org.allbinary.animation.AnimationBehavior_Package_References.AnimationBehavior_Access_Array_Access_Array_Access;
   use type AnimationBehavior_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype RotationAnimation_Access is org.allbinary.animation.RotationAnimation_Package_References.RotationAnimation_Access;
   function "=" (Left, Right : RotationAnimation_Access) return Boolean renames org.allbinary.animation.RotationAnimation_Package_References."=";
   subtype RotationAnimation_Access_Array is org.allbinary.animation.RotationAnimation_Package_References.RotationAnimation_Access_Array;
   function "=" (Left, Right : RotationAnimation_Access_Array) return Boolean renames org.allbinary.animation.RotationAnimation_Package_References."=";
   subtype RotationAnimation_Access_Array_Access is org.allbinary.animation.RotationAnimation_Package_References.RotationAnimation_Access_Array_Access;
   function "=" (Left, Right : RotationAnimation_Access_Array_Access) return Boolean renames org.allbinary.animation.RotationAnimation_Package_References."=";
   subtype RotationAnimation_Access_Array_Access_Array is org.allbinary.animation.RotationAnimation_Package_References.RotationAnimation_Access_Array_Access_Array;
   function "=" (Left, Right : RotationAnimation_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.RotationAnimation_Package_References."=";
   subtype RotationAnimation_Access_Array_Access_Array_Access is org.allbinary.animation.RotationAnimation_Package_References.RotationAnimation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RotationAnimation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.RotationAnimation_Package_References."=";

   type RotationAnimation is new IndexedAnimation and RotationAnimationInterface with record
      frameUtil : FrameUtil_Access;
      directionUtil : DirectionUtil_Access;
      angleInfo : AngleInfo_Access;
      circularIndexUtil : CircularIndexUtil_Access;
   end record;

   procedure Initialize (This : in out RotationAnimation'Class; angleInfo_Param : access AngleInfo_Package.AngleInfo'Class; circularIndexUtil_Param : access CircularIndexUtil_Package.CircularIndexUtil'Class; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class);
   function Create (angleInfo_Param : access AngleInfo_Package.AngleInfo'Class; circularIndexUtil_Param : access CircularIndexUtil_Package.CircularIndexUtil'Class; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) return RotationAnimation_Access;
   procedure nextRotationX (This : in out RotationAnimation);
   procedure previousRotationX (This : in out RotationAnimation);
   procedure nextRotation (This : in out RotationAnimation);
   procedure previousRotation (This : in out RotationAnimation);
   procedure nextRotationZ (This : in out RotationAnimation);
   procedure previousRotationZ (This : in out RotationAnimation);
   procedure setFrame (This : in out RotationAnimation; index : Integer);
   procedure setFrameByDirection (This : in out RotationAnimation; direction_Param : access Direction_Package.Direction'Class);
   procedure setFrameToAngle (This : in out RotationAnimation; angle_Param : access Angle_Package.Angle'Class);
   procedure adjustFrameToAngle (This : in out RotationAnimation; angle_Param : access Angle_Package.Angle'Class);
   procedure adjustFrame (This : in out RotationAnimation; angle : Short_Integer);
   function getFrame (This : in out RotationAnimation) return Integer;
   function getSize (This : in out RotationAnimation) return Integer;
   function getAngleInfoP (This : in out RotationAnimation) return AngleInfo_Access;
   function toString (This : in out RotationAnimation) return Unbounded_String;

end org.allbinary.animation.RotationAnimation_Package;


