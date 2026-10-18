-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2006 AllBinary 
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
with org.allbinary.game.input.form.RTSFormInput_Package; use org.allbinary.game.input.form.RTSFormInput_Package;
with org.allbinary.game.layer.AdvancedRTSGameLayer_Package; use org.allbinary.game.layer.AdvancedRTSGameLayer_Package;
with org.allbinary.game.layer.AdvancedRTSProperties_Package; use org.allbinary.game.layer.AdvancedRTSProperties_Package;
with org.allbinary.game.layer.RTSPlayerLayerInterface_Package; use org.allbinary.game.layer.RTSPlayerLayerInterface_Package;
with org.allbinary.game.layer.SelectionHudPaintable_Package; use org.allbinary.game.layer.SelectionHudPaintable_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.animation.AnimationInterfaceFactoryInterface_Package; use org.allbinary.animation.AnimationInterfaceFactoryInterface_Package;
with org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package; use org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package;
with org.allbinary.animation.RotationAnimationInterfaceCompositeInterface_Package; use org.allbinary.animation.RotationAnimationInterfaceCompositeInterface_Package;
with org.allbinary.game.combat.damage.DamageFloaters_Package; use org.allbinary.game.combat.damage.DamageFloaters_Package;
with org.allbinary.game.health.Health_Package; use org.allbinary.game.health.Health_Package;
with org.allbinary.game.identification.Group_Package; use org.allbinary.game.identification.Group_Package;
with org.allbinary.game.tracking.TrackingEvent_Package; use org.allbinary.game.tracking.TrackingEvent_Package;
with org.allbinary.game.tracking.TrackingEventListenerInterface_Package; use org.allbinary.game.tracking.TrackingEventListenerInterface_Package;
with org.allbinary.graphics.Rectangle_Package; use org.allbinary.graphics.Rectangle_Package;
with org.allbinary.graphics.paint.Paintable_Package; use org.allbinary.graphics.paint.Paintable_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package; use org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.time.TimeDelayHelper_Package; use org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.game.multiplayer.layer.RemoteInfo_Package; use org.allbinary.game.multiplayer.layer.RemoteInfo_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;
with org.allbinary.game.layer.building.BuildingPropertiesFactory_Package; use org.allbinary.game.layer.building.BuildingPropertiesFactory_Package;

