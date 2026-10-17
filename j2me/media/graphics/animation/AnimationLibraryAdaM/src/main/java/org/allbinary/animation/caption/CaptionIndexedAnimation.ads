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
--  with javax.microedition.media.Player_Package; use javax.microedition.media.Player_Package;
with org.allbinary.animation.Animation_Package; use org.allbinary.animation.Animation_Package;
with org.allbinary.animation.AnimationBehavior_Package; use org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.animation.AnimationEventHandler_Package; use org.allbinary.animation.AnimationEventHandler_Package;
with org.allbinary.animation.IndexedAnimation_Package; use org.allbinary.animation.IndexedAnimation_Package;
with org.allbinary.logic.math.PrimitiveIntUtil_Package; use org.allbinary.logic.math.PrimitiveIntUtil_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.time.GameTickTimeDelayHelperFactory_Package; use org.allbinary.time.GameTickTimeDelayHelperFactory_Package;
with org.allbinary.time.TimeDelayHelper_Package; use org.allbinary.time.TimeDelayHelper_Package;

package org.allbinary.animation.caption.CaptionIndexedAnimation_Package is

   package Animation_Package renames Standard.org.allbinary.animation.Animation_Package;
   package AnimationBehavior_Package renames Standard.org.allbinary.animation.AnimationBehavior_Package;
   package AnimationEventHandler_Package renames Standard.org.allbinary.animation.AnimationEventHandler_Package;
   package IndexedAnimation_Package renames Standard.org.allbinary.animation.IndexedAnimation_Package;
   package PrimitiveIntUtil_Package renames Standard.org.allbinary.logic.math.PrimitiveIntUtil_Package;
   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package GameTickTimeDelayHelperFactory_Package renames Standard.org.allbinary.time.GameTickTimeDelayHelperFactory_Package;
   package TimeDelayHelper_Package renames Standard.org.allbinary.time.TimeDelayHelper_Package;

   type CaptionIndexedAnimation is tagged;
   type CaptionIndexedAnimation_Access is access all CaptionIndexedAnimation'Class;
   type CaptionIndexedAnimation_Access_Array is array (Natural range <>) of CaptionIndexedAnimation_Access;
   type CaptionIndexedAnimation_Access_Array_Access is access all CaptionIndexedAnimation_Access_Array;

   type CaptionIndexedAnimation is new IndexedAnimation with record
      animationInterface : Animation_Access;
      movieIndexedAnimationInterface : IndexedAnimation_Access;
      captionDx : Integer;
      captionDy : Integer;
      dx : Integer;
      dy : Integer;
      time : Integer;
      END_EVENT : AllBinaryEventObject_Access;
      timeDelayHelper : TimeDelayHelper_Access;
      player : Player_Access;
   end record;

   procedure Initialize (This : in out CaptionIndexedAnimation'Class; animationInterface_Param : access Animation_Package.Animation'Class; movieIndexedAnimationInterface_Param : access IndexedAnimation_Package.IndexedAnimation'Class; player_Param : access Player_Package.Player'Class; captionDx : Integer; captionDy : Integer; dx : Integer; dy : Integer; time : Integer; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class);
   function Create (animationInterface_Param : access Animation_Package.Animation'Class; movieIndexedAnimationInterface_Param : access IndexedAnimation_Package.IndexedAnimation'Class; player_Param : access Player_Package.Player'Class; captionDx : Integer; captionDy : Integer; dx : Integer; dy : Integer; time : Integer; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) return CaptionIndexedAnimation_Access;
   procedure nextFrame (This : in out CaptionIndexedAnimation);
   function isLastFrame (This : in out CaptionIndexedAnimation) return Boolean;
   procedure previousFrame (This : in out CaptionIndexedAnimation);
   procedure setFrame (This : in out CaptionIndexedAnimation; index : Integer);
   function getFrame (This : in out CaptionIndexedAnimation) return Integer;
   function getSize (This : in out CaptionIndexedAnimation) return Integer;
   procedure setSequence (This : in out CaptionIndexedAnimation; sequence : Integer_Array_Access);
   function getSequence (This : in out CaptionIndexedAnimation) return Integer_Array_Access;
   procedure paintXY (This : in out CaptionIndexedAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer);
   procedure paintThreedXYZ (This : in out CaptionIndexedAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer; z : Integer);

end org.allbinary.animation.caption.CaptionIndexedAnimation_Package;


