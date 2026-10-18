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
with org.allbinary.animation.special.SpecialAnimationInterface_Package; use org.allbinary.animation.special.SpecialAnimationInterface_Package;
with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package; use org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
with org.allbinary.time.GameTickTimeDelayHelperFactory_Package; use org.allbinary.time.GameTickTimeDelayHelperFactory_Package;
with org.allbinary.time.TimeDelayHelper_Package; use org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.animation.image.ImageArrayAnimation_Package; use org.allbinary.animation.image.ImageArrayAnimation_Package;

package org.allbinary.animation.image.ImageArraySpecialAnimation_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package AnimationBehavior_Package renames Standard.org.allbinary.animation.AnimationBehavior_Package;
   package SpecialAnimationInterface_Package renames Standard.org.allbinary.animation.special.SpecialAnimationInterface_Package;
   package DisplayInfoSingleton_Package renames Standard.org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
   package GameTickTimeDelayHelperFactory_Package renames Standard.org.allbinary.time.GameTickTimeDelayHelperFactory_Package;
   package TimeDelayHelper_Package renames Standard.org.allbinary.time.TimeDelayHelper_Package;

   type ImageArraySpecialAnimation is tagged;
   type ImageArraySpecialAnimation_Access is access all ImageArraySpecialAnimation'Class;
   type ImageArraySpecialAnimation_Access_Array is array (Natural range <>) of ImageArraySpecialAnimation_Access;
   type ImageArraySpecialAnimation_Access_Array_Access is access all ImageArraySpecialAnimation_Access_Array;

   type ImageArraySpecialAnimation is new ImageArrayAnimation and SpecialAnimationInterface with record
      timeDelayHelper : TimeDelayHelper_Access;
      loopCount : Integer;
      loopCountTotal : Integer;
   end record;

   procedure Initialize (This : in out ImageArraySpecialAnimation'Class; imageArray : Image_Access_Array_Access; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class);
   function Create (imageArray : Image_Access_Array_Access; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) return ImageArraySpecialAnimation_Access;
   function getLoopCount (This : in out ImageArraySpecialAnimation) return Integer;
   procedure setLastFrame (This : in out ImageArraySpecialAnimation);
   procedure reset (This : in out ImageArraySpecialAnimation);
   procedure nextFrame (This : in out ImageArraySpecialAnimation);
   function isComplete (This : in out ImageArraySpecialAnimation) return Boolean;
   procedure paintXY (This : in out ImageArraySpecialAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x_Param : Integer; y_Param : Integer);

end org.allbinary.animation.image.ImageArraySpecialAnimation_Package;


