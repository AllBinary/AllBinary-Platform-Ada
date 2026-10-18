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
with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
with org.allbinary.animation.AnimationBehavior_Package; use org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.util.CircularIndexUtil_Package; use org.allbinary.util.CircularIndexUtil_Package;
with org.allbinary.animation.image.ImageAnimation_Package; use org.allbinary.animation.image.ImageAnimation_Package;

package org.allbinary.animation.image.ImageSegmentAnimation_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package AnimationBehavior_Package renames Standard.org.allbinary.animation.AnimationBehavior_Package;
   package CircularIndexUtil_Package renames Standard.org.allbinary.util.CircularIndexUtil_Package;

   type ImageSegmentAnimation is tagged;
   type ImageSegmentAnimation_Access is access all ImageSegmentAnimation'Class;
   type ImageSegmentAnimation_Access_Array is array (Natural range <>) of ImageSegmentAnimation_Access;
   type ImageSegmentAnimation_Access_Array_Access is access all ImageSegmentAnimation_Access_Array;
   type ImageSegmentAnimation_Access_Array_Access_Array is array (Natural range <>) of ImageSegmentAnimation_Access_Array_Access;
   type ImageSegmentAnimation_Access_Array_Access_Array_Access is access all ImageSegmentAnimation_Access_Array_Access_Array;

   type ImageSegmentAnimation is new ImageAnimation with record
      startX : Integer;
      startY : Integer;
      drawWidth : Integer;
      drawHeight : Integer;
      circularIndexUtil : CircularIndexUtil_Access;
      sequenceArray : Integer_Array_Access;
   end record;

   procedure Initialize (This : in out ImageSegmentAnimation'Class; image_Param : access Image_Package.Image'Class; sequenceArray : Integer_Array_Access; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class);
   function Create (image_Param : access Image_Package.Image'Class; sequenceArray : Integer_Array_Access; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) return ImageSegmentAnimation_Access;
   procedure nextFrame (This : in out ImageSegmentAnimation);
   procedure previousFrame (This : in out ImageSegmentAnimation);
   procedure setFrame (This : in out ImageSegmentAnimation; index : Integer);
   function getFrame (This : in out ImageSegmentAnimation) return Integer;
   function getSize (This : in out ImageSegmentAnimation) return Integer;
   procedure setSequence (This : in out ImageSegmentAnimation; sequenceArray : Integer_Array_Access);
   function getSequence (This : in out ImageSegmentAnimation) return Integer_Array_Access;
   procedure paintXY (This : in out ImageSegmentAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer);
   function getStartX (This : in out ImageSegmentAnimation) return Integer;
   procedure setStartX (This : in out ImageSegmentAnimation; startX : Integer);
   function getStartY (This : in out ImageSegmentAnimation) return Integer;
   procedure setStartY (This : in out ImageSegmentAnimation; startY : Integer);
   function getDrawWidth (This : in out ImageSegmentAnimation) return Integer;
   procedure setDrawWidth (This : in out ImageSegmentAnimation; drawWidth : Integer);
   function getDrawHeight (This : in out ImageSegmentAnimation) return Integer;
   procedure setDrawHeight (This : in out ImageSegmentAnimation; drawHeight : Integer);

end org.allbinary.animation.image.ImageSegmentAnimation_Package;


