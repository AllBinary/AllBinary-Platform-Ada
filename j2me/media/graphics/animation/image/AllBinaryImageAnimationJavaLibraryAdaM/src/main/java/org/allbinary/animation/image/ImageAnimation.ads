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

limited with org.allbinary.animation.image.ImageAnimation_Package;
package org.allbinary.animation.image.ImageAnimation_Package_References is
   type ImageAnimation_Access is access all org.allbinary.animation.image.ImageAnimation_Package.ImageAnimation'Class;
   type ImageAnimation_Access_Array is array (Natural range <>) of ImageAnimation_Access;
   type ImageAnimation_Access_Array_Access is access all ImageAnimation_Access_Array;
   type ImageAnimation_Access_Array_Access_Array is array (Natural range <>) of ImageAnimation_Access_Array_Access;
   type ImageAnimation_Access_Array_Access_Array_Access is access all ImageAnimation_Access_Array_Access_Array;
end org.allbinary.animation.image.ImageAnimation_Package_References;

with org.allbinary.animation.image.ImageAnimation_Package_References;
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

package org.allbinary.animation.image.ImageAnimation_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package AnimationBehavior_Package renames Standard.org.allbinary.animation.AnimationBehavior_Package;
   package IndexedAnimation_Package renames Standard.org.allbinary.animation.IndexedAnimation_Package;
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
   end Reference_Types;
   use Reference_Types;


   subtype ImageAnimation_Access is org.allbinary.animation.image.ImageAnimation_Package_References.ImageAnimation_Access;
   function "=" (Left, Right : ImageAnimation_Access) return Boolean renames org.allbinary.animation.image.ImageAnimation_Package_References."=";
   subtype ImageAnimation_Access_Array is org.allbinary.animation.image.ImageAnimation_Package_References.ImageAnimation_Access_Array;
   function "=" (Left, Right : ImageAnimation_Access_Array) return Boolean renames org.allbinary.animation.image.ImageAnimation_Package_References."=";
   subtype ImageAnimation_Access_Array_Access is org.allbinary.animation.image.ImageAnimation_Package_References.ImageAnimation_Access_Array_Access;
   function "=" (Left, Right : ImageAnimation_Access_Array_Access) return Boolean renames org.allbinary.animation.image.ImageAnimation_Package_References."=";
   subtype ImageAnimation_Access_Array_Access_Array is org.allbinary.animation.image.ImageAnimation_Package_References.ImageAnimation_Access_Array_Access_Array;
   function "=" (Left, Right : ImageAnimation_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.image.ImageAnimation_Package_References."=";
   subtype ImageAnimation_Access_Array_Access_Array_Access is org.allbinary.animation.image.ImageAnimation_Package_References.ImageAnimation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ImageAnimation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.image.ImageAnimation_Package_References."=";

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


