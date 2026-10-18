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
with javax.microedition.khronos.opengles.GL_Package; use javax.microedition.khronos.opengles.GL_Package;
with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
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

   package GL_Package renames Standard.javax.microedition.khronos.opengles.GL_Package;
   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package AnimationBehavior_Package renames Standard.org.allbinary.animation.AnimationBehavior_Package;
   package IndexedAnimation_Package renames Standard.org.allbinary.animation.IndexedAnimation_Package;
   package RotationAnimation_Package renames Standard.org.allbinary.animation.RotationAnimation_Package;
   package Direction_Package renames Standard.org.allbinary.direction.Direction_Package;
   package PrimitiveIntUtil_Package renames Standard.org.allbinary.logic.math.PrimitiveIntUtil_Package;
   package Angle_Package renames Standard.org.allbinary.math.Angle_Package;
   package AngleFactory_Package renames Standard.org.allbinary.math.AngleFactory_Package;
   package AngleInfo_Package renames Standard.org.allbinary.math.AngleInfo_Package;
   package CircularIndexUtil_Package renames Standard.org.allbinary.util.CircularIndexUtil_Package;

   type AutoCompoundRotationAnimation is tagged;
   type AutoCompoundRotationAnimation_Access is access all AutoCompoundRotationAnimation'Class;
   type AutoCompoundRotationAnimation_Access_Array is array (Natural range <>) of AutoCompoundRotationAnimation_Access;
   type AutoCompoundRotationAnimation_Access_Array_Access is access all AutoCompoundRotationAnimation_Access_Array;

   type AutoCompoundRotationAnimation is new RotationAnimation and CompoundAnimationInterface with record
      animationInterfaceArray : RotationAnimation_Access_Array_Access;
   end record;

   procedure Initialize (This : in out AutoCompoundRotationAnimation'Class; animationInterfaceArray : RotationAnimation_Access_Array_Access; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class);
   function Create (animationInterfaceArray : RotationAnimation_Access_Array_Access; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) return AutoCompoundRotationAnimation_Access;
   procedure setFrame (This : in out AutoCompoundRotationAnimation; index : Integer);
   function getFrame (This : in out AutoCompoundRotationAnimation) return Integer;
   function getAnimationSize (This : in out AutoCompoundRotationAnimation) return Integer;
   function getSize (This : in out AutoCompoundRotationAnimation) return Integer;
   procedure previousFrame (This : in out AutoCompoundRotationAnimation);
   procedure nextFrame (This : in out AutoCompoundRotationAnimation);
   procedure previousRotation (This : in out AutoCompoundRotationAnimation);
   procedure nextRotation (This : in out AutoCompoundRotationAnimation);
   procedure setSequence (This : in out AutoCompoundRotationAnimation; sequence : Integer_Array_Access);
   function getSequence (This : in out AutoCompoundRotationAnimation) return Integer_Array_Access;
   procedure paintXY (This : in out AutoCompoundRotationAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer);
   procedure paintThreedXYZ (This : in out AutoCompoundRotationAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer; z : Integer);
   function getCurrentAnimation (This : in out AutoCompoundRotationAnimation) return IndexedAnimation_Access;
   procedure nextAnimation (This : in out AutoCompoundRotationAnimation);
   procedure previousAnimation (This : in out AutoCompoundRotationAnimation);
   procedure setAnimation (This : in out AutoCompoundRotationAnimation; index : Integer);
   procedure setFrameByDirection (This : in out AutoCompoundRotationAnimation; direction_Param : access Direction_Package.Direction'Class);
   procedure setFrameToAngle (This : in out AutoCompoundRotationAnimation; angle_Param : access Angle_Package.Angle'Class);
   procedure adjustFrameToAngle (This : in out AutoCompoundRotationAnimation; newAngle_Param : access Angle_Package.Angle'Class);
   procedure adjustFrame (This : in out AutoCompoundRotationAnimation; angle : Short_Integer);
   function getAngleInfoP (This : in out AutoCompoundRotationAnimation) return AngleInfo_Access;
   function getAnimationInterfaceArray (This : in out AutoCompoundRotationAnimation) return RotationAnimation_Access_Array_Access;
   procedure setAnimationInterfaceArray (This : in out AutoCompoundRotationAnimation; animationInterfaceArray : RotationAnimation_Access_Array_Access);
   procedure set (This : in out AutoCompoundRotationAnimation; gl_Param : access GL_Package.GL'Class);

end org.allbinary.animation.compound.AutoCompoundRotationAnimation_Package;


