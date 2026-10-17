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
--  with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
with org.allbinary.animation.AnimationBehaviorFactory_Package; use org.allbinary.animation.AnimationBehaviorFactory_Package;
with org.allbinary.animation.NullAnimationFactory_Package; use org.allbinary.animation.NullAnimationFactory_Package;
with org.allbinary.animation.image.sprite.OneRowSpriteIndexedAnimationFactory_Package; use org.allbinary.animation.image.sprite.OneRowSpriteIndexedAnimationFactory_Package;
with org.allbinary.animation.resource.BaseResourceAnimationInterfaceFactoryInterfaceFactory_Package; use org.allbinary.animation.resource.BaseResourceAnimationInterfaceFactoryInterfaceFactory_Package;
with org.allbinary.game.configuration.feature.Features_Package; use org.allbinary.game.configuration.feature.Features_Package;
with org.allbinary.game.resource.ResourceLoadingLevelFactory_Package; use org.allbinary.game.resource.ResourceLoadingLevelFactory_Package;
with org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package; use org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package;
with org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package; use org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package;
with org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package; use org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package;
with org.allbinary.image.ImageCache_Package; use org.allbinary.image.ImageCache_Package;
with org.allbinary.image.ImageCacheFactory_Package; use org.allbinary.image.ImageCacheFactory_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.system.os.OperatingSystemFactory_Package; use org.allbinary.logic.system.os.OperatingSystemFactory_Package;
with org.allbinary.media.image.ImageCompleteUtil_Package; use org.allbinary.media.image.ImageCompleteUtil_Package;
with org.allbinary.input.motion.button.TouchButtonBlankResource_Package; use org.allbinary.input.motion.button.TouchButtonBlankResource_Package;
with org.allbinary.input.motion.button.TouchButtonResource_Package; use org.allbinary.input.motion.button.TouchButtonResource_Package;
with org.allbinary.input.motion.button.TouchButtonGenericActionResource_Package; use org.allbinary.input.motion.button.TouchButtonGenericActionResource_Package;
with org.allbinary.input.motion.button.TouchButtonStartResource_Package; use org.allbinary.input.motion.button.TouchButtonStartResource_Package;
with org.allbinary.input.motion.button.TouchButtonUpResource_Package; use org.allbinary.input.motion.button.TouchButtonUpResource_Package;
with org.allbinary.input.motion.button.TouchButtonDownResource_Package; use org.allbinary.input.motion.button.TouchButtonDownResource_Package;
with org.allbinary.input.motion.button.TouchButtonTurnLeftResource_Package; use org.allbinary.input.motion.button.TouchButtonTurnLeftResource_Package;
with org.allbinary.input.motion.button.TouchButtonTurnRightResource_Package; use org.allbinary.input.motion.button.TouchButtonTurnRightResource_Package;
with org.allbinary.input.motion.button.TouchButtonStrafeLeftResource_Package; use org.allbinary.input.motion.button.TouchButtonStrafeLeftResource_Package;
with org.allbinary.input.motion.button.TouchButtonStrafeRightResource_Package; use org.allbinary.input.motion.button.TouchButtonStrafeRightResource_Package;

package org.allbinary.input.motion.button.TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory_Package is

   package AnimationBehaviorFactory_Package renames Standard.org.allbinary.animation.AnimationBehaviorFactory_Package;
   package NullAnimationFactory_Package renames Standard.org.allbinary.animation.NullAnimationFactory_Package;
   package OneRowSpriteIndexedAnimationFactory_Package renames Standard.org.allbinary.animation.image.sprite.OneRowSpriteIndexedAnimationFactory_Package;
   package BaseResourceAnimationInterfaceFactoryInterfaceFactory_Package renames Standard.org.allbinary.animation.resource.BaseResourceAnimationInterfaceFactoryInterfaceFactory_Package;
   package Features_Package renames Standard.org.allbinary.game.configuration.feature.Features_Package;
   package ResourceLoadingLevelFactory_Package renames Standard.org.allbinary.game.resource.ResourceLoadingLevelFactory_Package;
   package ProgressCanvas_Package renames Standard.org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package;
   package ProgressCanvasFactory_Package renames Standard.org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package;
   package OpenGLFeatureFactory_Package renames Standard.org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package;
   package ImageCache_Package renames Standard.org.allbinary.image.ImageCache_Package;
   package ImageCacheFactory_Package renames Standard.org.allbinary.image.ImageCacheFactory_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package OperatingSystemFactory_Package renames Standard.org.allbinary.logic.system.os.OperatingSystemFactory_Package;
   package ImageCompleteUtil_Package renames Standard.org.allbinary.media.image.ImageCompleteUtil_Package;

   type TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory is tagged;
   type TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory_Access is access all TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory'Class;
   type TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory_Access_Array is array (Natural range <>) of TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory_Access;
   type TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory_Access_Array_Access is access all TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory_Access_Array;

   type TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory is new BaseResourceAnimationInterfaceFactoryInterfaceFactory with null record;

   procedure Initialize (This : in out TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory'Class; name : Unbounded_String);
   function Create (name : Unbounded_String) return TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory_Access;
   function createFactory return TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory_Access;
   procedure init (This : in out TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory; level : Integer);
   procedure initImageCache (This : in out TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory; imageCache_Param : access ImageCache_Package.ImageCache'Class; level : Integer);
   function isLoadingLevel (This : in out TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory; level : Integer) return Boolean;
   procedure isLoadingLevel (This : in out TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory; level : Integer);
   function isFeature (This : in out TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory) return Boolean;

end org.allbinary.input.motion.button.TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory_Package;


