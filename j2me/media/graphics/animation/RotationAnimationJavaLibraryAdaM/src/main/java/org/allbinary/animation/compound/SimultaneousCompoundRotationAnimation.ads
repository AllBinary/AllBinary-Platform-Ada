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

with AllBinary_Java;
limited with org.allbinary.animation.compound.SimultaneousCompoundRotationAnimation_Package;
package org.allbinary.animation.compound.SimultaneousCompoundRotationAnimation_Package_References is
   type SimultaneousCompoundRotationAnimation_Access is access all org.allbinary.animation.compound.SimultaneousCompoundRotationAnimation_Package.SimultaneousCompoundRotationAnimation'Class;
   type SimultaneousCompoundRotationAnimation_Access_Array is array (Natural range <>) of SimultaneousCompoundRotationAnimation_Access;
   type SimultaneousCompoundRotationAnimation_Access_Array_Access is access all SimultaneousCompoundRotationAnimation_Access_Array;
   type SimultaneousCompoundRotationAnimation_Access_Array_Access_Array is array (Natural range <>) of SimultaneousCompoundRotationAnimation_Access_Array_Access;
   type SimultaneousCompoundRotationAnimation_Access_Array_Access_Array_Access is access all SimultaneousCompoundRotationAnimation_Access_Array_Access_Array;
   type SimultaneousCompoundRotationAnimation_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : SimultaneousCompoundRotationAnimation_Access_Array_Access;
   end record;
   function Java_Box (Value : SimultaneousCompoundRotationAnimation_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new SimultaneousCompoundRotationAnimation_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_SimultaneousCompoundRotationAnimation_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return SimultaneousCompoundRotationAnimation_Access_Array_Access is (if Value /= null and then Value.all in SimultaneousCompoundRotationAnimation_Access_Array_Object'Class then SimultaneousCompoundRotationAnimation_Access_Array_Object'Class (Value.all).Value else null);
   type SimultaneousCompoundRotationAnimation_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : SimultaneousCompoundRotationAnimation_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : SimultaneousCompoundRotationAnimation_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new SimultaneousCompoundRotationAnimation_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_SimultaneousCompoundRotationAnimation_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return SimultaneousCompoundRotationAnimation_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in SimultaneousCompoundRotationAnimation_Access_Array_Access_Array_Object'Class then SimultaneousCompoundRotationAnimation_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.animation.compound.SimultaneousCompoundRotationAnimation_Package_References;

with org.allbinary.animation.compound.SimultaneousCompoundRotationAnimation_Package_References;
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
with org.allbinary.animation.RotationAnimation_Package; use org.allbinary.animation.RotationAnimation_Package;
limited with org.allbinary.direction.Direction_Package;
with org.allbinary.direction.Direction_Package_References;
limited with org.allbinary.math.Angle_Package;
with org.allbinary.math.Angle_Package_References;
limited with org.allbinary.math.AngleInfo_Package;
with org.allbinary.math.AngleInfo_Package_References;

package org.allbinary.animation.compound.SimultaneousCompoundRotationAnimation_Package is

   package GL_Package renames Standard.javax.microedition.khronos.opengles.GL_Package;
   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package AnimationBehavior_Package renames Standard.org.allbinary.animation.AnimationBehavior_Package;
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


   subtype SimultaneousCompoundRotationAnimation_Access is org.allbinary.animation.compound.SimultaneousCompoundRotationAnimation_Package_References.SimultaneousCompoundRotationAnimation_Access;
   function "=" (Left, Right : SimultaneousCompoundRotationAnimation_Access) return Boolean renames org.allbinary.animation.compound.SimultaneousCompoundRotationAnimation_Package_References."=";
   subtype SimultaneousCompoundRotationAnimation_Access_Array is org.allbinary.animation.compound.SimultaneousCompoundRotationAnimation_Package_References.SimultaneousCompoundRotationAnimation_Access_Array;
   function "=" (Left, Right : SimultaneousCompoundRotationAnimation_Access_Array) return Boolean renames org.allbinary.animation.compound.SimultaneousCompoundRotationAnimation_Package_References."=";
   subtype SimultaneousCompoundRotationAnimation_Access_Array_Access is org.allbinary.animation.compound.SimultaneousCompoundRotationAnimation_Package_References.SimultaneousCompoundRotationAnimation_Access_Array_Access;
   function "=" (Left, Right : SimultaneousCompoundRotationAnimation_Access_Array_Access) return Boolean renames org.allbinary.animation.compound.SimultaneousCompoundRotationAnimation_Package_References."=";
   function Java_Box (Value : SimultaneousCompoundRotationAnimation_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.compound.SimultaneousCompoundRotationAnimation_Package_References.Java_Box;
   function Java_Unbox_SimultaneousCompoundRotationAnimation_Access_Array (Value : access Java_Object'Class) return SimultaneousCompoundRotationAnimation_Access_Array_Access renames org.allbinary.animation.compound.SimultaneousCompoundRotationAnimation_Package_References.Java_Unbox_SimultaneousCompoundRotationAnimation_Access_Array;
   subtype SimultaneousCompoundRotationAnimation_Access_Array_Access_Array is org.allbinary.animation.compound.SimultaneousCompoundRotationAnimation_Package_References.SimultaneousCompoundRotationAnimation_Access_Array_Access_Array;
   function "=" (Left, Right : SimultaneousCompoundRotationAnimation_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.compound.SimultaneousCompoundRotationAnimation_Package_References."=";
   subtype SimultaneousCompoundRotationAnimation_Access_Array_Access_Array_Access is org.allbinary.animation.compound.SimultaneousCompoundRotationAnimation_Package_References.SimultaneousCompoundRotationAnimation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SimultaneousCompoundRotationAnimation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.compound.SimultaneousCompoundRotationAnimation_Package_References."=";
   function Java_Box (Value : SimultaneousCompoundRotationAnimation_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.compound.SimultaneousCompoundRotationAnimation_Package_References.Java_Box;
   function Java_Unbox_SimultaneousCompoundRotationAnimation_Access_Array_Access_Array (Value : access Java_Object'Class) return SimultaneousCompoundRotationAnimation_Access_Array_Access_Array_Access renames org.allbinary.animation.compound.SimultaneousCompoundRotationAnimation_Package_References.Java_Unbox_SimultaneousCompoundRotationAnimation_Access_Array_Access_Array;

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


