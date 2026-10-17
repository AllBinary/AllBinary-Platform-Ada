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

package org.allbinary.animation.image.ImageAnimation_Package is

   package DisposalUtil_Package renames Standard.org.allbinary.DisposalUtil_Package;
   package AnimationBehavior_Package renames Standard.org.allbinary.animation.AnimationBehavior_Package;
   package IndexedAnimation_Package renames Standard.org.allbinary.animation.IndexedAnimation_Package;
   package Anchor_Package renames Standard.org.allbinary.graphics.Anchor_Package;
   package PrimitiveIntUtil_Package renames Standard.org.allbinary.logic.math.PrimitiveIntUtil_Package;

   type ImageAnimation is tagged;
   type ImageAnimation_Access is access all ImageAnimation'Class;
   type ImageAnimation_Access_Array is array (Natural range <>) of ImageAnimation_Access;
   type ImageAnimation_Access_Array_Access is access all ImageAnimation_Access_Array;

   type ImageAnimation is new IndexedAnimation with record
      image : Image_Access;
      anchor : Integer;
   end record;

   procedure Initialize (This : in out ImageAnimation'Class; image_Param : access Image_Package.Image'Class; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class);
   function Create (image_Param : access Image_Package.Image'Class; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) return ImageAnimation_Access;
   function getAnimationSize (This : in out ImageAnimation) return Integer;
   procedure nextFrame (This : in out ImageAnimation);
   procedure previousFrame (This : in out ImageAnimation);
   procedure setFrame (This : in out ImageAnimation; index : Integer);
   function getFrame (This : in out ImageAnimation) return Integer;
   function getSize (This : in out ImageAnimation) return Integer;
   procedure setSequence (This : in out ImageAnimation; sequence : Integer_Array_Access);
   function getSequence (This : in out ImageAnimation) return Integer_Array_Access;
   procedure paintXY (This : in out ImageAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer);
   function getImage (This : in out ImageAnimation) return Image_Access;
   procedure close (This : in out ImageAnimation);
   procedure finalize (This : in out ImageAnimation);

end org.allbinary.animation.image.ImageAnimation_Package;


