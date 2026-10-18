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
with org.allbinary.animation.Animation_Package; use org.allbinary.animation.Animation_Package;
with org.allbinary.animation.AnimationInterfaceFactoryInterface_Package; use org.allbinary.animation.AnimationInterfaceFactoryInterface_Package;
with org.allbinary.animation.IndexedAnimation_Package; use org.allbinary.animation.IndexedAnimation_Package;
with org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package; use org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package;
with org.allbinary.animation.RotationAnimation_Package; use org.allbinary.animation.RotationAnimation_Package;
with org.allbinary.animation.caption.CaptionAnimationHelperBase_Package; use org.allbinary.animation.caption.CaptionAnimationHelperBase_Package;
with org.allbinary.direction.Direction_Package; use org.allbinary.direction.Direction_Package;
with org.allbinary.game.combat.damage.DamageFloaters_Package; use org.allbinary.game.combat.damage.DamageFloaters_Package;
with org.allbinary.game.health.Health_Package; use org.allbinary.game.health.Health_Package;
with org.allbinary.game.identification.Group_Package; use org.allbinary.game.identification.Group_Package;
with org.allbinary.game.identification.GroupCommonFactory_Package; use org.allbinary.game.identification.GroupCommonFactory_Package;
with org.allbinary.game.input.event.GameKeyEvent_Package; use org.allbinary.game.input.event.GameKeyEvent_Package;
with org.allbinary.game.layer.AdvancedRTSGameLayer_Package; use org.allbinary.game.layer.AdvancedRTSGameLayer_Package;
with org.allbinary.game.layer.AdvancedRTSProperties_Package; use org.allbinary.game.layer.AdvancedRTSProperties_Package;
with org.allbinary.game.layer.AllBinaryGameLayerManager_Package; use org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
with org.allbinary.game.layer.PathAnimation_Package; use org.allbinary.game.layer.PathAnimation_Package;
with org.allbinary.game.layer.PathFindingLayerInterface_Package; use org.allbinary.game.layer.PathFindingLayerInterface_Package;
with org.allbinary.game.layer.RTSLayerEvent_Package; use org.allbinary.game.layer.RTSLayerEvent_Package;
with org.allbinary.game.layer.RTSLayerLogHelper_Package; use org.allbinary.game.layer.RTSLayerLogHelper_Package;
with org.allbinary.game.layer.RTSPlayerLayerInterface_Package; use org.allbinary.game.layer.RTSPlayerLayerInterface_Package;
with org.allbinary.game.layer.SelectionHudPaintable_Package; use org.allbinary.game.layer.SelectionHudPaintable_Package;
with org.allbinary.game.layer.VehicleProperties_Package; use org.allbinary.game.layer.VehicleProperties_Package;
with org.allbinary.game.layer.building.event.BuildingEventListenerInterface_Package; use org.allbinary.game.layer.building.event.BuildingEventListenerInterface_Package;
with org.allbinary.game.layer.capital.event.CapitalEvent_Package; use org.allbinary.game.layer.capital.event.CapitalEvent_Package;
with org.allbinary.game.layer.geographic.map.LayerPartialCellPositionsUtil_Package; use org.allbinary.game.layer.geographic.map.LayerPartialCellPositionsUtil_Package;
with org.allbinary.game.multiplayer.layer.RemoteInfo_Package; use org.allbinary.game.multiplayer.layer.RemoteInfo_Package;
with org.allbinary.game.tracking.TrackingEvent_Package; use org.allbinary.game.tracking.TrackingEvent_Package;
with org.allbinary.game.tracking.TrackingEventListenerInterface_Package; use org.allbinary.game.tracking.TrackingEventListenerInterface_Package;
with org.allbinary.graphics.CellPositionFactory_Package; use org.allbinary.graphics.CellPositionFactory_Package;
with org.allbinary.graphics.Rectangle_Package; use org.allbinary.graphics.Rectangle_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.graphics.paint.Paintable_Package; use org.allbinary.graphics.paint.Paintable_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package; use org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.layer.LayerInterfaceFactoryInterface_Package; use org.allbinary.layer.LayerInterfaceFactoryInterface_Package;
with org.allbinary.logic.math.BasicDecimal_Package; use org.allbinary.logic.math.BasicDecimal_Package;
with org.allbinary.math.AngleFactory_Package; use org.allbinary.math.AngleFactory_Package;
with org.allbinary.math.LayerDistanceUtil_Package; use org.allbinary.math.LayerDistanceUtil_Package;
with org.allbinary.math.NamedAngle_Package; use org.allbinary.math.NamedAngle_Package;
with org.allbinary.media.audio.Sound_Package; use org.allbinary.media.audio.Sound_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package; use org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.view.ViewPositionBase_Package; use org.allbinary.view.ViewPositionBase_Package;
with org.allbinary.game.layer.unit.UnitWaypointBehavior_Package; use org.allbinary.game.layer.unit.UnitWaypointBehavior_Package;

