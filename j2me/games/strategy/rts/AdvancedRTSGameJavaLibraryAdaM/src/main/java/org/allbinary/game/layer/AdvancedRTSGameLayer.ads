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
--  with javax.microedition.lcdui.Canvas_Package; use javax.microedition.lcdui.Canvas_Package;
with org.allbinary.animation.AnimationInterfaceFactoryInterface_Package; use org.allbinary.animation.AnimationInterfaceFactoryInterface_Package;
with org.allbinary.animation.NullAnimationFactory_Package; use org.allbinary.animation.NullAnimationFactory_Package;
with org.allbinary.animation.NullIndexedAnimationFactory_Package; use org.allbinary.animation.NullIndexedAnimationFactory_Package;
with org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package; use org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package;
with org.allbinary.animation.transition.shake.ShakeAnimationListener_Package; use org.allbinary.animation.transition.shake.ShakeAnimationListener_Package;
with org.allbinary.direction.Direction_Package; use org.allbinary.direction.Direction_Package;
with org.allbinary.direction.DirectionFactory_Package; use org.allbinary.direction.DirectionFactory_Package;
with org.allbinary.game.GameTypeFactory_Package; use org.allbinary.game.GameTypeFactory_Package;
with org.allbinary.game.combat.destroy.event.DestroyedEvent_Package; use org.allbinary.game.combat.destroy.event.DestroyedEvent_Package;
with org.allbinary.game.combat.destroy.event.DestroyedEventHandler_Package; use org.allbinary.game.combat.destroy.event.DestroyedEventHandler_Package;
with org.allbinary.game.combat.destroy.event.DestroyedEventListenerInterface_Package; use org.allbinary.game.combat.destroy.event.DestroyedEventListenerInterface_Package;
with org.allbinary.game.health.Health_Package; use org.allbinary.game.health.Health_Package;
with org.allbinary.game.identification.Group_Package; use org.allbinary.game.identification.Group_Package;
with org.allbinary.game.identification.GroupFactory_Package; use org.allbinary.game.identification.GroupFactory_Package;
with org.allbinary.game.input.event.GameKeyEventFactory_Package; use org.allbinary.game.input.event.GameKeyEventFactory_Package;
with org.allbinary.game.input.form.NullRTSFormInputFactory_Package; use org.allbinary.game.input.form.NullRTSFormInputFactory_Package;
with org.allbinary.game.input.form.RTSFormInput_Package; use org.allbinary.game.input.form.RTSFormInput_Package;
with org.allbinary.game.layer.building.event.BuildingEventHandler_Package; use org.allbinary.game.layer.building.event.BuildingEventHandler_Package;
with org.allbinary.game.layer.unit.UnitLayer_Package; use org.allbinary.game.layer.unit.UnitLayer_Package;
with org.allbinary.game.layer.waypoint.Waypoint2LogHelper_Package; use org.allbinary.game.layer.waypoint.Waypoint2LogHelper_Package;
with org.allbinary.game.layer.waypoint.Waypoint2SelectedLogHelper_Package; use org.allbinary.game.layer.waypoint.Waypoint2SelectedLogHelper_Package;
with org.allbinary.game.layer.waypoint.WaypointBase_Package; use org.allbinary.game.layer.waypoint.WaypointBase_Package;
with org.allbinary.game.layer.waypoint.WaypointLogHelper_Package; use org.allbinary.game.layer.waypoint.WaypointLogHelper_Package;
with org.allbinary.game.layer.waypoint.WaypointRunnableLogHelper_Package; use org.allbinary.game.layer.waypoint.WaypointRunnableLogHelper_Package;
with org.allbinary.game.layer.waypoint.WaypointRunnableSelectedLogHelper_Package; use org.allbinary.game.layer.waypoint.WaypointRunnableSelectedLogHelper_Package;
with org.allbinary.game.layer.waypoint.WaypointSelectedLogHelper_Package; use org.allbinary.game.layer.waypoint.WaypointSelectedLogHelper_Package;
with org.allbinary.game.multiplayer.layer.RemoteInfo_Package; use org.allbinary.game.multiplayer.layer.RemoteInfo_Package;
with org.allbinary.game.tick.NullTickable_Package; use org.allbinary.game.tick.NullTickable_Package;
with org.allbinary.game.tick.TickableInterface_Package; use org.allbinary.game.tick.TickableInterface_Package;
with org.allbinary.game.view.TileLayerPositionIntoViewPosition_Package; use org.allbinary.game.view.TileLayerPositionIntoViewPosition_Package;
with org.allbinary.graphics.Rectangle_Package; use org.allbinary.graphics.Rectangle_Package;
with org.allbinary.graphics.RectangleFactory_Package; use org.allbinary.graphics.RectangleFactory_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.math.AngleInfo_Package; use org.allbinary.math.AngleInfo_Package;
with org.allbinary.math.FrameUtil_Package; use org.allbinary.math.FrameUtil_Package;
with org.allbinary.media.AllBinaryVibrationME_Package; use org.allbinary.media.AllBinaryVibrationME_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package; use org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapDirectionUtil_Package; use org.allbinary.media.graphics.geography.map.GeographicMapDirectionUtil_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.view.ViewPositionBase_Package; use org.allbinary.view.ViewPositionBase_Package;
with org.allbinary.game.layer.RTSLayer_Package; use org.allbinary.game.layer.RTSLayer_Package;

