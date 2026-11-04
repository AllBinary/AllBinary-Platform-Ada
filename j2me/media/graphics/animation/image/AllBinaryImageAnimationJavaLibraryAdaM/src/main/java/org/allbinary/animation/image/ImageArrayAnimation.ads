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

limited with org.allbinary.animation.image.ImageArrayAnimation_Package;
package org.allbinary.animation.image.ImageArrayAnimation_Package_References is
   type ImageArrayAnimation_Access is access all org.allbinary.animation.image.ImageArrayAnimation_Package.ImageArrayAnimation'Class;
   type ImageArrayAnimation_Access_Array is array (Natural range <>) of ImageArrayAnimation_Access;
   type ImageArrayAnimation_Access_Array_Access is access all ImageArrayAnimation_Access_Array;
   type ImageArrayAnimation_Access_Array_Access_Array is array (Natural range <>) of ImageArrayAnimation_Access_Array_Access;
   type ImageArrayAnimation_Access_Array_Access_Array_Access is access all ImageArrayAnimation_Access_Array_Access_Array;
end org.allbinary.animation.image.ImageArrayAnimation_Package_References;

with org.allbinary.animation.image.ImageArrayAnimation_Package_References;
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
with org.allbinary.animation.IndexedAnimation_Package; use org.allbinary.animation.IndexedAnimation_Package;
limited with org.allbinary.util.CircularIndexUtil_Package;
with org.allbinary.util.CircularIndexUtil_Package_References;

package org.allbinary.animation.image.ImageArrayAnimation_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package AnimationBehavior_Package renames Standard.org.allbinary.animation.AnimationBehavior_Package;
   package IndexedAnimation_Package renames Standard.org.allbinary.animation.IndexedAnimation_Package;
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


   subtype ImageArrayAnimation_Access is org.allbinary.animation.image.ImageArrayAnimation_Package_References.ImageArrayAnimation_Access;
   function "=" (Left, Right : ImageArrayAnimation_Access) return Boolean renames org.allbinary.animation.image.ImageArrayAnimation_Package_References."=";
   subtype ImageArrayAnimation_Access_Array is org.allbinary.animation.image.ImageArrayAnimation_Package_References.ImageArrayAnimation_Access_Array;
   function "=" (Left, Right : ImageArrayAnimation_Access_Array) return Boolean renames org.allbinary.animation.image.ImageArrayAnimation_Package_References."=";
   subtype ImageArrayAnimation_Access_Array_Access is org.allbinary.animation.image.ImageArrayAnimation_Package_References.ImageArrayAnimation_Access_Array_Access;
   function "=" (Left, Right : ImageArrayAnimation_Access_Array_Access) return Boolean renames org.allbinary.animation.image.ImageArrayAnimation_Package_References."=";
   subtype ImageArrayAnimation_Access_Array_Access_Array is org.allbinary.animation.image.ImageArrayAnimation_Package_References.ImageArrayAnimation_Access_Array_Access_Array;
   function "=" (Left, Right : ImageArrayAnimation_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.image.ImageArrayAnimation_Package_References."=";
   subtype ImageArrayAnimation_Access_Array_Access_Array_Access is org.allbinary.animation.image.ImageArrayAnimation_Package_References.ImageArrayAnimation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ImageArrayAnimation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.image.ImageArrayAnimation_Package_References."=";

   type ImageArrayAnimation is new IndexedAnimation with record
      imageArray : Image_Access_Array_Access;
      totalFrames : Integer;
      circularIndexUtil : CircularIndexUtil_Access;
      anchor : Integer;
   end record;

   procedure Initialize (This : in out ImageArrayAnimation'Class; imageArray : Image_Access_Array_Access; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class);
   function Create (imageArray : Image_Access_Array_Access; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) return ImageArrayAnimation_Access;
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
   procedure paintXY (This : in out ImageArrayAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer);

end org.allbinary.animation.image.ImageArrayAnimation_Package;


