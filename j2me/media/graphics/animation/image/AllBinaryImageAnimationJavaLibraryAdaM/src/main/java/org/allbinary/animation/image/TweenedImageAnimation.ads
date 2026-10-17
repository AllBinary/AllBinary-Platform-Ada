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
with org.allbinary.animation.IndexedAnimation_Package; use org.allbinary.animation.IndexedAnimation_Package;
with org.allbinary.graphics.Anchor_Package; use org.allbinary.graphics.Anchor_Package;
with org.allbinary.logic.math.PrimitiveIntUtil_Package; use org.allbinary.logic.math.PrimitiveIntUtil_Package;
with org.allbinary.util.CircularIndexUtil_Package; use org.allbinary.util.CircularIndexUtil_Package;

package org.allbinary.animation.image.TweenedImageAnimation_Package is

   package DisposalUtil_Package renames Standard.org.allbinary.DisposalUtil_Package;
   package AnimationBehavior_Package renames Standard.org.allbinary.animation.AnimationBehavior_Package;
   package IndexedAnimation_Package renames Standard.org.allbinary.animation.IndexedAnimation_Package;
   package Anchor_Package renames Standard.org.allbinary.graphics.Anchor_Package;
   package PrimitiveIntUtil_Package renames Standard.org.allbinary.logic.math.PrimitiveIntUtil_Package;
   package CircularIndexUtil_Package renames Standard.org.allbinary.util.CircularIndexUtil_Package;

   type TweenedImageAnimation is tagged;
   type TweenedImageAnimation_Access is access all TweenedImageAnimation'Class;
   type TweenedImageAnimation_Access_Array is array (Natural range <>) of TweenedImageAnimation_Access;
   type TweenedImageAnimation_Access_Array_Access is access all TweenedImageAnimation_Access_Array;

   type TweenedImageAnimation is new IndexedAnimation with record
      image : Image_Access;
      dx : Integer;
      dy : Integer;
      totalFrames : Integer;
      circularIndexUtil : CircularIndexUtil_Access;
      anchor : Integer;
   end record;

   procedure Initialize (This : in out TweenedImageAnimation'Class; image : Image_Access; dx : Integer; dy : Integer; totalFrames : Integer; animationBehavior : AnimationBehavior_Access);
   function Create (image : Image_Access; dx : Integer; dy : Integer; totalFrames : Integer; animationBehavior : AnimationBehavior_Access) return TweenedImageAnimation_Access;
   function getAnimationSize (This : in out TweenedImageAnimation) return Integer;
   procedure getAnimationSize (This : in out TweenedImageAnimation);
   procedure nextFrame (This : in out TweenedImageAnimation);
   procedure previousFrame (This : in out TweenedImageAnimation);
   procedure setFrame (This : in out TweenedImageAnimation; index : Integer);
   function getFrame (This : in out TweenedImageAnimation) return Integer;
   procedure getFrame (This : in out TweenedImageAnimation);
   function getSize (This : in out TweenedImageAnimation) return Integer;
   procedure getSize (This : in out TweenedImageAnimation);
   procedure setSequence (This : in out TweenedImageAnimation; sequence : Integer_Array_Access);
   function getSequence (This : in out TweenedImageAnimation) return Integer_Array_Access;
   procedure getSequence (This : in out TweenedImageAnimation);
   procedure paintXY (This : in out TweenedImageAnimation; graphics : Graphics_Access; x : Integer; y : Integer);
   procedure close (This : in out TweenedImageAnimation);
   procedure finalize (This : in out TweenedImageAnimation);

end org.allbinary.animation.image.TweenedImageAnimation_Package;


