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
--  with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
--  with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
with org.allbinary.animation.AnimationBehavior_Package; use org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.math.AngleInfo_Package; use org.allbinary.math.AngleInfo_Package;
with org.allbinary.animation.image.AllBinaryHTMLImageRotationAnimation_Package; use org.allbinary.animation.image.AllBinaryHTMLImageRotationAnimation_Package;

package org.allbinary.animation.image.AllBinaryAdjustedHTMLImageRotationAnimation_Package is

   package AnimationBehavior_Package renames Standard.org.allbinary.animation.AnimationBehavior_Package;
   package AngleInfo_Package renames Standard.org.allbinary.math.AngleInfo_Package;

   type AllBinaryAdjustedHTMLImageRotationAnimation is tagged;
   type AllBinaryAdjustedHTMLImageRotationAnimation_Access is access all AllBinaryAdjustedHTMLImageRotationAnimation'Class;
   type AllBinaryAdjustedHTMLImageRotationAnimation_Access_Array is array (Natural range <>) of AllBinaryAdjustedHTMLImageRotationAnimation_Access;
   type AllBinaryAdjustedHTMLImageRotationAnimation_Access_Array_Access is access all AllBinaryAdjustedHTMLImageRotationAnimation_Access_Array;

   type AllBinaryAdjustedHTMLImageRotationAnimation is new AllBinaryHTMLImageRotationAnimation with record
      dx : Integer;
      dy : Integer;
   end record;

   procedure Initialize (This : in out AllBinaryAdjustedHTMLImageRotationAnimation'Class; originalImage_Param : access Image'Class; image_Param : access Image'Class; angleInfo_Param : access AngleInfo'Class; totalAngle : Short_Integer; dx : Integer; dy : Integer; animationBehavior_Param : access AnimationBehavior'Class);
   function Create (originalImage_Param : access Image'Class; image_Param : access Image'Class; angleInfo_Param : access AngleInfo'Class; totalAngle : Short_Integer; dx : Integer; dy : Integer; animationBehavior_Param : access AnimationBehavior'Class) return AllBinaryAdjustedHTMLImageRotationAnimation_Access;
   procedure init (This : in out AllBinaryAdjustedHTMLImageRotationAnimation; dx : Integer; dy : Integer);
   procedure setDx (This : in out AllBinaryAdjustedHTMLImageRotationAnimation; dx : Integer);
   function getDx (This : in out AllBinaryAdjustedHTMLImageRotationAnimation) return Integer;
   procedure setDy (This : in out AllBinaryAdjustedHTMLImageRotationAnimation; dy : Integer);
   function getDy (This : in out AllBinaryAdjustedHTMLImageRotationAnimation) return Integer;
   procedure paintXY (This : in out AllBinaryAdjustedHTMLImageRotationAnimation; graphics_Param : access Graphics'Class; x : Integer; y : Integer);

end org.allbinary.animation.image.AllBinaryAdjustedHTMLImageRotationAnimation_Package;


