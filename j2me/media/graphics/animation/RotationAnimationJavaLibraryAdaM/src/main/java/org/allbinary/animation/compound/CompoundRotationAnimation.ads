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

limited with org.allbinary.animation.compound.CompoundRotationAnimation_Package;
package org.allbinary.animation.compound.CompoundRotationAnimation_Package_References is
   type CompoundRotationAnimation_Access is access all org.allbinary.animation.compound.CompoundRotationAnimation_Package.CompoundRotationAnimation'Class;
   type CompoundRotationAnimation_Access_Array is array (Natural range <>) of CompoundRotationAnimation_Access;
   type CompoundRotationAnimation_Access_Array_Access is access all CompoundRotationAnimation_Access_Array;
   type CompoundRotationAnimation_Access_Array_Access_Array is array (Natural range <>) of CompoundRotationAnimation_Access_Array_Access;
   type CompoundRotationAnimation_Access_Array_Access_Array_Access is access all CompoundRotationAnimation_Access_Array_Access_Array;
end org.allbinary.animation.compound.CompoundRotationAnimation_Package_References;

with org.allbinary.animation.compound.CompoundRotationAnimation_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.khronos.opengles.GL_Package;
with javax.microedition.khronos.opengles.GL_Package_References;
limited with javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
limited with org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.animation.AnimationBehavior_Package_References;
with org.allbinary.animation.IndexedAnimation_Package; use org.allbinary.animation.IndexedAnimation_Package;
with org.allbinary.animation.RotationAnimation_Package; use org.allbinary.animation.RotationAnimation_Package;
limited with org.allbinary.direction.Direction_Package;
with org.allbinary.direction.Direction_Package_References;
limited with org.allbinary.math.Angle_Package;
with org.allbinary.math.Angle_Package_References;
limited with org.allbinary.math.AngleInfo_Package;
with org.allbinary.math.AngleInfo_Package_References;
with org.allbinary.animation.compound.CompoundAnimationInterface_Package; use org.allbinary.animation.compound.CompoundAnimationInterface_Package;

