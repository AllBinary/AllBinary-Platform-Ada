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
--  with javax.microedition.khronos.opengles.GL_Package; use javax.microedition.khronos.opengles.GL_Package;
--  with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.animation.AnimationBehavior_Package; use org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.animation.IndexedAnimation_Package; use org.allbinary.animation.IndexedAnimation_Package;
with org.allbinary.animation.RotationAnimation_Package; use org.allbinary.animation.RotationAnimation_Package;
with org.allbinary.direction.Direction_Package; use org.allbinary.direction.Direction_Package;
with org.allbinary.logic.math.PrimitiveIntUtil_Package; use org.allbinary.logic.math.PrimitiveIntUtil_Package;
with org.allbinary.math.Angle_Package; use org.allbinary.math.Angle_Package;
with org.allbinary.math.AngleFactory_Package; use org.allbinary.math.AngleFactory_Package;
with org.allbinary.math.AngleInfo_Package; use org.allbinary.math.AngleInfo_Package;
with org.allbinary.util.CircularIndexUtil_Package; use org.allbinary.util.CircularIndexUtil_Package;
with org.allbinary.animation.compound.CompoundAnimationInterface_Package; use org.allbinary.animation.compound.CompoundAnimationInterface_Package;

package org.allbinary.animation.compound.AutoCompoundRotationAnimation_Package is

   package AnimationBehavior_Package renames org.allbinary.animation.AnimationBehavior_Package;
   package IndexedAnimation_Package renames org.allbinary.animation.IndexedAnimation_Package;
   package RotationAnimation_Package renames org.allbinary.animation.RotationAnimation_Package;
   package Direction_Package renames org.allbinary.direction.Direction_Package;
   package PrimitiveIntUtil_Package renames org.allbinary.logic.math.PrimitiveIntUtil_Package;
   package Angle_Package renames org.allbinary.math.Angle_Package;
   package AngleFactory_Package renames org.allbinary.math.AngleFactory_Package;
   package AngleInfo_Package renames org.allbinary.math.AngleInfo_Package;
   package CircularIndexUtil_Package renames org.allbinary.util.CircularIndexUtil_Package;

   type AutoCompoundRotationAnimation is tagged;
   type AutoCompoundRotationAnimation_Access is access all AutoCompoundRotationAnimation'Class;
   type AutoCompoundRotationAnimation_Access_Array is array (Natural range <>) of AutoCompoundRotationAnimation_Access;
   type AutoCompoundRotationAnimation_Access_Array_Access is access all AutoCompoundRotationAnimation_Access_Array;

   type AutoCompoundRotationAnimation is new RotationAnimation and CompoundAnimationInterface with record
      animationInterfaceArray : RotationAnimation_Access_Array_Access;
   end record;

   procedure Initialize (This : in out AutoCompoundRotationAnimation'Class; animationInterfaceArray : RotationAnimation_Access_Array_Access; animationBehavior : AnimationBehavior_Access);
   function Create (animationInterfaceArray : RotationAnimation_Access_Array_Access; animationBehavior : AnimationBehavior_Access) return AutoCompoundRotationAnimation_Access;
   procedure setFrame (This : in out AutoCompoundRotationAnimation; index : Integer);
   function getFrame (This : in out AutoCompoundRotationAnimation) return Integer;
   procedure getFrame (This : in out AutoCompoundRotationAnimation);
   function getAnimationSize (This : in out AutoCompoundRotationAnimation) return Integer;
   procedure getAnimationSize (This : in out AutoCompoundRotationAnimation);
   function getSize (This : in out AutoCompoundRotationAnimation) return Integer;
   procedure getSize (This : in out AutoCompoundRotationAnimation);
   procedure previousFrame (This : in out AutoCompoundRotationAnimation);
   procedure nextFrame (This : in out AutoCompoundRotationAnimation);
   procedure previousRotation (This : in out AutoCompoundRotationAnimation);
   procedure nextRotation (This : in out AutoCompoundRotationAnimation);
   procedure setSequence (This : in out AutoCompoundRotationAnimation; sequence : Integer_Array_Access);
   function getSequence (This : in out AutoCompoundRotationAnimation) return Integer_Array_Access;
   procedure getSequence (This : in out AutoCompoundRotationAnimation);
   procedure paintXY (This : in out AutoCompoundRotationAnimation; graphics : Graphics_Access; x : Integer; y : Integer);
   procedure paintThreedXYZ (This : in out AutoCompoundRotationAnimation; graphics : Graphics_Access; x : Integer; y : Integer; z : Integer);
   function getCurrentAnimation (This : in out AutoCompoundRotationAnimation) return IndexedAnimation_Access;
   procedure getCurrentAnimation (This : in out AutoCompoundRotationAnimation);
   procedure nextAnimation (This : in out AutoCompoundRotationAnimation);
   procedure previousAnimation (This : in out AutoCompoundRotationAnimation);
   procedure setAnimation (This : in out AutoCompoundRotationAnimation; index : Integer);
   procedure setFrameByDirection (This : in out AutoCompoundRotationAnimation; direction : Direction_Access);
   procedure setFrameToAngle (This : in out AutoCompoundRotationAnimation; angle : Angle_Access);
   procedure adjustFrameToAngle (This : in out AutoCompoundRotationAnimation; newAngle : Angle_Access);
   procedure adjustFrame (This : in out AutoCompoundRotationAnimation; angle : Short_Integer);
   function getAngleInfoP (This : in out AutoCompoundRotationAnimation) return AngleInfo_Access;
   procedure getAngleInfoP (This : in out AutoCompoundRotationAnimation);
   function getAnimationInterfaceArray (This : in out AutoCompoundRotationAnimation) return RotationAnimation_Access_Array_Access;
   procedure getAnimationInterfaceArray (This : in out AutoCompoundRotationAnimation);
   procedure setAnimationInterfaceArray (This : in out AutoCompoundRotationAnimation; animationInterfaceArray : RotationAnimation_Access_Array_Access);
   procedure set (This : in out AutoCompoundRotationAnimation; gl : GL_Access);

end org.allbinary.animation.compound.AutoCompoundRotationAnimation_Package;


