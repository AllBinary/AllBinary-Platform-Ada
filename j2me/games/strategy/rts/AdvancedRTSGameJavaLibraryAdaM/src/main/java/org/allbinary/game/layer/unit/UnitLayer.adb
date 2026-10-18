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


with javax.microedition.lcdui.Canvas_Package; use javax.microedition.lcdui.Canvas_Package;
with org.allbinary.J2MEUtil_Package; use org.allbinary.J2MEUtil_Package;
with org.allbinary.ag.weapon.media.audio.ExplosionBasicSound_Package; use org.allbinary.ag.weapon.media.audio.ExplosionBasicSound_Package;
with org.allbinary.animation.FeaturedAnimationInterfaceFactoryInterfaceFactory_Package; use org.allbinary.animation.FeaturedAnimationInterfaceFactoryInterfaceFactory_Package;
with org.allbinary.animation.NullAnimationFactory_Package; use org.allbinary.animation.NullAnimationFactory_Package;
with org.allbinary.animation.NullIndexedAnimationFactory_Package; use org.allbinary.animation.NullIndexedAnimationFactory_Package;
with org.allbinary.animation.caption.CaptionAnimationHelper_Package; use org.allbinary.animation.caption.CaptionAnimationHelper_Package;
with org.allbinary.animation.vector.AdjustedCircleAnimation_Package; use org.allbinary.animation.vector.AdjustedCircleAnimation_Package;
with org.allbinary.game.combat.damage.PtsDamageFloaters_Package; use org.allbinary.game.combat.damage.PtsDamageFloaters_Package;
with org.allbinary.game.combat.weapon.WeaponProperties_Package; use org.allbinary.game.combat.weapon.WeaponProperties_Package;
with org.allbinary.game.configuration.feature.Features_Package; use org.allbinary.game.configuration.feature.Features_Package;
with org.allbinary.game.configuration.feature.GameFeatureFactory_Package; use org.allbinary.game.configuration.feature.GameFeatureFactory_Package;
with org.allbinary.game.graphics.hud.BasicHudFactory_Package; use org.allbinary.game.graphics.hud.BasicHudFactory_Package;
with org.allbinary.game.health.HealthBar_Package; use org.allbinary.game.health.HealthBar_Package;
with org.allbinary.game.health.HealthBarTwodAnimation_Package; use org.allbinary.game.health.HealthBarTwodAnimation_Package;
with org.allbinary.game.input.event.GameKeyEventFactory_Package; use org.allbinary.game.input.event.GameKeyEventFactory_Package;
with org.allbinary.game.input.event.GameKeyEventUtil_Package; use org.allbinary.game.input.event.GameKeyEventUtil_Package;
with org.allbinary.game.input.form.VisibleCellPositionsSingleton_Package; use org.allbinary.game.input.form.VisibleCellPositionsSingleton_Package;
with org.allbinary.game.input.form.WaypointRTSFormInput_Package; use org.allbinary.game.input.form.WaypointRTSFormInput_Package;
with org.allbinary.game.layer.AllBinaryTiledLayer_Package; use org.allbinary.game.layer.AllBinaryTiledLayer_Package;
with org.allbinary.game.layer.CaptionResources_Package; use org.allbinary.game.layer.CaptionResources_Package;
with org.allbinary.game.layer.LinePathRelativeAnimation_Package; use org.allbinary.game.layer.LinePathRelativeAnimation_Package;
with org.allbinary.game.layer.RTSLayer2LogHelper_Package; use org.allbinary.game.layer.RTSLayer2LogHelper_Package;
with org.allbinary.game.layer.RTSLayer2SelectedLogHelper_Package; use org.allbinary.game.layer.RTSLayer2SelectedLogHelper_Package;
with org.allbinary.game.layer.RTSLayerHudPaintable_Package; use org.allbinary.game.layer.RTSLayerHudPaintable_Package;
with org.allbinary.game.layer.RTSLayerSelectedLogHelper_Package; use org.allbinary.game.layer.RTSLayerSelectedLogHelper_Package;
with org.allbinary.game.layer.SensorActionFactory_Package; use org.allbinary.game.layer.SensorActionFactory_Package;
with org.allbinary.game.layer.SteeringVisitor_Package; use org.allbinary.game.layer.SteeringVisitor_Package;
with org.allbinary.game.layer.TiledLayerUtil_Package; use org.allbinary.game.layer.TiledLayerUtil_Package;
with org.allbinary.game.layer.VehicleFrictionProperties_Package; use org.allbinary.game.layer.VehicleFrictionProperties_Package;
with org.allbinary.game.layer.WaypointBehaviorBase_Package; use org.allbinary.game.layer.WaypointBehaviorBase_Package;
with org.allbinary.game.layer.building.BuildingLayer_Package; use org.allbinary.game.layer.building.BuildingLayer_Package;
with org.allbinary.game.layer.building.event.BuildingEventHandler_Package; use org.allbinary.game.layer.building.event.BuildingEventHandler_Package;
with org.allbinary.game.layer.capital.event.CapitalEventHandlerFactory_Package; use org.allbinary.game.layer.capital.event.CapitalEventHandlerFactory_Package;
with org.allbinary.game.layer.special.SpecialDownGameInputProcessor_Package; use org.allbinary.game.layer.special.SpecialDownGameInputProcessor_Package;
with org.allbinary.game.layer.special.SpecialFireGameInputProcessor_Package; use org.allbinary.game.layer.special.SpecialFireGameInputProcessor_Package;
with org.allbinary.game.layer.special.SpecialLeftGameInputProcessor_Package; use org.allbinary.game.layer.special.SpecialLeftGameInputProcessor_Package;
with org.allbinary.game.layer.special.SpecialRightGameInputProcessor_Package; use org.allbinary.game.layer.special.SpecialRightGameInputProcessor_Package;
with org.allbinary.game.layer.special.SpecialUpGameInputProcessor_Package; use org.allbinary.game.layer.special.SpecialUpGameInputProcessor_Package;
with org.allbinary.game.layer.waypoint.MultipassNoCacheWaypoint_Package; use org.allbinary.game.layer.waypoint.MultipassNoCacheWaypoint_Package;
with org.allbinary.game.layer.waypoint.NoCacheWaypoint_Package; use org.allbinary.game.layer.waypoint.NoCacheWaypoint_Package;
with org.allbinary.game.layer.waypoint.WaypointBase_Package; use org.allbinary.game.layer.waypoint.WaypointBase_Package;
with org.allbinary.game.layer.waypoint.event.WaypointEventHandlerFactory_Package; use org.allbinary.game.layer.waypoint.event.WaypointEventHandlerFactory_Package;
with org.allbinary.game.part.weapon.BasicWeaponPart_Package; use org.allbinary.game.part.weapon.BasicWeaponPart_Package;
with org.allbinary.game.part.weapon.SalvoInterface_Package; use org.allbinary.game.part.weapon.SalvoInterface_Package;
with org.allbinary.game.physics.velocity.VelocityProperties_Package; use org.allbinary.game.physics.velocity.VelocityProperties_Package;
with org.allbinary.game.tracking.TrackingEventHandler_Package; use org.allbinary.game.tracking.TrackingEventHandler_Package;
with org.allbinary.graphics.GPoint_Package; use org.allbinary.graphics.GPoint_Package;
with org.allbinary.graphics.paint.NullPaintable_Package; use org.allbinary.graphics.paint.NullPaintable_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.Layer_Package; use org.allbinary.layer.Layer_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.math.SmallIntegerSingletonFactory_Package; use org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
with org.allbinary.math.AngleInfo_Package; use org.allbinary.math.AngleInfo_Package;
with org.allbinary.math.FrameUtil_Package; use org.allbinary.math.FrameUtil_Package;
with org.allbinary.media.audio.AttackSound_Package; use org.allbinary.media.audio.AttackSound_Package;
with org.allbinary.media.audio.SecondaryPlayerQueueFactory_Package; use org.allbinary.media.audio.SecondaryPlayerQueueFactory_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package; use org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface_Package;
with org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory_Package; use org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory_Package;
with org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory_Package; use org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory_Package;
with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMap_Package; use org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMap_Package;
with org.allbinary.string_Id.CommonPhoneStrings_Package; use org.allbinary.string_Id.CommonPhoneStrings_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.util.BasicArrayListS_Package; use org.allbinary.util.BasicArrayListS_Package;
with org.allbinary.game.layer.unit.CollidableUnitBehavior_Package; use org.allbinary.game.layer.unit.CollidableUnitBehavior_Package;
with org.allbinary.game.layer.unit.UnitWaypointBehavior2_Package; use org.allbinary.game.layer.unit.UnitWaypointBehavior2_Package;

