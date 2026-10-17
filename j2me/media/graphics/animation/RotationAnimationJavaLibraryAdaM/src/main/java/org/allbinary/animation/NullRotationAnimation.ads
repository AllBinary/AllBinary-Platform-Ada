--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.math.AngleFactory_Package; use org.allbinary.math.AngleFactory_Package;
with org.allbinary.math.AngleInfo_Package; use org.allbinary.math.AngleInfo_Package;
with org.allbinary.util.CircularIndexUtil_Package; use org.allbinary.util.CircularIndexUtil_Package;
with org.allbinary.animation.RotationAnimation_Package; use org.allbinary.animation.RotationAnimation_Package;
with org.allbinary.animation.AnimationBehavior_Package; use org.allbinary.animation.AnimationBehavior_Package;

package org.allbinary.animation.NullRotationAnimation_Package is

   package AngleFactory_Package renames Standard.org.allbinary.math.AngleFactory_Package;
   package AngleInfo_Package renames Standard.org.allbinary.math.AngleInfo_Package;
   package CircularIndexUtil_Package renames Standard.org.allbinary.util.CircularIndexUtil_Package;

   type NullRotationAnimation is tagged;
   type NullRotationAnimation_Access is access all NullRotationAnimation'Class;
   type NullRotationAnimation_Access_Array is array (Natural range <>) of NullRotationAnimation_Access;
   type NullRotationAnimation_Access_Array_Access is access all NullRotationAnimation_Access_Array;

   type NullRotationAnimation is new RotationAnimation with null record;

   procedure Initialize (This : in out NullRotationAnimation'Class; angleInfo_Param : access AngleInfo_Package.AngleInfo'Class; circularIndexUtil_Param : access CircularIndexUtil_Package.CircularIndexUtil'Class; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class);
   function Create (angleInfo_Param : access AngleInfo_Package.AngleInfo'Class; circularIndexUtil_Param : access CircularIndexUtil_Package.CircularIndexUtil'Class; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) return NullRotationAnimation_Access;
   function createTotalAngle (angleInfo_Param : access AngleInfo_Package.AngleInfo'Class; totalAngle : Short_Integer; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) return NullRotationAnimation_Access;
   procedure createTotalAngle (angleInfo_Param : access AngleInfo_Package.AngleInfo'Class; totalAngle : Short_Integer; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class);
   function createQuarter (animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) return NullRotationAnimation_Access;
   procedure createQuarter (animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class);
   function getAnimationSize (This : in out NullRotationAnimation) return Integer;

end org.allbinary.animation.NullRotationAnimation_Package;


