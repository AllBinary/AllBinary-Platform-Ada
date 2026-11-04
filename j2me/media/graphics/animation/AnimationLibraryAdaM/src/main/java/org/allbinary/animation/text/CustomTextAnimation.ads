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

limited with org.allbinary.animation.text.CustomTextAnimation_Package;
package org.allbinary.animation.text.CustomTextAnimation_Package_References is
   type CustomTextAnimation_Access is access all org.allbinary.animation.text.CustomTextAnimation_Package.CustomTextAnimation'Class;
   type CustomTextAnimation_Access_Array is array (Natural range <>) of CustomTextAnimation_Access;
   type CustomTextAnimation_Access_Array_Access is access all CustomTextAnimation_Access_Array;
   type CustomTextAnimation_Access_Array_Access_Array is array (Natural range <>) of CustomTextAnimation_Access_Array_Access;
   type CustomTextAnimation_Access_Array_Access_Array_Access is access all CustomTextAnimation_Access_Array_Access_Array;
end org.allbinary.animation.text.CustomTextAnimation_Package_References;

with org.allbinary.animation.text.CustomTextAnimation_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.lcdui.Font_Package;
with javax.microedition.lcdui.Font_Package_References;
limited with javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
limited with org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.animation.AnimationBehavior_Package_References;
limited with org.allbinary.graphics.font.FontDebugFactory_Package;
with org.allbinary.graphics.font.FontDebugFactory_Package_References;
with org.allbinary.animation.text.TextAnimation_Package; use org.allbinary.animation.text.TextAnimation_Package;
with org.allbinary.animation.text.TextInterface_Package; use org.allbinary.animation.text.TextInterface_Package;

package org.allbinary.animation.text.CustomTextAnimation_Package is

   package Font_Package renames Standard.javax.microedition.lcdui.Font_Package;
   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package AnimationBehavior_Package renames Standard.org.allbinary.animation.AnimationBehavior_Package;
   package FontDebugFactory_Package renames Standard.org.allbinary.graphics.font.FontDebugFactory_Package;
   package Reference_Types is
   subtype Font_Access is javax.microedition.lcdui.Font_Package_References.Font_Access;
   use type Font_Access;
   subtype Font_Access_Array is javax.microedition.lcdui.Font_Package_References.Font_Access_Array;
   use type Font_Access_Array;
   subtype Font_Access_Array_Access is javax.microedition.lcdui.Font_Package_References.Font_Access_Array_Access;
   use type Font_Access_Array_Access;
   subtype Font_Access_Array_Access_Array is javax.microedition.lcdui.Font_Package_References.Font_Access_Array_Access_Array;
   use type Font_Access_Array_Access_Array;
   subtype Font_Access_Array_Access_Array_Access is javax.microedition.lcdui.Font_Package_References.Font_Access_Array_Access_Array_Access;
   use type Font_Access_Array_Access_Array_Access;
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
   subtype FontDebugFactory_Access is org.allbinary.graphics.font.FontDebugFactory_Package_References.FontDebugFactory_Access;
   use type FontDebugFactory_Access;
   subtype FontDebugFactory_Access_Array is org.allbinary.graphics.font.FontDebugFactory_Package_References.FontDebugFactory_Access_Array;
   use type FontDebugFactory_Access_Array;
   subtype FontDebugFactory_Access_Array_Access is org.allbinary.graphics.font.FontDebugFactory_Package_References.FontDebugFactory_Access_Array_Access;
   use type FontDebugFactory_Access_Array_Access;
   subtype FontDebugFactory_Access_Array_Access_Array is org.allbinary.graphics.font.FontDebugFactory_Package_References.FontDebugFactory_Access_Array_Access_Array;
   use type FontDebugFactory_Access_Array_Access_Array;
   subtype FontDebugFactory_Access_Array_Access_Array_Access is org.allbinary.graphics.font.FontDebugFactory_Package_References.FontDebugFactory_Access_Array_Access_Array_Access;
   use type FontDebugFactory_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype CustomTextAnimation_Access is org.allbinary.animation.text.CustomTextAnimation_Package_References.CustomTextAnimation_Access;
   function "=" (Left, Right : CustomTextAnimation_Access) return Boolean renames org.allbinary.animation.text.CustomTextAnimation_Package_References."=";
   subtype CustomTextAnimation_Access_Array is org.allbinary.animation.text.CustomTextAnimation_Package_References.CustomTextAnimation_Access_Array;
   function "=" (Left, Right : CustomTextAnimation_Access_Array) return Boolean renames org.allbinary.animation.text.CustomTextAnimation_Package_References."=";
   subtype CustomTextAnimation_Access_Array_Access is org.allbinary.animation.text.CustomTextAnimation_Package_References.CustomTextAnimation_Access_Array_Access;
   function "=" (Left, Right : CustomTextAnimation_Access_Array_Access) return Boolean renames org.allbinary.animation.text.CustomTextAnimation_Package_References."=";
   subtype CustomTextAnimation_Access_Array_Access_Array is org.allbinary.animation.text.CustomTextAnimation_Package_References.CustomTextAnimation_Access_Array_Access_Array;
   function "=" (Left, Right : CustomTextAnimation_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.text.CustomTextAnimation_Package_References."=";
   subtype CustomTextAnimation_Access_Array_Access_Array_Access is org.allbinary.animation.text.CustomTextAnimation_Package_References.CustomTextAnimation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CustomTextAnimation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.text.CustomTextAnimation_Package_References."=";

   type CustomTextAnimation is new TextAnimation and TextInterface with record
      fontDebugFactory : FontDebugFactory_Access;
      fontSize : Integer;
      font : Font_Access;
      lastText : Unbounded_String;
      hasChanged : Boolean;
      textWidth : Integer;
   end record;

   procedure Initialize (This : in out CustomTextAnimation'Class; text : Unbounded_String; fontSize : Integer; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class);
   function Create (text : Unbounded_String; fontSize : Integer; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) return CustomTextAnimation_Access;
   procedure paintXY (This : in out CustomTextAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer);
   procedure setScale (This : in out CustomTextAnimation; scaleX : Float; scaleY : Float);
   procedure setText (This : in out CustomTextAnimation; text : Unbounded_String);
   function getText (This : in out CustomTextAnimation) return Unbounded_String;
   function getWidth (This : in out CustomTextAnimation) return Integer;
   function getFontHeight (This : in out CustomTextAnimation) return Integer;

end org.allbinary.animation.text.CustomTextAnimation_Package;


