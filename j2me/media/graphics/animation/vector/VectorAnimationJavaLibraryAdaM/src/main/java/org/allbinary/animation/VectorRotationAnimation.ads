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
with org.allbinary.math.AngleFactory_Package; use org.allbinary.math.AngleFactory_Package;
with org.allbinary.math.AngleInfo_Package; use org.allbinary.math.AngleInfo_Package;
with org.allbinary.animation.VectorBaseRotationAnimation_Package; use org.allbinary.animation.VectorBaseRotationAnimation_Package;

package org.allbinary.animation.VectorRotationAnimation_Package is

   package Direction_Package renames Standard.org.allbinary.direction.Direction_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package Angle_Package renames Standard.org.allbinary.math.Angle_Package;
   package AngleFactory_Package renames Standard.org.allbinary.math.AngleFactory_Package;
   package AngleInfo_Package renames Standard.org.allbinary.math.AngleInfo_Package;

   type VectorRotationAnimation is tagged;
   type VectorRotationAnimation_Access is access all VectorRotationAnimation'Class;
   type VectorRotationAnimation_Access_Array is array (Natural range <>) of VectorRotationAnimation_Access;
   type VectorRotationAnimation_Access_Array_Access is access all VectorRotationAnimation_Access_Array;

   type VectorRotationAnimation is new VectorBaseRotationAnimation with null record;

   procedure Initialize (This : in out VectorRotationAnimation'Class; currentPoints : Integer_Array_Access_Array_Access_Array_Access; basicColor : BasicColor_Access; animationBehavior : AnimationBehavior_Access);
   function Create (currentPoints : Integer_Array_Access_Array_Access_Array_Access; basicColor : BasicColor_Access; animationBehavior : AnimationBehavior_Access) return VectorRotationAnimation_Access;
   procedure setFrameByDirection (This : in out VectorRotationAnimation; direction : Direction_Access);
   procedure setFrameToAngle (This : in out VectorRotationAnimation; angle : Angle_Access);
   procedure setFrame (This : in out VectorRotationAnimation; index : Integer);
   procedure adjustFrame (This : in out VectorRotationAnimation; newAngle : Short_Integer);
   procedure adjustFrameToAngle (This : in out VectorRotationAnimation; newAngle : Angle_Access);

end org.allbinary.animation.VectorRotationAnimation_Package;


