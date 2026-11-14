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
limited with org.allbinary.animation.caption.CaptionAnimation_Package;
package org.allbinary.animation.caption.CaptionAnimation_Package_References is
   type CaptionAnimation_Access is access all org.allbinary.animation.caption.CaptionAnimation_Package.CaptionAnimation'Class;
   type CaptionAnimation_Access_Array is array (Natural range <>) of CaptionAnimation_Access;
   type CaptionAnimation_Access_Array_Access is access all CaptionAnimation_Access_Array;
   type CaptionAnimation_Access_Array_Access_Array is array (Natural range <>) of CaptionAnimation_Access_Array_Access;
   type CaptionAnimation_Access_Array_Access_Array_Access is access all CaptionAnimation_Access_Array_Access_Array;
   type CaptionAnimation_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CaptionAnimation_Access_Array_Access;
   end record;
   function Java_Box (Value : CaptionAnimation_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CaptionAnimation_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CaptionAnimation_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CaptionAnimation_Access_Array_Access is (if Value /= null and then Value.all in CaptionAnimation_Access_Array_Object'Class then CaptionAnimation_Access_Array_Object'Class (Value.all).Value else null);
   type CaptionAnimation_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CaptionAnimation_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : CaptionAnimation_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CaptionAnimation_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CaptionAnimation_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CaptionAnimation_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in CaptionAnimation_Access_Array_Access_Array_Object'Class then CaptionAnimation_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.animation.caption.CaptionAnimation_Package_References;

with org.allbinary.animation.caption.CaptionAnimation_Package_References;
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
with org.allbinary.animation.Animation_Package; use org.allbinary.animation.Animation_Package;

package org.allbinary.animation.caption.CaptionAnimation_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package Animation_Package renames Standard.org.allbinary.animation.Animation_Package;
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
   end Reference_Types;
   use Reference_Types;


   subtype CaptionAnimation_Access is org.allbinary.animation.caption.CaptionAnimation_Package_References.CaptionAnimation_Access;
   function "=" (Left, Right : CaptionAnimation_Access) return Boolean renames org.allbinary.animation.caption.CaptionAnimation_Package_References."=";
   subtype CaptionAnimation_Access_Array is org.allbinary.animation.caption.CaptionAnimation_Package_References.CaptionAnimation_Access_Array;
   function "=" (Left, Right : CaptionAnimation_Access_Array) return Boolean renames org.allbinary.animation.caption.CaptionAnimation_Package_References."=";
   subtype CaptionAnimation_Access_Array_Access is org.allbinary.animation.caption.CaptionAnimation_Package_References.CaptionAnimation_Access_Array_Access;
   function "=" (Left, Right : CaptionAnimation_Access_Array_Access) return Boolean renames org.allbinary.animation.caption.CaptionAnimation_Package_References."=";
   function Java_Box (Value : CaptionAnimation_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.caption.CaptionAnimation_Package_References.Java_Box;
   function Java_Unbox_CaptionAnimation_Access_Array (Value : access Java_Object'Class) return CaptionAnimation_Access_Array_Access renames org.allbinary.animation.caption.CaptionAnimation_Package_References.Java_Unbox_CaptionAnimation_Access_Array;
   subtype CaptionAnimation_Access_Array_Access_Array is org.allbinary.animation.caption.CaptionAnimation_Package_References.CaptionAnimation_Access_Array_Access_Array;
   function "=" (Left, Right : CaptionAnimation_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.caption.CaptionAnimation_Package_References."=";
   subtype CaptionAnimation_Access_Array_Access_Array_Access is org.allbinary.animation.caption.CaptionAnimation_Package_References.CaptionAnimation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CaptionAnimation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.caption.CaptionAnimation_Package_References."=";
   function Java_Box (Value : CaptionAnimation_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.caption.CaptionAnimation_Package_References.Java_Box;
   function Java_Unbox_CaptionAnimation_Access_Array_Access_Array (Value : access Java_Object'Class) return CaptionAnimation_Access_Array_Access_Array_Access renames org.allbinary.animation.caption.CaptionAnimation_Package_References.Java_Unbox_CaptionAnimation_Access_Array_Access_Array;

   type CaptionAnimation is new Animation_Package.Animation with record
      animationInterface : Animation_Access;
      overlayAnimationInterface : Animation_Access;
      captionDx : Integer;
      captionDy : Integer;
      dx : Integer;
      dy : Integer;
   end record;

   procedure Initialize (This : in out CaptionAnimation'Class; animationInterface_Param : access Animation_Package.Animation'Class; overlayAnimationInterface_Param : access Animation_Package.Animation'Class; captionDx : Integer; captionDy : Integer; dx : Integer; dy : Integer);
   function Create (animationInterface_Param : access Animation_Package.Animation'Class; overlayAnimationInterface_Param : access Animation_Package.Animation'Class; captionDx : Integer; captionDy : Integer; dx : Integer; dy : Integer) return CaptionAnimation_Access;
   procedure nextFrame (This : in out CaptionAnimation);
   procedure paintXY (This : in out CaptionAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer);
   procedure paintThreedXYZ (This : in out CaptionAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer; z : Integer);

end org.allbinary.animation.caption.CaptionAnimation_Package;


