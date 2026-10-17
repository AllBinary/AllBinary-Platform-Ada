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
--  with javax.microedition.lcdui.Font_Package; use javax.microedition.lcdui.Font_Package;
with org.allbinary.animation.Animation_Package; use org.allbinary.animation.Animation_Package;
with org.allbinary.animation.AnimationBehaviorFactory_Package; use org.allbinary.animation.AnimationBehaviorFactory_Package;
with org.allbinary.animation.AnimationInterfaceFactoryInterface_Package; use org.allbinary.animation.AnimationInterfaceFactoryInterface_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.media.ScaleProperties_Package; use org.allbinary.media.ScaleProperties_Package;

package org.allbinary.animation.text.CustomTextAnimationFactory_Package is

   package Animation_Package renames org.allbinary.animation.Animation_Package;
   package AnimationBehaviorFactory_Package renames org.allbinary.animation.AnimationBehaviorFactory_Package;
   package AnimationInterfaceFactoryInterface_Package renames org.allbinary.animation.AnimationInterfaceFactoryInterface_Package;
   package BasicColor_Package renames org.allbinary.graphics.color.BasicColor_Package;
   package BasicColorFactory_Package renames org.allbinary.graphics.color.BasicColorFactory_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package ScaleProperties_Package renames org.allbinary.media.ScaleProperties_Package;

   type CustomTextAnimationFactory is tagged;
   type CustomTextAnimationFactory_Access is access all CustomTextAnimationFactory'Class;
   type CustomTextAnimationFactory_Access_Array is array (Natural range <>) of CustomTextAnimationFactory_Access;
   type CustomTextAnimationFactory_Access_Array_Access is access all CustomTextAnimationFactory_Access_Array;

   type CustomTextAnimationFactory is new AnimationInterfaceFactoryInterface with record
      logUtil : LogUtil_Access;
      animationBehaviorFactory : AnimationBehaviorFactory_Access;
      basicColor : BasicColor_Access;
      text : Unbounded_String;
      initScaleHeight : Integer;
      dx : Integer;
      dy : Integer;
      font : Font_Access;
      scaleProperties : ScaleProperties_Access;
   end record;

   procedure Initialize (This : in out CustomTextAnimationFactory'Class; text : Unbounded_String; fontSize : Integer; animationBehaviorFactory : AnimationBehaviorFactory_Access);
   function Create (text : Unbounded_String; fontSize : Integer; animationBehaviorFactory : AnimationBehaviorFactory_Access) return CustomTextAnimationFactory_Access;
   function createDXY (text : Unbounded_String; fontSize : Integer; dx : Integer; dy : Integer; animationBehaviorFactory : AnimationBehaviorFactory_Access) return CustomTextAnimationFactory_Access;
   procedure createDXY (text : Unbounded_String; fontSize : Integer; dx : Integer; dy : Integer; animationBehaviorFactory : AnimationBehaviorFactory_Access);
   function getInstance (This : in out CustomTextAnimationFactory; instanceId : Integer) return Animation_Access;
   procedure getInstance (This : in out CustomTextAnimationFactory; instanceId : Integer);
   procedure setInitialScale (This : in out CustomTextAnimationFactory; scaleProperties : ScaleProperties_Access);
   function getWidth (This : in out CustomTextAnimationFactory) return Integer;
   procedure getWidth (This : in out CustomTextAnimationFactory);
   function getHeight (This : in out CustomTextAnimationFactory) return Integer;
   procedure getHeight (This : in out CustomTextAnimationFactory);

end org.allbinary.animation.text.CustomTextAnimationFactory_Package;


