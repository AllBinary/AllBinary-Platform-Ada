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
--  with javax.microedition.khronos.opengles.GL_Package; use javax.microedition.khronos.opengles.GL_Package;
--  with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
--  with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
with org.allbinary.animation.AnimationBehavior_Package; use org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.animation.IndexedAnimation_Package; use org.allbinary.animation.IndexedAnimation_Package;
with org.allbinary.animation.NullRotationAnimationFactory_Package; use org.allbinary.animation.NullRotationAnimationFactory_Package;
with org.allbinary.animation.RotationAnimation_Package; use org.allbinary.animation.RotationAnimation_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.image.ImageCache_Package; use org.allbinary.image.ImageCache_Package;
with org.allbinary.image.ImageCacheFactory_Package; use org.allbinary.image.ImageCacheFactory_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.math.AngleFactory_Package; use org.allbinary.math.AngleFactory_Package;
with org.allbinary.math.AngleInfo_Package; use org.allbinary.math.AngleInfo_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.media.ScaleProperties_Package; use org.allbinary.media.ScaleProperties_Package;
with org.allbinary.util.CircularIndexUtil_Package; use org.allbinary.util.CircularIndexUtil_Package;

package org.allbinary.animation.image.LazyImageRotationAnimation_Package is

   package AnimationBehavior_Package renames org.allbinary.animation.AnimationBehavior_Package;
   package IndexedAnimation_Package renames org.allbinary.animation.IndexedAnimation_Package;
   package NullRotationAnimationFactory_Package renames org.allbinary.animation.NullRotationAnimationFactory_Package;
   package RotationAnimation_Package renames org.allbinary.animation.RotationAnimation_Package;
   package BasicColor_Package renames org.allbinary.graphics.color.BasicColor_Package;
   package ImageCache_Package renames org.allbinary.image.ImageCache_Package;
   package ImageCacheFactory_Package renames org.allbinary.image.ImageCacheFactory_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package AngleFactory_Package renames org.allbinary.math.AngleFactory_Package;
   package AngleInfo_Package renames org.allbinary.math.AngleInfo_Package;
   package CommonSeps_Package renames org.allbinary.string_Id.CommonSeps_Package;
   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package ScaleProperties_Package renames org.allbinary.media.ScaleProperties_Package;
   package CircularIndexUtil_Package renames org.allbinary.util.CircularIndexUtil_Package;

   type LazyImageRotationAnimation is tagged;
   type LazyImageRotationAnimation_Access is access all LazyImageRotationAnimation'Class;
   type LazyImageRotationAnimation_Access_Array is array (Natural range <>) of LazyImageRotationAnimation_Access;
   type LazyImageRotationAnimation_Access_Array_Access is access all LazyImageRotationAnimation_Access_Array;

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

   procedure Initialize (This : in out LazyImageRotationAnimation'Class; layoutIndex : Integer; instanceId : Integer; scaleProperties : ScaleProperties_Access; animationInterfaceFactoryInterface : BaseImageAnimationFactory_Access; animationBehavior : AnimationBehavior_Access);
   function Create (layoutIndex : Integer; instanceId : Integer; scaleProperties : ScaleProperties_Access; animationInterfaceFactoryInterface : BaseImageAnimationFactory_Access; animationBehavior : AnimationBehavior_Access) return LazyImageRotationAnimation_Access;
   procedure setRealAnimation (This : in out LazyImageRotationAnimation);
   procedure setScale (This : in out LazyImageRotationAnimation; scaleX : Float; scaleY : Float);
   function getAnimationBehavior (This : in out LazyImageRotationAnimation) return AnimationBehavior_Access;
   procedure getAnimationBehavior (This : in out LazyImageRotationAnimation);
   procedure set (This : in out LazyImageRotationAnimation; gl : GL_Access);
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
   procedure changeBasicColor (This : in out LazyImageRotationAnimation; basicColor : BasicColor_Access);
   function getBasicColorP (This : in out LazyImageRotationAnimation) return BasicColor_Access;
   procedure getBasicColorP (This : in out LazyImageRotationAnimation);
   function getChangeBasicColor (This : in out LazyImageRotationAnimation) return BasicColor_Access;
   procedure getChangeBasicColor (This : in out LazyImageRotationAnimation);
   function getChangeColor (This : in out LazyImageRotationAnimation) return Integer;
   procedure getChangeColor (This : in out LazyImageRotationAnimation);
   function getColor (This : in out LazyImageRotationAnimation) return Integer;
   procedure getColor (This : in out LazyImageRotationAnimation);
   function getDx (This : in out LazyImageRotationAnimation) return Integer;
   procedure getDx (This : in out LazyImageRotationAnimation);
   function getDy (This : in out LazyImageRotationAnimation) return Integer;
   procedure getDy (This : in out LazyImageRotationAnimation);
   function isThreed (This : in out LazyImageRotationAnimation) return Boolean;
   procedure isThreed (This : in out LazyImageRotationAnimation);
   procedure nextFrame (This : in out LazyImageRotationAnimation);
   procedure reset (This : in out LazyImageRotationAnimation);
   procedure setFrame (This : in out LazyImageRotationAnimation; index : Integer);
   function getFrame (This : in out LazyImageRotationAnimation) return Integer;
   procedure getFrame (This : in out LazyImageRotationAnimation);
   function getAnimationSize (This : in out LazyImageRotationAnimation) return Integer;
   procedure getAnimationSize (This : in out LazyImageRotationAnimation);
   function getSize (This : in out LazyImageRotationAnimation) return Integer;
   procedure getSize (This : in out LazyImageRotationAnimation);
   procedure previousFrame (This : in out LazyImageRotationAnimation);
   function isLastFrame (This : in out LazyImageRotationAnimation) return Boolean;
   procedure isLastFrame (This : in out LazyImageRotationAnimation);
   procedure setSequence (This : in out LazyImageRotationAnimation; sequence : Integer_Array_Access);
   function getSequence (This : in out LazyImageRotationAnimation) return Integer_Array_Access;
   procedure getSequence (This : in out LazyImageRotationAnimation);
   function getWidth (This : in out LazyImageRotationAnimation) return Integer;
   procedure getWidth (This : in out LazyImageRotationAnimation);
   procedure paintXY (This : in out LazyImageRotationAnimation; graphics : Graphics_Access; x : Integer; y : Integer);
   procedure paintThreedXYZ (This : in out LazyImageRotationAnimation; graphics : Graphics_Access; x : Integer; y : Integer; z : Integer);
   function toString (This : in out LazyImageRotationAnimation) return Unbounded_String;
   procedure toString (This : in out LazyImageRotationAnimation);

end org.allbinary.animation.image.LazyImageRotationAnimation_Package;