package org.allbinary.game.layer.unit.UnitLayer_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package Animation_Package renames Standard.org.allbinary.animation.Animation_Package;
   package AnimationInterfaceFactoryInterface_Package renames Standard.org.allbinary.animation.AnimationInterfaceFactoryInterface_Package;
   package IndexedAnimation_Package renames Standard.org.allbinary.animation.IndexedAnimation_Package;
   package ProceduralAnimationInterfaceFactoryInterface_Package renames Standard.org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package;
   package RotationAnimation_Package renames Standard.org.allbinary.animation.RotationAnimation_Package;
   package CaptionAnimationHelperBase_Package renames Standard.org.allbinary.animation.caption.CaptionAnimationHelperBase_Package;
   package Direction_Package renames Standard.org.allbinary.direction.Direction_Package;
   package DamageFloaters_Package renames Standard.org.allbinary.game.combat.damage.DamageFloaters_Package;
   package Health_Package renames Standard.org.allbinary.game.health.Health_Package;
   package Group_Package renames Standard.org.allbinary.game.identification.Group_Package;
   package GroupCommonFactory_Package renames Standard.org.allbinary.game.identification.GroupCommonFactory_Package;
   package GameKeyEvent_Package renames Standard.org.allbinary.game.input.event.GameKeyEvent_Package;
   package AdvancedRTSGameLayer_Package renames Standard.org.allbinary.game.layer.AdvancedRTSGameLayer_Package;
   package AdvancedRTSProperties_Package renames Standard.org.allbinary.game.layer.AdvancedRTSProperties_Package;
   package AllBinaryGameLayerManager_Package renames Standard.org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
   package PathAnimation_Package renames Standard.org.allbinary.game.layer.PathAnimation_Package;
   package PathFindingLayerInterface_Package renames Standard.org.allbinary.game.layer.PathFindingLayerInterface_Package;
   package RTSLayerEvent_Package renames Standard.org.allbinary.game.layer.RTSLayerEvent_Package;
   package RTSLayerLogHelper_Package renames Standard.org.allbinary.game.layer.RTSLayerLogHelper_Package;
   package RTSPlayerLayerInterface_Package renames Standard.org.allbinary.game.layer.RTSPlayerLayerInterface_Package;
   package SelectionHudPaintable_Package renames Standard.org.allbinary.game.layer.SelectionHudPaintable_Package;
   package VehicleProperties_Package renames Standard.org.allbinary.game.layer.VehicleProperties_Package;
   package BuildingEventListenerInterface_Package renames Standard.org.allbinary.game.layer.building.event.BuildingEventListenerInterface_Package;
   package CapitalEvent_Package renames Standard.org.allbinary.game.layer.capital.event.CapitalEvent_Package;
   package LayerPartialCellPositionsUtil_Package renames Standard.org.allbinary.game.layer.geographic.map.LayerPartialCellPositionsUtil_Package;
   package RemoteInfo_Package renames Standard.org.allbinary.game.multiplayer.layer.RemoteInfo_Package;
   package TrackingEvent_Package renames Standard.org.allbinary.game.tracking.TrackingEvent_Package;
   package TrackingEventListenerInterface_Package renames Standard.org.allbinary.game.tracking.TrackingEventListenerInterface_Package;
   package CellPositionFactory_Package renames Standard.org.allbinary.graphics.CellPositionFactory_Package;
   package Rectangle_Package renames Standard.org.allbinary.graphics.Rectangle_Package;
   package BasicColorFactory_Package renames Standard.org.allbinary.graphics.color.BasicColorFactory_Package;
   package Paintable_Package renames Standard.org.allbinary.graphics.paint.Paintable_Package;
   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;
   package LayerInterfaceFactoryInterface_Package renames Standard.org.allbinary.layer.LayerInterfaceFactoryInterface_Package;
   package BasicDecimal_Package renames Standard.org.allbinary.logic.math.BasicDecimal_Package;
   package AngleFactory_Package renames Standard.org.allbinary.math.AngleFactory_Package;
   package LayerDistanceUtil_Package renames Standard.org.allbinary.math.LayerDistanceUtil_Package;
   package NamedAngle_Package renames Standard.org.allbinary.math.NamedAngle_Package;
   package Sound_Package renames Standard.org.allbinary.media.audio.Sound_Package;
   package BasicGeographicMap_Package renames Standard.org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
   package GeographicMapCellHistory_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package;
   package GeographicMapCellPosition_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package ViewPositionBase_Package renames Standard.org.allbinary.view.ViewPositionBase_Package;

   type UnitLayer is tagged;
   type UnitLayer_Access is access all UnitLayer'Class;
   type UnitLayer_Access_Array is array (Natural range <>) of UnitLayer_Access;
   type UnitLayer_Access_Array_Access is access all UnitLayer_Access_Array;
   type UnitLayer_Access_Array_Access_Array is array (Natural range <>) of UnitLayer_Access_Array_Access;
   type UnitLayer_Access_Array_Access_Array_Access is access all UnitLayer_Access_Array_Access_Array;

   type UnitLayer is new AdvancedRTSGameLayer and BuildingEventListenerInterface and TrackingEventListenerInterface with record
      basicColorFactory : BasicColorFactory_Access;
      groupCommonFactory : GroupCommonFactory_Access;
      layerPartialCellPositionsUtil : LayerPartialCellPositionsUtil_Access;
      layerDistanceUtil : LayerDistanceUtil_Access;
      angleFactory : AngleFactory_Access;
      cellPositionFactory : CellPositionFactory_Access;
      maxResourceLoad : Short_Integer;
      vehicleProperties : VehicleProperties_Access;
      accelerationBasicDecimal : BasicDecimal_Access;
      decelerationBasicDecimal : BasicDecimal_Access;
      trackingEvent : TrackingEvent_Access;
      damageFloaters : DamageFloaters_Access;
      damageFloatersPaintableInterface : Paintable_Access;
      healthBar : Paintable_Access;
      moveSoundInterface : Sound_Access;
      initResourceAnimation : RotationAnimation_Access;
      resourceAnimation : IndexedAnimation_Access;
      initPathAnimation : PathAnimation_Access;
      pathAnimation : Animation_Access;
      captionAnimationHelper : CaptionAnimationHelperBase_Access;
      decalAnimation : RotationAnimation_Access;
      waypointLayerInterfaceFactoryInterface : LayerInterfaceFactoryInterface_Access;
      resourceLoad : Integer;
      weaponRange : Integer;
      rtsLogHelper : RTSLayerLogHelper_Access;
      rotationAnimationInterfaceP : RotationAnimation_Access;
      movementAngle : NamedAngle_Access;
      steeringInsideGeographicMapCellPosition : GeographicMapCellPosition_Access;
      sensorGeographicMapCellPositionList : BasicArrayList_Access;
      CAPITAL_EVENT : CapitalEvent_Access;
   end record;
   partialPositionList : BasicArrayList_Access;
   SENSOR_RANGE_MULTIPLIER : Integer;
   MOVE_Field : Unbounded_String;

   procedure Initialize (This : in out UnitLayer'Class; remoteInfo_Param : access RemoteInfo_Package.RemoteInfo'Class; parentLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; advancedRTSProperties_Param : access AdvancedRTSProperties_Package.AdvancedRTSProperties'Class; groupInterface : Group_Access_Array_Access; rootName : Unbounded_String; name : Unbounded_String; vehicleProperties_Param : access VehicleProperties_Package.VehicleProperties'Class; healthInterface_Param : access Health_Package.Health'Class; maxResourceLoad : Integer; moveSoundInterface_Param : access Sound_Package.Sound'Class; waypointLayerInterfaceFactoryInterface_Param : access LayerInterfaceFactoryInterface_Package.LayerInterfaceFactoryInterface'Class; animationInterfaceFactoryInterface_Param : access AnimationInterfaceFactoryInterface_Package.AnimationInterfaceFactoryInterface'Class; emptyAnimationInterfaceFactoryInterface_Param : access AnimationInterfaceFactoryInterface_Package.AnimationInterfaceFactoryInterface'Class; baseAnimationInterfaceFactoryInterface_Param : access AnimationInterfaceFactoryInterface_Package.AnimationInterfaceFactoryInterface'Class; buildAnimationInterfaceFactoryInterface_Param : access AnimationInterfaceFactoryInterface_Package.AnimationInterfaceFactoryInterface'Class; verticleBuildAnimationInterfaceFactoryInterface_Param : access AnimationInterfaceFactoryInterface_Package.AnimationInterfaceFactoryInterface'Class; decalAnimationInterfaceFactoryInterface_Param : access AnimationInterfaceFactoryInterface_Package.AnimationInterfaceFactoryInterface'Class; resourceAnimationInterfaceFactoryInterface_Param : access AnimationInterfaceFactoryInterface_Package.AnimationInterfaceFactoryInterface'Class; proceduralAnimationInterfaceFactoryInterface_Param : access ProceduralAnimationInterfaceFactoryInterface_Package.ProceduralAnimationInterfaceFactoryInterface'Class; rectangle_Param : access Rectangle_Package.Rectangle'Class; direction_Param : access Direction_Package.Direction'Class; x : Integer; y : Integer; z : Integer; viewPosition_Param : access ViewPositionBase_Package.ViewPositionBase'Class);
   function Create (remoteInfo_Param : access RemoteInfo_Package.RemoteInfo'Class; parentLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; advancedRTSProperties_Param : access AdvancedRTSProperties_Package.AdvancedRTSProperties'Class; groupInterface : Group_Access_Array_Access; rootName : Unbounded_String; name : Unbounded_String; vehicleProperties_Param : access VehicleProperties_Package.VehicleProperties'Class; healthInterface_Param : access Health_Package.Health'Class; maxResourceLoad : Integer; moveSoundInterface_Param : access Sound_Package.Sound'Class; waypointLayerInterfaceFactoryInterface_Param : access LayerInterfaceFactoryInterface_Package.LayerInterfaceFactoryInterface'Class; animationInterfaceFactoryInterface_Param : access AnimationInterfaceFactoryInterface_Package.AnimationInterfaceFactoryInterface'Class; emptyAnimationInterfaceFactoryInterface_Param : access AnimationInterfaceFactoryInterface_Package.AnimationInterfaceFactoryInterface'Class; baseAnimationInterfaceFactoryInterface_Param : access AnimationInterfaceFactoryInterface_Package.AnimationInterfaceFactoryInterface'Class; buildAnimationInterfaceFactoryInterface_Param : access AnimationInterfaceFactoryInterface_Package.AnimationInterfaceFactoryInterface'Class; verticleBuildAnimationInterfaceFactoryInterface_Param : access AnimationInterfaceFactoryInterface_Package.AnimationInterfaceFactoryInterface'Class; decalAnimationInterfaceFactoryInterface_Param : access AnimationInterfaceFactoryInterface_Package.AnimationInterfaceFactoryInterface'Class; resourceAnimationInterfaceFactoryInterface_Param : access AnimationInterfaceFactoryInterface_Package.AnimationInterfaceFactoryInterface'Class; proceduralAnimationInterfaceFactoryInterface_Param : access ProceduralAnimationInterfaceFactoryInterface_Package.ProceduralAnimationInterfaceFactoryInterface'Class; rectangle_Param : access Rectangle_Package.Rectangle'Class; direction_Param : access Direction_Package.Direction'Class; x : Integer; y : Integer; z : Integer; viewPosition_Param : access ViewPositionBase_Package.ViewPositionBase'Class) return UnitLayer_Access;
   procedure setAllBinaryGameLayerManager (This : in out UnitLayer; allBinaryGameLayerManager_Param : access AllBinaryGameLayerManager_Package.AllBinaryGameLayerManager'Class);
   procedure updateWaypointBehavior (This : in out UnitLayer; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class);
   procedure construct (This : in out UnitLayer; rtsPlayerLayerInterface_Param : access RTSPlayerLayerInterface_Package.RTSPlayerLayerInterface'Class);
   procedure updateSensorGeographicMapCellPositionList (This : in out UnitLayer);
   function getSensorGeographicMapCellPositionList (This : in out UnitLayer) return BasicArrayList_Access;
   procedure select_Id (This : in out UnitLayer);
   procedure deselect (This : in out UnitLayer);
   procedure setSelected (This : in out UnitLayer; selected : Boolean);
   procedure setClosestGeographicMapCellHistory (This : in out UnitLayer; pathsList_Param : access BasicArrayList_Package.BasicArrayList'Class);
   procedure init (This : in out UnitLayer; geographicMapCellHistory_Param : access GeographicMapCellHistory_Package.GeographicMapCellHistory'Class; geographicMapCellPositionBasicArrayList_Param : access BasicArrayList_Package.BasicArrayList'Class);
   procedure onMovement (This : in out UnitLayer; trackingEvent_Param : access TrackingEvent_Package.TrackingEvent'Class);
   procedure onMovementFound (This : in out UnitLayer; trackingEvent_Param : access TrackingEvent_Package.TrackingEvent'Class);
   procedure initRangeHack (This : in out UnitLayer);
   procedure processBuiltTick (This : in out UnitLayer; allBinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class);
   procedure teleportTo (This : in out UnitLayer; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class);
   function getCurrentGeographicMapCellPosition (This : in out UnitLayer) return GeographicMapCellPosition_Access;
   procedure fire (This : in out UnitLayer; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class);
   procedure left (This : in out UnitLayer);
   procedure right (This : in out UnitLayer);
   procedure down (This : in out UnitLayer);
   procedure up (This : in out UnitLayer);
   procedure initInputProcessors (This : in out UnitLayer);
   procedure processInput (This : in out UnitLayer; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class);
   procedure accelerate (This : in out UnitLayer; accelerate_Param : access BasicDecimal_Package.BasicDecimal'Class);
   procedure fireAll (This : in out UnitLayer; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class);
   procedure downgrade (This : in out UnitLayer);
   procedure upgrade (This : in out UnitLayer);
   procedure groundFriction (This : in out UnitLayer);
   procedure trackTo (This : in out UnitLayer; reason : Unbounded_String);
   procedure trackToDXY (This : in out UnitLayer; dx : Integer; dy : Integer);
   function turnTo (This : in out UnitLayer; dx : Integer; dy : Integer; targetAngle_Param : Integer) return Boolean;
   procedure turnTo (This : in out UnitLayer; dx : Integer; dy : Integer; targetAngle_Param : Integer);
   procedure handleDeltalX (This : in out UnitLayer; dx : Integer; dy : Integer);
   procedure handleDeltalY (This : in out UnitLayer; dx : Integer; dy : Integer);
   procedure trackToDXYTargetAngle (This : in out UnitLayer; dx : Integer; dy : Integer; targetAngle : Integer);
   procedure fireOrMove (This : in out UnitLayer);
   procedure move (This : in out UnitLayer);
   procedure allStop (This : in out UnitLayer);
   procedure paint (This : in out UnitLayer; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure onBuildingEvent (This : in out UnitLayer; event_Param : access RTSLayerEvent_Package.RTSLayerEvent'Class);
   function getVehicleProperties (This : in out UnitLayer) return VehicleProperties_Access;
   procedure damage (This : in out UnitLayer; damage : Integer; damageType : Integer);
   function getDamage (This : in out UnitLayer; damageType : Integer) return Integer;
   procedure getDamage (This : in out UnitLayer; damageType : Integer);
   procedure setDestroyed (This : in out UnitLayer; destroyed : Boolean);
   function getLoad (This : in out UnitLayer) return Integer;
   procedure clearResourceAnimation (This : in out UnitLayer);
   procedure setLoad (This : in out UnitLayer; resource : Integer);
   procedure addLoad (This : in out UnitLayer; resource : Integer);
   procedure handleCost (This : in out UnitLayer; ownerLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class);
   function createHudPaintable (This : in out UnitLayer) return SelectionHudPaintable_Access;
   function getHudPaintable (This : in out UnitLayer) return SelectionHudPaintable_Access;
   function getType (This : in out UnitLayer) return Integer;
   function getStaticType return Integer;
   function getUnitWaypointBehavior (This : in out UnitLayer) return UnitWaypointBehavior_Access;
   function getTrackingEvent (This : in out UnitLayer) return TrackingEvent_Access;
   function getCaptionAnimationHelper (This : in out UnitLayer) return CaptionAnimationHelperBase_Access;
   function isSelfUpgradeable (This : in out UnitLayer) return Boolean;
   function getMaxResourceLoad (This : in out UnitLayer) return Short_Integer;
   function getPartialpositionlist return BasicArrayList_Access;

end org.allbinary.game.layer.unit.UnitLayer_Package;


