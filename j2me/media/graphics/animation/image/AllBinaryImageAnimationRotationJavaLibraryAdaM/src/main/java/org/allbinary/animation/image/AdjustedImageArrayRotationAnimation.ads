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
--  with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
--  with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
with org.allbinary.animation.AnimationBehavior_Package; use org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.math.AngleInfo_Package; use org.allbinary.math.AngleInfo_Package;
with org.allbinary.animation.image.ImageArrayRotationAnimation_Package; use org.allbinary.animation.image.ImageArrayRotationAnimation_Package;
with org.allbinary.animation.image.ImageArrayRotationAnimationInfo_Package; use org.allbinary.animation.image.ImageArrayRotationAnimationInfo_Package;

package org.allbinary.animation.image.AdjustedImageArrayRotationAnimation_Package is

   package AnimationBehavior_Package renames Standard.org.allbinary.animation.AnimationBehavior_Package;
   package AngleInfo_Package renames Standard.org.allbinary.math.AngleInfo_Package;

   type AdjustedImageArrayRotationAnimation is tagged;
   type AdjustedImageArrayRotationAnimation_Access is access all AdjustedImageArrayRotationAnimation'Class;
   type AdjustedImageArrayRotationAnimation_Access_Array is array (Natural range <>) of AdjustedImageArrayRotationAnimation_Access;
   type AdjustedImageArrayRotationAnimation_Access_Array_Access is access all AdjustedImageArrayRotationAnimation_Access_Array;

   type AdjustedImageArrayRotationAnimation is new ImageArrayRotationAnimation with record
      dx : Integer;
      dy : Integer;
   end record;

   procedure Initialize (This : in out AdjustedImageArrayRotationAnimation'Class; imageArray : Image_Access_Array_Access; angleInfo : AngleInfo_Access; totalAngle : Integer; dx : Integer; dy : Integer; animationBehavior : AnimationBehavior_Access);
   function Create (imageArray : Image_Access_Array_Access; angleInfo : AngleInfo_Access; totalAngle : Integer; dx : Integer; dy : Integer; animationBehavior : AnimationBehavior_Access) return AdjustedImageArrayRotationAnimation_Access;
   function createAdjustedImageArrayRotationAnimationInfo (anyType : Java_Object_Access; animationBehavior : AnimationBehavior_Access) return AdjustedImageArrayRotationAnimation_Access;
   procedure createAdjustedImageArrayRotationAnimationInfo (anyType : Java_Object_Access; animationBehavior : AnimationBehavior_Access);
   function createAnimation (imageArray : Image_Access_Array_Access; angleInfo : AngleInfo_Access; totalAngle : Integer; animationBehavior : AnimationBehavior_Access) return AdjustedImageArrayRotationAnimation_Access;
   procedure createAnimation (imageArray : Image_Access_Array_Access; angleInfo : AngleInfo_Access; totalAngle : Integer; animationBehavior : AnimationBehavior_Access);
   procedure init (This : in out AdjustedImageArrayRotationAnimation; dx : Integer; dy : Integer);
   procedure paintXY (This : in out AdjustedImageArrayRotationAnimation; graphics : Graphics_Access; x : Integer; y : Integer);
   procedure setDx (This : in out AdjustedImageArrayRotationAnimation; dx : Integer);
   function getDx (This : in out AdjustedImageArrayRotationAnimation) return Integer;
   procedure setDy (This : in out AdjustedImageArrayRotationAnimation; dy : Integer);
   function getDy (This : in out AdjustedImageArrayRotationAnimation) return Integer;

end org.allbinary.animation.image.AdjustedImageArrayRotationAnimation_Package;


