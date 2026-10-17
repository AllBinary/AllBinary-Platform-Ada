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
with org.allbinary.animation.resource.BaseResourceAnimationInterfaceFactoryInterfaceFactory_Package; use org.allbinary.animation.resource.BaseResourceAnimationInterfaceFactoryInterfaceFactory_Package;
with org.allbinary.game.configuration.feature.Features_Package; use org.allbinary.game.configuration.feature.Features_Package;
with org.allbinary.game.configuration.feature.MainFeatureFactory_Package; use org.allbinary.game.configuration.feature.MainFeatureFactory_Package;
with org.allbinary.game.layer.GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory_Package; use org.allbinary.game.layer.GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory_Package;
with org.allbinary.game.layer.LayerPlacementInterfaceBasicArrayListFactoryInterface_Package; use org.allbinary.game.layer.LayerPlacementInterfaceBasicArrayListFactoryInterface_Package;
with org.allbinary.game.resource.ResourceLoadingLevelFactory_Package; use org.allbinary.game.resource.ResourceLoadingLevelFactory_Package;
with org.allbinary.image.ImageCache_Package; use org.allbinary.image.ImageCache_Package;
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.game.layer.resources.OnDemandResourcesFactory_Package; use org.allbinary.game.layer.resources.OnDemandResourcesFactory_Package;
with org.allbinary.game.layer.resources.OnDemandResources_Package; use org.allbinary.game.layer.resources.OnDemandResources_Package;

package org.allbinary.game.layer.resources.OnDemandLoader_Package is

   package BaseResourceAnimationInterfaceFactoryInterfaceFactory_Package renames Standard.org.allbinary.animation.resource.BaseResourceAnimationInterfaceFactoryInterfaceFactory_Package;
   package Features_Package renames Standard.org.allbinary.game.configuration.feature.Features_Package;
   package MainFeatureFactory_Package renames Standard.org.allbinary.game.configuration.feature.MainFeatureFactory_Package;
   package GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory_Package renames Standard.org.allbinary.game.layer.GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory_Package;
   package LayerPlacementInterfaceBasicArrayListFactoryInterface_Package renames Standard.org.allbinary.game.layer.LayerPlacementInterfaceBasicArrayListFactoryInterface_Package;
   package ResourceLoadingLevelFactory_Package renames Standard.org.allbinary.game.resource.ResourceLoadingLevelFactory_Package;
   package ImageCache_Package renames Standard.org.allbinary.image.ImageCache_Package;
   package PreLogUtil_Package renames Standard.org.allbinary.logic.communication.log.PreLogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type OnDemandLoader is tagged;
   type OnDemandLoader_Access is access all OnDemandLoader'Class;
   type OnDemandLoader_Access_Array is array (Natural range <>) of OnDemandLoader_Access;
   type OnDemandLoader_Access_Array_Access is access all OnDemandLoader_Access_Array;

   type OnDemandLoader is new Java_Object with record
      onDemandResourcesFactory : OnDemandResourcesFactory_Access;
      gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory : GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory_Access;
      resourceAnimationInterfaceFactoryInterfaceFactory : BaseResourceAnimationInterfaceFactoryInterfaceFactory_Access;
   end record;

   procedure Initialize (This : in out OnDemandLoader'Class; onDemandResourcesFactory_Param : access OnDemandResourcesFactory_Package.OnDemandResourcesFactory'Class; gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory_Param : access GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory_Package.GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory'Class; resourceAnimationInterfaceFactoryInterfaceFactory_Param : access BaseResourceAnimationInterfaceFactoryInterfaceFactory_Package.BaseResourceAnimationInterfaceFactoryInterfaceFactory'Class);
   function Create (onDemandResourcesFactory_Param : access OnDemandResourcesFactory_Package.OnDemandResourcesFactory'Class; gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory_Param : access GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory_Package.GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory'Class; resourceAnimationInterfaceFactoryInterfaceFactory_Param : access BaseResourceAnimationInterfaceFactoryInterfaceFactory_Package.BaseResourceAnimationInterfaceFactoryInterfaceFactory'Class) return OnDemandLoader_Access;
   procedure init (This : in out OnDemandLoader; imageCache_Param : access ImageCache_Package.ImageCache'Class; level : Integer; loadingString : Unbounded_String);
   procedure initAll (This : in out OnDemandLoader; imageCache_Param : access ImageCache_Package.ImageCache'Class; loadingString : Unbounded_String);
   procedure initLevel (This : in out OnDemandLoader; layerPlacementInterfaceBasicArrayListFactoryInterface_Param : access LayerPlacementInterfaceBasicArrayListFactoryInterface_Package.LayerPlacementInterfaceBasicArrayListFactoryInterface'Class; imageCache_Param : access ImageCache_Package.ImageCache'Class; level : Integer; loadingString : Unbounded_String);

end org.allbinary.game.layer.resources.OnDemandLoader_Package;