package body org.allbinary.game.layer.unit.UnitLayer_Package is

   package Canvas_Package renames Standard.javax.microedition.lcdui.Canvas_Package;
   package J2MEUtil_Package renames Standard.org.allbinary.J2MEUtil_Package;
   package ExplosionBasicSound_Package renames Standard.org.allbinary.ag.weapon.media.audio.ExplosionBasicSound_Package;
   package FeaturedAnimationInterfaceFactoryInterfaceFactory_Package renames Standard.org.allbinary.animation.FeaturedAnimationInterfaceFactoryInterfaceFactory_Package;
   package NullAnimationFactory_Package renames Standard.org.allbinary.animation.NullAnimationFactory_Package;
   package NullIndexedAnimationFactory_Package renames Standard.org.allbinary.animation.NullIndexedAnimationFactory_Package;
   package CaptionAnimationHelper_Package renames Standard.org.allbinary.animation.caption.CaptionAnimationHelper_Package;
   package AdjustedCircleAnimation_Package renames Standard.org.allbinary.animation.vector.AdjustedCircleAnimation_Package;
   package PtsDamageFloaters_Package renames Standard.org.allbinary.game.combat.damage.PtsDamageFloaters_Package;
   package WeaponProperties_Package renames Standard.org.allbinary.game.combat.weapon.WeaponProperties_Package;
   package Features_Package renames Standard.org.allbinary.game.configuration.feature.Features_Package;
   package GameFeatureFactory_Package renames Standard.org.allbinary.game.configuration.feature.GameFeatureFactory_Package;
   package BasicHudFactory_Package renames Standard.org.allbinary.game.graphics.hud.BasicHudFactory_Package;
   package HealthBar_Package renames Standard.org.allbinary.game.health.HealthBar_Package;
   package HealthBarTwodAnimation_Package renames Standard.org.allbinary.game.health.HealthBarTwodAnimation_Package;
   package GameKeyEventFactory_Package renames Standard.org.allbinary.game.input.event.GameKeyEventFactory_Package;
   package GameKeyEventUtil_Package renames Standard.org.allbinary.game.input.event.GameKeyEventUtil_Package;
   package VisibleCellPositionsSingleton_Package renames Standard.org.allbinary.game.input.form.VisibleCellPositionsSingleton_Package;
   package WaypointRTSFormInput_Package renames Standard.org.allbinary.game.input.form.WaypointRTSFormInput_Package;
   package AllBinaryTiledLayer_Package renames Standard.org.allbinary.game.layer.AllBinaryTiledLayer_Package;
   package CaptionResources_Package renames Standard.org.allbinary.game.layer.CaptionResources_Package;
   package LinePathRelativeAnimation_Package renames Standard.org.allbinary.game.layer.LinePathRelativeAnimation_Package;
   package RTSLayer2LogHelper_Package renames Standard.org.allbinary.game.layer.RTSLayer2LogHelper_Package;
   package RTSLayer2SelectedLogHelper_Package renames Standard.org.allbinary.game.layer.RTSLayer2SelectedLogHelper_Package;
   package RTSLayerHudPaintable_Package renames Standard.org.allbinary.game.layer.RTSLayerHudPaintable_Package;
   package RTSLayerSelectedLogHelper_Package renames Standard.org.allbinary.game.layer.RTSLayerSelectedLogHelper_Package;
   package SensorActionFactory_Package renames Standard.org.allbinary.game.layer.SensorActionFactory_Package;
   package SteeringVisitor_Package renames Standard.org.allbinary.game.layer.SteeringVisitor_Package;
   package TiledLayerUtil_Package renames Standard.org.allbinary.game.layer.TiledLayerUtil_Package;
   package VehicleFrictionProperties_Package renames Standard.org.allbinary.game.layer.VehicleFrictionProperties_Package;
   package WaypointBehaviorBase_Package renames Standard.org.allbinary.game.layer.WaypointBehaviorBase_Package;
   package BuildingLayer_Package renames Standard.org.allbinary.game.layer.building.BuildingLayer_Package;
   package BuildingEventHandler_Package renames Standard.org.allbinary.game.layer.building.event.BuildingEventHandler_Package;
   package CapitalEventHandlerFactory_Package renames Standard.org.allbinary.game.layer.capital.event.CapitalEventHandlerFactory_Package;
   package SpecialDownGameInputProcessor_Package renames Standard.org.allbinary.game.layer.special.SpecialDownGameInputProcessor_Package;
   package SpecialFireGameInputProcessor_Package renames Standard.org.allbinary.game.layer.special.SpecialFireGameInputProcessor_Package;
   package SpecialLeftGameInputProcessor_Package renames Standard.org.allbinary.game.layer.special.SpecialLeftGameInputProcessor_Package;
   package SpecialRightGameInputProcessor_Package renames Standard.org.allbinary.game.layer.special.SpecialRightGameInputProcessor_Package;
   package SpecialUpGameInputProcessor_Package renames Standard.org.allbinary.game.layer.special.SpecialUpGameInputProcessor_Package;
   package MultipassNoCacheWaypoint_Package renames Standard.org.allbinary.game.layer.waypoint.MultipassNoCacheWaypoint_Package;
   package NoCacheWaypoint_Package renames Standard.org.allbinary.game.layer.waypoint.NoCacheWaypoint_Package;
   package WaypointBase_Package renames Standard.org.allbinary.game.layer.waypoint.WaypointBase_Package;
   package WaypointEventHandlerFactory_Package renames Standard.org.allbinary.game.layer.waypoint.event.WaypointEventHandlerFactory_Package;
   package BasicWeaponPart_Package renames Standard.org.allbinary.game.part.weapon.BasicWeaponPart_Package;
   package SalvoInterface_Package renames Standard.org.allbinary.game.part.weapon.SalvoInterface_Package;
   package VelocityProperties_Package renames Standard.org.allbinary.game.physics.velocity.VelocityProperties_Package;
   package TrackingEventHandler_Package renames Standard.org.allbinary.game.tracking.TrackingEventHandler_Package;
   package GPoint_Package renames Standard.org.allbinary.graphics.GPoint_Package;
   package NullPaintable_Package renames Standard.org.allbinary.graphics.paint.NullPaintable_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package Layer_Package renames Standard.org.allbinary.layer.Layer_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package SmallIntegerSingletonFactory_Package renames Standard.org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
   package AngleInfo_Package renames Standard.org.allbinary.math.AngleInfo_Package;
   package FrameUtil_Package renames Standard.org.allbinary.math.FrameUtil_Package;
   package AttackSound_Package renames Standard.org.allbinary.media.audio.AttackSound_Package;
   package SecondaryPlayerQueueFactory_Package renames Standard.org.allbinary.media.audio.SecondaryPlayerQueueFactory_Package;
   package BasicGeographicMapCellPositionFactory_Package renames Standard.org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package;
   package GeographicMapCompositeInterface_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface_Package;
   package SimpleGeographicMapCellPositionFactory_Package renames Standard.org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory_Package;
   package DropCellPositionHistory_Package renames Standard.org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory_Package;
   package RaceTrackGeographicMap_Package renames Standard.org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMap_Package;
   package CommonPhoneStrings_Package renames Standard.org.allbinary.string_Id.CommonPhoneStrings_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package BasicArrayListS_Package renames Standard.org.allbinary.util.BasicArrayListS_Package;
   procedure Initialize_Fields (This : in out UnitLayer'Class) is
   begin
      null;
      This.basicColorFactory := BasicColorFactory_Package.getInstance;
      This.groupCommonFactory := GroupCommonFactory_Package.getInstance;
      This.layerPartialCellPositionsUtil := LayerPartialCellPositionsUtil_Package.getInstance;
      This.layerDistanceUtil := LayerDistanceUtil_Package.getInstance;
      This.angleFactory := AngleFactory_Package.getInstance;
      This.cellPositionFactory := CellPositionFactory_Package.getInstance;
      
      
      This.accelerationBasicDecimal := BasicDecimal_Package.Create (1600);
      This.decelerationBasicDecimal := BasicDecimal_Package.Create (-(1000));
      
      This.damageFloaters := null;
      This.damageFloatersPaintableInterface := null;
      This.healthBar := null;
      
      
      This.resourceAnimation := IndexedAnimation_Access (NullIndexedAnimationFactory_Package.getFactoryInstance.getInstance (0));
      
      This.pathAnimation := NullAnimationFactory_Package.getFactoryInstance.getInstance (0);
      This.captionAnimationHelper := CaptionAnimationHelperBase_Access (CaptionAnimationHelper_Package.Create (FeaturedAnimationInterfaceFactoryInterfaceFactory_Package.getInstance.get (CaptionResources_Package.getInstance.RESOURCE).getInstance (0), -(23), -(25), 6, 0));
      
      
      This.resourceLoad := 0;
      This.weaponRange := 0;
      This.rtsLogHelper := RTSLayerLogHelper_Package.getInstance;
      
      This.movementAngle := This.angleFactory.NOT_ANGLE;
      This.steeringInsideGeographicMapCellPosition := SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION;
      This.sensorGeographicMapCellPositionList := BasicArrayList_Access (BasicArrayListD_Package.Create);
      This.CAPITAL_EVENT := CapitalEvent_Package.Create (UnitLayer_Access'(This'Unchecked_Access));
   end Initialize_Fields;


   procedure Initialize (This : in out UnitLayer'Class; remoteInfo_Param : access RemoteInfo_Package.RemoteInfo'Class; parentLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; advancedRTSProperties_Param : access AdvancedRTSProperties_Package.AdvancedRTSProperties'Class; groupInterface : Group_Access_Array_Access; rootName : Unbounded_String; name : Unbounded_String; vehicleProperties_Param : access VehicleProperties_Package.VehicleProperties'Class; healthInterface_Param : access Health_Package.Health'Class; maxResourceLoad : Integer; moveSoundInterface_Param : access Sound_Package.Sound'Class; waypointLayerInterfaceFactoryInterface_Param : access LayerInterfaceFactoryInterface_Package.LayerInterfaceFactoryInterface'Class; animationInterfaceFactoryInterface_Param : access AnimationInterfaceFactoryInterface_Package.AnimationInterfaceFactoryInterface'Class; emptyAnimationInterfaceFactoryInterface_Param : access AnimationInterfaceFactoryInterface_Package.AnimationInterfaceFactoryInterface'Class; baseAnimationInterfaceFactoryInterface_Param : access AnimationInterfaceFactoryInterface_Package.AnimationInterfaceFactoryInterface'Class; buildAnimationInterfaceFactoryInterface_Param : access AnimationInterfaceFactoryInterface_Package.AnimationInterfaceFactoryInterface'Class; verticleBuildAnimationInterfaceFactoryInterface_Param : access AnimationInterfaceFactoryInterface_Package.AnimationInterfaceFactoryInterface'Class; decalAnimationInterfaceFactoryInterface_Param : access AnimationInterfaceFactoryInterface_Package.AnimationInterfaceFactoryInterface'Class; resourceAnimationInterfaceFactoryInterface_Param : access AnimationInterfaceFactoryInterface_Package.AnimationInterfaceFactoryInterface'Class; proceduralAnimationInterfaceFactoryInterface_Param : access ProceduralAnimationInterfaceFactoryInterface_Package.ProceduralAnimationInterfaceFactoryInterface'Class; rectangle_Param : access Rectangle_Package.Rectangle'Class; direction_Param : access Direction_Package.Direction'Class; x : Integer; y : Integer; z : Integer; viewPosition_Param : access ViewPositionBase_Package.ViewPositionBase'Class) is
      remoteInfo : constant RemoteInfo_Access := RemoteInfo_Access (remoteInfo_Param);
      parentLayer : constant PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (parentLayer_Param);
      advancedRTSProperties : constant AdvancedRTSProperties_Access := AdvancedRTSProperties_Access (advancedRTSProperties_Param);
      vehicleProperties : constant VehicleProperties_Access := VehicleProperties_Access (vehicleProperties_Param);
      healthInterface : constant Health_Access := Health_Access (healthInterface_Param);
      moveSoundInterface : constant Sound_Access := Sound_Access (moveSoundInterface_Param);
      waypointLayerInterfaceFactoryInterface : constant LayerInterfaceFactoryInterface_Access := LayerInterfaceFactoryInterface_Access (waypointLayerInterfaceFactoryInterface_Param);
      animationInterfaceFactoryInterface : constant AnimationInterfaceFactoryInterface_Access := AnimationInterfaceFactoryInterface_Access (animationInterfaceFactoryInterface_Param);
      emptyAnimationInterfaceFactoryInterface : constant AnimationInterfaceFactoryInterface_Access := AnimationInterfaceFactoryInterface_Access (emptyAnimationInterfaceFactoryInterface_Param);
      baseAnimationInterfaceFactoryInterface : constant AnimationInterfaceFactoryInterface_Access := AnimationInterfaceFactoryInterface_Access (baseAnimationInterfaceFactoryInterface_Param);
      buildAnimationInterfaceFactoryInterface : constant AnimationInterfaceFactoryInterface_Access := AnimationInterfaceFactoryInterface_Access (buildAnimationInterfaceFactoryInterface_Param);
      verticleBuildAnimationInterfaceFactoryInterface : constant AnimationInterfaceFactoryInterface_Access := AnimationInterfaceFactoryInterface_Access (verticleBuildAnimationInterfaceFactoryInterface_Param);
      decalAnimationInterfaceFactoryInterface : constant AnimationInterfaceFactoryInterface_Access := AnimationInterfaceFactoryInterface_Access (decalAnimationInterfaceFactoryInterface_Param);
      resourceAnimationInterfaceFactoryInterface : constant AnimationInterfaceFactoryInterface_Access := AnimationInterfaceFactoryInterface_Access (resourceAnimationInterfaceFactoryInterface_Param);
      proceduralAnimationInterfaceFactoryInterface : constant ProceduralAnimationInterfaceFactoryInterface_Access := ProceduralAnimationInterfaceFactoryInterface_Access (proceduralAnimationInterfaceFactoryInterface_Param);
      rectangle : constant Rectangle_Access := Rectangle_Access (rectangle_Param);
      direction : constant Direction_Access := Direction_Access (direction_Param);
      viewPosition : constant ViewPositionBase_Access := ViewPositionBase_Access (viewPosition_Param);
   begin
        AdvancedRTSGameLayer_Package.Initialize (This, remoteInfo, parentLayer, advancedRTSProperties, groupInterface, rootName, name, healthInterface, WaypointRTSFormInput_Package.Create (groupInterface, True), animationInterfaceFactoryInterface, emptyAnimationInterfaceFactoryInterface, baseAnimationInterfaceFactoryInterface, buildAnimationInterfaceFactoryInterface, verticleBuildAnimationInterfaceFactoryInterface, proceduralAnimationInterfaceFactoryInterface, rectangle, x, y, viewPosition);
        Initialize_Fields (This);
        UnitLayer'Class (This).setCollidableInferface (CollidableUnitBehavior_Package.Create (True));
        This.waypointLayerInterfaceFactoryInterface := waypointLayerInterfaceFactoryInterface;
        This.maxResourceLoad := maxResourceLoad.shortValue;
        This.moveSoundInterface := moveSoundInterface;
        if Features_Package.getInstance.isFeature (GameFeatureFactory_Package.getInstance.DAMAGE_FLOATERS) then
            This.damageFloaters := DamageFloaters_Access (PtsDamageFloaters_Package.Create (UnitLayer_Access'(This'Unchecked_Access)));
            This.damageFloatersPaintableInterface := Paintable_Access (This.damageFloaters);
        else
            This.damageFloatersPaintableInterface := NullPaintable_Package.getInstance;
            This.damageFloaters := DamageFloaters_Package.Create;
        end if;
        if Features_Package.getInstance.isFeature (GameFeatureFactory_Package.getInstance.HEALTH_BARS) then
            This.healthBar := Paintable_Access (HealthBar_Package.Create (UnitLayer_Access'(This'Unchecked_Access), UnitLayer'Class (This).getHealthInterface, HealthBarTwodAnimation_Package.Create (AllBinaryLayer_Access (UnitLayer_Access'(This'Unchecked_Access)), BasicHudFactory_Package.getInstance.BOTTOMLEFT), -(1)));
        else
            This.healthBar := NullPaintable_Package.getInstance;
        end if;
        This.decalAnimation := RotationAnimation_Access (decalAnimationInterfaceFactoryInterface.getInstance (0));
        This.initResourceAnimation := RotationAnimation_Access (resourceAnimationInterfaceFactoryInterface.getInstance (0));
        This.initResourceAnimation.setFrameByDirection (direction);
        This.decalAnimation.setFrameByDirection (direction);
        This.rotationAnimationInterfaceP := RotationAnimation_Access (This.indexedButShouldBeRotationAnimationInterface);
        This.rotationAnimationInterfaceP.setFrameByDirection (direction);
        UnitLayer'Class (This).setMaxLevel (12);
        This.vehicleProperties := vehicleProperties;
        This.trackingEvent := TrackingEvent_Package.Create (UnitLayer_Access'(This'Unchecked_Access));
        This.initPathAnimation := PathAnimation_Package.Create (UnitLayer_Access'(This'Unchecked_Access), LinePathRelativeAnimation_Package.getInstance);
   end Initialize;

   function Create (remoteInfo_Param : access RemoteInfo_Package.RemoteInfo'Class; parentLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; advancedRTSProperties_Param : access AdvancedRTSProperties_Package.AdvancedRTSProperties'Class; groupInterface : Group_Access_Array_Access; rootName : Unbounded_String; name : Unbounded_String; vehicleProperties_Param : access VehicleProperties_Package.VehicleProperties'Class; healthInterface_Param : access Health_Package.Health'Class; maxResourceLoad : Integer; moveSoundInterface_Param : access Sound_Package.Sound'Class; waypointLayerInterfaceFactoryInterface_Param : access LayerInterfaceFactoryInterface_Package.LayerInterfaceFactoryInterface'Class; animationInterfaceFactoryInterface_Param : access AnimationInterfaceFactoryInterface_Package.AnimationInterfaceFactoryInterface'Class; emptyAnimationInterfaceFactoryInterface_Param : access AnimationInterfaceFactoryInterface_Package.AnimationInterfaceFactoryInterface'Class; baseAnimationInterfaceFactoryInterface_Param : access AnimationInterfaceFactoryInterface_Package.AnimationInterfaceFactoryInterface'Class; buildAnimationInterfaceFactoryInterface_Param : access AnimationInterfaceFactoryInterface_Package.AnimationInterfaceFactoryInterface'Class; verticleBuildAnimationInterfaceFactoryInterface_Param : access AnimationInterfaceFactoryInterface_Package.AnimationInterfaceFactoryInterface'Class; decalAnimationInterfaceFactoryInterface_Param : access AnimationInterfaceFactoryInterface_Package.AnimationInterfaceFactoryInterface'Class; resourceAnimationInterfaceFactoryInterface_Param : access AnimationInterfaceFactoryInterface_Package.AnimationInterfaceFactoryInterface'Class; proceduralAnimationInterfaceFactoryInterface_Param : access ProceduralAnimationInterfaceFactoryInterface_Package.ProceduralAnimationInterfaceFactoryInterface'Class; rectangle_Param : access Rectangle_Package.Rectangle'Class; direction_Param : access Direction_Package.Direction'Class; x : Integer; y : Integer; z : Integer; viewPosition_Param : access ViewPositionBase_Package.ViewPositionBase'Class) return UnitLayer_Access is
      This : constant UnitLayer_Access := new UnitLayer;
   begin
      UnitLayer_Package.Initialize (This.all, remoteInfo_Param, parentLayer_Param, advancedRTSProperties_Param, groupInterface, rootName, name, vehicleProperties_Param, healthInterface_Param, maxResourceLoad, moveSoundInterface_Param, waypointLayerInterfaceFactoryInterface_Param, animationInterfaceFactoryInterface_Param, emptyAnimationInterfaceFactoryInterface_Param, baseAnimationInterfaceFactoryInterface_Param, buildAnimationInterfaceFactoryInterface_Param, verticleBuildAnimationInterfaceFactoryInterface_Param, decalAnimationInterfaceFactoryInterface_Param, resourceAnimationInterfaceFactoryInterface_Param, proceduralAnimationInterfaceFactoryInterface_Param, rectangle_Param, direction_Param, x, y, z, viewPosition_Param);
      return This;
   end Create;

   --  throws Exception
   procedure setAllBinaryGameLayerManager (This : in out UnitLayer; allBinaryGameLayerManager_Param : access AllBinaryGameLayerManager_Package.AllBinaryGameLayerManager'Class) is
      allBinaryGameLayerManager : constant AllBinaryGameLayerManager_Access := AllBinaryGameLayerManager_Access (allBinaryGameLayerManager_Param);
   begin
        AdvancedRTSGameLayer (This).setAllBinaryGameLayerManager (allBinaryGameLayerManager);
        This.initPathAnimation.setAllBinaryGameLayerManager (allBinaryGameLayerManager);
   end setAllBinaryGameLayerManager;

   --  throws Exception
   procedure updateWaypointBehavior (This : in out UnitLayer; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class) is
      geographicMapInterface : constant BasicGeographicMap_Access := BasicGeographicMap_Access (geographicMapInterface_Param);
      hashtable : ABHashtable_Access;
      features : Features_Access;
      waypoint : WaypointBase_Access;
   begin
        hashtable := StdUtil_Package.getInstance.createHashtable;
        hashtable.put (This.groupCommonFactory.ID, UnitLayer'Class (This).getGroupInterface);
        hashtable.put (Layer_Package.ID, UnitLayer_Access'(This'Unchecked_Access));
        hashtable.put (AllBinaryGameLayerManager_Package.ID, This.allBinaryGameLayerManagerP);
        UnitLayer'Class (This).setWaypointBehavior (UnitWaypointBehavior2_Package.Create (UnitLayer_Access'(This'Unchecked_Access), AdvancedRTSGameLayer_Access (This.waypointLayerInterfaceFactoryInterface.getNextInstance (hashtable, This.x, This.y, This.z))));
        features := Features_Package.getInstance;
        waypoint := (if J2MEUtil_Package.isHTML then MultipassNoCacheWaypoint_Package.Create (UnitLayer_Access'(This'Unchecked_Access), AttackSound_Package.getInstance) else NoCacheWaypoint_Package.Create (UnitLayer_Access'(This'Unchecked_Access), AttackSound_Package.getInstance));
        UnitLayer'Class (This).getWaypointBehavior.setWaypoint (waypoint);
        AdvancedRTSGameLayer (This).updateWaypointBehavior (geographicMapInterface);
        UnitLayer'Class (This).initRangeHack;
   end updateWaypointBehavior;

   --  throws Exception
   procedure construct (This : in out UnitLayer; rtsPlayerLayerInterface_Param : access RTSPlayerLayerInterface_Package.RTSPlayerLayerInterface'Class) is
      rtsPlayerLayerInterface : constant RTSPlayerLayerInterface_Access := RTSPlayerLayerInterface_Access (rtsPlayerLayerInterface_Param);
   begin
        AdvancedRTSGameLayer (This).construct (rtsPlayerLayerInterface);
        TrackingEventHandler_Package.getInstance.addListenerInterface (UnitLayer_Access'(This'Unchecked_Access));
        WaypointEventHandlerFactory_Package.getInstance (UnitLayer'Class (This).getGroupInterface (0)).addListenerInterface (UnitLayer'Class (This).getUnitWaypointBehavior);
        BuildingEventHandler_Package.getInstance.addListenerInterface (UnitLayer_Access'(This'Unchecked_Access));
        UnitLayer'Class (This).getUnitWaypointBehavior.setCurrentPathGeographicMapCellPosition (UnitLayer'Class (This).getCurrentGeographicMapCellPosition);
        UnitLayer'Class (This).updateSensorGeographicMapCellPositionList;
        UnitLayer'Class (This).getUnitWaypointBehavior.setLastPathGeographicMapCellPosition (UnitLayer'Class (This).getUnitWaypointBehavior.getCurrentPathGeographicMapCellPosition);
   end construct;

   --  throws Exception
   procedure updateSensorGeographicMapCellPositionList (This : in out UnitLayer) is
      currentGeographicMapCellPosition : GeographicMapCellPosition_Access;
      sensorRange : Integer;
      geographicMapCompositeInterface : GeographicMapCompositeInterface_Access;
      geographicMapInterface : BasicGeographicMap_Access;
      tiledLayer : AllBinaryTiledLayer_Access;
      totalCells : Integer;
      geographicMapCellPositionFactory : BasicGeographicMapCellPositionFactory_Access;
      column : Integer;
      row : Integer;
      lastColumn : Integer;
      lastRow : Integer;
      firstColumn : Integer;
      firstRow : Integer;
      geographicMapCellPosition : GeographicMapCellPosition_Access;
      index2 : Integer;
      index : Integer;
   begin
        if VisibleCellPositionsSingleton_Package.getInstance.shouldProcess then
            currentGeographicMapCellPosition := UnitLayer'Class (This).getCurrentGeographicMapCellPosition;
            This.sensorGeographicMapCellPositionList.clear;
            This.sensorGeographicMapCellPositionList.add (Java_Object_Access (currentGeographicMapCellPosition));
            sensorRange := (This.weaponRange) * (UnitLayer_Package.SENSOR_RANGE_MULTIPLIER);
            geographicMapCompositeInterface := GeographicMapCompositeInterface_Access (This.allBinaryGameLayerManagerP);
            geographicMapInterface := geographicMapCompositeInterface.getGeographicMapInterface (0);
            tiledLayer := geographicMapInterface.getAllBinaryTiledLayer;
            totalCells := (((sensorRange) / (tiledLayer.getCellHeight))) / (2);
            geographicMapCellPositionFactory := geographicMapInterface.getGeographicMapCellPositionFactory;
            column := currentGeographicMapCellPosition.getColumn;
            row := currentGeographicMapCellPosition.getRow;
            lastColumn := (column) + (totalCells);
            lastRow := (row) + (totalCells);
            if (lastColumn) > (tiledLayer.getColumns) then
                lastColumn := tiledLayer.getColumns;
            end if;
            if (lastRow) > (tiledLayer.getRows) then
                lastRow := tiledLayer.getRows;
            end if;
            firstColumn := (column) - (totalCells);
            firstRow := (row) - (totalCells);
            if (firstColumn) < (0) then
                firstColumn := 0;
            end if;
            if (firstRow) < (0) then
                firstRow := 0;
            end if;
            for index in reverse firstColumn .. (lastColumn) - (1) loop
                for index2 in reverse firstRow .. (lastRow) - (1) loop
                    geographicMapCellPosition := geographicMapCellPositionFactory.getAt (index, index2);
                    if not (This.sensorGeographicMapCellPositionList.contains (Java_Object_Access (geographicMapCellPosition))) then
                        This.sensorGeographicMapCellPositionList.add (Java_Object_Access (geographicMapCellPosition));
                    end if;
                end loop;
            end loop;
        end if;
   end updateSensorGeographicMapCellPositionList;

   function getSensorGeographicMapCellPositionList (This : in out UnitLayer) return BasicArrayList_Access is
   begin
        return This.sensorGeographicMapCellPositionList;
   end getSensorGeographicMapCellPositionList;

   procedure select_Id (This : in out UnitLayer) is
   begin
        This.pathAnimation := Animation_Access (This.initPathAnimation);
        AdvancedRTSGameLayer (This).select_Id;
   end select_Id;

   procedure deselect (This : in out UnitLayer) is
   begin
        This.pathAnimation := NullAnimationFactory_Package.getFactoryInstance.getInstance (0);
        AdvancedRTSGameLayer (This).deselect;
   end deselect;

   procedure setSelected (This : in out UnitLayer; selected : Boolean) is
   begin
        AdvancedRTSGameLayer (This).setSelected (selected);
        if selected then
            if This.debug then
                This.rtsLogHelper := RTSLayerSelectedLogHelper_Package.getInstance;
            end if;
            This.rtsLayer2LogHelper := RTSLayer2SelectedLogHelper_Package.getInstance;
        else
            if This.debug then
                This.rtsLogHelper := RTSLayerLogHelper_Package.getInstance;
            end if;
            This.rtsLayer2LogHelper := RTSLayer2LogHelper_Package.getInstance;
        end if;
   end setSelected;

   --  throws Exception
   procedure setClosestGeographicMapCellHistory (This : in out UnitLayer; pathsList_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      pathsList : constant BasicArrayList_Access := BasicArrayList_Access (pathsList_Param);
      closestIndex : Integer;
      shortestDistance : Integer;
      currentDistance : Integer;
      geographicMapCellPositionBasicArrayList : BasicArrayList_Access;
      geographicMapCellPosition : GeographicMapCellPosition_Access;
      index : Integer;
   begin
        This.rtsLogHelper.setClosestGeographicMapCellHistory (UnitLayer_Access'(This'Unchecked_Access), pathsList);
        closestIndex := -(1);
        shortestDistance := Integer'Last;
        currentDistance := Integer'Last;
        for index in reverse 0 .. (pathsList.size) - (1) loop
            geographicMapCellPositionBasicArrayList := BasicArrayList_Access (pathsList.get (index));
            geographicMapCellPosition := GeographicMapCellPosition_Access (geographicMapCellPositionBasicArrayList.get ((geographicMapCellPositionBasicArrayList.size) - (1)));
            currentDistance := This.layerDistanceUtil.getDistanceAt (UnitLayer_Access'(This'Unchecked_Access), geographicMapCellPosition.getMidPoint);
            if (currentDistance) < (shortestDistance) then
                shortestDistance := currentDistance;
                closestIndex := index;
            end if;
        end loop;
        if (closestIndex) >= (0) then
            geographicMapCellPositionBasicArrayList := BasicArrayList_Access (pathsList.get (closestIndex));
            geographicMapCellPosition := GeographicMapCellPosition_Access (geographicMapCellPositionBasicArrayList.get (0));
            UnitLayer'Class (This).teleportTo (geographicMapCellPosition);
        end if;
   end setClosestGeographicMapCellHistory;

   --  throws Exception
   procedure init (This : in out UnitLayer; geographicMapCellHistory_Param : access GeographicMapCellHistory_Package.GeographicMapCellHistory'Class; geographicMapCellPositionBasicArrayList_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      geographicMapCellHistory : constant GeographicMapCellHistory_Access := GeographicMapCellHistory_Access (geographicMapCellHistory_Param);
      geographicMapCellPositionBasicArrayList : constant BasicArrayList_Access := BasicArrayList_Access (geographicMapCellPositionBasicArrayList_Param);
   begin
        geographicMapCellHistory.trackAll (geographicMapCellPositionBasicArrayList);
   end init;

   procedure onMovement (This : in out UnitLayer; trackingEvent_Param : access TrackingEvent_Package.TrackingEvent'Class) is
      trackingEvent : constant TrackingEvent_Access := TrackingEvent_Access (trackingEvent_Param);
      layerInterface : AdvancedRTSGameLayer_Access;
   begin
        begin
            layerInterface := AdvancedRTSGameLayer_Access (trackingEvent.getLayerInterface);
            if (layerInterface.getGroupInterface (0)) /= (UnitLayer'Class (This).getGroupInterface (0)) then
                UnitLayer'Class (This).getUnitWaypointBehavior.getPossibleTargetList.add (Java_Object_Access (layerInterface));
                layerInterface.onMovementFound (UnitLayer'Class (This).getTrackingEvent);
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, UnitLayer_Access'(This'Unchecked_Access), To_Unbounded_String ("onMovement"), e);
                end;
        end;
   end onMovement;

   --  throws Exception
   procedure onMovementFound (This : in out UnitLayer; trackingEvent_Param : access TrackingEvent_Package.TrackingEvent'Class) is
      trackingEvent : constant TrackingEvent_Access := TrackingEvent_Access (trackingEvent_Param);
      layerInterface : AdvancedRTSGameLayer_Access;
   begin
        layerInterface := AdvancedRTSGameLayer_Access (trackingEvent.getLayerInterface);
        if (layerInterface.getGroupInterface (0)) /= (UnitLayer'Class (This).getGroupInterface (0)) then
            UnitLayer'Class (This).getUnitWaypointBehavior.getPossibleTargetList.add (Java_Object_Access (layerInterface));
        end if;
   end onMovementFound;

   procedure initRangeHack (This : in out UnitLayer) is
      basicWeaponPart : BasicWeaponPart_Access;
      weaponProperties : WeaponProperties_Access;
      sensorRange : Integer;
   begin
        basicWeaponPart := BasicWeaponPart_Access (UnitLayer'Class (This).getPartInterfaceArray (0));
        weaponProperties := basicWeaponPart.getWeaponProperties;
        This.weaponRange := weaponProperties.getRange;
        This.initRangeAnimation := AdjustedCircleAnimation_Package.createW (This.weaponRange, This.weaponRange, UnitLayer'Class (This).getWidth, This.basicColorFactory.GREEN);
        sensorRange := (This.weaponRange) * (UnitLayer_Package.SENSOR_RANGE_MULTIPLIER);
        This.initSensorRangeAnimation := AdjustedCircleAnimation_Package.createW (sensorRange, sensorRange, UnitLayer'Class (This).getWidth, This.basicColorFactory.RED);
        UnitLayer'Class (This).getUnitWaypointBehavior.initRange (This.weaponRange);
        This.fireTimeHelper.delay_Id := (Integer (weaponProperties.getReloadTime));
   end initRangeHack;

   --  throws Exception
   procedure processBuiltTick (This : in out UnitLayer; allBinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class) is
      allBinaryLayerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (allBinaryLayerManager_Param);
      currentFrame : Integer;
      size : Integer;
   begin
        if not (UnitLayer'Class (This).getHealthInterface.isAlive) then
            if UnitLayer'Class (This).isReadyForExplosion then
                currentFrame := This.destroyAnimationInterface.getFrame;
                size := (This.destroyAnimationInterface.getSize) - (1);
                if (currentFrame) = (size) then
                    if not (UnitLayer'Class (This).getHealthInterface.isAlive) then
                        UnitLayer'Class (This).setDestroyed (True);
                    end if;
                else
                    This.destroyAnimationInterface.nextFrame;
                end if;
            else
                UnitLayer'Class (This).setAnimationInterface (This.destroyAnimationInterface);
                SecondaryPlayerQueueFactory_Package.getInstance.add (ExplosionBasicSound_Package.getInstance);
                This.shakeListener.onSmallShakeEvent;
                This.vibration.vibrate (This.duration, 0, 0);
                UnitLayer'Class (This).setReadyForExplosion (True);
            end if;
        else
            AdvancedRTSGameLayer (This).processBuiltTick (allBinaryLayerManager);
        end if;
        This.captionAnimationHelper.tick;
        UnitLayer'Class (This).getUnitWaypointBehavior.processTick (allBinaryLayerManager);
   end processBuiltTick;

   procedure teleportTo (This : in out UnitLayer; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) is
      geographicMapCellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (geographicMapCellPosition_Param);
      point : GPoint_Access;
   begin
        point := geographicMapCellPosition.getMidPoint;
        UnitLayer'Class (This).setPosition ((point.getX) - (UnitLayer'Class (This).getHalfWidth), (point.getY) - (UnitLayer'Class (This).getHalfHeight), This.z);
   end teleportTo;

   --  throws Exception
   function getCurrentGeographicMapCellPosition (This : in out UnitLayer) return GeographicMapCellPosition_Access is
      geographicMapCompositeInterface : GeographicMapCompositeInterface_Access;
      geographicMapInterface : BasicGeographicMap_Access;
      geographicMapCellPosition : GeographicMapCellPosition_Access;
      raceTrackGeographicMap : RaceTrackGeographicMap_Access;
   begin
        geographicMapCompositeInterface := GeographicMapCompositeInterface_Access (This.allBinaryGameLayerManagerP);
        geographicMapInterface := geographicMapCompositeInterface.getGeographicMapInterface (0);
        geographicMapCellPosition := geographicMapInterface.getCellPositionAtXY ((This.x) + (UnitLayer'Class (This).getHalfWidth), (This.y) + (UnitLayer'Class (This).getHalfHeight));
        raceTrackGeographicMap := RaceTrackGeographicMap_Access (geographicMapInterface);
        if not (raceTrackGeographicMap.isValid (geographicMapCellPosition)) then
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Position is not really on the map: ") & Java_Image (geographicMapCellPosition)));
        end if;
        return geographicMapCellPosition;
   end getCurrentGeographicMapCellPosition;

   --  throws Exception
   procedure fire (This : in out UnitLayer; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class) is
      layerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (layerManager_Param);
      gameKeyEvent : constant GameKeyEvent_Access := GameKeyEvent_Access (gameKeyEvent_Param);
   begin
        if This.fireTimeHelper.isTimeTNT then
            UnitLayer'Class (This).fireAll (layerManager);
        else
            UnitLayer'Class (This).reload;
        end if;
   end fire;

   --  throws Exception
   procedure left (This : in out UnitLayer) is
   begin
        This.initResourceAnimation.previousRotation;
        This.decalAnimation.previousRotation;
        This.rotationAnimationInterfaceP.previousRotation;
   end left;

   --  throws Exception
   procedure right (This : in out UnitLayer) is
   begin
        This.initResourceAnimation.nextRotation;
        This.decalAnimation.nextRotation;
        This.rotationAnimationInterfaceP.nextRotation;
   end right;

   procedure down (This : in out UnitLayer) is
      velocityProperties : VelocityProperties_Access;
   begin
        velocityProperties := UnitLayer'Class (This).getVehicleProperties.getVelocityProperties;
        if not (velocityProperties.isOverXYMaxForwardVelocity) then
            UnitLayer'Class (This).accelerate (This.decelerationBasicDecimal);
        end if;
   end down;

   procedure up (This : in out UnitLayer) is
      velocityProperties : VelocityProperties_Access;
   begin
        velocityProperties := UnitLayer'Class (This).getVehicleProperties.getVelocityProperties;
        if not (velocityProperties.isOverXYMaxForwardVelocity) then
            UnitLayer'Class (This).accelerate (This.accelerationBasicDecimal);
        end if;
   end up;

   procedure initInputProcessors (This : in out UnitLayer) is
   begin
        This.inputProcessorArray (Canvas_Package.RIGHT) := SpecialRightGameInputProcessor_Package.Create (UnitLayer_Access'(This'Unchecked_Access));
        This.inputProcessorArray (Canvas_Package.LEFT) := SpecialLeftGameInputProcessor_Package.Create (UnitLayer_Access'(This'Unchecked_Access));
        This.inputProcessorArray (Canvas_Package.KEY_NUM0) := SpecialFireGameInputProcessor_Package.Create (UnitLayer_Access'(This'Unchecked_Access));
        This.inputProcessorArray (Canvas_Package.KEY_POUND) := This.inputProcessorArray (Canvas_Package.KEY_NUM0);
        This.inputProcessorArray (Canvas_Package.DOWN) := SpecialDownGameInputProcessor_Package.Create (UnitLayer_Access'(This'Unchecked_Access));
        This.inputProcessorArray (Canvas_Package.UP) := SpecialUpGameInputProcessor_Package.Create (UnitLayer_Access'(This'Unchecked_Access));
        AdvancedRTSGameLayer (This).initInputProcessors;
   end initInputProcessors;

   --  throws Exception
   procedure processInput (This : in out UnitLayer; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class) is
      layerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (layerManager_Param);
      list : BasicArrayList_Access;
      size : Integer;
      anyType : Java_Object_Access;
      key : Integer;
      index : Integer;
   begin
        list := UnitLayer'Class (This).getGameKeyEventList;
        size := list.size;
        for index in 0 .. (size) - 1 loop
            anyType := list.get (index);
            key := GameKeyEventUtil_Package.getKey (anyType);
            This.inputProcessorArray (key).processEvent (layerManager, GameKeyEvent_Package.NONE);
        end loop;
        list.clear;
        UnitLayer'Class (This).groundFriction;
        UnitLayer'Class (This).move;
   end processInput;

   procedure accelerate (This : in out UnitLayer; accelerate_Param : access BasicDecimal_Package.BasicDecimal'Class) is
      accelerate : constant BasicDecimal_Access := BasicDecimal_Access (accelerate_Param);
   begin
        UnitLayer'Class (This).getVehicleProperties.getVelocityProperties.addVelocityi (accelerate.getUnscaled, Integer (This.rotationAnimationInterfaceP.getAngleInfoP.getAngle), 90);
   end accelerate;

   --  throws Exception
   procedure fireAll (This : in out UnitLayer; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class) is
      layerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (layerManager_Param);
      angleInfo : AngleInfo_Access;
      angle : Integer;
      salvoInterface : SalvoInterface_Access;
   begin
        angleInfo := This.rotationAnimationInterfaceP.getAngleInfoP;
        angle := Integer (((angleInfo.getAngle) + (This.slightAngle)));
        This.hashtable.put (SmallIntegerSingletonFactory_Package.getInstance.getAt (1), SmallIntegerSingletonFactory_Package.getInstance.getAt (Integer (AngleFactory_Package.getInstance.getAt (angle).getValue)));
        salvoInterface := SalvoInterface_Access (UnitLayer'Class (This).getPartInterfaceArray (0));
        salvoInterface.process (layerManager, Short_Integer (angle), Short_Integer (90));
   end fireAll;

   procedure downgrade (This : in out UnitLayer) is
   begin
        if (UnitLayer'Class (This).getLevel) > (1) then
            AdvancedRTSGameLayer (This).downgrade;
        end if;
   end downgrade;

   procedure upgrade (This : in out UnitLayer) is
   begin
        AdvancedRTSGameLayer (This).upgrade;
        UnitLayer'Class (This).initRangeHack;
   end upgrade;

   procedure groundFriction (This : in out UnitLayer) is
      vehicleFrictionProperties : VehicleFrictionProperties_Access;
   begin
        vehicleFrictionProperties := UnitLayer'Class (This).getVehicleProperties.getVehicleFrictionProperties;
        UnitLayer'Class (This).getVehicleProperties.getVehicleFrictionProperties.friction (UnitLayer'Class (This).getVehicleProperties.getVelocityProperties, vehicleFrictionProperties.getTireFrictionNominator);
   end groundFriction;

   --  throws Exception
   procedure trackTo (This : in out UnitLayer; reason : Unbounded_String) is
      waypointBehaviorBase : WaypointBehaviorBase_Access;
      nextUnvisitedPathGeographicMapCellPosition : GeographicMapCellPosition_Access;
      point : GPoint_Access;
      dx : Integer;
      dy : Integer;
   begin
        waypointBehaviorBase := WaypointBehaviorBase_Access (This.waypointBehaviorBase);
        nextUnvisitedPathGeographicMapCellPosition := waypointBehaviorBase.getNextUnvisitedPathGeographicMapCellPosition;
        point := nextUnvisitedPathGeographicMapCellPosition.getMidPoint;
        dx := (((UnitLayer'Class (This).getXP) + (UnitLayer'Class (This).getHalfWidth))) - (point.getX);
        dy := (((UnitLayer'Class (This).getYP) + (UnitLayer'Class (This).getHalfHeight))) - (point.getY);
        This.rtsLogHelper.trackTo (UnitLayer_Access'(This'Unchecked_Access), nextUnvisitedPathGeographicMapCellPosition, dx, dy, reason);
        UnitLayer'Class (This).trackToDXY (dx, dy);
   end trackTo;

   --  throws Exception
   procedure trackToDXY (This : in out UnitLayer; dx : Integer; dy : Integer) is
      angleOfTarget : Integer;
   begin
        angleOfTarget := 0;
        UnitLayer'Class (This).trackToDXYTargetAngle (dx, dy, angleOfTarget);
   end trackToDXY;

   --  throws Exception
   function turnTo (This : in out UnitLayer; dx : Integer; dy : Integer; targetAngle_Param : Integer) return Boolean is
      targetAngle : Integer := targetAngle_Param;
      waypointBehaviorBase : WaypointBehaviorBase_Access;
      nextUnvisitedPathGeographicMapCellPosition : GeographicMapCellPosition_Access;
      evading : Boolean;
      angleInfo : AngleInfo_Access;
      angle : Integer;
      gameKeyEventFactory : GameKeyEventFactory_Access;
      deltaAngle2 : Integer;
   begin
        waypointBehaviorBase := WaypointBehaviorBase_Access (This.waypointBehaviorBase);
        nextUnvisitedPathGeographicMapCellPosition := waypointBehaviorBase.getNextUnvisitedPathGeographicMapCellPosition;
        evading := False;
        if (UnitLayer'Class (This).getUnitWaypointBehavior.getSensorAction) = (SensorActionFactory_Package.getInstance.EVADE) then
            This.rtsLogHelper.evade (UnitLayer_Access'(This'Unchecked_Access));
            evading := True;
            targetAngle := (targetAngle) + (180);
        end if;
        angleInfo := This.rotationAnimationInterfaceP.getAngleInfoP;
        angle := FrameUtil_Package.getInstance.adjustAngleToFrameAngle ((angleInfo.getAngle) - (270));
        This.rtsLogHelper.turnTo (UnitLayer_Access'(This'Unchecked_Access), dx, dy, angleInfo, angle, This.movementAngle, evading, targetAngle);
        gameKeyEventFactory := GameKeyEventFactory_Package.getInstance;
        if ((dx) = (0)) and then ((dy) = (0)) then
            This.rtsLogHelper.doneMoving (UnitLayer_Access'(This'Unchecked_Access));
            return True;
        elsif ((Integer (This.movementAngle.getValue))) = (angle) then
            if ((dx) > (0)) and then ((This.movementAngle) = (This.angleFactory.LEFT)) then
                This.rtsLogHelper.movingLeft (UnitLayer_Access'(This'Unchecked_Access));
                return False;
            end if;
            if ((dx) < (0)) and then ((This.movementAngle) = (This.angleFactory.RIGHT)) then
                This.rtsLogHelper.movingRight (UnitLayer_Access'(This'Unchecked_Access));
                return False;
            end if;
            if ((dy) > (0)) and then ((This.movementAngle) = (This.angleFactory.UP)) then
                This.rtsLogHelper.movingUp (UnitLayer_Access'(This'Unchecked_Access));
                return False;
            end if;
            if ((dy) < (0)) and then ((This.movementAngle) = (This.angleFactory.DOWN)) then
                This.rtsLogHelper.movingDown (UnitLayer_Access'(This'Unchecked_Access));
                return False;
            end if;
            This.rtsLogHelper.currentMoveEnded (UnitLayer_Access'(This'Unchecked_Access));
            if ((This.movementAngle) = (This.angleFactory.LEFT)) or else ((This.movementAngle) = (This.angleFactory.RIGHT)) then
                UnitLayer'Class (This).handleDeltalY (dx, dy);
            elsif ((This.movementAngle) = (This.angleFactory.UP)) or else ((This.movementAngle) = (This.angleFactory.DOWN)) then
                UnitLayer'Class (This).handleDeltalX (dx, dy);
            end if;
            return True;
        else
            if (nextUnvisitedPathGeographicMapCellPosition) /= (SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION) then
                if (This.steeringInsideGeographicMapCellPosition) /= (nextUnvisitedPathGeographicMapCellPosition) then
                    if ((abs (dx)) > (abs (dy))) and then ((dy) /= (0)) then
                        UnitLayer'Class (This).handleDeltalY (dx, dy);
                    elsif (dx) /= (0) then
                        UnitLayer'Class (This).handleDeltalX (dx, dy);
                    else
                        UnitLayer'Class (This).handleDeltalY (dx, dy);
                    end if;
                end if;
                deltaAngle2 := (This.movementAngle.getValue) - (angle);
                if (deltaAngle2) > (0) then
                    This.rtsLogHelper.rotateRight (UnitLayer_Access'(This'Unchecked_Access));
                    UnitLayer'Class (This).getGameKeyEventList.add (gameKeyEventFactory.getInstanceForKey (UnitLayer_Access'(This'Unchecked_Access), Canvas_Package.RIGHT));
                else
                    This.rtsLogHelper.rotateLeft (UnitLayer_Access'(This'Unchecked_Access));
                    UnitLayer'Class (This).getGameKeyEventList.add (gameKeyEventFactory.getInstanceForKey (UnitLayer_Access'(This'Unchecked_Access), Canvas_Package.LEFT));
                end if;
                return True;
            else
                This.rtsLogHelper.noRotation (UnitLayer_Access'(This'Unchecked_Access));
            end if;
            return False;
        end if;
   end turnTo;

   procedure handleDeltalX (This : in out UnitLayer; dx : Integer; dy : Integer) is
      waypointBehaviorBase : WaypointBehaviorBase_Access;
      nextUnvisitedPathGeographicMapCellPosition : GeographicMapCellPosition_Access;
   begin
        waypointBehaviorBase := WaypointBehaviorBase_Access (This.waypointBehaviorBase);
        nextUnvisitedPathGeographicMapCellPosition := waypointBehaviorBase.getNextUnvisitedPathGeographicMapCellPosition;
        if (dx) > (0) then
            This.movementAngle := This.angleFactory.LEFT;
            This.steeringInsideGeographicMapCellPosition := nextUnvisitedPathGeographicMapCellPosition;
        else
            This.movementAngle := This.angleFactory.RIGHT;
            This.steeringInsideGeographicMapCellPosition := nextUnvisitedPathGeographicMapCellPosition;
        end if;
        This.rtsLogHelper.handle (UnitLayer_Access'(This'Unchecked_Access), This.movementAngle);
   end handleDeltalX;

   procedure handleDeltalY (This : in out UnitLayer; dx : Integer; dy : Integer) is
      waypointBehaviorBase : WaypointBehaviorBase_Access;
      nextUnvisitedPathGeographicMapCellPosition : GeographicMapCellPosition_Access;
   begin
        waypointBehaviorBase := WaypointBehaviorBase_Access (This.waypointBehaviorBase);
        nextUnvisitedPathGeographicMapCellPosition := waypointBehaviorBase.getNextUnvisitedPathGeographicMapCellPosition;
        if (dy) > (0) then
            This.movementAngle := This.angleFactory.UP;
            This.steeringInsideGeographicMapCellPosition := nextUnvisitedPathGeographicMapCellPosition;
        else
            This.movementAngle := This.angleFactory.DOWN;
            This.steeringInsideGeographicMapCellPosition := nextUnvisitedPathGeographicMapCellPosition;
        end if;
        This.rtsLogHelper.handle (UnitLayer_Access'(This'Unchecked_Access), This.movementAngle);
   end handleDeltalY;

   --  throws Exception
   procedure trackToDXYTargetAngle (This : in out UnitLayer; dx : Integer; dy : Integer; targetAngle : Integer) is
      list : BasicArrayList_Access;
      steeringVisitor : SteeringVisitor_Access;
      anyType : Java_Object_Access;
      index : Integer;
   begin
        list := UnitLayer'Class (This).getUnitWaypointBehavior.getSteeringVisitorList;
        if (list.size) > (0) then
            for index in reverse 0 .. (list.size) - (1) loop
                steeringVisitor := SteeringVisitor_Access (list.get (index));
                anyType := steeringVisitor.visit (UnitLayer_Access'(This'Unchecked_Access));
                if (anyType) = (null) then
                    list.removeAt (index);
                end if;
            end loop;
            UnitLayer'Class (This).fireOrMove;
        elsif not (UnitLayer'Class (This).turnTo (dx, dy, targetAngle)) then
            UnitLayer'Class (This).fireOrMove;
        end if;
   end trackToDXYTargetAngle;

   --  throws Exception
   procedure fireOrMove (This : in out UnitLayer) is
      gameKeyEventFactory : GameKeyEventFactory_Access;
   begin
        gameKeyEventFactory := GameKeyEventFactory_Package.getInstance;
        if UnitLayer'Class (This).getUnitWaypointBehavior.needToMove then
            This.rtsLayer2LogHelper.steeringUp (UnitLayer_Access'(This'Unchecked_Access));
            if (This.showMoreCaptionStates) and then (not (This.captionAnimationHelper.isShowing)) then
                This.captionAnimationHelper.update (UnitLayer_Package.MOVE_Field, This.basicColorFactory.GREEN);
            end if;
            UnitLayer'Class (This).getGameKeyEventList.add (gameKeyEventFactory.getInstanceForKey (UnitLayer_Access'(This'Unchecked_Access), Canvas_Package.UP));
        else
            This.captionAnimationHelper.update (CommonPhoneStrings_Package.getInstance.FIRE, This.basicColorFactory.RED);
            This.rtsLayer2LogHelper.steeringFireOrStop (UnitLayer_Access'(This'Unchecked_Access));
            UnitLayer'Class (This).allStop;
            UnitLayer'Class (This).getGameKeyEventList.add (gameKeyEventFactory.getInstanceForKey (UnitLayer_Access'(This'Unchecked_Access), Canvas_Package.KEY_NUM0));
            TrackingEventHandler_Package.getInstance.fireEvent (UnitLayer'Class (This).getTrackingEvent);
        end if;
   end fireOrMove;

   procedure move (This : in out UnitLayer) is
      velocityProperties : VelocityProperties_Access;
      velocityXScaled : Long_Long_Integer;
      velocityYScaled : Long_Long_Integer;
      geographicMapCompositeInterface : GeographicMapCompositeInterface_Access;
      geographicMapInterface : BasicGeographicMap_Access;
      cellPosition : GeographicMapCellPosition_Access;
      allbinaryLayer : AllBinaryLayer_Access;
      tiledLayer : AllBinaryTiledLayer_Access;
      tiledLayerUtil : TiledLayerUtil_Access;
      x : Integer;
      y : Integer;
   begin
        begin
            velocityProperties := UnitLayer'Class (This).getVehicleProperties.getVelocityProperties;
            velocityXScaled := Long_Long_Integer (velocityProperties.getVelocityXBasicDecimalP.getScaled);
            velocityYScaled := Long_Long_Integer (velocityProperties.getVelocityYBasicDecimalP.getScaled);
            UnitLayer'Class (This).getUnitWaypointBehavior.move;
            if ((velocityXScaled) /= (0)) or else ((velocityYScaled) /= (0)) then
                UnitLayer'Class (This).getUnitWaypointBehavior.setMoving (True);
                geographicMapCompositeInterface := GeographicMapCompositeInterface_Access (This.allBinaryGameLayerManagerP);
                geographicMapInterface := geographicMapCompositeInterface.getGeographicMapInterface (0);
                This.layerPartialCellPositionsUtil.getAllDXY (geographicMapInterface, UnitLayer_Access'(This'Unchecked_Access), Integer (velocityXScaled), Integer (velocityYScaled), UnitLayer_Package.getPartialpositionlist);
                cellPosition := GeographicMapCellPosition_Access (DropCellPositionHistory_Package.getInstance.getCellPositionWithDrop (UnitLayer_Package.getPartialpositionlist));
                if (cellPosition) = (This.cellPositionFactory.NONE) then
                    tiledLayer := geographicMapInterface.getAllBinaryTiledLayer;
                    tiledLayerUtil := TiledLayerUtil_Package.getInstance;
                    x := (This.x) + (Integer (velocityXScaled));
                    y := (This.y) + (Integer (velocityYScaled));
                    x := tiledLayerUtil.keepOnMapX (tiledLayer, x, UnitLayer'Class (This).getWidth);
                    y := tiledLayerUtil.keepOnMapY (tiledLayer, y, UnitLayer'Class (This).getHeight);
                    UnitLayer'Class (This).setPosition (x, y, This.z);
                else
                    allbinaryLayer := DropCellPositionHistory_Package.getInstance.getLayerInterface (cellPosition);
                    UnitLayer'Class (This).getUnitWaypointBehavior.setMovingFromStopped (False);
                    UnitLayer'Class (This).getUnitWaypointBehavior.addBuildingChase (allbinaryLayer, cellPosition);
                end if;
            end if;
            if UnitLayer'Class (This).getUnitWaypointBehavior.isMoving then
                TrackingEventHandler_Package.getInstance.fireEvent (UnitLayer'Class (This).getTrackingEvent);
            else
                UnitLayer'Class (This).getUnitWaypointBehavior.setMovingFromStopped (False);
            end if;
            if (UnitLayer'Class (This).getUnitWaypointBehavior.isMovingFromStopped) and then (UnitLayer'Class (This).isVisible) then
                SecondaryPlayerQueueFactory_Package.getInstance.add (This.moveSoundInterface);
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, UnitLayer_Access'(This'Unchecked_Access), To_Unbounded_String ("move"), e);
                end;
        end;
   end move;

   procedure allStop (This : in out UnitLayer) is
      velocityProperties : VelocityProperties_Access;
   begin
        velocityProperties := UnitLayer'Class (This).getVehicleProperties.getVelocityProperties;
        velocityProperties.getVelocityXBasicDecimalP.setint (0);
        velocityProperties.getVelocityYBasicDecimalP.setint (0);
   end allStop;

   procedure paint (This : in out UnitLayer; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
      viewPosition : ViewPositionBase_Access;
      viewX : Integer;
      viewY : Integer;
   begin
        if UnitLayer'Class (This).isVisible then
            AdvancedRTSGameLayer (This).paint (graphics);
            viewPosition := UnitLayer'Class (This).getViewPosition;
            viewX := viewPosition.getX;
            viewY := viewPosition.getY;
            This.decalAnimation.paintXY (graphics, viewX, viewY);
            This.rangeAnimation.paintXY (graphics, viewX, viewY);
            This.sensorRangeAnimation.paintXY (graphics, viewX, viewY);
            This.damageFloatersPaintableInterface.paint (graphics);
            This.healthBar.paint (graphics);
            This.captionAnimationHelper.paintXY (graphics, viewX, viewY);
            This.pathAnimation.paintXY (graphics, viewX, viewY);
            This.resourceAnimation.paintXY (graphics, viewX, viewY);
        end if;
   end paint;

   --  throws Exception
   procedure onBuildingEvent (This : in out UnitLayer; event_Param : access RTSLayerEvent_Package.RTSLayerEvent'Class) is
      event : constant RTSLayerEvent_Access := RTSLayerEvent_Access (event_Param);
      buildingLayer : BuildingLayer_Access;
   begin
        buildingLayer := BuildingLayer_Access (event.getRtsLayer);
        UnitLayer'Class (This).getUnitWaypointBehavior.moveAwayFromBuilding (buildingLayer);
   end onBuildingEvent;

   function getVehicleProperties (This : in out UnitLayer) return VehicleProperties_Access is
   begin
        return This.vehicleProperties;
   end getVehicleProperties;

   --  throws Exception
   procedure damage (This : in out UnitLayer; damage : Integer; damageType : Integer) is
   begin
        AdvancedRTSGameLayer (This).damage (damage, damageType);
        This.damageFloaters.add (damage);
        if (damage) > (0) then
            UnitLayer'Class (This).getHealthInterface.damage (damage);
        end if;
   end damage;

   --  throws Exception
   function getDamage (This : in out UnitLayer; damageType : Integer) return Integer is
   begin
        return 0;
   end getDamage;

   --  throws Exception
   procedure setDestroyed (This : in out UnitLayer; destroyed : Boolean) is
      damage : Integer;
   begin
        This.logUtil.putF (This.commonStrings.START, UnitLayer_Access'(This'Unchecked_Access), To_Unbounded_String ("setDestroyed"));
        AdvancedRTSGameLayer (This).setDestroyed (destroyed);
        if UnitLayer'Class (This).isDestroyed then
            WaypointEventHandlerFactory_Package.getInstance (UnitLayer'Class (This).getGroupInterface (0)).removeListener (UnitLayer'Class (This).getUnitWaypointBehavior);
            TrackingEventHandler_Package.getInstance.removeListener (UnitLayer_Access'(This'Unchecked_Access));
            BuildingEventHandler_Package.getInstance.removeListener (UnitLayer_Access'(This'Unchecked_Access));
            if not (UnitLayer'Class (This).getHealthInterface.isAlive) then
                damage := UnitLayer'Class (This).getHealthInterface.getMaxHealth;
                if (damage) > (10) then
                    SecondaryPlayerQueueFactory_Package.getInstance.add (ExplosionBasicSound_Package.getInstance);
                    if (damage) < (100) then
                        This.shakeListener.onSmallShakeEvent;
                        This.vibration.vibrate (This.duration, 0, 0);
                    elsif (damage) < (1000) then
                        This.shakeListener.onMediumShakeEvent;
                        This.vibration.vibrate ((This.duration) * (2), 0, 0);
                    elsif (damage) < (3000) then
                        This.shakeListener.onLargeShakeEvent;
                        This.vibration.vibrate ((This.duration) * (4), 0, 0);
                    end if;
                end if;
            end if;
        end if;
   end setDestroyed;

   function getLoad (This : in out UnitLayer) return Integer is
   begin
        return This.resourceLoad;
   end getLoad;

   --  throws Exception
   procedure clearResourceAnimation (This : in out UnitLayer) is
   begin
        This.resourceAnimation := IndexedAnimation_Access (NullIndexedAnimationFactory_Package.getFactoryInstance.getInstance (0));
   end clearResourceAnimation;

   --  throws Exception
   procedure setLoad (This : in out UnitLayer; resource : Integer) is
   begin
        if (resource) > (0) then
            This.resourceAnimation := IndexedAnimation_Access (This.initResourceAnimation);
        else
            UnitLayer'Class (This).clearResourceAnimation;
        end if;
        This.resourceLoad := resource;
   end setLoad;

   procedure addLoad (This : in out UnitLayer; resource : Integer) is
   begin
        This.resourceLoad := (This.resourceLoad) + (resource);
   end addLoad;

   --  throws Exception
   procedure handleCost (This : in out UnitLayer; ownerLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class) is
      ownerLayer : constant PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (ownerLayer_Param);
   begin
        if (UnitLayer'Class (This).getLoad) > (0) then
            This.CAPITAL_EVENT.setValue (UnitLayer'Class (This).getLoad);
            CapitalEventHandlerFactory_Package.getInstance (ownerLayer.getGroupInterface (0)).fireEvent (This.CAPITAL_EVENT);
            UnitLayer'Class (This).setLoad (0);
        end if;
   end handleCost;

   function createHudPaintable (This : in out UnitLayer) return SelectionHudPaintable_Access is
      rtsLayerHudPaintable : RTSLayerHudPaintable_Access;
   begin
        rtsLayerHudPaintable := RTSLayerHudPaintable_Package.getInstance;
        rtsLayerHudPaintable.setBasicColorP (This.allBinaryGameLayerManagerP.getForegroundBasicColor);
        rtsLayerHudPaintable.setRtsLayer (UnitLayer_Access'(This'Unchecked_Access));
        return SelectionHudPaintable_Access (rtsLayerHudPaintable);
   end createHudPaintable;

   function getHudPaintable (This : in out UnitLayer) return SelectionHudPaintable_Access is
      rtsLayerHudPaintable : RTSLayerHudPaintable_Access;
   begin
        rtsLayerHudPaintable := RTSLayerHudPaintable_Package.getInstance;
        return SelectionHudPaintable_Access (rtsLayerHudPaintable);
   end getHudPaintable;

   function getType (This : in out UnitLayer) return Integer is
   begin
        return UnitLayer_Package.getStaticType;
   end getType;

   function getStaticType return Integer is
   begin
        return 1;
   end getStaticType;

   function getUnitWaypointBehavior (This : in out UnitLayer) return UnitWaypointBehavior_Access is
   begin
        return UnitWaypointBehavior_Access (UnitLayer'Class (This).getWaypointBehavior);
   end getUnitWaypointBehavior;

   function getTrackingEvent (This : in out UnitLayer) return TrackingEvent_Access is
   begin
        return This.trackingEvent;
   end getTrackingEvent;

   function getCaptionAnimationHelper (This : in out UnitLayer) return CaptionAnimationHelperBase_Access is
   begin
        return This.captionAnimationHelper;
   end getCaptionAnimationHelper;

   function isSelfUpgradeable (This : in out UnitLayer) return Boolean is
   begin
        return False;
   end isSelfUpgradeable;

   function getMaxResourceLoad (This : in out UnitLayer) return Short_Integer is
   begin
        return This.maxResourceLoad;
   end getMaxResourceLoad;

   function getPartialpositionlist return BasicArrayList_Access is
   begin
        return UnitLayer_Package.partialPositionList;
   end getPartialpositionlist;

   procedure turnTo (This : in out UnitLayer; dx : Integer; dy : Integer; targetAngle_Param : Integer) is
      Java_Result : constant Boolean := UnitLayer'Class (This).turnTo (dx, dy, targetAngle_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end turnTo;

   procedure getDamage (This : in out UnitLayer; damageType : Integer) is
      Java_Result : constant Integer := UnitLayer'Class (This).getDamage (damageType);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getDamage;

begin
   null;
   partialPositionList := BasicArrayList_Access (BasicArrayListS_Package.Create (4));
   SENSOR_RANGE_MULTIPLIER := 6;
   MOVE_Field := To_Unbounded_String ("Moving");

end org.allbinary.game.layer.unit.UnitLayer_Package;


