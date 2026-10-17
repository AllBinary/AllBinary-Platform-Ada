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

package org.allbinary.animation.image.TopToBottomImageAnimation_Package is

   package AnimationBehavior_Package renames Standard.org.allbinary.animation.AnimationBehavior_Package;
   package Anchor_Package renames Standard.org.allbinary.graphics.Anchor_Package;

   type TopToBottomImageAnimation is tagged;
   type TopToBottomImageAnimation_Access is access all TopToBottomImageAnimation'Class;
   type TopToBottomImageAnimation_Access_Array is array (Natural range <>) of TopToBottomImageAnimation_Access;
   type TopToBottomImageAnimation_Access_Array_Access is access all TopToBottomImageAnimation_Access_Array;

   type TopToBottomImageAnimation is new ImageSegmentAnimation with record
      currentHeight : Integer;
      anchor : Integer;
   end record;

   procedure Initialize (This : in out TopToBottomImageAnimation'Class; image : Image_Access; sequenceArray : Integer_Array_Access; animationBehavior : AnimationBehavior_Access);
   function Create (image : Image_Access; sequenceArray : Integer_Array_Access; animationBehavior : AnimationBehavior_Access) return TopToBottomImageAnimation_Access;
   procedure nextFrame (This : in out TopToBottomImageAnimation);
   procedure previousFrame (This : in out TopToBottomImageAnimation);
   procedure setFrame (This : in out TopToBottomImageAnimation; index : Integer);
   procedure update (This : in out TopToBottomImageAnimation);
   procedure paintXY (This : in out TopToBottomImageAnimation; graphics : Graphics_Access; x : Integer; y : Integer);

end org.allbinary.animation.image.TopToBottomImageAnimation_Package;


