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
--  with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.ag.weapon.media.audio.ExplosionBasicSound_Package; use org.allbinary.ag.weapon.media.audio.ExplosionBasicSound_Package;
with org.allbinary.animation.NullAnimationFactory_Package; use org.allbinary.animation.NullAnimationFactory_Package;
with org.allbinary.animation.NullIndexedAnimationFactory_Package; use org.allbinary.animation.NullIndexedAnimationFactory_Package;
with org.allbinary.game.identification.GroupFactory_Package; use org.allbinary.game.identification.GroupFactory_Package;
with org.allbinary.game.input.form.NullRTSFormInputFactory_Package; use org.allbinary.game.input.form.NullRTSFormInputFactory_Package;
with org.allbinary.game.input.form.RTSFormInput_Package; use org.allbinary.game.input.form.RTSFormInput_Package;
with org.allbinary.game.input.form.VisibleCellPositionsSingleton_Package; use org.allbinary.game.input.form.VisibleCellPositionsSingleton_Package;
with org.allbinary.game.layer.AdvancedRTSGameLayer_Package; use org.allbinary.game.layer.AdvancedRTSGameLayer_Package;
with org.allbinary.game.layer.AdvancedRTSPlayerLayerInterface_Package; use org.allbinary.game.layer.AdvancedRTSPlayerLayerInterface_Package;
with org.allbinary.game.layer.AdvancedRTSProperties_Package; use org.allbinary.game.layer.AdvancedRTSProperties_Package;
with org.allbinary.game.layer.CollidableRTSBehavior_Package; use org.allbinary.game.layer.CollidableRTSBehavior_Package;
with org.allbinary.game.layer.RTSLayerUtil_Package; use org.allbinary.game.layer.RTSLayerUtil_Package;
with org.allbinary.game.layer.RTSPlayerLayerInterface_Package; use org.allbinary.game.layer.RTSPlayerLayerInterface_Package;
with org.allbinary.game.layer.SelectionHudPaintable_Package; use org.allbinary.game.layer.SelectionHudPaintable_Package;
with org.allbinary.game.layer.waypoint.Waypoint_Package; use org.allbinary.game.layer.waypoint.Waypoint_Package;
with org.allbinary.game.view.TileLayerPositionIntoViewPosition_Package; use org.allbinary.game.view.TileLayerPositionIntoViewPosition_Package;
with org.allbinary.graphics.RectangleFactory_Package; use org.allbinary.graphics.RectangleFactory_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.animation.AnimationInterfaceFactoryInterface_Package; use org.allbinary.animation.AnimationInterfaceFactoryInterface_Package;
with org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package; use org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package;
with org.allbinary.animation.RotationAnimationInterfaceCompositeInterface_Package; use org.allbinary.animation.RotationAnimationInterfaceCompositeInterface_Package;
with org.allbinary.direction.Direction_Package; use org.allbinary.direction.Direction_Package;
with org.allbinary.direction.DirectionFactory_Package; use org.allbinary.direction.DirectionFactory_Package;
with org.allbinary.game.combat.damage.DamageFloaters_Package; use org.allbinary.game.combat.damage.DamageFloaters_Package;
with org.allbinary.game.health.Health_Package; use org.allbinary.game.health.Health_Package;
with org.allbinary.game.identification.Group_Package; use org.allbinary.game.identification.Group_Package;
with org.allbinary.game.layer.GeographicMapCellPositionAreaBase_Package; use org.allbinary.game.layer.GeographicMapCellPositionAreaBase_Package;
with org.allbinary.game.layer.NullPathFindingLayer_Package; use org.allbinary.game.layer.NullPathFindingLayer_Package;
with org.allbinary.game.tracking.TrackingEvent_Package; use org.allbinary.game.tracking.TrackingEvent_Package;
with org.allbinary.game.tracking.TrackingEventHandler_Package; use org.allbinary.game.tracking.TrackingEventHandler_Package;
with org.allbinary.game.tracking.TrackingEventListenerInterface_Package; use org.allbinary.game.tracking.TrackingEventListenerInterface_Package;
with org.allbinary.graphics.Rectangle_Package; use org.allbinary.graphics.Rectangle_Package;
with org.allbinary.graphics.paint.Paintable_Package; use org.allbinary.graphics.paint.Paintable_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package; use org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.media.audio.SecondaryPlayerQueueFactory_Package; use org.allbinary.media.audio.SecondaryPlayerQueueFactory_Package;
with org.allbinary.media.audio.SelectSound_Package; use org.allbinary.media.audio.SelectSound_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapDirectionUtil_Package; use org.allbinary.media.graphics.geography.map.GeographicMapDirectionUtil_Package;
with org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory_Package; use org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory_Package;
with org.allbinary.time.TimeDelayHelper_Package; use org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.util.BasicArrayListS_Package; use org.allbinary.util.BasicArrayListS_Package;
with org.allbinary.game.multiplayer.layer.RemoteInfo_Package; use org.allbinary.game.multiplayer.layer.RemoteInfo_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;

