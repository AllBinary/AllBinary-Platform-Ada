-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
with javax.microedition.khronos.opengles.GL_Package; use javax.microedition.khronos.opengles.GL_Package;
with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.animation.AnimationBehavior_Package; use org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.animation.IndexedAnimation_Package; use org.allbinary.animation.IndexedAnimation_Package;
with org.allbinary.animation.RotationAnimation_Package; use org.allbinary.animation.RotationAnimation_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.media.ScaleProperties_Package; use org.allbinary.media.ScaleProperties_Package;
with org.allbinary.animation.image.BaseImageAnimationFactory_Package; use org.allbinary.animation.image.BaseImageAnimationFactory_Package;

package org.allbinary.animation.image.LazyImageRotationAnimation_Package is

   package GL_Package renames Standard.javax.microedition.khronos.opengles.GL_Package;
   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package AnimationBehavior_Package renames Standard.org.allbinary.animation.AnimationBehavior_Package;
   package IndexedAnimation_Package renames Standard.org.allbinary.animation.IndexedAnimation_Package;
   package RotationAnimation_Package renames Standard.org.allbinary.animation.RotationAnimation_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package ScaleProperties_Package renames Standard.org.allbinary.media.ScaleProperties_Package;

   type LazyImageRotationAnimation is tagged;
   type LazyImageRotationAnimation_Access is access all LazyImageRotationAnimation'Class;
   type LazyImageRotationAnimation_Access_Array is array (Natural range <>) of LazyImageRotationAnimation_Access;
   type LazyImageRotationAnimation_Access_Array_Access is access all LazyImageRotationAnimation_Access_Array;
   type LazyImageRotationAnimation_Access_Array_Access_Array is array (Natural range <>) of LazyImageRotationAnimation_Access_Array_Access;
   type LazyImageRotationAnimation_Access_Array_Access_Array_Access is access all LazyImageRotationAnimation_Access_Array_Access_Array;

   type LazyImageRotationAnimation is new RotationAnimation with record
      logUtil : LogUtil_Access;
      layoutIndex : Integer;
      instanceId : Integer;
      animationInterfaceFactoryInterface : BaseImageAnimationFactory_Access;
      NULL_INDEX_ANIMATION : IndexedAnimation_Access;
      animation : IndexedAnimation_Access;
      scaleProperties : ScaleProperties_Access;
   end record;
   SET_REAL_ANIMATION : Unbounded_String;

   procedure Initialize (This : in out LazyImageRotationAnimation'Class; layoutIndex : Integer; instanceId : Integer; scaleProperties_Param : access ScaleProperties_Package.ScaleProperties'Class; animationInterfaceFactoryInterface_Param : access BaseImageAnimationFactory_Package.BaseImageAnimationFactory'Class; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class);
   function Create (layoutIndex : Integer; instanceId : Integer; scaleProperties_Param : access ScaleProperties_Package.ScaleProperties'Class; animationInterfaceFactoryInterface_Param : access BaseImageAnimationFactory_Package.BaseImageAnimationFactory'Class; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) return LazyImageRotationAnimation_Access;
   procedure setRealAnimation (This : in out LazyImageRotationAnimation);
   procedure setScale (This : in out LazyImageRotationAnimation; scaleX : Float; scaleY : Float);
   function getAnimationBehavior (This : in out LazyImageRotationAnimation) return AnimationBehavior_Access;
   procedure set (This : in out LazyImageRotationAnimation; gl_Param : access GL_Package.GL'Class);
   procedure setAlpha (This : in out LazyImageRotationAnimation; alpha : Integer);
   procedure setDx (This : in out LazyImageRotationAnimation; dx : Integer);
   procedure setDy (This : in out LazyImageRotationAnimation; dy : Integer);
   procedure setMaxScale (This : in out LazyImageRotationAnimation; maxScaleX : Float; maxScaleY : Float);
   procedure nextRotation (This : in out LazyImageRotationAnimation);
   procedure previousRotation (This : in out LazyImageRotationAnimation);
   procedure nextRotationX (This : in out LazyImageRotationAnimation);
   procedure previousRotationX (This : in out LazyImageRotationAnimation);
   procedure nextRotationZ (This : in out LazyImageRotationAnimation);
   procedure previousRotationZ (This : in out LazyImageRotationAnimation);
   procedure changeBasicColor (This : in out LazyImageRotationAnimation; basicColor_Param : access BasicColor_Package.BasicColor'Class);
   function getBasicColorP (This : in out LazyImageRotationAnimation) return BasicColor_Access;
   function getChangeBasicColor (This : in out LazyImageRotationAnimation) return BasicColor_Access;
   function getChangeColor (This : in out LazyImageRotationAnimation) return Integer;
   function getColor (This : in out LazyImageRotationAnimation) return Integer;
   function getDx (This : in out LazyImageRotationAnimation) return Integer;
   function getDy (This : in out LazyImageRotationAnimation) return Integer;
   function isThreed (This : in out LazyImageRotationAnimation) return Boolean;
   procedure nextFrame (This : in out LazyImageRotationAnimation);
   procedure reset (This : in out LazyImageRotationAnimation);
   procedure setFrame (This : in out LazyImageRotationAnimation; index : Integer);
   function getFrame (This : in out LazyImageRotationAnimation) return Integer;
   function getAnimationSize (This : in out LazyImageRotationAnimation) return Integer;
   function getSize (This : in out LazyImageRotationAnimation) return Integer;
   procedure previousFrame (This : in out LazyImageRotationAnimation);
   function isLastFrame (This : in out LazyImageRotationAnimation) return Boolean;
   procedure setSequence (This : in out LazyImageRotationAnimation; sequence : Integer_Array_Access);
   function getSequence (This : in out LazyImageRotationAnimation) return Integer_Array_Access;
   function getWidth (This : in out LazyImageRotationAnimation) return Integer;
   procedure paintXY (This : in out LazyImageRotationAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer);
   procedure paintThreedXYZ (This : in out LazyImageRotationAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer; z : Integer);
   function toString (This : in out LazyImageRotationAnimation) return Unbounded_String;

end org.allbinary.animation.image.LazyImageRotationAnimation_Package;