package org.allbinary.game.layer.building.BuildingLayer_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package RTSFormInput_Package renames Standard.org.allbinary.game.input.form.RTSFormInput_Package;
   package AdvancedRTSGameLayer_Package renames Standard.org.allbinary.game.layer.AdvancedRTSGameLayer_Package;
   package AdvancedRTSProperties_Package renames Standard.org.allbinary.game.layer.AdvancedRTSProperties_Package;
   package RTSPlayerLayerInterface_Package renames Standard.org.allbinary.game.layer.RTSPlayerLayerInterface_Package;
   package SelectionHudPaintable_Package renames Standard.org.allbinary.game.layer.SelectionHudPaintable_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package AnimationInterfaceFactoryInterface_Package renames Standard.org.allbinary.animation.AnimationInterfaceFactoryInterface_Package;
   package ProceduralAnimationInterfaceFactoryInterface_Package renames Standard.org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package;
   package RotationAnimationInterfaceCompositeInterface_Package renames Standard.org.allbinary.animation.RotationAnimationInterfaceCompositeInterface_Package;
   package DamageFloaters_Package renames Standard.org.allbinary.game.combat.damage.DamageFloaters_Package;
   package Health_Package renames Standard.org.allbinary.game.health.Health_Package;
   package Group_Package renames Standard.org.allbinary.game.identification.Group_Package;
   package TrackingEvent_Package renames Standard.org.allbinary.game.tracking.TrackingEvent_Package;
   package TrackingEventListenerInterface_Package renames Standard.org.allbinary.game.tracking.TrackingEventListenerInterface_Package;
   package Rectangle_Package renames Standard.org.allbinary.graphics.Rectangle_Package;
   package Paintable_Package renames Standard.org.allbinary.graphics.paint.Paintable_Package;
   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;
   package GeographicMapCellPosition_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
   package TimeDelayHelper_Package renames Standard.org.allbinary.time.TimeDelayHelper_Package;
   package RemoteInfo_Package renames Standard.org.allbinary.game.multiplayer.layer.RemoteInfo_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;

   type BuildingLayer is tagged;
   type BuildingLayer_Access is access all BuildingLayer'Class;
   type BuildingLayer_Access_Array is array (Natural range <>) of BuildingLayer_Access;
   type BuildingLayer_Access_Array_Access is access all BuildingLayer_Access_Array;
   type BuildingLayer_Access_Array_Access_Array is array (Natural range <>) of BuildingLayer_Access_Array_Access;
   type BuildingLayer_Access_Array_Access_Array_Access is access all BuildingLayer_Access_Array_Access_Array;

   type BuildingLayer is new AdvancedRTSGameLayer and RotationAnimationInterfaceCompositeInterface and TrackingEventListenerInterface with record
      buildingLevelCost : Integer;
      productivity : Integer;
      efficiency : Integer;
      efficiencyPerLevel : Integer;
      trackingEvent : TrackingEvent_Access;
      damageFloaters : DamageFloaters_Access;
      damageFloatersPaintableInterface : Paintable_Access;
      healthBar : Paintable_Access;
      pathsHashtable : ABHashtable_Access;
      local : Boolean;
      timeDelayHelper : TimeDelayHelper_Access;
   end record;

   procedure Initialize (This : in out BuildingLayer'Class; remoteInfo_Param : access RemoteInfo_Package.RemoteInfo'Class; buildingPropertiesFactory_Param : access BuildingPropertiesFactory_Package.BuildingPropertiesFactory'Class; advancedRTSProperties_Param : access AdvancedRTSProperties_Package.AdvancedRTSProperties'Class; groupInterface : Group_Access_Array_Access; rootName : Unbounded_String; name : Unbounded_String; healthInterface_Param : access Health_Package.Health'Class; rtsFormInput_Param : access RTSFormInput_Package.RTSFormInput'Class; animationInterfaceFactoryInterface_Param : access AnimationInterfaceFactoryInterface_Package.AnimationInterfaceFactoryInterface'Class; emptyAnimationInterfaceFactoryInterface_Param : access AnimationInterfaceFactoryInterface_Package.AnimationInterfaceFactoryInterface'Class; baseAnimationInterfaceFactoryInterface_Param : access AnimationInterfaceFactoryInterface_Package.AnimationInterfaceFactoryInterface'Class; buildAnimationInterfaceFactoryInterface_Param : access AnimationInterfaceFactoryInterface_Package.AnimationInterfaceFactoryInterface'Class; verticleBuildAnimationInterfaceFactoryInterface_Param : access AnimationInterfaceFactoryInterface_Package.AnimationInterfaceFactoryInterface'Class; proceduralAnimationInterfaceFactoryInterface_Param : access ProceduralAnimationInterfaceFactoryInterface_Package.ProceduralAnimationInterfaceFactoryInterface'Class; rectangle_Param : access Rectangle_Package.Rectangle'Class; x : Integer; y : Integer);
   function Create (remoteInfo_Param : access RemoteInfo_Package.RemoteInfo'Class; buildingPropertiesFactory_Param : access BuildingPropertiesFactory_Package.BuildingPropertiesFactory'Class; advancedRTSProperties_Param : access AdvancedRTSProperties_Package.AdvancedRTSProperties'Class; groupInterface : Group_Access_Array_Access; rootName : Unbounded_String; name : Unbounded_String; healthInterface_Param : access Health_Package.Health'Class; rtsFormInput_Param : access RTSFormInput_Package.RTSFormInput'Class; animationInterfaceFactoryInterface_Param : access AnimationInterfaceFactoryInterface_Package.AnimationInterfaceFactoryInterface'Class; emptyAnimationInterfaceFactoryInterface_Param : access AnimationInterfaceFactoryInterface_Package.AnimationInterfaceFactoryInterface'Class; baseAnimationInterfaceFactoryInterface_Param : access AnimationInterfaceFactoryInterface_Package.AnimationInterfaceFactoryInterface'Class; buildAnimationInterfaceFactoryInterface_Param : access AnimationInterfaceFactoryInterface_Package.AnimationInterfaceFactoryInterface'Class; verticleBuildAnimationInterfaceFactoryInterface_Param : access AnimationInterfaceFactoryInterface_Package.AnimationInterfaceFactoryInterface'Class; proceduralAnimationInterfaceFactoryInterface_Param : access ProceduralAnimationInterfaceFactoryInterface_Package.ProceduralAnimationInterfaceFactoryInterface'Class; rectangle_Param : access Rectangle_Package.Rectangle'Class; x : Integer; y : Integer) return BuildingLayer_Access;
   function createSimulated return BuildingLayer_Access;
   procedure initVisibility (This : in out BuildingLayer; rtsPlayerLayerInterface_Param : access RTSPlayerLayerInterface_Package.RTSPlayerLayerInterface'Class);
   procedure construct (This : in out BuildingLayer; rtsPlayerLayerInterface_Param : access RTSPlayerLayerInterface_Package.RTSPlayerLayerInterface'Class);
   procedure onMovement (This : in out BuildingLayer; trackingEvent_Param : access TrackingEvent_Package.TrackingEvent'Class);
   procedure processBuiltTick (This : in out BuildingLayer; allBinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class);
   function calculateEfficiency (This : in out BuildingLayer) return Integer;
   function getCost (This : in out BuildingLayer) return Integer;
   function getDowngradeCost (This : in out BuildingLayer) return Integer;
   function getUpgradeCost (This : in out BuildingLayer) return Integer;
   procedure downgrade (This : in out BuildingLayer);
   procedure upgrade (This : in out BuildingLayer);
   function getBuildingLevelCost (This : in out BuildingLayer) return Integer;
   procedure setBuildingLevelCost (This : in out BuildingLayer; buildingLevelCost : Integer);
   function getProductivity (This : in out BuildingLayer) return Integer;
   procedure setProductivity (This : in out BuildingLayer; productivity : Integer);
   function getEfficiency (This : in out BuildingLayer) return Integer;
   procedure setEfficiency (This : in out BuildingLayer; efficiency : Integer);
   procedure generateMoveOutOfBuildAreaPaths (This : in out BuildingLayer);
   function getMoveOutOfBuildAreaPath (This : in out BuildingLayer; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) return BasicArrayList_Access;
   procedure getMoveOutOfBuildAreaPath (This : in out BuildingLayer; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class);
   function getEndGeographicMapCellPositionList (This : in out BuildingLayer) return BasicArrayList_Access;
   function shouldHandleStartSameAsEnd (This : in out BuildingLayer) return Boolean;
   procedure paint (This : in out BuildingLayer; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure damage (This : in out BuildingLayer; damage : Integer; damageType : Integer);
   function getDamage (This : in out BuildingLayer; damageType : Integer) return Integer;
   procedure getDamage (This : in out BuildingLayer; damageType : Integer);
   procedure addVisibility (This : in out BuildingLayer);
   procedure removeVisibility (This : in out BuildingLayer);
   procedure setDestroyed (This : in out BuildingLayer; destroyed : Boolean);
   function createHudPaintable (This : in out BuildingLayer) return SelectionHudPaintable_Access;
   function getHudPaintable (This : in out BuildingLayer) return SelectionHudPaintable_Access;
   function getType (This : in out BuildingLayer) return Integer;
   function getStaticType return Integer;

end org.allbinary.game.layer.building.BuildingLayer_Package;


