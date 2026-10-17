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
with org.allbinary.DisposalUtil_Package; use org.allbinary.DisposalUtil_Package;
with org.allbinary.animation.AnimationBehavior_Package; use org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.animation.RotationAnimation_Package; use org.allbinary.animation.RotationAnimation_Package;
with org.allbinary.graphics.Anchor_Package; use org.allbinary.graphics.Anchor_Package;
with org.allbinary.logic.math.PrimitiveIntUtil_Package; use org.allbinary.logic.math.PrimitiveIntUtil_Package;
with org.allbinary.math.AngleInfo_Package; use org.allbinary.math.AngleInfo_Package;
with org.allbinary.util.CircularIndexUtil_Package; use org.allbinary.util.CircularIndexUtil_Package;

package org.allbinary.animation.image.ImageBaseRotationAnimation_Package is

   package DisposalUtil_Package renames Standard.org.allbinary.DisposalUtil_Package;
   package AnimationBehavior_Package renames Standard.org.allbinary.animation.AnimationBehavior_Package;
   package RotationAnimation_Package renames Standard.org.allbinary.animation.RotationAnimation_Package;
   package Anchor_Package renames Standard.org.allbinary.graphics.Anchor_Package;
   package PrimitiveIntUtil_Package renames Standard.org.allbinary.logic.math.PrimitiveIntUtil_Package;
   package AngleInfo_Package renames Standard.org.allbinary.math.AngleInfo_Package;
   package CircularIndexUtil_Package renames Standard.org.allbinary.util.CircularIndexUtil_Package;

   type ImageBaseRotationAnimation is tagged;
   type ImageBaseRotationAnimation_Access is access all ImageBaseRotationAnimation'Class;
   type ImageBaseRotationAnimation_Access_Array is array (Natural range <>) of ImageBaseRotationAnimation_Access;
   type ImageBaseRotationAnimation_Access_Array_Access is access all ImageBaseRotationAnimation_Access_Array;

   type ImageBaseRotationAnimation is new RotationAnimation with record
      image : Image_Access;
      anchor : Integer;
   end record;

   procedure Initialize (This : in out ImageBaseRotationAnimation'Class; image : Image_Access; angleInfo : AngleInfo_Access; totalAngle : Short_Integer; animationBehavior : AnimationBehavior_Access);
   function Create (image : Image_Access; angleInfo : AngleInfo_Access; totalAngle : Short_Integer; animationBehavior : AnimationBehavior_Access) return ImageBaseRotationAnimation_Access;
   function getAnimationSize (This : in out ImageBaseRotationAnimation) return Integer;
   procedure getAnimationSize (This : in out ImageBaseRotationAnimation);
   procedure setSequence (This : in out ImageBaseRotationAnimation; sequence : Integer_Array_Access);
   function getSequence (This : in out ImageBaseRotationAnimation) return Integer_Array_Access;
   procedure getSequence (This : in out ImageBaseRotationAnimation);
   procedure paintXY (This : in out ImageBaseRotationAnimation; graphics : Graphics_Access; x : Integer; y : Integer);
   function getImage (This : in out ImageBaseRotationAnimation) return Image_Access;
   procedure getImage (This : in out ImageBaseRotationAnimation);
   function getWidth (This : in out ImageBaseRotationAnimation) return Integer;
   procedure getWidth (This : in out ImageBaseRotationAnimation);
   function getHeight (This : in out ImageBaseRotationAnimation) return Integer;
   procedure getHeight (This : in out ImageBaseRotationAnimation);
   procedure close (This : in out ImageBaseRotationAnimation);
   procedure finalize (This : in out ImageBaseRotationAnimation);

end org.allbinary.animation.image.ImageBaseRotationAnimation_Package;


