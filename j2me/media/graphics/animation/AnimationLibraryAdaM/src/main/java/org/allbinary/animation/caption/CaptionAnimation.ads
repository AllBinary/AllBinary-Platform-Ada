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

package org.allbinary.animation.caption.CaptionAnimation_Package is

   package Animation_Package renames Standard.org.allbinary.animation.Animation_Package;

   type CaptionAnimation is tagged;
   type CaptionAnimation_Access is access all CaptionAnimation'Class;
   type CaptionAnimation_Access_Array is array (Natural range <>) of CaptionAnimation_Access;
   type CaptionAnimation_Access_Array_Access is access all CaptionAnimation_Access_Array;

   type CaptionAnimation is new Animation with record
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


