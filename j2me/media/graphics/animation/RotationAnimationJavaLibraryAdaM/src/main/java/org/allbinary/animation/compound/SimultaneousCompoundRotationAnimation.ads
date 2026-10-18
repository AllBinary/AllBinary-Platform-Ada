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
with org.allbinary.animation.RotationAnimation_Package; use org.allbinary.animation.RotationAnimation_Package;
with org.allbinary.direction.Direction_Package; use org.allbinary.direction.Direction_Package;
with org.allbinary.math.Angle_Package; use org.allbinary.math.Angle_Package;
with org.allbinary.math.AngleInfo_Package; use org.allbinary.math.AngleInfo_Package;

package org.allbinary.animation.compound.SimultaneousCompoundRotationAnimation_Package is

   package GL_Package renames Standard.javax.microedition.khronos.opengles.GL_Package;
   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package AnimationBehavior_Package renames Standard.org.allbinary.animation.AnimationBehavior_Package;
   package RotationAnimation_Package renames Standard.org.allbinary.animation.RotationAnimation_Package;
   package Direction_Package renames Standard.org.allbinary.direction.Direction_Package;
   package Angle_Package renames Standard.org.allbinary.math.Angle_Package;
   package AngleInfo_Package renames Standard.org.allbinary.math.AngleInfo_Package;

   type SimultaneousCompoundRotationAnimation is tagged;
   type SimultaneousCompoundRotationAnimation_Access is access all SimultaneousCompoundRotationAnimation'Class;
   type SimultaneousCompoundRotationAnimation_Access_Array is array (Natural range <>) of SimultaneousCompoundRotationAnimation_Access;
   type SimultaneousCompoundRotationAnimation_Access_Array_Access is access all SimultaneousCompoundRotationAnimation_Access_Array;
   type SimultaneousCompoundRotationAnimation_Access_Array_Access_Array is array (Natural range <>) of SimultaneousCompoundRotationAnimation_Access_Array_Access;
   type SimultaneousCompoundRotationAnimation_Access_Array_Access_Array_Access is access all SimultaneousCompoundRotationAnimation_Access_Array_Access_Array;

   type SimultaneousCompoundRotationAnimation is new RotationAnimation with record
      animationInterfaceArray : RotationAnimation_Access_Array_Access;
   end record;

   procedure Initialize (This : in out SimultaneousCompoundRotationAnimation'Class; animationInterfaceArray : RotationAnimation_Access_Array_Access; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class);
   function Create (animationInterfaceArray : RotationAnimation_Access_Array_Access; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) return SimultaneousCompoundRotationAnimation_Access;
   procedure setFrame (This : in out SimultaneousCompoundRotationAnimation; frameIndex : Integer);
   function getFrame (This : in out SimultaneousCompoundRotationAnimation) return Integer;
   function getAnimationSize (This : in out SimultaneousCompoundRotationAnimation) return Integer;
   function getSize (This : in out SimultaneousCompoundRotationAnimation) return Integer;
   procedure previousFrame (This : in out SimultaneousCompoundRotationAnimation);
   procedure nextFrame (This : in out SimultaneousCompoundRotationAnimation);
   procedure previousRotation (This : in out SimultaneousCompoundRotationAnimation);
   procedure nextRotation (This : in out SimultaneousCompoundRotationAnimation);
   procedure setSequence (This : in out SimultaneousCompoundRotationAnimation; sequence : Integer_Array_Access);
   function getSequence (This : in out SimultaneousCompoundRotationAnimation) return Integer_Array_Access;
   procedure paintXY (This : in out SimultaneousCompoundRotationAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer);
   procedure paintThreedXYZ (This : in out SimultaneousCompoundRotationAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer; z : Integer);
   procedure setFrameByDirection (This : in out SimultaneousCompoundRotationAnimation; direction_Param : access Direction_Package.Direction'Class);
   procedure setFrameToAngle (This : in out SimultaneousCompoundRotationAnimation; angle_Param : access Angle_Package.Angle'Class);
   procedure adjustFrameToAngle (This : in out SimultaneousCompoundRotationAnimation; newAngle_Param : access Angle_Package.Angle'Class);
   procedure adjustFrame (This : in out SimultaneousCompoundRotationAnimation; angle : Short_Integer);
   function getAngleInfoP (This : in out SimultaneousCompoundRotationAnimation) return AngleInfo_Access;
   function getAnimationInterfaceArray (This : in out SimultaneousCompoundRotationAnimation) return RotationAnimation_Access_Array_Access;
   procedure setAnimationInterfaceArray (This : in out SimultaneousCompoundRotationAnimation; animationInterfaceArray : RotationAnimation_Access_Array_Access);
   procedure set (This : in out SimultaneousCompoundRotationAnimation; gl_Param : access GL_Package.GL'Class);

end org.allbinary.animation.compound.SimultaneousCompoundRotationAnimation_Package;


