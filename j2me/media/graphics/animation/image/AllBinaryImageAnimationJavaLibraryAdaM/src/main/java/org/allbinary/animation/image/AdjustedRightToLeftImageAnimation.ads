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
with org.allbinary.animation.image.RightToLeftImageAnimation_Package; use org.allbinary.animation.image.RightToLeftImageAnimation_Package;

package org.allbinary.animation.image.AdjustedRightToLeftImageAnimation_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package AnimationBehavior_Package renames Standard.org.allbinary.animation.AnimationBehavior_Package;

   type AdjustedRightToLeftImageAnimation is tagged;
   type AdjustedRightToLeftImageAnimation_Access is access all AdjustedRightToLeftImageAnimation'Class;
   type AdjustedRightToLeftImageAnimation_Access_Array is array (Natural range <>) of AdjustedRightToLeftImageAnimation_Access;
   type AdjustedRightToLeftImageAnimation_Access_Array_Access is access all AdjustedRightToLeftImageAnimation_Access_Array;
   type AdjustedRightToLeftImageAnimation_Access_Array_Access_Array is array (Natural range <>) of AdjustedRightToLeftImageAnimation_Access_Array_Access;
   type AdjustedRightToLeftImageAnimation_Access_Array_Access_Array_Access is access all AdjustedRightToLeftImageAnimation_Access_Array_Access_Array;

   type AdjustedRightToLeftImageAnimation is new RightToLeftImageAnimation with record
      dx : Integer;
      dy : Integer;
   end record;

   procedure Initialize (This : in out AdjustedRightToLeftImageAnimation'Class; image_Param : access Image_Package.Image'Class; dx : Integer; dy : Integer; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class);
   function Create (image_Param : access Image_Package.Image'Class; dx : Integer; dy : Integer; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) return AdjustedRightToLeftImageAnimation_Access;
   procedure init (This : in out AdjustedRightToLeftImageAnimation; dx : Integer; dy : Integer);
   procedure paintXY (This : in out AdjustedRightToLeftImageAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer);

end org.allbinary.animation.image.AdjustedRightToLeftImageAnimation_Package;


