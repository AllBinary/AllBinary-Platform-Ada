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
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.math.Angle_Package; use org.allbinary.math.Angle_Package;
with org.allbinary.animation.VectorBaseRotationAnimation_Package; use org.allbinary.animation.VectorBaseRotationAnimation_Package;
with org.allbinary.animation.AnimationBehavior_Package; use org.allbinary.animation.AnimationBehavior_Package;

package org.allbinary.animation.VectorRotationAnimation_Package is

   package Direction_Package renames Standard.org.allbinary.direction.Direction_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package Angle_Package renames Standard.org.allbinary.math.Angle_Package;

   type VectorRotationAnimation is tagged;
   type VectorRotationAnimation_Access is access all VectorRotationAnimation'Class;
   type VectorRotationAnimation_Access_Array is array (Natural range <>) of VectorRotationAnimation_Access;
   type VectorRotationAnimation_Access_Array_Access is access all VectorRotationAnimation_Access_Array;
   type VectorRotationAnimation_Access_Array_Access_Array is array (Natural range <>) of VectorRotationAnimation_Access_Array_Access;
   type VectorRotationAnimation_Access_Array_Access_Array_Access is access all VectorRotationAnimation_Access_Array_Access_Array;

   type VectorRotationAnimation is new VectorBaseRotationAnimation with null record;

   procedure Initialize (This : in out VectorRotationAnimation'Class; currentPoints : Integer_Array_Access_Array_Access_Array_Access; basicColor_Param : access BasicColor_Package.BasicColor'Class; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class);
   function Create (currentPoints : Integer_Array_Access_Array_Access_Array_Access; basicColor_Param : access BasicColor_Package.BasicColor'Class; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) return VectorRotationAnimation_Access;
   procedure setFrameByDirection (This : in out VectorRotationAnimation; direction_Param : access Direction_Package.Direction'Class);
   procedure setFrameToAngle (This : in out VectorRotationAnimation; angle_Param : access Angle_Package.Angle'Class);
   procedure setFrame (This : in out VectorRotationAnimation; index : Integer);
   procedure adjustFrame (This : in out VectorRotationAnimation; newAngle : Short_Integer);
   procedure adjustFrameToAngle (This : in out VectorRotationAnimation; newAngle_Param : access Angle_Package.Angle'Class);

end org.allbinary.animation.VectorRotationAnimation_Package;


