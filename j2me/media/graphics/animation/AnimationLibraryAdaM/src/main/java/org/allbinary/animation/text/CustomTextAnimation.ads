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
with javax.microedition.lcdui.Font_Package; use javax.microedition.lcdui.Font_Package;
with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.animation.AnimationBehavior_Package; use org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.graphics.font.FontDebugFactory_Package; use org.allbinary.graphics.font.FontDebugFactory_Package;
with org.allbinary.animation.text.TextAnimation_Package; use org.allbinary.animation.text.TextAnimation_Package;
with org.allbinary.animation.text.TextInterface_Package; use org.allbinary.animation.text.TextInterface_Package;

package org.allbinary.animation.text.CustomTextAnimation_Package is

   package Font_Package renames Standard.javax.microedition.lcdui.Font_Package;
   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package AnimationBehavior_Package renames Standard.org.allbinary.animation.AnimationBehavior_Package;
   package FontDebugFactory_Package renames Standard.org.allbinary.graphics.font.FontDebugFactory_Package;

   type CustomTextAnimation is tagged;
   type CustomTextAnimation_Access is access all CustomTextAnimation'Class;
   type CustomTextAnimation_Access_Array is array (Natural range <>) of CustomTextAnimation_Access;
   type CustomTextAnimation_Access_Array_Access is access all CustomTextAnimation_Access_Array;
   type CustomTextAnimation_Access_Array_Access_Array is array (Natural range <>) of CustomTextAnimation_Access_Array_Access;
   type CustomTextAnimation_Access_Array_Access_Array_Access is access all CustomTextAnimation_Access_Array_Access_Array;

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


