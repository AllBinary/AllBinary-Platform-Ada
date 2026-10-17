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
--  with javax.microedition.lcdui.game.Sprite_Package; use javax.microedition.lcdui.game.Sprite_Package;
with org.allbinary.animation.AnimationBehavior_Package; use org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.graphics.Anchor_Package; use org.allbinary.graphics.Anchor_Package;
with org.allbinary.animation.image.ImageSegmentAnimation_Package; use org.allbinary.animation.image.ImageSegmentAnimation_Package;

package org.allbinary.animation.image.LeftToRightImageAnimation_Package is

   package AnimationBehavior_Package renames Standard.org.allbinary.animation.AnimationBehavior_Package;
   package Anchor_Package renames Standard.org.allbinary.graphics.Anchor_Package;

   type LeftToRightImageAnimation is tagged;
   type LeftToRightImageAnimation_Access is access all LeftToRightImageAnimation'Class;
   type LeftToRightImageAnimation_Access_Array is array (Natural range <>) of LeftToRightImageAnimation_Access;
   type LeftToRightImageAnimation_Access_Array_Access is access all LeftToRightImageAnimation_Access_Array;

   type LeftToRightImageAnimation is new ImageSegmentAnimation with record
      currentWidth : Integer;
      anchor : Integer;
   end record;

   procedure Initialize (This : in out LeftToRightImageAnimation'Class; image_Param : access Image'Class; sequenceArray : Integer_Array_Access; animationBehavior_Param : access AnimationBehavior'Class);
   function Create (image_Param : access Image'Class; sequenceArray : Integer_Array_Access; animationBehavior_Param : access AnimationBehavior'Class) return LeftToRightImageAnimation_Access;
   procedure nextFrame (This : in out LeftToRightImageAnimation);
   procedure previousFrame (This : in out LeftToRightImageAnimation);
   procedure setFrame (This : in out LeftToRightImageAnimation; index : Integer);
   procedure update (This : in out LeftToRightImageAnimation);
   procedure paintXY (This : in out LeftToRightImageAnimation; graphics_Param : access Graphics'Class; x : Integer; y : Integer);

end org.allbinary.animation.image.LeftToRightImageAnimation_Package;


