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

limited with org.allbinary.animation.image.ImageSegmentAnimation_Package;
package org.allbinary.animation.image.ImageSegmentAnimation_Package_References is
   type ImageSegmentAnimation_Access is access all org.allbinary.animation.image.ImageSegmentAnimation_Package.ImageSegmentAnimation'Class;
   type ImageSegmentAnimation_Access_Array is array (Natural range <>) of ImageSegmentAnimation_Access;
   type ImageSegmentAnimation_Access_Array_Access is access all ImageSegmentAnimation_Access_Array;
   type ImageSegmentAnimation_Access_Array_Access_Array is array (Natural range <>) of ImageSegmentAnimation_Access_Array_Access;
   type ImageSegmentAnimation_Access_Array_Access_Array_Access is access all ImageSegmentAnimation_Access_Array_Access_Array;
end org.allbinary.animation.image.ImageSegmentAnimation_Package_References;

with org.allbinary.animation.image.ImageSegmentAnimation_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
limited with javax.microedition.lcdui.Image_Package;
with javax.microedition.lcdui.Image_Package_References;
limited with org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.animation.AnimationBehavior_Package_References;
limited with org.allbinary.util.CircularIndexUtil_Package;
with org.allbinary.util.CircularIndexUtil_Package_References;
with org.allbinary.animation.image.ImageAnimation_Package; use org.allbinary.animation.image.ImageAnimation_Package;

package org.allbinary.animation.image.ImageSegmentAnimation_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package AnimationBehavior_Package renames Standard.org.allbinary.animation.AnimationBehavior_Package;
   package CircularIndexUtil_Package renames Standard.org.allbinary.util.CircularIndexUtil_Package;
   package Reference_Types is
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
   subtype Image_Access is javax.microedition.lcdui.Image_Package_References.Image_Access;
   use type Image_Access;
   subtype Image_Access_Array is javax.microedition.lcdui.Image_Package_References.Image_Access_Array;
   use type Image_Access_Array;
   subtype Image_Access_Array_Access is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access;
   use type Image_Access_Array_Access;
   subtype Image_Access_Array_Access_Array is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access_Array;
   use type Image_Access_Array_Access_Array;
   subtype Image_Access_Array_Access_Array_Access is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access_Array_Access;
   use type Image_Access_Array_Access_Array_Access;
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
   subtype CircularIndexUtil_Access is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access;
   use type CircularIndexUtil_Access;
   subtype CircularIndexUtil_Access_Array is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access_Array;
   use type CircularIndexUtil_Access_Array;
   subtype CircularIndexUtil_Access_Array_Access is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access_Array_Access;
   use type CircularIndexUtil_Access_Array_Access;
   subtype CircularIndexUtil_Access_Array_Access_Array is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access_Array_Access_Array;
   use type CircularIndexUtil_Access_Array_Access_Array;
   subtype CircularIndexUtil_Access_Array_Access_Array_Access is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access_Array_Access_Array_Access;
   use type CircularIndexUtil_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ImageSegmentAnimation_Access is org.allbinary.animation.image.ImageSegmentAnimation_Package_References.ImageSegmentAnimation_Access;
   function "=" (Left, Right : ImageSegmentAnimation_Access) return Boolean renames org.allbinary.animation.image.ImageSegmentAnimation_Package_References."=";
   subtype ImageSegmentAnimation_Access_Array is org.allbinary.animation.image.ImageSegmentAnimation_Package_References.ImageSegmentAnimation_Access_Array;
   function "=" (Left, Right : ImageSegmentAnimation_Access_Array) return Boolean renames org.allbinary.animation.image.ImageSegmentAnimation_Package_References."=";
   subtype ImageSegmentAnimation_Access_Array_Access is org.allbinary.animation.image.ImageSegmentAnimation_Package_References.ImageSegmentAnimation_Access_Array_Access;
   function "=" (Left, Right : ImageSegmentAnimation_Access_Array_Access) return Boolean renames org.allbinary.animation.image.ImageSegmentAnimation_Package_References."=";
   subtype ImageSegmentAnimation_Access_Array_Access_Array is org.allbinary.animation.image.ImageSegmentAnimation_Package_References.ImageSegmentAnimation_Access_Array_Access_Array;
   function "=" (Left, Right : ImageSegmentAnimation_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.image.ImageSegmentAnimation_Package_References."=";
   subtype ImageSegmentAnimation_Access_Array_Access_Array_Access is org.allbinary.animation.image.ImageSegmentAnimation_Package_References.ImageSegmentAnimation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ImageSegmentAnimation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.image.ImageSegmentAnimation_Package_References."=";

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


