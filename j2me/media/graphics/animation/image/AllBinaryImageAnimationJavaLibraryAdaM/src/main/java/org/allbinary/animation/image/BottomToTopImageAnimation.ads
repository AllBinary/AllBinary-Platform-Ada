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

limited with org.allbinary.animation.image.BottomToTopImageAnimation_Package;
package org.allbinary.animation.image.BottomToTopImageAnimation_Package_References is
   type BottomToTopImageAnimation_Access is access all org.allbinary.animation.image.BottomToTopImageAnimation_Package.BottomToTopImageAnimation'Class;
   type BottomToTopImageAnimation_Access_Array is array (Natural range <>) of BottomToTopImageAnimation_Access;
   type BottomToTopImageAnimation_Access_Array_Access is access all BottomToTopImageAnimation_Access_Array;
   type BottomToTopImageAnimation_Access_Array_Access_Array is array (Natural range <>) of BottomToTopImageAnimation_Access_Array_Access;
   type BottomToTopImageAnimation_Access_Array_Access_Array_Access is access all BottomToTopImageAnimation_Access_Array_Access_Array;
end org.allbinary.animation.image.BottomToTopImageAnimation_Package_References;

with org.allbinary.animation.image.BottomToTopImageAnimation_Package_References;
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
with org.allbinary.animation.image.ImageSegmentAnimation_Package; use org.allbinary.animation.image.ImageSegmentAnimation_Package;

package org.allbinary.animation.image.BottomToTopImageAnimation_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package AnimationBehavior_Package renames Standard.org.allbinary.animation.AnimationBehavior_Package;
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


   subtype BottomToTopImageAnimation_Access is org.allbinary.animation.image.BottomToTopImageAnimation_Package_References.BottomToTopImageAnimation_Access;
   function "=" (Left, Right : BottomToTopImageAnimation_Access) return Boolean renames org.allbinary.animation.image.BottomToTopImageAnimation_Package_References."=";
   subtype BottomToTopImageAnimation_Access_Array is org.allbinary.animation.image.BottomToTopImageAnimation_Package_References.BottomToTopImageAnimation_Access_Array;
   function "=" (Left, Right : BottomToTopImageAnimation_Access_Array) return Boolean renames org.allbinary.animation.image.BottomToTopImageAnimation_Package_References."=";
   subtype BottomToTopImageAnimation_Access_Array_Access is org.allbinary.animation.image.BottomToTopImageAnimation_Package_References.BottomToTopImageAnimation_Access_Array_Access;
   function "=" (Left, Right : BottomToTopImageAnimation_Access_Array_Access) return Boolean renames org.allbinary.animation.image.BottomToTopImageAnimation_Package_References."=";
   subtype BottomToTopImageAnimation_Access_Array_Access_Array is org.allbinary.animation.image.BottomToTopImageAnimation_Package_References.BottomToTopImageAnimation_Access_Array_Access_Array;
   function "=" (Left, Right : BottomToTopImageAnimation_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.image.BottomToTopImageAnimation_Package_References."=";
   subtype BottomToTopImageAnimation_Access_Array_Access_Array_Access is org.allbinary.animation.image.BottomToTopImageAnimation_Package_References.BottomToTopImageAnimation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BottomToTopImageAnimation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.image.BottomToTopImageAnimation_Package_References."=";

   type BottomToTopImageAnimation is new ImageSegmentAnimation with record
      startHeight : Integer;
      currentHeight : Integer;
      BottomToTopImageAnimation_Field_anchor : Integer;
   end record;

   procedure Initialize (This : in out BottomToTopImageAnimation'Class; image_Param : access Image_Package.Image'Class; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class);
   function Create (image_Param : access Image_Package.Image'Class; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) return BottomToTopImageAnimation_Access;
   procedure nextFrame (This : in out BottomToTopImageAnimation);
   procedure previousFrame (This : in out BottomToTopImageAnimation);
   procedure setFrame (This : in out BottomToTopImageAnimation; index : Integer);
   procedure update (This : in out BottomToTopImageAnimation);
   procedure paintXY (This : in out BottomToTopImageAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer);

end org.allbinary.animation.image.BottomToTopImageAnimation_Package;


