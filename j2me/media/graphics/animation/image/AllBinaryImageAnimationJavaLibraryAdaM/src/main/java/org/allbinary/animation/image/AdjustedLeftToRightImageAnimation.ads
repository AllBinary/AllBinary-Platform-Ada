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

limited with org.allbinary.animation.image.AdjustedLeftToRightImageAnimation_Package;
package org.allbinary.animation.image.AdjustedLeftToRightImageAnimation_Package_References is
   type AdjustedLeftToRightImageAnimation_Access is access all org.allbinary.animation.image.AdjustedLeftToRightImageAnimation_Package.AdjustedLeftToRightImageAnimation'Class;
   type AdjustedLeftToRightImageAnimation_Access_Array is array (Natural range <>) of AdjustedLeftToRightImageAnimation_Access;
   type AdjustedLeftToRightImageAnimation_Access_Array_Access is access all AdjustedLeftToRightImageAnimation_Access_Array;
   type AdjustedLeftToRightImageAnimation_Access_Array_Access_Array is array (Natural range <>) of AdjustedLeftToRightImageAnimation_Access_Array_Access;
   type AdjustedLeftToRightImageAnimation_Access_Array_Access_Array_Access is access all AdjustedLeftToRightImageAnimation_Access_Array_Access_Array;
end org.allbinary.animation.image.AdjustedLeftToRightImageAnimation_Package_References;

with org.allbinary.animation.image.AdjustedLeftToRightImageAnimation_Package_References;
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
with org.allbinary.animation.image.LeftToRightImageAnimation_Package; use org.allbinary.animation.image.LeftToRightImageAnimation_Package;

package org.allbinary.animation.image.AdjustedLeftToRightImageAnimation_Package is

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


   subtype AdjustedLeftToRightImageAnimation_Access is org.allbinary.animation.image.AdjustedLeftToRightImageAnimation_Package_References.AdjustedLeftToRightImageAnimation_Access;
   function "=" (Left, Right : AdjustedLeftToRightImageAnimation_Access) return Boolean renames org.allbinary.animation.image.AdjustedLeftToRightImageAnimation_Package_References."=";
   subtype AdjustedLeftToRightImageAnimation_Access_Array is org.allbinary.animation.image.AdjustedLeftToRightImageAnimation_Package_References.AdjustedLeftToRightImageAnimation_Access_Array;
   function "=" (Left, Right : AdjustedLeftToRightImageAnimation_Access_Array) return Boolean renames org.allbinary.animation.image.AdjustedLeftToRightImageAnimation_Package_References."=";
   subtype AdjustedLeftToRightImageAnimation_Access_Array_Access is org.allbinary.animation.image.AdjustedLeftToRightImageAnimation_Package_References.AdjustedLeftToRightImageAnimation_Access_Array_Access;
   function "=" (Left, Right : AdjustedLeftToRightImageAnimation_Access_Array_Access) return Boolean renames org.allbinary.animation.image.AdjustedLeftToRightImageAnimation_Package_References."=";
   subtype AdjustedLeftToRightImageAnimation_Access_Array_Access_Array is org.allbinary.animation.image.AdjustedLeftToRightImageAnimation_Package_References.AdjustedLeftToRightImageAnimation_Access_Array_Access_Array;
   function "=" (Left, Right : AdjustedLeftToRightImageAnimation_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.image.AdjustedLeftToRightImageAnimation_Package_References."=";
   subtype AdjustedLeftToRightImageAnimation_Access_Array_Access_Array_Access is org.allbinary.animation.image.AdjustedLeftToRightImageAnimation_Package_References.AdjustedLeftToRightImageAnimation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AdjustedLeftToRightImageAnimation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.image.AdjustedLeftToRightImageAnimation_Package_References."=";

   type AdjustedLeftToRightImageAnimation is new LeftToRightImageAnimation with record
      dx : Integer;
      dy : Integer;
   end record;

   procedure Initialize (This : in out AdjustedLeftToRightImageAnimation'Class; image_Param : access Image_Package.Image'Class; sequenceArray : Integer_Array_Access; dx : Integer; dy : Integer; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class);
   function Create (image_Param : access Image_Package.Image'Class; sequenceArray : Integer_Array_Access; dx : Integer; dy : Integer; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) return AdjustedLeftToRightImageAnimation_Access;
   procedure init (This : in out AdjustedLeftToRightImageAnimation; dx : Integer; dy : Integer);
   procedure paintXY (This : in out AdjustedLeftToRightImageAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer);

end org.allbinary.animation.image.AdjustedLeftToRightImageAnimation_Package;


