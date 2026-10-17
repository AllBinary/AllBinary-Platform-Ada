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
--  with javax.microedition.lcdui.CommandListener_Package; use javax.microedition.lcdui.CommandListener_Package;
with org.allbinary.animation.FeaturedAnimationInterfaceFactoryInterfaceFactory_Package; use org.allbinary.animation.FeaturedAnimationInterfaceFactoryInterfaceFactory_Package;
with org.allbinary.game.configuration.GameConfigurationCentral_Package; use org.allbinary.game.configuration.GameConfigurationCentral_Package;
with org.allbinary.game.configuration.event.ChangedGameFeatureListener_Package; use org.allbinary.game.configuration.event.ChangedGameFeatureListener_Package;
with org.allbinary.game.configuration.feature.InputFeatureFactory_Package; use org.allbinary.game.configuration.feature.InputFeatureFactory_Package;
with org.allbinary.game.configuration.feature.MainFeatureFactory_Package; use org.allbinary.game.configuration.feature.MainFeatureFactory_Package;
with org.allbinary.game.input.PlatformInputMappingFactory_Package; use org.allbinary.game.input.PlatformInputMappingFactory_Package;
with org.allbinary.game.input.event.GameKeyEventFactory_Package; use org.allbinary.game.input.event.GameKeyEventFactory_Package;
with org.allbinary.game.resource.FeaturedResourceRelativeRelationshipFactory_Package; use org.allbinary.game.resource.FeaturedResourceRelativeRelationshipFactory_Package;
with org.allbinary.game.resource.ResourceInitialization_Package; use org.allbinary.game.resource.ResourceInitialization_Package;
with org.allbinary.game.resource.ResourceLoadingLevelFactory_Package; use org.allbinary.game.resource.ResourceLoadingLevelFactory_Package;
with org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package; use org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package;
with org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package; use org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package;
with org.allbinary.image.GameFeatureImageCacheFactory_Package; use org.allbinary.image.GameFeatureImageCacheFactory_Package;
with org.allbinary.input.motion.CompleteMotionGestureInputToGameMotionGestureInput_Package; use org.allbinary.input.motion.CompleteMotionGestureInputToGameMotionGestureInput_Package;
with org.allbinary.input.motion.button.BasicTouchInputFactory_Package; use org.allbinary.input.motion.button.BasicTouchInputFactory_Package;
with org.allbinary.input.motion.button.CancelTouchButtonInputFactory_Package; use org.allbinary.input.motion.button.CancelTouchButtonInputFactory_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.game.init.GameInitializationInterface_Package; use org.allbinary.game.init.GameInitializationInterface_Package;

package org.allbinary.game.init.BaseGameInitialization_Package is

   package FeaturedAnimationInterfaceFactoryInterfaceFactory_Package renames Standard.org.allbinary.animation.FeaturedAnimationInterfaceFactoryInterfaceFactory_Package;
   package GameConfigurationCentral_Package renames Standard.org.allbinary.game.configuration.GameConfigurationCentral_Package;
   package ChangedGameFeatureListener_Package renames Standard.org.allbinary.game.configuration.event.ChangedGameFeatureListener_Package;
   package InputFeatureFactory_Package renames Standard.org.allbinary.game.configuration.feature.InputFeatureFactory_Package;
   package MainFeatureFactory_Package renames Standard.org.allbinary.game.configuration.feature.MainFeatureFactory_Package;
   package PlatformInputMappingFactory_Package renames Standard.org.allbinary.game.input.PlatformInputMappingFactory_Package;
   package GameKeyEventFactory_Package renames Standard.org.allbinary.game.input.event.GameKeyEventFactory_Package;
   package FeaturedResourceRelativeRelationshipFactory_Package renames Standard.org.allbinary.game.resource.FeaturedResourceRelativeRelationshipFactory_Package;
   package ResourceInitialization_Package renames Standard.org.allbinary.game.resource.ResourceInitialization_Package;
   package ResourceLoadingLevelFactory_Package renames Standard.org.allbinary.game.resource.ResourceLoadingLevelFactory_Package;
   package ProgressCanvas_Package renames Standard.org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package;
   package ProgressCanvasFactory_Package renames Standard.org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package;
   package GameFeatureImageCacheFactory_Package renames Standard.org.allbinary.image.GameFeatureImageCacheFactory_Package;
   package CompleteMotionGestureInputToGameMotionGestureInput_Package renames Standard.org.allbinary.input.motion.CompleteMotionGestureInputToGameMotionGestureInput_Package;
   package BasicTouchInputFactory_Package renames Standard.org.allbinary.input.motion.button.BasicTouchInputFactory_Package;
   package CancelTouchButtonInputFactory_Package renames Standard.org.allbinary.input.motion.button.CancelTouchButtonInputFactory_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;

   type BaseGameInitialization is tagged;
   type BaseGameInitialization_Access is access all BaseGameInitialization'Class;
   type BaseGameInitialization_Access_Array is array (Natural range <>) of BaseGameInitialization_Access;
   type BaseGameInitialization_Access_Array_Access is access all BaseGameInitialization_Access_Array;

   type BaseGameInitialization is new GameInitializationInterface with record
      resourceInitializationArray : ResourceInitialization_Access_Array_Access;
      portion : Integer;
      initialized : Boolean;
      EARLY_RESOURCES : Integer;
      GAME_RESOURCES : Integer;
      EARLY_CHANGABLE_RESOURCES : Integer;
      GAME_CHANGABLE_RESOURCES : Integer;
      gameInitialized : Boolean;
      allLoaded : Boolean;
   end record;
   NULL_BASE_GAME_INITIALIZATION : BaseGameInitialization_Access;

   procedure Initialize (This : in out BaseGameInitialization'Class; resourceInitializationArray : ResourceInitialization_Access_Array_Access; portion : Integer);
   function Create (resourceInitializationArray : ResourceInitialization_Access_Array_Access; portion : Integer) return BaseGameInitialization_Access;
   procedure initKey (This : in out BaseGameInitialization; portion : Integer);
   procedure initKeyMapping (This : in out BaseGameInitialization; abeClientInformation : AbeClientInformationInterface_Access; portion : Integer);
   procedure init (This : in out BaseGameInitialization; abeClientInformation : AbeClientInformationInterface_Access; commandListener : CommandListener_Access; level : Integer);
   procedure resourceInitialization (This : in out BaseGameInitialization; level : Integer);
   function resourceAnimationChange (This : in out BaseGameInitialization) return Boolean;
   procedure clearResources (This : in out BaseGameInitialization);
   procedure setGameInitialized (This : in out BaseGameInitialization; gameInitialized : Boolean);
   function isGameInitialized (This : in out BaseGameInitialization) return Boolean;
   function getPortion (This : in out BaseGameInitialization) return Integer;
   procedure setInitialized (This : in out BaseGameInitialization; initialized : Boolean);
   function isInitialized (This : in out BaseGameInitialization) return Boolean;

end org.allbinary.game.init.BaseGameInitialization_Package;


