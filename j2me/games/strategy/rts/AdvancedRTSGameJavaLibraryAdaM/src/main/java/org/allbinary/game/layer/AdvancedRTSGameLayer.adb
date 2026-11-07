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
with org.allbinary.animation.AnimationInterfaceFactoryInterface_Package; use org.allbinary.animation.AnimationInterfaceFactoryInterface_Package;
with org.allbinary.animation.AnimationInterfaceFactoryInterface_Package_References;
with org.allbinary.animation.NullAnimationFactory_Package; use org.allbinary.animation.NullAnimationFactory_Package;
with org.allbinary.animation.NullIndexedAnimationFactory_Package; use org.allbinary.animation.NullIndexedAnimationFactory_Package;
with org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package; use org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package;
with org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package_References;
with org.allbinary.animation.transition.shake.ShakeAnimationListener_Package; use org.allbinary.animation.transition.shake.ShakeAnimationListener_Package;
with org.allbinary.animation.transition.shake.ShakeAnimationListener_Package_References;
with org.allbinary.direction.Direction_Package; use org.allbinary.direction.Direction_Package;
with org.allbinary.direction.DirectionFactory_Package; use org.allbinary.direction.DirectionFactory_Package;
with org.allbinary.game.GameTypeFactory_Package; use org.allbinary.game.GameTypeFactory_Package;
with org.allbinary.game.combat.destroy.event.DestroyedEvent_Package; use org.allbinary.game.combat.destroy.event.DestroyedEvent_Package;
with org.allbinary.game.combat.destroy.event.DestroyedEvent_Package_References;
with org.allbinary.game.combat.destroy.event.DestroyedEventHandler_Package; use org.allbinary.game.combat.destroy.event.DestroyedEventHandler_Package;
with org.allbinary.game.combat.destroy.event.DestroyedEventListenerInterface_Package; use org.allbinary.game.combat.destroy.event.DestroyedEventListenerInterface_Package;
with org.allbinary.game.health.Health_Package; use org.allbinary.game.health.Health_Package;
with org.allbinary.game.health.Health_Package_References;
with org.allbinary.game.identification.Group_Package; use org.allbinary.game.identification.Group_Package;
with org.allbinary.game.identification.Group_Package_References;
with org.allbinary.game.identification.GroupFactory_Package; use org.allbinary.game.identification.GroupFactory_Package;
with org.allbinary.game.input.event.GameKeyEventFactory_Package; use org.allbinary.game.input.event.GameKeyEventFactory_Package;
with org.allbinary.game.input.form.NullRTSFormInputFactory_Package; use org.allbinary.game.input.form.NullRTSFormInputFactory_Package;
with org.allbinary.game.input.form.RTSFormInput_Package; use org.allbinary.game.input.form.RTSFormInput_Package;
with org.allbinary.game.input.form.RTSFormInput_Package_References;
with org.allbinary.game.layer.building.event.BuildingEventHandler_Package; use org.allbinary.game.layer.building.event.BuildingEventHandler_Package;
with org.allbinary.game.layer.waypoint.Waypoint2LogHelper_Package; use org.allbinary.game.layer.waypoint.Waypoint2LogHelper_Package;
with org.allbinary.game.layer.waypoint.Waypoint2LogHelper_Package_References;
with org.allbinary.game.layer.waypoint.Waypoint2SelectedLogHelper_Package; use org.allbinary.game.layer.waypoint.Waypoint2SelectedLogHelper_Package;
with org.allbinary.game.layer.waypoint.WaypointBase_Package; use org.allbinary.game.layer.waypoint.WaypointBase_Package;
with org.allbinary.game.layer.waypoint.WaypointLogHelper_Package; use org.allbinary.game.layer.waypoint.WaypointLogHelper_Package;
with org.allbinary.game.layer.waypoint.WaypointLogHelper_Package_References;
with org.allbinary.game.layer.waypoint.WaypointRunnableLogHelper_Package; use org.allbinary.game.layer.waypoint.WaypointRunnableLogHelper_Package;
with org.allbinary.game.layer.waypoint.WaypointRunnableLogHelper_Package_References;
with org.allbinary.game.layer.waypoint.WaypointRunnableSelectedLogHelper_Package; use org.allbinary.game.layer.waypoint.WaypointRunnableSelectedLogHelper_Package;
with org.allbinary.game.layer.waypoint.WaypointSelectedLogHelper_Package; use org.allbinary.game.layer.waypoint.WaypointSelectedLogHelper_Package;
with org.allbinary.game.multiplayer.layer.RemoteInfo_Package; use org.allbinary.game.multiplayer.layer.RemoteInfo_Package;
with org.allbinary.game.multiplayer.layer.RemoteInfo_Package_References;
with org.allbinary.game.tick.NullTickable_Package; use org.allbinary.game.tick.NullTickable_Package;
with org.allbinary.game.tick.TickableInterface_Package; use org.allbinary.game.tick.TickableInterface_Package;
with org.allbinary.game.tick.TickableInterface_Package_References;
with org.allbinary.game.view.TileLayerPositionIntoViewPosition_Package; use org.allbinary.game.view.TileLayerPositionIntoViewPosition_Package;
with org.allbinary.graphics.Rectangle_Package; use org.allbinary.graphics.Rectangle_Package;
with org.allbinary.graphics.Rectangle_Package_References;
with org.allbinary.graphics.RectangleFactory_Package; use org.allbinary.graphics.RectangleFactory_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package_References;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.math.AngleInfo_Package; use org.allbinary.math.AngleInfo_Package;
with org.allbinary.math.FrameUtil_Package; use org.allbinary.math.FrameUtil_Package;
with org.allbinary.media.AllBinaryVibrationME_Package; use org.allbinary.media.AllBinaryVibrationME_Package;
with org.allbinary.media.AllBinaryVibrationME_Package_References;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package; use org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References;
with org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapDirectionUtil_Package; use org.allbinary.media.graphics.geography.map.GeographicMapDirectionUtil_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.view.ViewPositionBase_Package; use org.allbinary.view.ViewPositionBase_Package;
with org.allbinary.view.ViewPositionBase_Package_References;
with org.allbinary.game.layer.NullPathFindingLayer_Package; use org.allbinary.game.layer.NullPathFindingLayer_Package;
with org.allbinary.game.layer.AdvancedRTSProperties_Package; use org.allbinary.game.layer.AdvancedRTSProperties_Package;
with org.allbinary.game.layer.AdvancedRTSProperties_Package_References;
with org.allbinary.game.layer.PathFindingLayerInterface_Package; use org.allbinary.game.layer.PathFindingLayerInterface_Package;
with org.allbinary.game.layer.PathFindingLayerInterface_Package_References;
with org.allbinary.game.layer.WaypointBehaviorBase_Package; use org.allbinary.game.layer.WaypointBehaviorBase_Package;
with org.allbinary.game.layer.WaypointBehaviorBase_Package_References;
with org.allbinary.game.layer.AdvancedRTSPlayerLayerInterface_Package; use org.allbinary.game.layer.AdvancedRTSPlayerLayerInterface_Package;
with org.allbinary.game.layer.RTSPlayerLayerInterface_Package; use org.allbinary.game.layer.RTSPlayerLayerInterface_Package;
with org.allbinary.game.layer.RTSPlayerLayerInterface_Package_References;
with org.allbinary.game.layer.RTSLayerUtil_Package; use org.allbinary.game.layer.RTSLayerUtil_Package;
with org.allbinary.game.layer.AdvancedPlayerOwnedRTSLayers_Package;
with org.allbinary.game.layer.AdvancedRTSPlayerLayerInterface_Package;
with org.allbinary.game.layer.AdvancedRTSProperties_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.math.AngleIncrementInfo_Package;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.util.event.EventListenerInterface_Package;
with org.allbinary.logic.util.event.EventStrings_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.graphics.GPoint_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.game.layer.AdvancedRTSGameLayer_Package is

   package Canvas_Package renames Standard.javax.microedition.lcdui.Canvas_Package;
   package NullAnimationFactory_Package renames Standard.org.allbinary.animation.NullAnimationFactory_Package;
   package NullIndexedAnimationFactory_Package renames Standard.org.allbinary.animation.NullIndexedAnimationFactory_Package;
   package Direction_Package renames Standard.org.allbinary.direction.Direction_Package;
   package DirectionFactory_Package renames Standard.org.allbinary.direction.DirectionFactory_Package;
   package GameTypeFactory_Package renames Standard.org.allbinary.game.GameTypeFactory_Package;
   package DestroyedEventHandler_Package renames Standard.org.allbinary.game.combat.destroy.event.DestroyedEventHandler_Package;
   package GroupFactory_Package renames Standard.org.allbinary.game.identification.GroupFactory_Package;
   package GameKeyEventFactory_Package renames Standard.org.allbinary.game.input.event.GameKeyEventFactory_Package;
   package NullRTSFormInputFactory_Package renames Standard.org.allbinary.game.input.form.NullRTSFormInputFactory_Package;
   package BuildingEventHandler_Package renames Standard.org.allbinary.game.layer.building.event.BuildingEventHandler_Package;
   package Waypoint2SelectedLogHelper_Package renames Standard.org.allbinary.game.layer.waypoint.Waypoint2SelectedLogHelper_Package;
   package WaypointBase_Package renames Standard.org.allbinary.game.layer.waypoint.WaypointBase_Package;
   package WaypointRunnableSelectedLogHelper_Package renames Standard.org.allbinary.game.layer.waypoint.WaypointRunnableSelectedLogHelper_Package;
   package WaypointSelectedLogHelper_Package renames Standard.org.allbinary.game.layer.waypoint.WaypointSelectedLogHelper_Package;
   package NullTickable_Package renames Standard.org.allbinary.game.tick.NullTickable_Package;
   package TileLayerPositionIntoViewPosition_Package renames Standard.org.allbinary.game.view.TileLayerPositionIntoViewPosition_Package;
   package RectangleFactory_Package renames Standard.org.allbinary.graphics.RectangleFactory_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package AngleInfo_Package renames Standard.org.allbinary.math.AngleInfo_Package;
   package FrameUtil_Package renames Standard.org.allbinary.math.FrameUtil_Package;
   package GeographicMapCompositeInterface_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface_Package;
   package GeographicMapDirectionUtil_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapDirectionUtil_Package;
   subtype AnimationInterfaceFactoryInterface_Access is org.allbinary.animation.AnimationInterfaceFactoryInterface_Package_References.AnimationInterfaceFactoryInterface_Access;
   function "=" (Left, Right : AnimationInterfaceFactoryInterface_Access) return Boolean renames org.allbinary.animation.AnimationInterfaceFactoryInterface_Package_References."=";
   subtype AnimationInterfaceFactoryInterface_Access_Array is org.allbinary.animation.AnimationInterfaceFactoryInterface_Package_References.AnimationInterfaceFactoryInterface_Access_Array;
   function "=" (Left, Right : AnimationInterfaceFactoryInterface_Access_Array) return Boolean renames org.allbinary.animation.AnimationInterfaceFactoryInterface_Package_References."=";
   subtype AnimationInterfaceFactoryInterface_Access_Array_Access is org.allbinary.animation.AnimationInterfaceFactoryInterface_Package_References.AnimationInterfaceFactoryInterface_Access_Array_Access;
   function "=" (Left, Right : AnimationInterfaceFactoryInterface_Access_Array_Access) return Boolean renames org.allbinary.animation.AnimationInterfaceFactoryInterface_Package_References."=";
   subtype AnimationInterfaceFactoryInterface_Access_Array_Access_Array is org.allbinary.animation.AnimationInterfaceFactoryInterface_Package_References.AnimationInterfaceFactoryInterface_Access_Array_Access_Array;
   function "=" (Left, Right : AnimationInterfaceFactoryInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.AnimationInterfaceFactoryInterface_Package_References."=";
   subtype AnimationInterfaceFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.animation.AnimationInterfaceFactoryInterface_Package_References.AnimationInterfaceFactoryInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AnimationInterfaceFactoryInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.AnimationInterfaceFactoryInterface_Package_References."=";
   subtype ProceduralAnimationInterfaceFactoryInterface_Access is org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package_References.ProceduralAnimationInterfaceFactoryInterface_Access;
   function "=" (Left, Right : ProceduralAnimationInterfaceFactoryInterface_Access) return Boolean renames org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package_References."=";
   subtype ProceduralAnimationInterfaceFactoryInterface_Access_Array is org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package_References.ProceduralAnimationInterfaceFactoryInterface_Access_Array;
   function "=" (Left, Right : ProceduralAnimationInterfaceFactoryInterface_Access_Array) return Boolean renames org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package_References."=";
   subtype ProceduralAnimationInterfaceFactoryInterface_Access_Array_Access is org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package_References.ProceduralAnimationInterfaceFactoryInterface_Access_Array_Access;
   function "=" (Left, Right : ProceduralAnimationInterfaceFactoryInterface_Access_Array_Access) return Boolean renames org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package_References."=";
   subtype ProceduralAnimationInterfaceFactoryInterface_Access_Array_Access_Array is org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package_References.ProceduralAnimationInterfaceFactoryInterface_Access_Array_Access_Array;
   function "=" (Left, Right : ProceduralAnimationInterfaceFactoryInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package_References."=";
   subtype ProceduralAnimationInterfaceFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package_References.ProceduralAnimationInterfaceFactoryInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ProceduralAnimationInterfaceFactoryInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package_References."=";
   subtype ShakeAnimationListener_Access is org.allbinary.animation.transition.shake.ShakeAnimationListener_Package_References.ShakeAnimationListener_Access;
   function "=" (Left, Right : ShakeAnimationListener_Access) return Boolean renames org.allbinary.animation.transition.shake.ShakeAnimationListener_Package_References."=";
   subtype ShakeAnimationListener_Access_Array is org.allbinary.animation.transition.shake.ShakeAnimationListener_Package_References.ShakeAnimationListener_Access_Array;
   function "=" (Left, Right : ShakeAnimationListener_Access_Array) return Boolean renames org.allbinary.animation.transition.shake.ShakeAnimationListener_Package_References."=";
   subtype ShakeAnimationListener_Access_Array_Access is org.allbinary.animation.transition.shake.ShakeAnimationListener_Package_References.ShakeAnimationListener_Access_Array_Access;
   function "=" (Left, Right : ShakeAnimationListener_Access_Array_Access) return Boolean renames org.allbinary.animation.transition.shake.ShakeAnimationListener_Package_References."=";
   subtype ShakeAnimationListener_Access_Array_Access_Array is org.allbinary.animation.transition.shake.ShakeAnimationListener_Package_References.ShakeAnimationListener_Access_Array_Access_Array;
   function "=" (Left, Right : ShakeAnimationListener_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.transition.shake.ShakeAnimationListener_Package_References."=";
   subtype ShakeAnimationListener_Access_Array_Access_Array_Access is org.allbinary.animation.transition.shake.ShakeAnimationListener_Package_References.ShakeAnimationListener_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ShakeAnimationListener_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.transition.shake.ShakeAnimationListener_Package_References."=";
   subtype DestroyedEvent_Access is org.allbinary.game.combat.destroy.event.DestroyedEvent_Package_References.DestroyedEvent_Access;
   function "=" (Left, Right : DestroyedEvent_Access) return Boolean renames org.allbinary.game.combat.destroy.event.DestroyedEvent_Package_References."=";
   subtype DestroyedEvent_Access_Array is org.allbinary.game.combat.destroy.event.DestroyedEvent_Package_References.DestroyedEvent_Access_Array;
   function "=" (Left, Right : DestroyedEvent_Access_Array) return Boolean renames org.allbinary.game.combat.destroy.event.DestroyedEvent_Package_References."=";
   subtype DestroyedEvent_Access_Array_Access is org.allbinary.game.combat.destroy.event.DestroyedEvent_Package_References.DestroyedEvent_Access_Array_Access;
   function "=" (Left, Right : DestroyedEvent_Access_Array_Access) return Boolean renames org.allbinary.game.combat.destroy.event.DestroyedEvent_Package_References."=";
   subtype DestroyedEvent_Access_Array_Access_Array is org.allbinary.game.combat.destroy.event.DestroyedEvent_Package_References.DestroyedEvent_Access_Array_Access_Array;
   function "=" (Left, Right : DestroyedEvent_Access_Array_Access_Array) return Boolean renames org.allbinary.game.combat.destroy.event.DestroyedEvent_Package_References."=";
   subtype DestroyedEvent_Access_Array_Access_Array_Access is org.allbinary.game.combat.destroy.event.DestroyedEvent_Package_References.DestroyedEvent_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DestroyedEvent_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.combat.destroy.event.DestroyedEvent_Package_References."=";
   subtype Health_Access is org.allbinary.game.health.Health_Package_References.Health_Access;
   function "=" (Left, Right : Health_Access) return Boolean renames org.allbinary.game.health.Health_Package_References."=";
   subtype Health_Access_Array is org.allbinary.game.health.Health_Package_References.Health_Access_Array;
   function "=" (Left, Right : Health_Access_Array) return Boolean renames org.allbinary.game.health.Health_Package_References."=";
   subtype Health_Access_Array_Access is org.allbinary.game.health.Health_Package_References.Health_Access_Array_Access;
   function "=" (Left, Right : Health_Access_Array_Access) return Boolean renames org.allbinary.game.health.Health_Package_References."=";
   subtype Health_Access_Array_Access_Array is org.allbinary.game.health.Health_Package_References.Health_Access_Array_Access_Array;
   function "=" (Left, Right : Health_Access_Array_Access_Array) return Boolean renames org.allbinary.game.health.Health_Package_References."=";
   subtype Health_Access_Array_Access_Array_Access is org.allbinary.game.health.Health_Package_References.Health_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Health_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.health.Health_Package_References."=";
   subtype Group_Access is org.allbinary.game.identification.Group_Package_References.Group_Access;
   function "=" (Left, Right : Group_Access) return Boolean renames org.allbinary.game.identification.Group_Package_References."=";
   subtype Group_Access_Array is org.allbinary.game.identification.Group_Package_References.Group_Access_Array;
   function "=" (Left, Right : Group_Access_Array) return Boolean renames org.allbinary.game.identification.Group_Package_References."=";
   subtype Group_Access_Array_Access is org.allbinary.game.identification.Group_Package_References.Group_Access_Array_Access;
   function "=" (Left, Right : Group_Access_Array_Access) return Boolean renames org.allbinary.game.identification.Group_Package_References."=";
   subtype Group_Access_Array_Access_Array is org.allbinary.game.identification.Group_Package_References.Group_Access_Array_Access_Array;
   function "=" (Left, Right : Group_Access_Array_Access_Array) return Boolean renames org.allbinary.game.identification.Group_Package_References."=";
   subtype Group_Access_Array_Access_Array_Access is org.allbinary.game.identification.Group_Package_References.Group_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Group_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.identification.Group_Package_References."=";
   subtype RTSFormInput_Access is org.allbinary.game.input.form.RTSFormInput_Package_References.RTSFormInput_Access;
   function "=" (Left, Right : RTSFormInput_Access) return Boolean renames org.allbinary.game.input.form.RTSFormInput_Package_References."=";
   subtype RTSFormInput_Access_Array is org.allbinary.game.input.form.RTSFormInput_Package_References.RTSFormInput_Access_Array;
   function "=" (Left, Right : RTSFormInput_Access_Array) return Boolean renames org.allbinary.game.input.form.RTSFormInput_Package_References."=";
   subtype RTSFormInput_Access_Array_Access is org.allbinary.game.input.form.RTSFormInput_Package_References.RTSFormInput_Access_Array_Access;
   function "=" (Left, Right : RTSFormInput_Access_Array_Access) return Boolean renames org.allbinary.game.input.form.RTSFormInput_Package_References."=";
   subtype RTSFormInput_Access_Array_Access_Array is org.allbinary.game.input.form.RTSFormInput_Package_References.RTSFormInput_Access_Array_Access_Array;
   function "=" (Left, Right : RTSFormInput_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.form.RTSFormInput_Package_References."=";
   subtype RTSFormInput_Access_Array_Access_Array_Access is org.allbinary.game.input.form.RTSFormInput_Package_References.RTSFormInput_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RTSFormInput_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.form.RTSFormInput_Package_References."=";
   subtype Waypoint2LogHelper_Access is org.allbinary.game.layer.waypoint.Waypoint2LogHelper_Package_References.Waypoint2LogHelper_Access;
   function "=" (Left, Right : Waypoint2LogHelper_Access) return Boolean renames org.allbinary.game.layer.waypoint.Waypoint2LogHelper_Package_References."=";
   subtype Waypoint2LogHelper_Access_Array is org.allbinary.game.layer.waypoint.Waypoint2LogHelper_Package_References.Waypoint2LogHelper_Access_Array;
   function "=" (Left, Right : Waypoint2LogHelper_Access_Array) return Boolean renames org.allbinary.game.layer.waypoint.Waypoint2LogHelper_Package_References."=";
   subtype Waypoint2LogHelper_Access_Array_Access is org.allbinary.game.layer.waypoint.Waypoint2LogHelper_Package_References.Waypoint2LogHelper_Access_Array_Access;
   function "=" (Left, Right : Waypoint2LogHelper_Access_Array_Access) return Boolean renames org.allbinary.game.layer.waypoint.Waypoint2LogHelper_Package_References."=";
   subtype Waypoint2LogHelper_Access_Array_Access_Array is org.allbinary.game.layer.waypoint.Waypoint2LogHelper_Package_References.Waypoint2LogHelper_Access_Array_Access_Array;
   function "=" (Left, Right : Waypoint2LogHelper_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.waypoint.Waypoint2LogHelper_Package_References."=";
   subtype Waypoint2LogHelper_Access_Array_Access_Array_Access is org.allbinary.game.layer.waypoint.Waypoint2LogHelper_Package_References.Waypoint2LogHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Waypoint2LogHelper_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.waypoint.Waypoint2LogHelper_Package_References."=";
   subtype WaypointLogHelper_Access is org.allbinary.game.layer.waypoint.WaypointLogHelper_Package_References.WaypointLogHelper_Access;
   function "=" (Left, Right : WaypointLogHelper_Access) return Boolean renames org.allbinary.game.layer.waypoint.WaypointLogHelper_Package_References."=";
   subtype WaypointLogHelper_Access_Array is org.allbinary.game.layer.waypoint.WaypointLogHelper_Package_References.WaypointLogHelper_Access_Array;
   function "=" (Left, Right : WaypointLogHelper_Access_Array) return Boolean renames org.allbinary.game.layer.waypoint.WaypointLogHelper_Package_References."=";
   subtype WaypointLogHelper_Access_Array_Access is org.allbinary.game.layer.waypoint.WaypointLogHelper_Package_References.WaypointLogHelper_Access_Array_Access;
   function "=" (Left, Right : WaypointLogHelper_Access_Array_Access) return Boolean renames org.allbinary.game.layer.waypoint.WaypointLogHelper_Package_References."=";
   subtype WaypointLogHelper_Access_Array_Access_Array is org.allbinary.game.layer.waypoint.WaypointLogHelper_Package_References.WaypointLogHelper_Access_Array_Access_Array;
   function "=" (Left, Right : WaypointLogHelper_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.waypoint.WaypointLogHelper_Package_References."=";
   subtype WaypointLogHelper_Access_Array_Access_Array_Access is org.allbinary.game.layer.waypoint.WaypointLogHelper_Package_References.WaypointLogHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : WaypointLogHelper_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.waypoint.WaypointLogHelper_Package_References."=";
   subtype WaypointRunnableLogHelper_Access is org.allbinary.game.layer.waypoint.WaypointRunnableLogHelper_Package_References.WaypointRunnableLogHelper_Access;
   function "=" (Left, Right : WaypointRunnableLogHelper_Access) return Boolean renames org.allbinary.game.layer.waypoint.WaypointRunnableLogHelper_Package_References."=";
   subtype WaypointRunnableLogHelper_Access_Array is org.allbinary.game.layer.waypoint.WaypointRunnableLogHelper_Package_References.WaypointRunnableLogHelper_Access_Array;
   function "=" (Left, Right : WaypointRunnableLogHelper_Access_Array) return Boolean renames org.allbinary.game.layer.waypoint.WaypointRunnableLogHelper_Package_References."=";
   subtype WaypointRunnableLogHelper_Access_Array_Access is org.allbinary.game.layer.waypoint.WaypointRunnableLogHelper_Package_References.WaypointRunnableLogHelper_Access_Array_Access;
   function "=" (Left, Right : WaypointRunnableLogHelper_Access_Array_Access) return Boolean renames org.allbinary.game.layer.waypoint.WaypointRunnableLogHelper_Package_References."=";
   subtype WaypointRunnableLogHelper_Access_Array_Access_Array is org.allbinary.game.layer.waypoint.WaypointRunnableLogHelper_Package_References.WaypointRunnableLogHelper_Access_Array_Access_Array;
   function "=" (Left, Right : WaypointRunnableLogHelper_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.waypoint.WaypointRunnableLogHelper_Package_References."=";
   subtype WaypointRunnableLogHelper_Access_Array_Access_Array_Access is org.allbinary.game.layer.waypoint.WaypointRunnableLogHelper_Package_References.WaypointRunnableLogHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : WaypointRunnableLogHelper_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.waypoint.WaypointRunnableLogHelper_Package_References."=";
   subtype RemoteInfo_Access is org.allbinary.game.multiplayer.layer.RemoteInfo_Package_References.RemoteInfo_Access;
   function "=" (Left, Right : RemoteInfo_Access) return Boolean renames org.allbinary.game.multiplayer.layer.RemoteInfo_Package_References."=";
   subtype RemoteInfo_Access_Array is org.allbinary.game.multiplayer.layer.RemoteInfo_Package_References.RemoteInfo_Access_Array;
   function "=" (Left, Right : RemoteInfo_Access_Array) return Boolean renames org.allbinary.game.multiplayer.layer.RemoteInfo_Package_References."=";
   subtype RemoteInfo_Access_Array_Access is org.allbinary.game.multiplayer.layer.RemoteInfo_Package_References.RemoteInfo_Access_Array_Access;
   function "=" (Left, Right : RemoteInfo_Access_Array_Access) return Boolean renames org.allbinary.game.multiplayer.layer.RemoteInfo_Package_References."=";
   subtype RemoteInfo_Access_Array_Access_Array is org.allbinary.game.multiplayer.layer.RemoteInfo_Package_References.RemoteInfo_Access_Array_Access_Array;
   function "=" (Left, Right : RemoteInfo_Access_Array_Access_Array) return Boolean renames org.allbinary.game.multiplayer.layer.RemoteInfo_Package_References."=";
   subtype RemoteInfo_Access_Array_Access_Array_Access is org.allbinary.game.multiplayer.layer.RemoteInfo_Package_References.RemoteInfo_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RemoteInfo_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.multiplayer.layer.RemoteInfo_Package_References."=";
   subtype TickableInterface_Access is org.allbinary.game.tick.TickableInterface_Package_References.TickableInterface_Access;
   function "=" (Left, Right : TickableInterface_Access) return Boolean renames org.allbinary.game.tick.TickableInterface_Package_References."=";
   subtype TickableInterface_Access_Array is org.allbinary.game.tick.TickableInterface_Package_References.TickableInterface_Access_Array;
   function "=" (Left, Right : TickableInterface_Access_Array) return Boolean renames org.allbinary.game.tick.TickableInterface_Package_References."=";
   subtype TickableInterface_Access_Array_Access is org.allbinary.game.tick.TickableInterface_Package_References.TickableInterface_Access_Array_Access;
   function "=" (Left, Right : TickableInterface_Access_Array_Access) return Boolean renames org.allbinary.game.tick.TickableInterface_Package_References."=";
   subtype TickableInterface_Access_Array_Access_Array is org.allbinary.game.tick.TickableInterface_Package_References.TickableInterface_Access_Array_Access_Array;
   function "=" (Left, Right : TickableInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.tick.TickableInterface_Package_References."=";
   subtype TickableInterface_Access_Array_Access_Array_Access is org.allbinary.game.tick.TickableInterface_Package_References.TickableInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TickableInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.tick.TickableInterface_Package_References."=";
   subtype Rectangle_Access is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access;
   function "=" (Left, Right : Rectangle_Access) return Boolean renames org.allbinary.graphics.Rectangle_Package_References."=";
   subtype Rectangle_Access_Array is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array;
   function "=" (Left, Right : Rectangle_Access_Array) return Boolean renames org.allbinary.graphics.Rectangle_Package_References."=";
   subtype Rectangle_Access_Array_Access is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array_Access;
   function "=" (Left, Right : Rectangle_Access_Array_Access) return Boolean renames org.allbinary.graphics.Rectangle_Package_References."=";
   subtype Rectangle_Access_Array_Access_Array is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array_Access_Array;
   function "=" (Left, Right : Rectangle_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.Rectangle_Package_References."=";
   subtype Rectangle_Access_Array_Access_Array_Access is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Rectangle_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.Rectangle_Package_References."=";
   subtype AllBinaryLayer_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access;
   function "=" (Left, Right : AllBinaryLayer_Access) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryLayer_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array;
   function "=" (Left, Right : AllBinaryLayer_Access_Array) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryLayer_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access;
   function "=" (Left, Right : AllBinaryLayer_Access_Array_Access) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryLayer_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryLayer_Access_Array_Access_Array) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryLayer_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryLayer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryVibrationME_Access is org.allbinary.media.AllBinaryVibrationME_Package_References.AllBinaryVibrationME_Access;
   function "=" (Left, Right : AllBinaryVibrationME_Access) return Boolean renames org.allbinary.media.AllBinaryVibrationME_Package_References."=";
   subtype AllBinaryVibrationME_Access_Array is org.allbinary.media.AllBinaryVibrationME_Package_References.AllBinaryVibrationME_Access_Array;
   function "=" (Left, Right : AllBinaryVibrationME_Access_Array) return Boolean renames org.allbinary.media.AllBinaryVibrationME_Package_References."=";
   subtype AllBinaryVibrationME_Access_Array_Access is org.allbinary.media.AllBinaryVibrationME_Package_References.AllBinaryVibrationME_Access_Array_Access;
   function "=" (Left, Right : AllBinaryVibrationME_Access_Array_Access) return Boolean renames org.allbinary.media.AllBinaryVibrationME_Package_References."=";
   subtype AllBinaryVibrationME_Access_Array_Access_Array is org.allbinary.media.AllBinaryVibrationME_Package_References.AllBinaryVibrationME_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryVibrationME_Access_Array_Access_Array) return Boolean renames org.allbinary.media.AllBinaryVibrationME_Package_References."=";
   subtype AllBinaryVibrationME_Access_Array_Access_Array_Access is org.allbinary.media.AllBinaryVibrationME_Package_References.AllBinaryVibrationME_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryVibrationME_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.AllBinaryVibrationME_Package_References."=";
   subtype BasicGeographicMap_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access;
   function "=" (Left, Right : BasicGeographicMap_Access) return Boolean renames org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References."=";
   subtype BasicGeographicMap_Access_Array is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array;
   function "=" (Left, Right : BasicGeographicMap_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References."=";
   subtype BasicGeographicMap_Access_Array_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array_Access;
   function "=" (Left, Right : BasicGeographicMap_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References."=";
   subtype BasicGeographicMap_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array_Access_Array;
   function "=" (Left, Right : BasicGeographicMap_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References."=";
   subtype BasicGeographicMap_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicGeographicMap_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References."=";
   subtype GeographicMapCellPosition_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access;
   function "=" (Left, Right : GeographicMapCellPosition_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References."=";
   subtype GeographicMapCellPosition_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array;
   function "=" (Left, Right : GeographicMapCellPosition_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References."=";
   subtype GeographicMapCellPosition_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellPosition_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References."=";
   subtype GeographicMapCellPosition_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array_Access_Array;
   function "=" (Left, Right : GeographicMapCellPosition_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References."=";
   subtype GeographicMapCellPosition_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellPosition_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References."=";
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   function "=" (Left, Right : BasicArrayList_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype ViewPositionBase_Access is org.allbinary.view.ViewPositionBase_Package_References.ViewPositionBase_Access;
   function "=" (Left, Right : ViewPositionBase_Access) return Boolean renames org.allbinary.view.ViewPositionBase_Package_References."=";
   subtype ViewPositionBase_Access_Array is org.allbinary.view.ViewPositionBase_Package_References.ViewPositionBase_Access_Array;
   function "=" (Left, Right : ViewPositionBase_Access_Array) return Boolean renames org.allbinary.view.ViewPositionBase_Package_References."=";
   subtype ViewPositionBase_Access_Array_Access is org.allbinary.view.ViewPositionBase_Package_References.ViewPositionBase_Access_Array_Access;
   function "=" (Left, Right : ViewPositionBase_Access_Array_Access) return Boolean renames org.allbinary.view.ViewPositionBase_Package_References."=";
   subtype ViewPositionBase_Access_Array_Access_Array is org.allbinary.view.ViewPositionBase_Package_References.ViewPositionBase_Access_Array_Access_Array;
   function "=" (Left, Right : ViewPositionBase_Access_Array_Access_Array) return Boolean renames org.allbinary.view.ViewPositionBase_Package_References."=";
   subtype ViewPositionBase_Access_Array_Access_Array_Access is org.allbinary.view.ViewPositionBase_Package_References.ViewPositionBase_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ViewPositionBase_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.view.ViewPositionBase_Package_References."=";
   subtype AdvancedRTSProperties_Access is org.allbinary.game.layer.AdvancedRTSProperties_Package_References.AdvancedRTSProperties_Access;
   function "=" (Left, Right : AdvancedRTSProperties_Access) return Boolean renames org.allbinary.game.layer.AdvancedRTSProperties_Package_References."=";
   subtype AdvancedRTSProperties_Access_Array is org.allbinary.game.layer.AdvancedRTSProperties_Package_References.AdvancedRTSProperties_Access_Array;
   function "=" (Left, Right : AdvancedRTSProperties_Access_Array) return Boolean renames org.allbinary.game.layer.AdvancedRTSProperties_Package_References."=";
   subtype AdvancedRTSProperties_Access_Array_Access is org.allbinary.game.layer.AdvancedRTSProperties_Package_References.AdvancedRTSProperties_Access_Array_Access;
   function "=" (Left, Right : AdvancedRTSProperties_Access_Array_Access) return Boolean renames org.allbinary.game.layer.AdvancedRTSProperties_Package_References."=";
   subtype AdvancedRTSProperties_Access_Array_Access_Array is org.allbinary.game.layer.AdvancedRTSProperties_Package_References.AdvancedRTSProperties_Access_Array_Access_Array;
   function "=" (Left, Right : AdvancedRTSProperties_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.AdvancedRTSProperties_Package_References."=";
   subtype AdvancedRTSProperties_Access_Array_Access_Array_Access is org.allbinary.game.layer.AdvancedRTSProperties_Package_References.AdvancedRTSProperties_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AdvancedRTSProperties_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.AdvancedRTSProperties_Package_References."=";
   subtype PathFindingLayerInterface_Access is org.allbinary.game.layer.PathFindingLayerInterface_Package_References.PathFindingLayerInterface_Access;
   function "=" (Left, Right : PathFindingLayerInterface_Access) return Boolean renames org.allbinary.game.layer.PathFindingLayerInterface_Package_References."=";
   subtype PathFindingLayerInterface_Access_Array is org.allbinary.game.layer.PathFindingLayerInterface_Package_References.PathFindingLayerInterface_Access_Array;
   function "=" (Left, Right : PathFindingLayerInterface_Access_Array) return Boolean renames org.allbinary.game.layer.PathFindingLayerInterface_Package_References."=";
   subtype PathFindingLayerInterface_Access_Array_Access is org.allbinary.game.layer.PathFindingLayerInterface_Package_References.PathFindingLayerInterface_Access_Array_Access;
   function "=" (Left, Right : PathFindingLayerInterface_Access_Array_Access) return Boolean renames org.allbinary.game.layer.PathFindingLayerInterface_Package_References."=";
   subtype PathFindingLayerInterface_Access_Array_Access_Array is org.allbinary.game.layer.PathFindingLayerInterface_Package_References.PathFindingLayerInterface_Access_Array_Access_Array;
   function "=" (Left, Right : PathFindingLayerInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.PathFindingLayerInterface_Package_References."=";
   subtype PathFindingLayerInterface_Access_Array_Access_Array_Access is org.allbinary.game.layer.PathFindingLayerInterface_Package_References.PathFindingLayerInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PathFindingLayerInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.PathFindingLayerInterface_Package_References."=";
   subtype WaypointBehaviorBase_Access is org.allbinary.game.layer.WaypointBehaviorBase_Package_References.WaypointBehaviorBase_Access;
   function "=" (Left, Right : WaypointBehaviorBase_Access) return Boolean renames org.allbinary.game.layer.WaypointBehaviorBase_Package_References."=";
   subtype WaypointBehaviorBase_Access_Array is org.allbinary.game.layer.WaypointBehaviorBase_Package_References.WaypointBehaviorBase_Access_Array;
   function "=" (Left, Right : WaypointBehaviorBase_Access_Array) return Boolean renames org.allbinary.game.layer.WaypointBehaviorBase_Package_References."=";
   subtype WaypointBehaviorBase_Access_Array_Access is org.allbinary.game.layer.WaypointBehaviorBase_Package_References.WaypointBehaviorBase_Access_Array_Access;
   function "=" (Left, Right : WaypointBehaviorBase_Access_Array_Access) return Boolean renames org.allbinary.game.layer.WaypointBehaviorBase_Package_References."=";
   subtype WaypointBehaviorBase_Access_Array_Access_Array is org.allbinary.game.layer.WaypointBehaviorBase_Package_References.WaypointBehaviorBase_Access_Array_Access_Array;
   function "=" (Left, Right : WaypointBehaviorBase_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.WaypointBehaviorBase_Package_References."=";
   subtype WaypointBehaviorBase_Access_Array_Access_Array_Access is org.allbinary.game.layer.WaypointBehaviorBase_Package_References.WaypointBehaviorBase_Access_Array_Access_Array_Access;
   function "=" (Left, Right : WaypointBehaviorBase_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.WaypointBehaviorBase_Package_References."=";
   subtype RTSPlayerLayerInterface_Access is org.allbinary.game.layer.RTSPlayerLayerInterface_Package_References.RTSPlayerLayerInterface_Access;
   function "=" (Left, Right : RTSPlayerLayerInterface_Access) return Boolean renames org.allbinary.game.layer.RTSPlayerLayerInterface_Package_References."=";
   subtype RTSPlayerLayerInterface_Access_Array is org.allbinary.game.layer.RTSPlayerLayerInterface_Package_References.RTSPlayerLayerInterface_Access_Array;
   function "=" (Left, Right : RTSPlayerLayerInterface_Access_Array) return Boolean renames org.allbinary.game.layer.RTSPlayerLayerInterface_Package_References."=";
   subtype RTSPlayerLayerInterface_Access_Array_Access is org.allbinary.game.layer.RTSPlayerLayerInterface_Package_References.RTSPlayerLayerInterface_Access_Array_Access;
   function "=" (Left, Right : RTSPlayerLayerInterface_Access_Array_Access) return Boolean renames org.allbinary.game.layer.RTSPlayerLayerInterface_Package_References."=";
   subtype RTSPlayerLayerInterface_Access_Array_Access_Array is org.allbinary.game.layer.RTSPlayerLayerInterface_Package_References.RTSPlayerLayerInterface_Access_Array_Access_Array;
   function "=" (Left, Right : RTSPlayerLayerInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.RTSPlayerLayerInterface_Package_References."=";
   subtype RTSPlayerLayerInterface_Access_Array_Access_Array_Access is org.allbinary.game.layer.RTSPlayerLayerInterface_Package_References.RTSPlayerLayerInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RTSPlayerLayerInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.RTSPlayerLayerInterface_Package_References."=";
   procedure Initialize_Fields (This : in out AdvancedRTSGameLayer'Class) is
   begin
      null;
      
      
      
      This.parentLayer := PathFindingLayerInterface_Access (NullPathFindingLayer_Package.NULL_PATH_FINDING_LAYER);
      This.waypointBehaviorBase := TickableInterface_Access (NullTickable_Package.getInstance);
   end Initialize_Fields;


   --  throws Exception
   function createSimulated return AdvancedRTSGameLayer_Access is
      nullAnimationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface_Access;
      nullIndexedAnimationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface_Access;
   begin
        nullAnimationInterfaceFactoryInterface := AnimationInterfaceFactoryInterface_Access (NullAnimationFactory_Package.getFactoryInstance);
        nullIndexedAnimationInterfaceFactoryInterface := AnimationInterfaceFactoryInterface_Access (NullIndexedAnimationFactory_Package.getFactoryInstance);
        return AdvancedRTSGameLayer_Package.Create (RemoteInfo_Package.REMOTE_INFO, NullPathFindingLayer_Package.NULL_PATH_FINDING_LAYER, AdvancedRTSProperties_Package.createPropertiesSimulated, GroupFactory_Package.getInstance.NULL_GROUP_ARRAY, StringUtil_Package.getInstance.EMPTY_STRING, StringUtil_Package.getInstance.EMPTY_STRING, Health_Package.NULL_HEALTH, NullRTSFormInputFactory_Package.getInstance, nullAnimationInterfaceFactoryInterface, nullIndexedAnimationInterfaceFactoryInterface, nullAnimationInterfaceFactoryInterface, nullAnimationInterfaceFactoryInterface, nullIndexedAnimationInterfaceFactoryInterface, NullIndexedAnimationFactory_Package.getFactoryInstance, RectangleFactory_Package.SINGLETON, 0, 0, TileLayerPositionIntoViewPosition_Package.Create);
   end createSimulated;

   procedure Initialize (This : in out AdvancedRTSGameLayer'Class; remoteInfo_Param : access RemoteInfo_Package.RemoteInfo'Class; parentLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; advancedRTSProperties_Param : access AdvancedRTSProperties_Package.AdvancedRTSProperties'Class; groupInterface : Group_Access_Array_Access; rootName : Unbounded_String; name : Unbounded_String; healthInterface_Param : access Health_Package.Health'Class; rtsFormInput_Param : access RTSFormInput_Package.RTSFormInput'Class; animationInterfaceFactoryInterface_Param : access AnimationInterfaceFactoryInterface_Package.AnimationInterfaceFactoryInterface'Class; emptyAnimationInterfaceFactoryInterface_Param : access AnimationInterfaceFactoryInterface_Package.AnimationInterfaceFactoryInterface'Class; baseAnimationInterfaceFactoryInterface_Param : access AnimationInterfaceFactoryInterface_Package.AnimationInterfaceFactoryInterface'Class; buildAnimationInterfaceFactoryInterface_Param : access AnimationInterfaceFactoryInterface_Package.AnimationInterfaceFactoryInterface'Class; verticleBuildAnimationInterfaceFactoryInterface_Param : access AnimationInterfaceFactoryInterface_Package.AnimationInterfaceFactoryInterface'Class; proceduralAnimationInterfaceFactoryInterface_Param : access ProceduralAnimationInterfaceFactoryInterface_Package.ProceduralAnimationInterfaceFactoryInterface'Class; rectangle_Param : access Rectangle_Package.Rectangle'Class; x : Integer; y : Integer; viewPosition_Param : access ViewPositionBase_Package.ViewPositionBase'Class) is
      remoteInfo : constant RemoteInfo_Access := RemoteInfo_Access (remoteInfo_Param);
      parentLayer : constant PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (parentLayer_Param);
      advancedRTSProperties : constant AdvancedRTSProperties_Access := AdvancedRTSProperties_Access (advancedRTSProperties_Param);
      healthInterface : constant Health_Access := Health_Access (healthInterface_Param);
      rtsFormInput : constant RTSFormInput_Access := RTSFormInput_Access (rtsFormInput_Param);
      animationInterfaceFactoryInterface : constant AnimationInterfaceFactoryInterface_Access := AnimationInterfaceFactoryInterface_Access (animationInterfaceFactoryInterface_Param);
      emptyAnimationInterfaceFactoryInterface : constant AnimationInterfaceFactoryInterface_Access := AnimationInterfaceFactoryInterface_Access (emptyAnimationInterfaceFactoryInterface_Param);
      baseAnimationInterfaceFactoryInterface : constant AnimationInterfaceFactoryInterface_Access := AnimationInterfaceFactoryInterface_Access (baseAnimationInterfaceFactoryInterface_Param);
      buildAnimationInterfaceFactoryInterface : constant AnimationInterfaceFactoryInterface_Access := AnimationInterfaceFactoryInterface_Access (buildAnimationInterfaceFactoryInterface_Param);
      verticleBuildAnimationInterfaceFactoryInterface : constant AnimationInterfaceFactoryInterface_Access := AnimationInterfaceFactoryInterface_Access (verticleBuildAnimationInterfaceFactoryInterface_Param);
      proceduralAnimationInterfaceFactoryInterface : constant ProceduralAnimationInterfaceFactoryInterface_Access := ProceduralAnimationInterfaceFactoryInterface_Access (proceduralAnimationInterfaceFactoryInterface_Param);
      rectangle : constant Rectangle_Access := Rectangle_Access (rectangle_Param);
      viewPosition : constant ViewPositionBase_Access := ViewPositionBase_Access (viewPosition_Param);
   begin
        RTSLayer_Package.Initialize (This, remoteInfo, groupInterface, rootName, name, healthInterface, rtsFormInput, animationInterfaceFactoryInterface, emptyAnimationInterfaceFactoryInterface, baseAnimationInterfaceFactoryInterface, buildAnimationInterfaceFactoryInterface, verticleBuildAnimationInterfaceFactoryInterface, proceduralAnimationInterfaceFactoryInterface, rectangle, x, y, viewPosition);
        Initialize_Fields (This);
        AdvancedRTSGameLayer'Class (This).setVisible (False);
        AdvancedRTSGameLayer'Class (This).setWaypointBehavior (WaypointBehaviorBase_Package.Create);
        This.shakeListener := ShakeAnimationListener_Access (advancedRTSProperties.shakeListener);
        This.vibration := AllBinaryVibrationME_Access (advancedRTSProperties.vibration);
        This.duration := advancedRTSProperties.duration;
        AdvancedRTSGameLayer'Class (This).setParentLayer (parentLayer);
   end Initialize;

   function Create (remoteInfo_Param : access RemoteInfo_Package.RemoteInfo'Class; parentLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; advancedRTSProperties_Param : access AdvancedRTSProperties_Package.AdvancedRTSProperties'Class; groupInterface : Group_Access_Array_Access; rootName : Unbounded_String; name : Unbounded_String; healthInterface_Param : access Health_Package.Health'Class; rtsFormInput_Param : access RTSFormInput_Package.RTSFormInput'Class; animationInterfaceFactoryInterface_Param : access AnimationInterfaceFactoryInterface_Package.AnimationInterfaceFactoryInterface'Class; emptyAnimationInterfaceFactoryInterface_Param : access AnimationInterfaceFactoryInterface_Package.AnimationInterfaceFactoryInterface'Class; baseAnimationInterfaceFactoryInterface_Param : access AnimationInterfaceFactoryInterface_Package.AnimationInterfaceFactoryInterface'Class; buildAnimationInterfaceFactoryInterface_Param : access AnimationInterfaceFactoryInterface_Package.AnimationInterfaceFactoryInterface'Class; verticleBuildAnimationInterfaceFactoryInterface_Param : access AnimationInterfaceFactoryInterface_Package.AnimationInterfaceFactoryInterface'Class; proceduralAnimationInterfaceFactoryInterface_Param : access ProceduralAnimationInterfaceFactoryInterface_Package.ProceduralAnimationInterfaceFactoryInterface'Class; rectangle_Param : access Rectangle_Package.Rectangle'Class; x : Integer; y : Integer; viewPosition_Param : access ViewPositionBase_Package.ViewPositionBase'Class) return AdvancedRTSGameLayer_Access is
      This : constant AdvancedRTSGameLayer_Access := new AdvancedRTSGameLayer;
   begin
      AdvancedRTSGameLayer_Package.Initialize (This.all, remoteInfo_Param, parentLayer_Param, advancedRTSProperties_Param, groupInterface, rootName, name, healthInterface_Param, rtsFormInput_Param, animationInterfaceFactoryInterface_Param, emptyAnimationInterfaceFactoryInterface_Param, baseAnimationInterfaceFactoryInterface_Param, buildAnimationInterfaceFactoryInterface_Param, verticleBuildAnimationInterfaceFactoryInterface_Param, proceduralAnimationInterfaceFactoryInterface_Param, rectangle_Param, x, y, viewPosition_Param);
      return This;
   end Create;

   --  throws Exception
   procedure updateWaypointBehavior (This : in out AdvancedRTSGameLayer; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class) is
      geographicMapInterface : constant BasicGeographicMap_Access := BasicGeographicMap_Access (geographicMapInterface_Param);
   begin
        RTSLayer_Package.RTSLayer (This).updateWaypointBehavior (geographicMapInterface);
        AdvancedRTSGameLayer'Class (This).getWaypointBehavior.getWaypoint.setAllBinaryGameLayerManager (This.allBinaryGameLayerManagerP);
   end updateWaypointBehavior;

   procedure initVisibility (This : in out AdvancedRTSGameLayer; rtsPlayerLayerInterface_Param : access RTSPlayerLayerInterface_Package.RTSPlayerLayerInterface'Class) is
      rtsPlayerLayerInterface : constant RTSPlayerLayerInterface_Access := RTSPlayerLayerInterface_Access (rtsPlayerLayerInterface_Param);
      advancedRTSPlayerLayerInterface : AdvancedRTSPlayerLayerInterface_Access;
   begin
        advancedRTSPlayerLayerInterface := AdvancedRTSPlayerLayerInterface_Access (rtsPlayerLayerInterface);
        if (advancedRTSPlayerLayerInterface.isLocalPlayer) or else ((Java_Object_Access (advancedRTSPlayerLayerInterface.getGameType)) = (Java_Object_Access (GameTypeFactory_Package.getInstance.BOT))) then
            AdvancedRTSGameLayer'Class (This).setVisible (True);
        else
            AdvancedRTSGameLayer'Class (This).setVisible (False);
        end if;
   end initVisibility;

   --  throws Exception
   procedure construct (This : in out AdvancedRTSGameLayer; rtsPlayerLayerInterface_Param : access RTSPlayerLayerInterface_Package.RTSPlayerLayerInterface'Class) is
      rtsPlayerLayerInterface : constant RTSPlayerLayerInterface_Access := RTSPlayerLayerInterface_Access (rtsPlayerLayerInterface_Param);
   begin
        RTSLayer_Package.RTSLayer (This).construct (rtsPlayerLayerInterface);
        AdvancedRTSGameLayer'Class (This).initVisibility (rtsPlayerLayerInterface);
        BuildingEventHandler_Package.getInstance.addListenerInterface (AdvancedRTSGameLayer'Class (This).getWaypointBehavior.getWaypoint);
   end construct;

   --  throws Exception
   procedure setDestroyed (This : in out AdvancedRTSGameLayer; destroyed : Boolean) is
   begin
        RTSLayer_Package.RTSLayer (This).setDestroyed (destroyed);
        if AdvancedRTSGameLayer'Class (This).isDestroyed then
            BuildingEventHandler_Package.getInstance.removeListener (AdvancedRTSGameLayer'Class (This).getWaypointBehavior.getWaypoint);
            BuildingEventHandler_Package.getInstance.removeListener (AdvancedRTSGameLayer_Access'(This'Unchecked_Access));
            DestroyedEventHandler_Package.getInstance.addListener (AdvancedRTSGameLayer_Access'(This'Unchecked_Access));
            RTSLayerUtil_Package.getInstance.destroyAndClear (AdvancedRTSGameLayer'Class (This).getWaypointBehavior.getOwnedWaypointList);
        end if;
   end setDestroyed;

   function getParentLayer (This : in out AdvancedRTSGameLayer) return PathFindingLayerInterface_Access is
   begin
        return This.parentLayer;
   end getParentLayer;

   procedure setParentLayer (This : in out AdvancedRTSGameLayer; parentLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class) is
      parentLayer : constant PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (parentLayer_Param);
   begin
        This.parentLayer := parentLayer;
   end setParentLayer;

   function getWaypointBehavior (This : in out AdvancedRTSGameLayer) return WaypointBehaviorBase_Access is
   begin
        return WaypointBehaviorBase_Access (This.waypointBehaviorBase);
   end getWaypointBehavior;

   procedure setWaypointBehavior (This : in out AdvancedRTSGameLayer; unitWaypointHelper_Param : access WaypointBehaviorBase_Package.WaypointBehaviorBase'Class) is
      unitWaypointHelper : constant WaypointBehaviorBase_Access := WaypointBehaviorBase_Access (unitWaypointHelper_Param);
   begin
        This.waypointBehaviorBase := TickableInterface_Access (unitWaypointHelper);
   end setWaypointBehavior;

   function getWaypointLogHelper (This : in out AdvancedRTSGameLayer) return WaypointLogHelper_Access is
   begin
        return This.waypointLogHelperP;
   end getWaypointLogHelper;

   function getWaypoint2LogHelper (This : in out AdvancedRTSGameLayer) return Waypoint2LogHelper_Access is
   begin
        return This.waypoint2LogHelperP;
   end getWaypoint2LogHelper;

   function getWaypointRunnableLogHelper (This : in out AdvancedRTSGameLayer) return WaypointRunnableLogHelper_Access is
   begin
        return This.waypointRunnableLogHelperP;
   end getWaypointRunnableLogHelper;

   function shouldAddWaypointFromBuilding (This : in out AdvancedRTSGameLayer) return Boolean is
      parentAdvancedRTSGameLayer : AdvancedRTSGameLayer_Access;
   begin
        if (Java_Object_Access (This.parentLayer)) /= (Java_Object_Access (NullPathFindingLayer_Package.NULL_PATH_FINDING_LAYER)) then
            parentAdvancedRTSGameLayer := AdvancedRTSGameLayer_Access (This.parentLayer);
            if (parentAdvancedRTSGameLayer.getType) /= (1) then
                return True;
            end if;
        end if;
        return False;
   end shouldAddWaypointFromBuilding;

   function isWaypointListEmptyOrOnlyTargets (This : in out AdvancedRTSGameLayer) return Boolean is
   begin
        if (AdvancedRTSGameLayer'Class (This).getType) /= (1) then
            return True;
        end if;
        return False;
   end isWaypointListEmptyOrOnlyTargets;

   --  throws Exception
   function buildingChase (This : in out AdvancedRTSGameLayer; allbinaryLayer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; cellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) return Boolean is
      allbinaryLayer : constant AllBinaryLayer_Access := AllBinaryLayer_Access (allbinaryLayer_Param);
      cellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (cellPosition_Param);
      geographicMapCellPosition : GeographicMapCellPosition_Access;
      buildingDirection : Direction_Access;
      angleInfo : AngleInfo_Access;
      angle : Integer;
      gameKeyEventFactory : GameKeyEventFactory_Access;
   begin
        geographicMapCellPosition := AdvancedRTSGameLayer'Class (This).getCurrentGeographicMapCellPosition;
        buildingDirection := GeographicMapDirectionUtil_Package.getInstance.getDirectionFromCellPositionToAdjacentCellPosition (geographicMapCellPosition, cellPosition);
        angleInfo := AdvancedRTSGameLayer'Class (This).getRotationAnimationInterface.getAngleInfoP;
        angle := FrameUtil_Package.getInstance.adjustAngleToFrameAngle ((angleInfo.getAngle) + (90));
        gameKeyEventFactory := GameKeyEventFactory_Package.getInstance;
        if (Java_Object_Access (buildingDirection)) = (Java_Object_Access (DirectionFactory_Package.getInstance.UP)) then
            This.rtsLayer2LogHelper.buildingAbove (AdvancedRTSGameLayer_Access'(This'Unchecked_Access));
            if ((angle) > (180)) and then ((angle) < (360)) then
                This.rtsLayer2LogHelper.buildingChaseLeft (AdvancedRTSGameLayer_Access'(This'Unchecked_Access), angle);
                AdvancedRTSGameLayer'Class (This).getGameKeyEventList.add (gameKeyEventFactory.getInstanceForKey (AdvancedRTSGameLayer_Access'(This'Unchecked_Access), Canvas_Package.LEFT));
                if (angle) <= (190) then
                    return True;
                end if;
            else
                This.rtsLayer2LogHelper.buildingChaseRight (AdvancedRTSGameLayer_Access'(This'Unchecked_Access), angle);
                AdvancedRTSGameLayer'Class (This).getGameKeyEventList.add (gameKeyEventFactory.getInstanceForKey (AdvancedRTSGameLayer_Access'(This'Unchecked_Access), Canvas_Package.RIGHT));
                if (angle) >= (170) then
                    return True;
                end if;
            end if;
        elsif (Java_Object_Access (buildingDirection)) = (Java_Object_Access (DirectionFactory_Package.getInstance.DOWN)) then
            This.rtsLayer2LogHelper.buildingDown (AdvancedRTSGameLayer_Access'(This'Unchecked_Access));
            if ((angle) > (180)) and then ((angle) < (360)) then
                This.rtsLayer2LogHelper.buildingChaseLeft (AdvancedRTSGameLayer_Access'(This'Unchecked_Access), angle);
                AdvancedRTSGameLayer'Class (This).getGameKeyEventList.add (gameKeyEventFactory.getInstanceForKey (AdvancedRTSGameLayer_Access'(This'Unchecked_Access), Canvas_Package.RIGHT));
                if (angle) > (315) then
                    return True;
                end if;
            else
                This.rtsLayer2LogHelper.buildingChaseRight (AdvancedRTSGameLayer_Access'(This'Unchecked_Access), angle);
                AdvancedRTSGameLayer'Class (This).getGameKeyEventList.add (gameKeyEventFactory.getInstanceForKey (AdvancedRTSGameLayer_Access'(This'Unchecked_Access), Canvas_Package.LEFT));
                if (angle) < (45) then
                    return True;
                end if;
            end if;
        elsif (Java_Object_Access (buildingDirection)) = (Java_Object_Access (DirectionFactory_Package.getInstance.LEFT)) then
            This.rtsLayer2LogHelper.buildingLeft;
            if ((angle) > (90)) and then ((angle) < (270)) then
                This.rtsLayer2LogHelper.buildingChaseDown (AdvancedRTSGameLayer_Access'(This'Unchecked_Access), angle);
                AdvancedRTSGameLayer'Class (This).getGameKeyEventList.add (gameKeyEventFactory.getInstanceForKey (AdvancedRTSGameLayer_Access'(This'Unchecked_Access), Canvas_Package.LEFT));
                if (angle) < (135) then
                    return True;
                end if;
            else
                This.rtsLayer2LogHelper.buildingChaseUp (AdvancedRTSGameLayer_Access'(This'Unchecked_Access), angle);
                AdvancedRTSGameLayer'Class (This).getGameKeyEventList.add (gameKeyEventFactory.getInstanceForKey (AdvancedRTSGameLayer_Access'(This'Unchecked_Access), Canvas_Package.RIGHT));
                if (angle) > (45) then
                    return True;
                end if;
            end if;
        elsif (Java_Object_Access (buildingDirection)) = (Java_Object_Access (DirectionFactory_Package.getInstance.RIGHT)) then
            This.rtsLayer2LogHelper.buildingRight;
            if ((angle) > (90)) and then ((angle) < (270)) then
                This.rtsLayer2LogHelper.buildingChaseDown (AdvancedRTSGameLayer_Access'(This'Unchecked_Access), angle);
                AdvancedRTSGameLayer'Class (This).getGameKeyEventList.add (gameKeyEventFactory.getInstanceForKey (AdvancedRTSGameLayer_Access'(This'Unchecked_Access), Canvas_Package.RIGHT));
                if (angle) > (225) then
                    return True;
                end if;
            else
                This.rtsLayer2LogHelper.buildingChaseUp (AdvancedRTSGameLayer_Access'(This'Unchecked_Access), angle);
                AdvancedRTSGameLayer'Class (This).getGameKeyEventList.add (gameKeyEventFactory.getInstanceForKey (AdvancedRTSGameLayer_Access'(This'Unchecked_Access), Canvas_Package.LEFT));
                if ((angle) < (315)) and then ((angle) > (180)) then
                    return True;
                end if;
            end if;
        else
            return True;
        end if;
        return False;
   end buildingChase;

   --  throws Exception
   function getSurroundingGeographicMapCellPositionList (This : in out AdvancedRTSGameLayer) return BasicArrayList_Access is
      geographicMapCompositeInterface : GeographicMapCompositeInterface_Access;
      geographicMapInterface : BasicGeographicMap_Access;
   begin
        geographicMapCompositeInterface := GeographicMapCompositeInterface_Access (This.allBinaryGameLayerManagerP);
        geographicMapInterface := geographicMapCompositeInterface.getGeographicMapInterface (0);
        This.geographicMapCellPositionAreaBase.update (geographicMapInterface);
        return This.geographicMapCellPositionAreaBase.getSurroundingGeographicMapCellPositionList;
   end getSurroundingGeographicMapCellPositionList;

   procedure setSelected (This : in out AdvancedRTSGameLayer; selected : Boolean) is
   begin
        RTSLayer_Package.RTSLayer (This).setSelected (selected);
        if This.debug then
            if selected then
                This.waypointLogHelperP := WaypointSelectedLogHelper_Package.getInstance;
                This.waypoint2LogHelperP := Waypoint2SelectedLogHelper_Package.getInstance;
                This.waypointRunnableLogHelperP := WaypointRunnableSelectedLogHelper_Package.getInstance;
            else
                This.waypointLogHelperP := WaypointLogHelper_Package.getInstance;
                This.waypoint2LogHelperP := Waypoint2LogHelper_Package.getInstance;
                This.waypointRunnableLogHelperP := WaypointRunnableLogHelper_Package.getInstance;
            end if;
        end if;
   end setSelected;

   procedure onDestroyed (This : in out AdvancedRTSGameLayer; destroyedEvent_Param : access DestroyedEvent_Package.DestroyedEvent'Class) is
      destroyedEvent : constant DestroyedEvent_Access := DestroyedEvent_Access (destroyedEvent_Param);
      layerInterface : AllBinaryLayer_Access;
      waypoint : WaypointBase_Access;
   begin
        begin
            layerInterface := destroyedEvent.getLayerInterface;
            if (Java_Object_Access (layerInterface)) = (Java_Object_Access (AdvancedRTSGameLayer_Access'(This'Unchecked_Access))) then
                DestroyedEventHandler_Package.getInstance.removeListener (AdvancedRTSGameLayer_Access'(This'Unchecked_Access));
                waypoint := WaypointBase_Access (AdvancedRTSGameLayer'Class (This).getWaypointBehavior.getWaypoint);
                waypoint.reset;
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, AdvancedRTSGameLayer_Access'(This'Unchecked_Access), To_Unbounded_String ("onDestroyed"), e);
                end;
        end;
   end onDestroyed;

   procedure buildingChase (This : in out AdvancedRTSGameLayer; allbinaryLayer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; cellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) is
      Java_Result : constant Boolean := AdvancedRTSGameLayer'Class (This).buildingChase (allbinaryLayer_Param => allbinaryLayer_Param, cellPosition_Param => cellPosition_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end buildingChase;

end org.allbinary.game.layer.AdvancedRTSGameLayer_Package;