package org.allbinary.game.layer.building.BuildingLayer_Package is

   package ExplosionBasicSound_Package renames Standard.org.allbinary.ag.weapon.media.audio.ExplosionBasicSound_Package;
   package NullAnimationFactory_Package renames Standard.org.allbinary.animation.NullAnimationFactory_Package;
   package NullIndexedAnimationFactory_Package renames Standard.org.allbinary.animation.NullIndexedAnimationFactory_Package;
   package GroupFactory_Package renames Standard.org.allbinary.game.identification.GroupFactory_Package;
   package NullRTSFormInputFactory_Package renames Standard.org.allbinary.game.input.form.NullRTSFormInputFactory_Package;
   package RTSFormInput_Package renames Standard.org.allbinary.game.input.form.RTSFormInput_Package;
   package VisibleCellPositionsSingleton_Package renames Standard.org.allbinary.game.input.form.VisibleCellPositionsSingleton_Package;
   package AdvancedRTSGameLayer_Package renames Standard.org.allbinary.game.layer.AdvancedRTSGameLayer_Package;
   package AdvancedRTSPlayerLayerInterface_Package renames Standard.org.allbinary.game.layer.AdvancedRTSPlayerLayerInterface_Package;
   package AdvancedRTSProperties_Package renames Standard.org.allbinary.game.layer.AdvancedRTSProperties_Package;
   package CollidableRTSBehavior_Package renames Standard.org.allbinary.game.layer.CollidableRTSBehavior_Package;
   package RTSLayerUtil_Package renames Standard.org.allbinary.game.layer.RTSLayerUtil_Package;
   package RTSPlayerLayerInterface_Package renames Standard.org.allbinary.game.layer.RTSPlayerLayerInterface_Package;
   package SelectionHudPaintable_Package renames Standard.org.allbinary.game.layer.SelectionHudPaintable_Package;
   package Waypoint_Package renames Standard.org.allbinary.game.layer.waypoint.Waypoint_Package;
   package TileLayerPositionIntoViewPosition_Package renames Standard.org.allbinary.game.view.TileLayerPositionIntoViewPosition_Package;
   package RectangleFactory_Package renames Standard.org.allbinary.graphics.RectangleFactory_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package AnimationInterfaceFactoryInterface_Package renames Standard.org.allbinary.animation.AnimationInterfaceFactoryInterface_Package;
   package ProceduralAnimationInterfaceFactoryInterface_Package renames Standard.org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package;
   package RotationAnimationInterfaceCompositeInterface_Package renames Standard.org.allbinary.animation.RotationAnimationInterfaceCompositeInterface_Package;
   package Direction_Package renames Standard.org.allbinary.direction.Direction_Package;
   package DirectionFactory_Package renames Standard.org.allbinary.direction.DirectionFactory_Package;
   package DamageFloaters_Package renames Standard.org.allbinary.game.combat.damage.DamageFloaters_Package;
   package Health_Package renames Standard.org.allbinary.game.health.Health_Package;
   package Group_Package renames Standard.org.allbinary.game.identification.Group_Package;
   package GeographicMapCellPositionAreaBase_Package renames Standard.org.allbinary.game.layer.GeographicMapCellPositionAreaBase_Package;
   package NullPathFindingLayer_Package renames Standard.org.allbinary.game.layer.NullPathFindingLayer_Package;
   package TrackingEvent_Package renames Standard.org.allbinary.game.tracking.TrackingEvent_Package;
   package TrackingEventHandler_Package renames Standard.org.allbinary.game.tracking.TrackingEventHandler_Package;
   package TrackingEventListenerInterface_Package renames Standard.org.allbinary.game.tracking.TrackingEventListenerInterface_Package;
   package Rectangle_Package renames Standard.org.allbinary.graphics.Rectangle_Package;
   package Paintable_Package renames Standard.org.allbinary.graphics.paint.Paintable_Package;
   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;
   package SecondaryPlayerQueueFactory_Package renames Standard.org.allbinary.media.audio.SecondaryPlayerQueueFactory_Package;
   package SelectSound_Package renames Standard.org.allbinary.media.audio.SelectSound_Package;
   package GeographicMapCellPosition_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
   package GeographicMapDirectionUtil_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapDirectionUtil_Package;
   package DropCellPositionHistory_Package renames Standard.org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory_Package;
   package TimeDelayHelper_Package renames Standard.org.allbinary.time.TimeDelayHelper_Package;
   package BasicArrayListS_Package renames Standard.org.allbinary.util.BasicArrayListS_Package;
   package RemoteInfo_Package renames Standard.org.allbinary.game.multiplayer.layer.RemoteInfo_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;

   type BuildingLayer is tagged;
   type BuildingLayer_Access is access all BuildingLayer'Class;
   type BuildingLayer_Access_Array is array (Natural range <>) of BuildingLayer_Access;
   type BuildingLayer_Access_Array_Access is access all BuildingLayer_Access_Array;

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

   procedure Initialize (This : in out BuildingLayer'Class; remoteInfo : RemoteInfo_Access; buildingPropertiesFactory : BuildingPropertiesFactory_Access; advancedRTSProperties : AdvancedRTSProperties_Access; groupInterface : Group_Access_Array_Access; rootName : Unbounded_String; name : Unbounded_String; healthInterface : Health_Access; rtsFormInput : RTSFormInput_Access; animationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface_Access; emptyAnimationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface_Access; baseAnimationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface_Access; buildAnimationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface_Access; verticleBuildAnimationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface_Access; proceduralAnimationInterfaceFactoryInterface : ProceduralAnimationInterfaceFactoryInterface_Access; rectangle : Rectangle_Access; x : Integer; y : Integer);
   function Create (remoteInfo : RemoteInfo_Access; buildingPropertiesFactory : BuildingPropertiesFactory_Access; advancedRTSProperties : AdvancedRTSProperties_Access; groupInterface : Group_Access_Array_Access; rootName : Unbounded_String; name : Unbounded_String; healthInterface : Health_Access; rtsFormInput : RTSFormInput_Access; animationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface_Access; emptyAnimationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface_Access; baseAnimationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface_Access; buildAnimationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface_Access; verticleBuildAnimationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface_Access; proceduralAnimationInterfaceFactoryInterface : ProceduralAnimationInterfaceFactoryInterface_Access; rectangle : Rectangle_Access; x : Integer; y : Integer) return BuildingLayer_Access;
   function createSimulated return BuildingLayer_Access;
   procedure createSimulated;
   procedure initVisibility (This : in out BuildingLayer; rtsPlayerLayerInterface : RTSPlayerLayerInterface_Access);
   procedure construct (This : in out BuildingLayer; rtsPlayerLayerInterface : RTSPlayerLayerInterface_Access);
   procedure onMovement (This : in out BuildingLayer; trackingEvent : TrackingEvent_Access);
   procedure processBuiltTick (This : in out BuildingLayer; allBinaryLayerManager : AllBinaryLayerManager_Access);
   function calculateEfficiency (This : in out BuildingLayer) return Integer;
   procedure calculateEfficiency (This : in out BuildingLayer);
   function getCost (This : in out BuildingLayer) return Integer;
   procedure getCost (This : in out BuildingLayer);
   function getDowngradeCost (This : in out BuildingLayer) return Integer;
   procedure getDowngradeCost (This : in out BuildingLayer);
   function getUpgradeCost (This : in out BuildingLayer) return Integer;
   procedure getUpgradeCost (This : in out BuildingLayer);
   procedure downgrade (This : in out BuildingLayer);
   procedure upgrade (This : in out BuildingLayer);
   function getBuildingLevelCost (This : in out BuildingLayer) return Integer;
   procedure getBuildingLevelCost (This : in out BuildingLayer);
   procedure setBuildingLevelCost (This : in out BuildingLayer; buildingLevelCost : Integer);
   function getProductivity (This : in out BuildingLayer) return Integer;
   procedure getProductivity (This : in out BuildingLayer);
   procedure setProductivity (This : in out BuildingLayer; productivity : Integer);
   function getEfficiency (This : in out BuildingLayer) return Integer;
   procedure getEfficiency (This : in out BuildingLayer);
   procedure setEfficiency (This : in out BuildingLayer; efficiency : Integer);
   procedure generateMoveOutOfBuildAreaPaths (This : in out BuildingLayer);
   function getMoveOutOfBuildAreaPath (This : in out BuildingLayer; geographicMapCellPosition : GeographicMapCellPosition_Access) return BasicArrayList_Access;
   procedure getMoveOutOfBuildAreaPath (This : in out BuildingLayer; geographicMapCellPosition : GeographicMapCellPosition_Access);
   function getEndGeographicMapCellPositionList (This : in out BuildingLayer) return BasicArrayList_Access;
   procedure getEndGeographicMapCellPositionList (This : in out BuildingLayer);
   function shouldHandleStartSameAsEnd (This : in out BuildingLayer) return Boolean;
   procedure shouldHandleStartSameAsEnd (This : in out BuildingLayer);
   procedure paint (This : in out BuildingLayer; graphics : Graphics_Access);
   procedure damage (This : in out BuildingLayer; damage : Integer; damageType : Integer);
   function getDamage (This : in out BuildingLayer; damageType : Integer) return Integer;
   procedure getDamage (This : in out BuildingLayer; damageType : Integer);
   procedure addVisibility (This : in out BuildingLayer);
   procedure removeVisibility (This : in out BuildingLayer);
   procedure setDestroyed (This : in out BuildingLayer; destroyed : Boolean);
   function createHudPaintable (This : in out BuildingLayer) return SelectionHudPaintable_Access;
   procedure createHudPaintable (This : in out BuildingLayer);
   function getHudPaintable (This : in out BuildingLayer) return SelectionHudPaintable_Access;
   procedure getHudPaintable (This : in out BuildingLayer);
   function getType (This : in out BuildingLayer) return Integer;
   procedure getType (This : in out BuildingLayer);
   function getStaticType return Integer;
   procedure getStaticType;

end org.allbinary.game.layer.building.BuildingLayer_Package;


