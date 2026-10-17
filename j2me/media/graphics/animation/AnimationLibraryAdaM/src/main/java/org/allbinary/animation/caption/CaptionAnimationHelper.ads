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
with org.allbinary.animation.Animation_Package; use org.allbinary.animation.Animation_Package;
with org.allbinary.animation.AnimationBehavior_Package; use org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.animation.NullAnimationFactory_Package; use org.allbinary.animation.NullAnimationFactory_Package;
with org.allbinary.animation.text.TextAnimation_Package; use org.allbinary.animation.text.TextAnimation_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.GameTickTimeDelayHelperFactory_Package; use org.allbinary.time.GameTickTimeDelayHelperFactory_Package;
with org.allbinary.time.TimeDelayHelper_Package; use org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.animation.caption.CaptionAnimationHelperBase_Package; use org.allbinary.animation.caption.CaptionAnimationHelperBase_Package;
with org.allbinary.animation.caption.CaptionAnimation_Package; use org.allbinary.animation.caption.CaptionAnimation_Package;

package org.allbinary.animation.caption.CaptionAnimationHelper_Package is

   package Animation_Package renames Standard.org.allbinary.animation.Animation_Package;
   package AnimationBehavior_Package renames Standard.org.allbinary.animation.AnimationBehavior_Package;
   package NullAnimationFactory_Package renames Standard.org.allbinary.animation.NullAnimationFactory_Package;
   package TextAnimation_Package renames Standard.org.allbinary.animation.text.TextAnimation_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package GameTickTimeDelayHelperFactory_Package renames Standard.org.allbinary.time.GameTickTimeDelayHelperFactory_Package;
   package TimeDelayHelper_Package renames Standard.org.allbinary.time.TimeDelayHelper_Package;

   type CaptionAnimationHelper is tagged;
   type CaptionAnimationHelper_Access is access all CaptionAnimationHelper'Class;
   type CaptionAnimationHelper_Access_Array is array (Natural range <>) of CaptionAnimationHelper_Access;
   type CaptionAnimationHelper_Access_Array_Access is access all CaptionAnimationHelper_Access_Array;

   type CaptionAnimationHelper is new CaptionAnimationHelperBase with record
      timeHelper : TimeDelayHelper_Access;
      textAnimation : TextAnimation_Access;
      captionAnimation : Animation_Access;
      animation : Animation_Access;
   end record;

   procedure Initialize (This : in out CaptionAnimationHelper'Class; captionAnimation : Animation_Access; captionDx : Integer; captionDy : Integer; dx : Integer; dy : Integer);
   function Create (captionAnimation : Animation_Access; captionDx : Integer; captionDy : Integer; dx : Integer; dy : Integer) return CaptionAnimationHelper_Access;
   function isShowing (This : in out CaptionAnimationHelper) return Boolean;
   procedure tick (This : in out CaptionAnimationHelper);
   procedure update (This : in out CaptionAnimationHelper; message : Unbounded_String; basicColor : BasicColor_Access);
   procedure paintXY (This : in out CaptionAnimationHelper; graphics : Graphics_Access; x : Integer; y : Integer);

end org.allbinary.animation.caption.CaptionAnimationHelper_Package;