package org.allbinary.game.layer.AdvancedRTSGameLayer_Package is

   package AnimationInterfaceFactoryInterface_Package renames Standard.org.allbinary.animation.AnimationInterfaceFactoryInterface_Package;
   package NullAnimationFactory_Package renames Standard.org.allbinary.animation.NullAnimationFactory_Package;
   package NullIndexedAnimationFactory_Package renames Standard.org.allbinary.animation.NullIndexedAnimationFactory_Package;
   package ProceduralAnimationInterfaceFactoryInterface_Package renames Standard.org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package;
   package ShakeAnimationListener_Package renames Standard.org.allbinary.animation.transition.shake.ShakeAnimationListener_Package;
   package Direction_Package renames Standard.org.allbinary.direction.Direction_Package;
   package DirectionFactory_Package renames Standard.org.allbinary.direction.DirectionFactory_Package;
   package GameTypeFactory_Package renames Standard.org.allbinary.game.GameTypeFactory_Package;
   package DestroyedEvent_Package renames Standard.org.allbinary.game.combat.destroy.event.DestroyedEvent_Package;
   package DestroyedEventHandler_Package renames Standard.org.allbinary.game.combat.destroy.event.DestroyedEventHandler_Package;
   package DestroyedEventListenerInterface_Package renames Standard.org.allbinary.game.combat.destroy.event.DestroyedEventListenerInterface_Package;
   package Health_Package renames Standard.org.allbinary.game.health.Health_Package;
   package Group_Package renames Standard.org.allbinary.game.identification.Group_Package;
   package GroupFactory_Package renames Standard.org.allbinary.game.identification.GroupFactory_Package;
   package GameKeyEventFactory_Package renames Standard.org.allbinary.game.input.event.GameKeyEventFactory_Package;
   package NullRTSFormInputFactory_Package renames Standard.org.allbinary.game.input.form.NullRTSFormInputFactory_Package;
   package RTSFormInput_Package renames Standard.org.allbinary.game.input.form.RTSFormInput_Package;
   package BuildingEventHandler_Package renames Standard.org.allbinary.game.layer.building.event.BuildingEventHandler_Package;
   package UnitLayer_Package renames Standard.org.allbinary.game.layer.unit.UnitLayer_Package;
   package Waypoint2LogHelper_Package renames Standard.org.allbinary.game.layer.waypoint.Waypoint2LogHelper_Package;
   package Waypoint2SelectedLogHelper_Package renames Standard.org.allbinary.game.layer.waypoint.Waypoint2SelectedLogHelper_Package;
   package WaypointBase_Package renames Standard.org.allbinary.game.layer.waypoint.WaypointBase_Package;
   package WaypointLogHelper_Package renames Standard.org.allbinary.game.layer.waypoint.WaypointLogHelper_Package;
   package WaypointRunnableLogHelper_Package renames Standard.org.allbinary.game.layer.waypoint.WaypointRunnableLogHelper_Package;
   package WaypointRunnableSelectedLogHelper_Package renames Standard.org.allbinary.game.layer.waypoint.WaypointRunnableSelectedLogHelper_Package;
   package WaypointSelectedLogHelper_Package renames Standard.org.allbinary.game.layer.waypoint.WaypointSelectedLogHelper_Package;
   package RemoteInfo_Package renames Standard.org.allbinary.game.multiplayer.layer.RemoteInfo_Package;
   package NullTickable_Package renames Standard.org.allbinary.game.tick.NullTickable_Package;
   package TickableInterface_Package renames Standard.org.allbinary.game.tick.TickableInterface_Package;
   package TileLayerPositionIntoViewPosition_Package renames Standard.org.allbinary.game.view.TileLayerPositionIntoViewPosition_Package;
   package Rectangle_Package renames Standard.org.allbinary.graphics.Rectangle_Package;
   package RectangleFactory_Package renames Standard.org.allbinary.graphics.RectangleFactory_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package AngleInfo_Package renames Standard.org.allbinary.math.AngleInfo_Package;
   package FrameUtil_Package renames Standard.org.allbinary.math.FrameUtil_Package;
   package AllBinaryVibrationME_Package renames Standard.org.allbinary.media.AllBinaryVibrationME_Package;
   package BasicGeographicMap_Package renames Standard.org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
   package GeographicMapCellPosition_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
   package GeographicMapCompositeInterface_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface_Package;
   package GeographicMapDirectionUtil_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapDirectionUtil_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package ViewPositionBase_Package renames Standard.org.allbinary.view.ViewPositionBase_Package;

   type AdvancedRTSGameLayer is tagged;
   type AdvancedRTSGameLayer_Access is access all AdvancedRTSGameLayer'Class;
   type AdvancedRTSGameLayer_Access_Array is array (Natural range <>) of AdvancedRTSGameLayer_Access;
   type AdvancedRTSGameLayer_Access_Array_Access is access all AdvancedRTSGameLayer_Access_Array;

   type AdvancedRTSGameLayer is new RTSLayer and DestroyedEventListenerInterface with record
      shakeListener : ShakeAnimationListener_Access;
      vibration : AllBinaryVibrationME_Access;
      duration : Integer;
      parentLayer : PathFindingLayerInterface_Access;
      waypointBehaviorBase : TickableInterface_Access;
   end record;

   procedure Initialize (This : in out AdvancedRTSGameLayer'Class; remoteInfo : RemoteInfo_Access; parentLayer : PathFindingLayerInterface_Access; advancedRTSProperties : AdvancedRTSProperties_Access; groupInterface : Group_Access_Array_Access; rootName : Unbounded_String; name : Unbounded_String; healthInterface : Health_Access; rtsFormInput : RTSFormInput_Access; animationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface_Access; emptyAnimationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface_Access; baseAnimationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface_Access; buildAnimationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface_Access; verticleBuildAnimationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface_Access; proceduralAnimationInterfaceFactoryInterface : ProceduralAnimationInterfaceFactoryInterface_Access; rectangle : Rectangle_Access; x : Integer; y : Integer; viewPosition : ViewPositionBase_Access);
   function Create (remoteInfo : RemoteInfo_Access; parentLayer : PathFindingLayerInterface_Access; advancedRTSProperties : AdvancedRTSProperties_Access; groupInterface : Group_Access_Array_Access; rootName : Unbounded_String; name : Unbounded_String; healthInterface : Health_Access; rtsFormInput : RTSFormInput_Access; animationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface_Access; emptyAnimationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface_Access; baseAnimationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface_Access; buildAnimationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface_Access; verticleBuildAnimationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface_Access; proceduralAnimationInterfaceFactoryInterface : ProceduralAnimationInterfaceFactoryInterface_Access; rectangle : Rectangle_Access; x : Integer; y : Integer; viewPosition : ViewPositionBase_Access) return AdvancedRTSGameLayer_Access;
   function createSimulated return AdvancedRTSGameLayer_Access;
   procedure createSimulated;
   procedure updateWaypointBehavior (This : in out AdvancedRTSGameLayer; geographicMapInterface : BasicGeographicMap_Access);
   procedure initVisibility (This : in out AdvancedRTSGameLayer; rtsPlayerLayerInterface : RTSPlayerLayerInterface_Access);
   procedure construct (This : in out AdvancedRTSGameLayer; rtsPlayerLayerInterface : RTSPlayerLayerInterface_Access);
   procedure setDestroyed (This : in out AdvancedRTSGameLayer; destroyed : Boolean);
   function getParentLayer (This : in out AdvancedRTSGameLayer) return PathFindingLayerInterface_Access;
   procedure getParentLayer (This : in out AdvancedRTSGameLayer);
   procedure setParentLayer (This : in out AdvancedRTSGameLayer; parentLayer : PathFindingLayerInterface_Access);
   function getWaypointBehavior (This : in out AdvancedRTSGameLayer) return WaypointBehaviorBase_Access;
   procedure getWaypointBehavior (This : in out AdvancedRTSGameLayer);
   procedure setWaypointBehavior (This : in out AdvancedRTSGameLayer; unitWaypointHelper : WaypointBehaviorBase_Access);
   function getWaypointLogHelper (This : in out AdvancedRTSGameLayer) return WaypointLogHelper_Access;
   procedure getWaypointLogHelper (This : in out AdvancedRTSGameLayer);
   function getWaypoint2LogHelper (This : in out AdvancedRTSGameLayer) return Waypoint2LogHelper_Access;
   procedure getWaypoint2LogHelper (This : in out AdvancedRTSGameLayer);
   function getWaypointRunnableLogHelper (This : in out AdvancedRTSGameLayer) return WaypointRunnableLogHelper_Access;
   procedure getWaypointRunnableLogHelper (This : in out AdvancedRTSGameLayer);
   function shouldAddWaypointFromBuilding (This : in out AdvancedRTSGameLayer) return Boolean;
   procedure shouldAddWaypointFromBuilding (This : in out AdvancedRTSGameLayer);
   function isWaypointListEmptyOrOnlyTargets (This : in out AdvancedRTSGameLayer) return Boolean;
   procedure isWaypointListEmptyOrOnlyTargets (This : in out AdvancedRTSGameLayer);
   function buildingChase (This : in out AdvancedRTSGameLayer; allbinaryLayer : AllBinaryLayer_Access; cellPosition : GeographicMapCellPosition_Access) return Boolean;
   procedure buildingChase (This : in out AdvancedRTSGameLayer; allbinaryLayer : AllBinaryLayer_Access; cellPosition : GeographicMapCellPosition_Access);
   function getSurroundingGeographicMapCellPositionList (This : in out AdvancedRTSGameLayer) return BasicArrayList_Access;
   procedure getSurroundingGeographicMapCellPositionList (This : in out AdvancedRTSGameLayer);
   procedure setSelected (This : in out AdvancedRTSGameLayer; selected : Boolean);
   procedure onDestroyed (This : in out AdvancedRTSGameLayer; destroyedEvent : DestroyedEvent_Access);

end org.allbinary.game.layer.AdvancedRTSGameLayer_Package;


