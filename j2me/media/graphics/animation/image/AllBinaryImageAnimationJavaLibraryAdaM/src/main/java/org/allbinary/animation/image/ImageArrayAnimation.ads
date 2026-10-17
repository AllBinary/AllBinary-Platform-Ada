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
with org.allbinary.animation.AnimationBehavior_Package; use org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.animation.IndexedAnimation_Package; use org.allbinary.animation.IndexedAnimation_Package;
with org.allbinary.graphics.Anchor_Package; use org.allbinary.graphics.Anchor_Package;
with org.allbinary.logic.math.PrimitiveIntUtil_Package; use org.allbinary.logic.math.PrimitiveIntUtil_Package;
with org.allbinary.util.CircularIndexUtil_Package; use org.allbinary.util.CircularIndexUtil_Package;

package org.allbinary.animation.image.ImageArrayAnimation_Package is

   package AnimationBehavior_Package renames Standard.org.allbinary.animation.AnimationBehavior_Package;
   package IndexedAnimation_Package renames Standard.org.allbinary.animation.IndexedAnimation_Package;
   package Anchor_Package renames Standard.org.allbinary.graphics.Anchor_Package;
   package PrimitiveIntUtil_Package renames Standard.org.allbinary.logic.math.PrimitiveIntUtil_Package;
   package CircularIndexUtil_Package renames Standard.org.allbinary.util.CircularIndexUtil_Package;

   type ImageArrayAnimation is tagged;
   type ImageArrayAnimation_Access is access all ImageArrayAnimation'Class;
   type ImageArrayAnimation_Access_Array is array (Natural range <>) of ImageArrayAnimation_Access;
   type ImageArrayAnimation_Access_Array_Access is access all ImageArrayAnimation_Access_Array;

   type ImageArrayAnimation is new IndexedAnimation with record
      imageArray : Image_Access_Array_Access;
      totalFrames : Integer;
      circularIndexUtil : CircularIndexUtil_Access;
      anchor : Integer;
   end record;

   procedure Initialize (This : in out ImageArrayAnimation'Class; imageArray : Image_Access_Array_Access; animationBehavior : AnimationBehavior_Access);
   function Create (imageArray : Image_Access_Array_Access; animationBehavior : AnimationBehavior_Access) return ImageArrayAnimation_Access;
   function getAnimationSize (This : in out ImageArrayAnimation) return Integer;
   procedure nextFrame (This : in out ImageArrayAnimation);
   procedure previousFrame (This : in out ImageArrayAnimation);
   procedure setFrame (This : in out ImageArrayAnimation; index : Integer);
   function getFrame (This : in out ImageArrayAnimation) return Integer;
   function getSize (This : in out ImageArrayAnimation) return Integer;
   procedure setSequence (This : in out ImageArrayAnimation; sequence : Integer_Array_Access);
   function getSequence (This : in out ImageArrayAnimation) return Integer_Array_Access;
   function getImage (This : in out ImageArrayAnimation; index : Integer) return Image_Access;
   procedure getImage (This : in out ImageArrayAnimation; index : Integer);
   function getImageArray (This : in out ImageArrayAnimation) return Image_Access_Array_Access;
   procedure setImageArray (This : in out ImageArrayAnimation; imageArray : Image_Access_Array_Access);
   procedure paintXY (This : in out ImageArrayAnimation; graphics : Graphics_Access; x : Integer; y : Integer);

end org.allbinary.animation.image.ImageArrayAnimation_Package;


