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
with org.allbinary.direction.DirectionalInterface_Package; use org.allbinary.direction.DirectionalInterface_Package;
with org.allbinary.math.AngleInfo_Package; use org.allbinary.math.AngleInfo_Package;
with org.allbinary.animation.IndexedAnimationInterface_Package; use org.allbinary.animation.IndexedAnimationInterface_Package;

package org.allbinary.animation.RotationAnimationInterface_Package is

   package DirectionalInterface_Package renames org.allbinary.direction.DirectionalInterface_Package;
   package AngleInfo_Package renames org.allbinary.math.AngleInfo_Package;

   type RotationAnimationInterface is interface and IndexedAnimationInterface and DirectionalInterface;
   type RotationAnimationInterface_Access is access all RotationAnimationInterface'Class;
   type RotationAnimationInterface_Access_Array is array (Natural range <>) of RotationAnimationInterface_Access;
   type RotationAnimationInterface_Access_Array_Access is access all RotationAnimationInterface_Access_Array;
   function getAngleInfoP (This : in out RotationAnimationInterface) return AngleInfo_Access is abstract;
   procedure nextRotation (This : in out RotationAnimationInterface) is abstract;
   procedure previousRotation (This : in out RotationAnimationInterface) is abstract;

end org.allbinary.animation.RotationAnimationInterface_Package;