package org.allbinary.animation.compound.CompoundRotationAnimation_Package is

   package GL_Package renames Standard.javax.microedition.khronos.opengles.GL_Package;
   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package AnimationBehavior_Package renames Standard.org.allbinary.animation.AnimationBehavior_Package;
   package IndexedAnimation_Package renames Standard.org.allbinary.animation.IndexedAnimation_Package;
   package RotationAnimation_Package renames Standard.org.allbinary.animation.RotationAnimation_Package;
   package Direction_Package renames Standard.org.allbinary.direction.Direction_Package;
   package Angle_Package renames Standard.org.allbinary.math.Angle_Package;
   package AngleInfo_Package renames Standard.org.allbinary.math.AngleInfo_Package;
   package Reference_Types is
   subtype GL_Access is javax.microedition.khronos.opengles.GL_Package_References.GL_Access;
   use type GL_Access;
   subtype GL_Access_Array is javax.microedition.khronos.opengles.GL_Package_References.GL_Access_Array;
   use type GL_Access_Array;
   subtype GL_Access_Array_Access is javax.microedition.khronos.opengles.GL_Package_References.GL_Access_Array_Access;
   use type GL_Access_Array_Access;
   subtype GL_Access_Array_Access_Array is javax.microedition.khronos.opengles.GL_Package_References.GL_Access_Array_Access_Array;
   use type GL_Access_Array_Access_Array;
   subtype GL_Access_Array_Access_Array_Access is javax.microedition.khronos.opengles.GL_Package_References.GL_Access_Array_Access_Array_Access;
   use type GL_Access_Array_Access_Array_Access;
   subtype Graphics_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access;
   use type Graphics_Access;
   subtype Graphics_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array;
   use type Graphics_Access_Array;
   subtype Graphics_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access;
   use type Graphics_Access_Array_Access;
   subtype Graphics_Access_Array_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array;
   use type Graphics_Access_Array_Access_Array;
   subtype Graphics_Access_Array_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array_Access;
   use type Graphics_Access_Array_Access_Array_Access;
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
   end Reference_Types;
   use Reference_Types;


   subtype CompoundRotationAnimation_Access is org.allbinary.animation.compound.CompoundRotationAnimation_Package_References.CompoundRotationAnimation_Access;
   function "=" (Left, Right : CompoundRotationAnimation_Access) return Boolean renames org.allbinary.animation.compound.CompoundRotationAnimation_Package_References."=";
   subtype CompoundRotationAnimation_Access_Array is org.allbinary.animation.compound.CompoundRotationAnimation_Package_References.CompoundRotationAnimation_Access_Array;
   function "=" (Left, Right : CompoundRotationAnimation_Access_Array) return Boolean renames org.allbinary.animation.compound.CompoundRotationAnimation_Package_References."=";
   subtype CompoundRotationAnimation_Access_Array_Access is org.allbinary.animation.compound.CompoundRotationAnimation_Package_References.CompoundRotationAnimation_Access_Array_Access;
   function "=" (Left, Right : CompoundRotationAnimation_Access_Array_Access) return Boolean renames org.allbinary.animation.compound.CompoundRotationAnimation_Package_References."=";
   subtype CompoundRotationAnimation_Access_Array_Access_Array is org.allbinary.animation.compound.CompoundRotationAnimation_Package_References.CompoundRotationAnimation_Access_Array_Access_Array;
   function "=" (Left, Right : CompoundRotationAnimation_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.compound.CompoundRotationAnimation_Package_References."=";
   subtype CompoundRotationAnimation_Access_Array_Access_Array_Access is org.allbinary.animation.compound.CompoundRotationAnimation_Package_References.CompoundRotationAnimation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CompoundRotationAnimation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.compound.CompoundRotationAnimation_Package_References."=";

   type CompoundRotationAnimation is new RotationAnimation and CompoundAnimationInterface with record
      animationInterfaceArray : RotationAnimation_Access_Array_Access;
   end record;

   procedure Initialize (This : in out CompoundRotationAnimation'Class; animationInterfaceArray : RotationAnimation_Access_Array_Access; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class);
   function Create (animationInterfaceArray : RotationAnimation_Access_Array_Access; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) return CompoundRotationAnimation_Access;
   procedure setFrame (This : in out CompoundRotationAnimation; index : Integer);
   function getFrame (This : in out CompoundRotationAnimation) return Integer;
   function getAnimationSize (This : in out CompoundRotationAnimation) return Integer;
   function getSize (This : in out CompoundRotationAnimation) return Integer;
   procedure previousFrame (This : in out CompoundRotationAnimation);
   procedure nextFrame (This : in out CompoundRotationAnimation);
   procedure previousRotation (This : in out CompoundRotationAnimation);
   procedure nextRotation (This : in out CompoundRotationAnimation);
   procedure setSequence (This : in out CompoundRotationAnimation; sequence : Integer_Array_Access);
   function getSequence (This : in out CompoundRotationAnimation) return Integer_Array_Access;
   procedure paintXY (This : in out CompoundRotationAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer);
   procedure paintThreedXYZ (This : in out CompoundRotationAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer; z : Integer);
   function getCurrentAnimation (This : in out CompoundRotationAnimation) return IndexedAnimation_Access;
   procedure nextAnimation (This : in out CompoundRotationAnimation);
   procedure previousAnimation (This : in out CompoundRotationAnimation);
   procedure setAnimation (This : in out CompoundRotationAnimation; index : Integer);
   procedure setFrameByDirection (This : in out CompoundRotationAnimation; direction_Param : access Direction_Package.Direction'Class);
   procedure setFrameToAngle (This : in out CompoundRotationAnimation; angle_Param : access Angle_Package.Angle'Class);
   procedure adjustFrameToAngle (This : in out CompoundRotationAnimation; newAngle_Param : access Angle_Package.Angle'Class);
   procedure adjustFrame (This : in out CompoundRotationAnimation; angle : Short_Integer);
   function getAngleInfoP (This : in out CompoundRotationAnimation) return AngleInfo_Access;
   function getAnimationInterfaceArray (This : in out CompoundRotationAnimation) return RotationAnimation_Access_Array_Access;
   procedure setAnimationInterfaceArray (This : in out CompoundRotationAnimation; animationInterfaceArray : RotationAnimation_Access_Array_Access);
   procedure set (This : in out CompoundRotationAnimation; gl_Param : access GL_Package.GL'Class);

end org.allbinary.animation.compound.CompoundRotationAnimation_Package;


