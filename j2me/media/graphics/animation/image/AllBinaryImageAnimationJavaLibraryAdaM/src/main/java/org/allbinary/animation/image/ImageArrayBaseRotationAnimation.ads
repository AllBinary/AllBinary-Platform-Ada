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
--  with javax.microedition.lcdui.NullImage_Package; use javax.microedition.lcdui.NullImage_Package;
with org.allbinary.DisposalUtil_Package; use org.allbinary.DisposalUtil_Package;
with org.allbinary.animation.AnimationBehavior_Package; use org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.animation.RotationAnimation_Package; use org.allbinary.animation.RotationAnimation_Package;
with org.allbinary.graphics.Anchor_Package; use org.allbinary.graphics.Anchor_Package;
with org.allbinary.logic.math.PrimitiveIntUtil_Package; use org.allbinary.logic.math.PrimitiveIntUtil_Package;
with org.allbinary.math.AngleInfo_Package; use org.allbinary.math.AngleInfo_Package;
with org.allbinary.media.image.ImageModifierUtil_Package; use org.allbinary.media.image.ImageModifierUtil_Package;
with org.allbinary.util.CircularIndexUtil_Package; use org.allbinary.util.CircularIndexUtil_Package;

package org.allbinary.animation.image.ImageArrayBaseRotationAnimation_Package is

   package DisposalUtil_Package renames Standard.org.allbinary.DisposalUtil_Package;
   package AnimationBehavior_Package renames Standard.org.allbinary.animation.AnimationBehavior_Package;
   package RotationAnimation_Package renames Standard.org.allbinary.animation.RotationAnimation_Package;
   package Anchor_Package renames Standard.org.allbinary.graphics.Anchor_Package;
   package PrimitiveIntUtil_Package renames Standard.org.allbinary.logic.math.PrimitiveIntUtil_Package;
   package AngleInfo_Package renames Standard.org.allbinary.math.AngleInfo_Package;
   package ImageModifierUtil_Package renames Standard.org.allbinary.media.image.ImageModifierUtil_Package;
   package CircularIndexUtil_Package renames Standard.org.allbinary.util.CircularIndexUtil_Package;

   type ImageArrayBaseRotationAnimation is tagged;
   type ImageArrayBaseRotationAnimation_Access is access all ImageArrayBaseRotationAnimation'Class;
   type ImageArrayBaseRotationAnimation_Access_Array is array (Natural range <>) of ImageArrayBaseRotationAnimation_Access;
   type ImageArrayBaseRotationAnimation_Access_Array_Access is access all ImageArrayBaseRotationAnimation_Access_Array;

   type ImageArrayBaseRotationAnimation is new RotationAnimation with record
      imageModifierUtil : ImageModifierUtil_Access;
      originalImageArray : Image_Access_Array_Access;
      imageArray : Image_Access_Array_Access;
      currentImage : Image_Access;
      totalFrames : Integer;
      anchor : Integer;
   end record;

   procedure Initialize (This : in out ImageArrayBaseRotationAnimation'Class; originalImageArray : Image_Access_Array_Access; angleInfo_Param : access AngleInfo_Package.AngleInfo'Class; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class);
   function Create (originalImageArray : Image_Access_Array_Access; angleInfo_Param : access AngleInfo_Package.AngleInfo'Class; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) return ImageArrayBaseRotationAnimation_Access;
   function getAnimationSize (This : in out ImageArrayBaseRotationAnimation) return Integer;
   procedure setAlpha (This : in out ImageArrayBaseRotationAnimation; alpha : Integer);
   procedure nextRotation (This : in out ImageArrayBaseRotationAnimation);
   procedure previousRotation (This : in out ImageArrayBaseRotationAnimation);
   procedure setFrame (This : in out ImageArrayBaseRotationAnimation; index2 : Integer);
   procedure setSequence (This : in out ImageArrayBaseRotationAnimation; sequence : Integer_Array_Access);
   function getSequence (This : in out ImageArrayBaseRotationAnimation) return Integer_Array_Access;
   procedure setImageArray (This : in out ImageArrayBaseRotationAnimation; imageArray : Image_Access_Array_Access);
   procedure paintXY (This : in out ImageArrayBaseRotationAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer);
   procedure close (This : in out ImageArrayBaseRotationAnimation);
   procedure finalize (This : in out ImageArrayBaseRotationAnimation);

end org.allbinary.animation.image.ImageArrayBaseRotationAnimation_Package;


