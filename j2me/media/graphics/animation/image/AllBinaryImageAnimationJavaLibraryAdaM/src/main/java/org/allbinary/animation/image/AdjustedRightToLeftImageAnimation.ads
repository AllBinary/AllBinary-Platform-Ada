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

with AllBinary_Java;
limited with org.allbinary.animation.image.AdjustedRightToLeftImageAnimation_Package;
package org.allbinary.animation.image.AdjustedRightToLeftImageAnimation_Package_References is
   type AdjustedRightToLeftImageAnimation_Access is access all org.allbinary.animation.image.AdjustedRightToLeftImageAnimation_Package.AdjustedRightToLeftImageAnimation'Class;
   type AdjustedRightToLeftImageAnimation_Access_Array is array (Natural range <>) of AdjustedRightToLeftImageAnimation_Access;
   type AdjustedRightToLeftImageAnimation_Access_Array_Access is access all AdjustedRightToLeftImageAnimation_Access_Array;
   type AdjustedRightToLeftImageAnimation_Access_Array_Access_Array is array (Natural range <>) of AdjustedRightToLeftImageAnimation_Access_Array_Access;
   type AdjustedRightToLeftImageAnimation_Access_Array_Access_Array_Access is access all AdjustedRightToLeftImageAnimation_Access_Array_Access_Array;
   type AdjustedRightToLeftImageAnimation_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AdjustedRightToLeftImageAnimation_Access_Array_Access;
   end record;
   function Java_Box (Value : AdjustedRightToLeftImageAnimation_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AdjustedRightToLeftImageAnimation_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AdjustedRightToLeftImageAnimation_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AdjustedRightToLeftImageAnimation_Access_Array_Access is (if Value /= null and then Value.all in AdjustedRightToLeftImageAnimation_Access_Array_Object'Class then AdjustedRightToLeftImageAnimation_Access_Array_Object'Class (Value.all).Value else null);
   type AdjustedRightToLeftImageAnimation_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AdjustedRightToLeftImageAnimation_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AdjustedRightToLeftImageAnimation_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AdjustedRightToLeftImageAnimation_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AdjustedRightToLeftImageAnimation_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AdjustedRightToLeftImageAnimation_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AdjustedRightToLeftImageAnimation_Access_Array_Access_Array_Object'Class then AdjustedRightToLeftImageAnimation_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.animation.image.AdjustedRightToLeftImageAnimation_Package_References;

with org.allbinary.animation.image.AdjustedRightToLeftImageAnimation_Package_References;
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
with org.allbinary.animation.image.RightToLeftImageAnimation_Package; use org.allbinary.animation.image.RightToLeftImageAnimation_Package;

package org.allbinary.animation.image.AdjustedRightToLeftImageAnimation_Package is

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


   subtype AdjustedRightToLeftImageAnimation_Access is org.allbinary.animation.image.AdjustedRightToLeftImageAnimation_Package_References.AdjustedRightToLeftImageAnimation_Access;
   function "=" (Left, Right : AdjustedRightToLeftImageAnimation_Access) return Boolean renames org.allbinary.animation.image.AdjustedRightToLeftImageAnimation_Package_References."=";
   subtype AdjustedRightToLeftImageAnimation_Access_Array is org.allbinary.animation.image.AdjustedRightToLeftImageAnimation_Package_References.AdjustedRightToLeftImageAnimation_Access_Array;
   function "=" (Left, Right : AdjustedRightToLeftImageAnimation_Access_Array) return Boolean renames org.allbinary.animation.image.AdjustedRightToLeftImageAnimation_Package_References."=";
   subtype AdjustedRightToLeftImageAnimation_Access_Array_Access is org.allbinary.animation.image.AdjustedRightToLeftImageAnimation_Package_References.AdjustedRightToLeftImageAnimation_Access_Array_Access;
   function "=" (Left, Right : AdjustedRightToLeftImageAnimation_Access_Array_Access) return Boolean renames org.allbinary.animation.image.AdjustedRightToLeftImageAnimation_Package_References."=";
   function Java_Box (Value : AdjustedRightToLeftImageAnimation_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.image.AdjustedRightToLeftImageAnimation_Package_References.Java_Box;
   function Java_Unbox_AdjustedRightToLeftImageAnimation_Access_Array (Value : access Java_Object'Class) return AdjustedRightToLeftImageAnimation_Access_Array_Access renames org.allbinary.animation.image.AdjustedRightToLeftImageAnimation_Package_References.Java_Unbox_AdjustedRightToLeftImageAnimation_Access_Array;
   subtype AdjustedRightToLeftImageAnimation_Access_Array_Access_Array is org.allbinary.animation.image.AdjustedRightToLeftImageAnimation_Package_References.AdjustedRightToLeftImageAnimation_Access_Array_Access_Array;
   function "=" (Left, Right : AdjustedRightToLeftImageAnimation_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.image.AdjustedRightToLeftImageAnimation_Package_References."=";
   subtype AdjustedRightToLeftImageAnimation_Access_Array_Access_Array_Access is org.allbinary.animation.image.AdjustedRightToLeftImageAnimation_Package_References.AdjustedRightToLeftImageAnimation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AdjustedRightToLeftImageAnimation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.image.AdjustedRightToLeftImageAnimation_Package_References."=";
   function Java_Box (Value : AdjustedRightToLeftImageAnimation_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.image.AdjustedRightToLeftImageAnimation_Package_References.Java_Box;
   function Java_Unbox_AdjustedRightToLeftImageAnimation_Access_Array_Access_Array (Value : access Java_Object'Class) return AdjustedRightToLeftImageAnimation_Access_Array_Access_Array_Access renames org.allbinary.animation.image.AdjustedRightToLeftImageAnimation_Package_References.Java_Unbox_AdjustedRightToLeftImageAnimation_Access_Array_Access_Array;

   type AdjustedRightToLeftImageAnimation is new RightToLeftImageAnimation with record
      dx : Integer;
      dy : Integer;
   end record;

   procedure Initialize (This : in out AdjustedRightToLeftImageAnimation'Class; image_Param : access Image_Package.Image'Class; dx : Integer; dy : Integer; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class);
   function Create (image_Param : access Image_Package.Image'Class; dx : Integer; dy : Integer; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) return AdjustedRightToLeftImageAnimation_Access;
   procedure init (This : in out AdjustedRightToLeftImageAnimation; dx : Integer; dy : Integer);
   procedure paintXY (This : in out AdjustedRightToLeftImageAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer);

end org.allbinary.animation.image.AdjustedRightToLeftImageAnimation_Package;


