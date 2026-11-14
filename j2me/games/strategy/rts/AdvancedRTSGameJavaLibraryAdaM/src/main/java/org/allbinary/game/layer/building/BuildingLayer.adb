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


with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
with org.allbinary.ag.weapon.media.audio.ExplosionBasicSound_Package; use org.allbinary.ag.weapon.media.audio.ExplosionBasicSound_Package;
with org.allbinary.animation.NullAnimationFactory_Package; use org.allbinary.animation.NullAnimationFactory_Package;
with org.allbinary.animation.NullIndexedAnimationFactory_Package; use org.allbinary.animation.NullIndexedAnimationFactory_Package;
with org.allbinary.game.identification.GroupFactory_Package; use org.allbinary.game.identification.GroupFactory_Package;
with org.allbinary.game.input.form.NullRTSFormInputFactory_Package; use org.allbinary.game.input.form.NullRTSFormInputFactory_Package;
with org.allbinary.game.input.form.RTSFormInput_Package; use org.allbinary.game.input.form.RTSFormInput_Package;
with org.allbinary.game.input.form.RTSFormInput_Package_References;
with org.allbinary.game.input.form.VisibleCellPositionsSingleton_Package; use org.allbinary.game.input.form.VisibleCellPositionsSingleton_Package;
with org.allbinary.game.layer.AdvancedRTSGameLayer_Package; use org.allbinary.game.layer.AdvancedRTSGameLayer_Package;
with org.allbinary.game.layer.AdvancedRTSPlayerLayerInterface_Package; use org.allbinary.game.layer.AdvancedRTSPlayerLayerInterface_Package;
with org.allbinary.game.layer.AdvancedRTSProperties_Package; use org.allbinary.game.layer.AdvancedRTSProperties_Package;
with org.allbinary.game.layer.AdvancedRTSProperties_Package_References;
with org.allbinary.game.layer.CollidableRTSBehavior_Package; use org.allbinary.game.layer.CollidableRTSBehavior_Package;
with org.allbinary.game.layer.RTSLayerUtil_Package; use org.allbinary.game.layer.RTSLayerUtil_Package;
with org.allbinary.game.layer.RTSPlayerLayerInterface_Package; use org.allbinary.game.layer.RTSPlayerLayerInterface_Package;
with org.allbinary.game.layer.RTSPlayerLayerInterface_Package_References;
with org.allbinary.game.layer.SelectionHudPaintable_Package; use org.allbinary.game.layer.SelectionHudPaintable_Package;
with org.allbinary.game.layer.SelectionHudPaintable_Package_References;
with org.allbinary.game.layer.waypoint.Waypoint_Package; use org.allbinary.game.layer.waypoint.Waypoint_Package;
with org.allbinary.game.view.TileLayerPositionIntoViewPosition_Package; use org.allbinary.game.view.TileLayerPositionIntoViewPosition_Package;
with org.allbinary.graphics.RectangleFactory_Package; use org.allbinary.graphics.RectangleFactory_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.animation.AnimationInterfaceFactoryInterface_Package; use org.allbinary.animation.AnimationInterfaceFactoryInterface_Package;
with org.allbinary.animation.AnimationInterfaceFactoryInterface_Package_References;
with org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package; use org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package;
with org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package_References;
with org.allbinary.animation.RotationAnimationInterfaceCompositeInterface_Package; use org.allbinary.animation.RotationAnimationInterfaceCompositeInterface_Package;
with org.allbinary.direction.Direction_Package; use org.allbinary.direction.Direction_Package;
with org.allbinary.direction.DirectionFactory_Package; use org.allbinary.direction.DirectionFactory_Package;
with org.allbinary.game.combat.damage.DamageFloaters_Package; use org.allbinary.game.combat.damage.DamageFloaters_Package;
with org.allbinary.game.combat.damage.DamageFloaters_Package_References;
with org.allbinary.game.health.Health_Package; use org.allbinary.game.health.Health_Package;
with org.allbinary.game.health.Health_Package_References;
with org.allbinary.game.identification.Group_Package; use org.allbinary.game.identification.Group_Package;
with org.allbinary.game.identification.Group_Package_References;
with org.allbinary.game.layer.GeographicMapCellPositionAreaBase_Package; use org.allbinary.game.layer.GeographicMapCellPositionAreaBase_Package;
with org.allbinary.game.layer.NullPathFindingLayer_Package; use org.allbinary.game.layer.NullPathFindingLayer_Package;
with org.allbinary.game.tracking.TrackingEvent_Package; use org.allbinary.game.tracking.TrackingEvent_Package;
with org.allbinary.game.tracking.TrackingEvent_Package_References;
with org.allbinary.game.tracking.TrackingEventHandler_Package; use org.allbinary.game.tracking.TrackingEventHandler_Package;
with org.allbinary.game.tracking.TrackingEventListenerInterface_Package; use org.allbinary.game.tracking.TrackingEventListenerInterface_Package;
with org.allbinary.graphics.Rectangle_Package; use org.allbinary.graphics.Rectangle_Package;
with org.allbinary.graphics.Rectangle_Package_References;
with org.allbinary.graphics.paint.Paintable_Package; use org.allbinary.graphics.paint.Paintable_Package;
with org.allbinary.graphics.paint.Paintable_Package_References;
with org.allbinary.layer.AllBinaryLayerManager_Package; use org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package_References;
with org.allbinary.media.audio.SecondaryPlayerQueueFactory_Package; use org.allbinary.media.audio.SecondaryPlayerQueueFactory_Package;
with org.allbinary.media.audio.SelectSound_Package; use org.allbinary.media.audio.SelectSound_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References;
with org.allbinary.media.graphics.geography.map.GeographicMapDirectionUtil_Package; use org.allbinary.media.graphics.geography.map.GeographicMapDirectionUtil_Package;
with org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory_Package; use org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory_Package;
with org.allbinary.time.TimeDelayHelper_Package; use org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.time.TimeDelayHelper_Package_References;
with org.allbinary.util.BasicArrayListS_Package; use org.allbinary.util.BasicArrayListS_Package;
with org.allbinary.game.multiplayer.layer.RemoteInfo_Package; use org.allbinary.game.multiplayer.layer.RemoteInfo_Package;
with org.allbinary.game.multiplayer.layer.RemoteInfo_Package_References;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABHashtable_Package_References;
with org.allbinary.animation.RotationAnimation_Package; use org.allbinary.animation.RotationAnimation_Package;
with org.allbinary.animation.RotationAnimation_Package_References;
with org.allbinary.game.layer.building.SimulatedBuildingPropertiesFactory_Package; use org.allbinary.game.layer.building.SimulatedBuildingPropertiesFactory_Package;
with org.allbinary.game.layer.building.BuildingPropertiesFactory_Package; use org.allbinary.game.layer.building.BuildingPropertiesFactory_Package;
with org.allbinary.game.layer.building.BuildingPropertiesFactory_Package_References;
with org.allbinary.game.layer.building.BuildingInfoHudPaintable_Package; use org.allbinary.game.layer.building.BuildingInfoHudPaintable_Package;
with org.allbinary.util.ABHashMap_Package;
with org.allbinary.util.ABStack_Package;
with org.allbinary.logic.ABSystemWrapper_Package;
with org.allbinary.util.ABVector_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.game.layer.AdvancedPlayerOwnedRTSLayers_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
with org.allbinary.media.AllBinaryVibrationME_Package;
with org.allbinary.math.Angle_Package;
with org.allbinary.math.AngleIncrementInfo_Package;
with org.allbinary.math.AngleInfo_Package;
with org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.canvas.BaseGameStatistics_Package;
with org.allbinary.game.displayable.canvas.BaseMenuBehavior_Package;
with org.allbinary.graphics.displayable.BaseScalable_Package;
with org.allbinary.util.BasicArrayListUtil_Package;
with org.allbinary.game.init.BasicBuildGameInitializerFactory_Package;
with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
with org.allbinary.game.layer.building.event.BuildingEventListenerInterface_Package;
with org.allbinary.game.layer.building.BuildingInfoHudPaintable_Package;
with org.allbinary.game.layer.building.BuildingPropertiesFactory_Package;
with org.allbinary.graphics.displayable.CanvasStrings_Package;
with org.allbinary.graphics.CellPosition_Package;
with org.allbinary.logic.java.character_Id.CharacterSet_Package;
with org.allbinary.util.CircularIndexUtil_Package;
with org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.media.audio.CompositeSound_Package;
with org.allbinary.game.displayable.canvas.DemoGameBehavior_Package;
with org.allbinary.game.displayable.canvas.DemoPaintableInterface_Package;
with org.allbinary.game.combat.destroy.event.DestroyedEvent_Package;
with org.allbinary.game.combat.destroy.event.DestroyedEventListenerInterface_Package;
with org.allbinary.direction.DirectionUtil_Package;
with org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package;
with org.allbinary.game.input.event.DownGameKeyEventHandler_Package;
with org.allbinary.game.input.event.DownGameKeyEventHandlerBase_Package;
with org.allbinary.logic.util.event.EventListenerInterface_Package;
with org.allbinary.logic.util.event.EventStrings_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.game.configuration.feature.Feature_Package;
with org.allbinary.graphics.form.FormType_Package;
with org.allbinary.game.displayable.canvas.FormUtil_Package;
with org.allbinary.math.FrameUtil_Package;
with javax.microedition.khronos.opengles.GL_Package;
with org.allbinary.graphics.GPoint_Package;
with org.allbinary.game.displayable.canvas.GameCanvasPauseRunnable_Package;
with org.allbinary.game.displayable.canvas.GameCanvasRunnable_Package;
with org.allbinary.game.GameInfo_Package;
with org.allbinary.game.GameInfoData_Package;
with org.allbinary.game.input.GameInput_Package;
with org.allbinary.game.input.GameInputStrings_Package;
with org.allbinary.game.input.GameKey_Package;
with org.allbinary.game.input.event.GameKeyEvent_Package;
with org.allbinary.game.input.event.GameKeyEventFactory_Package;
with org.allbinary.game.input.event.GameKeyEventHandler_Package;
with org.allbinary.game.input.GameKeyEventSourceInterface_Package;
with org.allbinary.game.input.GameKeyFactory_Package;
with org.allbinary.game.GameMode_Package;
with org.allbinary.game.displayable.canvas.GameRunnable_Package;
with org.allbinary.game.state.GameState_Package;
with org.allbinary.game.state.GameStateFactory_Package;
with org.allbinary.game.GameStrings_Package;
with org.allbinary.graphics.displayable.GameTickDisplayInfoSingleton_Package;
with org.allbinary.time.GameTickTimeDelayHelper_Package;
with org.allbinary.game.GameType_Package;
with org.allbinary.game.GameTypeFactory_Package;
with org.allbinary.logic.system.os.GenericOperatingSystem_Package;
with org.allbinary.game.health.HealthListenerInterface_Package;
with org.allbinary.game.score.HighScoresFactoryInterface_Package;
with org.allbinary.game.graphics.hud.HudGraphicsPosition_Package;
with org.allbinary.animation.IndexedAnimation_Package;
with org.allbinary.graphics.paint.InitUpdatePaintable_Package;
with org.allbinary.game.input.Input_Package;
with org.allbinary.game.input.InputFactory_Package;
with org.allbinary.game.input.mapping.InputMapping_Package;
with org.allbinary.game.IntermissionEnableListenerInterface_Package;
with org.allbinary.game.IntermissionInterface_Package;
with org.allbinary.graphics.form.ItemPaintableFactory_Package;
with org.allbinary.layer.event.LayerManagerEvent_Package;
with org.allbinary.layer.event.LayerManagerEventHandler_Package;
with org.allbinary.layer.event.LayerManagerEventListener_Package;
with org.allbinary.layer.LayerManagerLoggingBase_Package;
with org.allbinary.layer.LayerProcessor_Package;
with org.allbinary.game.input.LocalPlayerInputIdFactory_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.game.rand.MyRandomFactory_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.graphics.opengles.OpenGLFeature_Package;
with org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package;
with org.allbinary.game.input.PlayerGameInput_Package;
with org.allbinary.game.input.PlayerGameInputCompositeInterface_Package;
with org.allbinary.media.audio.PlayerQueue_Package;
with org.allbinary.game.PlayerType_Package;
with org.allbinary.game.input.event.PressGameKeyEventHandler_Package;
with org.allbinary.logic.math.PrimitiveLongSingleton_Package;
with org.allbinary.logic.math.PrimitiveLongUtil_Package;
with org.allbinary.thread.PriorityRunnable_Package;
with org.allbinary.canvas.Processor_Package;
with org.allbinary.graphics.canvas.transition.progress.ProgressEndListener_Package;
with org.allbinary.game.layer.RTSLayerEvent_Package;
with org.allbinary.math.RectangleCollisionUtil_Package;
with org.allbinary.game.resource.ResourceLoadingLevel_Package;
with org.allbinary.graphics.displayable.ScalableListener_Package;
with org.allbinary.media.ScaleProperties_Package;
with org.allbinary.graphics.ScreenCapture_Package;
with org.allbinary.layer.event.ScrollMapEvent_Package;
with org.allbinary.layer.event.ScrollMapEventListenerInterface_Package;
with org.allbinary.animation.transition.shake.ShakeAnimationListener_Package;
with org.allbinary.animation.transition.shake.ShakeEvent_Package;
with org.allbinary.game.layer.building.SimulatedBuildingPropertiesFactory_Package;
with org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.thread.SynchObject_Package;
with org.allbinary.thread.ThreadObjectUtil_Package;
with org.allbinary.game.tick.TickableInterface_Package;
with org.allbinary.time.TimeStampUtil_Package;
with org.allbinary.game.configuration.feature.TouchFeature_Package;
with org.allbinary.game.configuration.feature.TouchFeatureFactory_Package;
with org.allbinary.input.TouchJ2ME_Package;
with org.allbinary.game.input.event.UpGameKeyEventHandler_Package;
with org.allbinary.game.input.event.UpGameKeyEventHandlerBase_Package;
with org.allbinary.graph.V_Package;
with org.allbinary.view.ViewPositionBase_Package;
with org.allbinary.view.event.ViewPositionEvent_Package;
with org.allbinary.input.event.VirtualKeyboardEvent_Package;
with org.allbinary.input.event.VirtualKeyboardEventHandler_Package;

package body org.allbinary.game.layer.building.BuildingLayer_Package is

   package ExplosionBasicSound_Package renames Standard.org.allbinary.ag.weapon.media.audio.ExplosionBasicSound_Package;
   package NullAnimationFactory_Package renames Standard.org.allbinary.animation.NullAnimationFactory_Package;
   package NullIndexedAnimationFactory_Package renames Standard.org.allbinary.animation.NullIndexedAnimationFactory_Package;
   package GroupFactory_Package renames Standard.org.allbinary.game.identification.GroupFactory_Package;
   package NullRTSFormInputFactory_Package renames Standard.org.allbinary.game.input.form.NullRTSFormInputFactory_Package;
   package VisibleCellPositionsSingleton_Package renames Standard.org.allbinary.game.input.form.VisibleCellPositionsSingleton_Package;
   package AdvancedRTSPlayerLayerInterface_Package renames Standard.org.allbinary.game.layer.AdvancedRTSPlayerLayerInterface_Package;
   package CollidableRTSBehavior_Package renames Standard.org.allbinary.game.layer.CollidableRTSBehavior_Package;
   package RTSLayerUtil_Package renames Standard.org.allbinary.game.layer.RTSLayerUtil_Package;
   package Waypoint_Package renames Standard.org.allbinary.game.layer.waypoint.Waypoint_Package;
   package TileLayerPositionIntoViewPosition_Package renames Standard.org.allbinary.game.view.TileLayerPositionIntoViewPosition_Package;
   package RectangleFactory_Package renames Standard.org.allbinary.graphics.RectangleFactory_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package Direction_Package renames Standard.org.allbinary.direction.Direction_Package;
   package DirectionFactory_Package renames Standard.org.allbinary.direction.DirectionFactory_Package;
   package GeographicMapCellPositionAreaBase_Package renames Standard.org.allbinary.game.layer.GeographicMapCellPositionAreaBase_Package;
   package NullPathFindingLayer_Package renames Standard.org.allbinary.game.layer.NullPathFindingLayer_Package;
   package TrackingEventHandler_Package renames Standard.org.allbinary.game.tracking.TrackingEventHandler_Package;
   package SecondaryPlayerQueueFactory_Package renames Standard.org.allbinary.media.audio.SecondaryPlayerQueueFactory_Package;
   package SelectSound_Package renames Standard.org.allbinary.media.audio.SelectSound_Package;
   package GeographicMapDirectionUtil_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapDirectionUtil_Package;
   package DropCellPositionHistory_Package renames Standard.org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory_Package;
   package BasicArrayListS_Package renames Standard.org.allbinary.util.BasicArrayListS_Package;
   subtype Graphics_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access;
   function "=" (Left, Right : Graphics_Access) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array;
   function "=" (Left, Right : Graphics_Access_Array) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access;
   function "=" (Left, Right : Graphics_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array;
   function "=" (Left, Right : Graphics_Access_Array_Access_Array) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Graphics_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
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
   subtype SelectionHudPaintable_Access is org.allbinary.game.layer.SelectionHudPaintable_Package_References.SelectionHudPaintable_Access;
   function "=" (Left, Right : SelectionHudPaintable_Access) return Boolean renames org.allbinary.game.layer.SelectionHudPaintable_Package_References."=";
   subtype SelectionHudPaintable_Access_Array is org.allbinary.game.layer.SelectionHudPaintable_Package_References.SelectionHudPaintable_Access_Array;
   function "=" (Left, Right : SelectionHudPaintable_Access_Array) return Boolean renames org.allbinary.game.layer.SelectionHudPaintable_Package_References."=";
   subtype SelectionHudPaintable_Access_Array_Access is org.allbinary.game.layer.SelectionHudPaintable_Package_References.SelectionHudPaintable_Access_Array_Access;
   function "=" (Left, Right : SelectionHudPaintable_Access_Array_Access) return Boolean renames org.allbinary.game.layer.SelectionHudPaintable_Package_References."=";
   subtype SelectionHudPaintable_Access_Array_Access_Array is org.allbinary.game.layer.SelectionHudPaintable_Package_References.SelectionHudPaintable_Access_Array_Access_Array;
   function "=" (Left, Right : SelectionHudPaintable_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.SelectionHudPaintable_Package_References."=";
   subtype SelectionHudPaintable_Access_Array_Access_Array_Access is org.allbinary.game.layer.SelectionHudPaintable_Package_References.SelectionHudPaintable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SelectionHudPaintable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.SelectionHudPaintable_Package_References."=";
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
   subtype DamageFloaters_Access is org.allbinary.game.combat.damage.DamageFloaters_Package_References.DamageFloaters_Access;
   function "=" (Left, Right : DamageFloaters_Access) return Boolean renames org.allbinary.game.combat.damage.DamageFloaters_Package_References."=";
   subtype DamageFloaters_Access_Array is org.allbinary.game.combat.damage.DamageFloaters_Package_References.DamageFloaters_Access_Array;
   function "=" (Left, Right : DamageFloaters_Access_Array) return Boolean renames org.allbinary.game.combat.damage.DamageFloaters_Package_References."=";
   subtype DamageFloaters_Access_Array_Access is org.allbinary.game.combat.damage.DamageFloaters_Package_References.DamageFloaters_Access_Array_Access;
   function "=" (Left, Right : DamageFloaters_Access_Array_Access) return Boolean renames org.allbinary.game.combat.damage.DamageFloaters_Package_References."=";
   subtype DamageFloaters_Access_Array_Access_Array is org.allbinary.game.combat.damage.DamageFloaters_Package_References.DamageFloaters_Access_Array_Access_Array;
   function "=" (Left, Right : DamageFloaters_Access_Array_Access_Array) return Boolean renames org.allbinary.game.combat.damage.DamageFloaters_Package_References."=";
   subtype DamageFloaters_Access_Array_Access_Array_Access is org.allbinary.game.combat.damage.DamageFloaters_Package_References.DamageFloaters_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DamageFloaters_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.combat.damage.DamageFloaters_Package_References."=";
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
   subtype TrackingEvent_Access is org.allbinary.game.tracking.TrackingEvent_Package_References.TrackingEvent_Access;
   function "=" (Left, Right : TrackingEvent_Access) return Boolean renames org.allbinary.game.tracking.TrackingEvent_Package_References."=";
   subtype TrackingEvent_Access_Array is org.allbinary.game.tracking.TrackingEvent_Package_References.TrackingEvent_Access_Array;
   function "=" (Left, Right : TrackingEvent_Access_Array) return Boolean renames org.allbinary.game.tracking.TrackingEvent_Package_References."=";
   subtype TrackingEvent_Access_Array_Access is org.allbinary.game.tracking.TrackingEvent_Package_References.TrackingEvent_Access_Array_Access;
   function "=" (Left, Right : TrackingEvent_Access_Array_Access) return Boolean renames org.allbinary.game.tracking.TrackingEvent_Package_References."=";
   subtype TrackingEvent_Access_Array_Access_Array is org.allbinary.game.tracking.TrackingEvent_Package_References.TrackingEvent_Access_Array_Access_Array;
   function "=" (Left, Right : TrackingEvent_Access_Array_Access_Array) return Boolean renames org.allbinary.game.tracking.TrackingEvent_Package_References."=";
   subtype TrackingEvent_Access_Array_Access_Array_Access is org.allbinary.game.tracking.TrackingEvent_Package_References.TrackingEvent_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TrackingEvent_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.tracking.TrackingEvent_Package_References."=";
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
   subtype Paintable_Access is org.allbinary.graphics.paint.Paintable_Package_References.Paintable_Access;
   function "=" (Left, Right : Paintable_Access) return Boolean renames org.allbinary.graphics.paint.Paintable_Package_References."=";
   subtype Paintable_Access_Array is org.allbinary.graphics.paint.Paintable_Package_References.Paintable_Access_Array;
   function "=" (Left, Right : Paintable_Access_Array) return Boolean renames org.allbinary.graphics.paint.Paintable_Package_References."=";
   subtype Paintable_Access_Array_Access is org.allbinary.graphics.paint.Paintable_Package_References.Paintable_Access_Array_Access;
   function "=" (Left, Right : Paintable_Access_Array_Access) return Boolean renames org.allbinary.graphics.paint.Paintable_Package_References."=";
   subtype Paintable_Access_Array_Access_Array is org.allbinary.graphics.paint.Paintable_Package_References.Paintable_Access_Array_Access_Array;
   function "=" (Left, Right : Paintable_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.paint.Paintable_Package_References."=";
   subtype Paintable_Access_Array_Access_Array_Access is org.allbinary.graphics.paint.Paintable_Package_References.Paintable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Paintable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.paint.Paintable_Package_References."=";
   subtype AllBinaryLayerManager_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access;
   function "=" (Left, Right : AllBinaryLayerManager_Access) return Boolean renames org.allbinary.layer.AllBinaryLayerManager_Package_References."=";
   subtype AllBinaryLayerManager_Access_Array is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array;
   function "=" (Left, Right : AllBinaryLayerManager_Access_Array) return Boolean renames org.allbinary.layer.AllBinaryLayerManager_Package_References."=";
   subtype AllBinaryLayerManager_Access_Array_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access;
   function "=" (Left, Right : AllBinaryLayerManager_Access_Array_Access) return Boolean renames org.allbinary.layer.AllBinaryLayerManager_Package_References."=";
   subtype AllBinaryLayerManager_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryLayerManager_Access_Array_Access_Array) return Boolean renames org.allbinary.layer.AllBinaryLayerManager_Package_References."=";
   subtype AllBinaryLayerManager_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryLayerManager_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.layer.AllBinaryLayerManager_Package_References."=";
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
   subtype TimeDelayHelper_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access;
   function "=" (Left, Right : TimeDelayHelper_Access) return Boolean renames org.allbinary.time.TimeDelayHelper_Package_References."=";
   subtype TimeDelayHelper_Access_Array is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array;
   function "=" (Left, Right : TimeDelayHelper_Access_Array) return Boolean renames org.allbinary.time.TimeDelayHelper_Package_References."=";
   subtype TimeDelayHelper_Access_Array_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access;
   function "=" (Left, Right : TimeDelayHelper_Access_Array_Access) return Boolean renames org.allbinary.time.TimeDelayHelper_Package_References."=";
   subtype TimeDelayHelper_Access_Array_Access_Array is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access_Array;
   function "=" (Left, Right : TimeDelayHelper_Access_Array_Access_Array) return Boolean renames org.allbinary.time.TimeDelayHelper_Package_References."=";
   subtype TimeDelayHelper_Access_Array_Access_Array_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TimeDelayHelper_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.time.TimeDelayHelper_Package_References."=";
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
   subtype ABHashtable_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access;
   function "=" (Left, Right : ABHashtable_Access) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   subtype ABHashtable_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array;
   function "=" (Left, Right : ABHashtable_Access_Array) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   subtype ABHashtable_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access;
   function "=" (Left, Right : ABHashtable_Access_Array_Access) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   subtype ABHashtable_Access_Array_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array;
   function "=" (Left, Right : ABHashtable_Access_Array_Access_Array) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   subtype ABHashtable_Access_Array_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ABHashtable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   subtype RotationAnimation_Access is org.allbinary.animation.RotationAnimation_Package_References.RotationAnimation_Access;
   function "=" (Left, Right : RotationAnimation_Access) return Boolean renames org.allbinary.animation.RotationAnimation_Package_References."=";
   subtype RotationAnimation_Access_Array is org.allbinary.animation.RotationAnimation_Package_References.RotationAnimation_Access_Array;
   function "=" (Left, Right : RotationAnimation_Access_Array) return Boolean renames org.allbinary.animation.RotationAnimation_Package_References."=";
   subtype RotationAnimation_Access_Array_Access is org.allbinary.animation.RotationAnimation_Package_References.RotationAnimation_Access_Array_Access;
   function "=" (Left, Right : RotationAnimation_Access_Array_Access) return Boolean renames org.allbinary.animation.RotationAnimation_Package_References."=";
   subtype RotationAnimation_Access_Array_Access_Array is org.allbinary.animation.RotationAnimation_Package_References.RotationAnimation_Access_Array_Access_Array;
   function "=" (Left, Right : RotationAnimation_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.RotationAnimation_Package_References."=";
   subtype RotationAnimation_Access_Array_Access_Array_Access is org.allbinary.animation.RotationAnimation_Package_References.RotationAnimation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RotationAnimation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.RotationAnimation_Package_References."=";
   subtype BuildingPropertiesFactory_Access is org.allbinary.game.layer.building.BuildingPropertiesFactory_Package_References.BuildingPropertiesFactory_Access;
   function "=" (Left, Right : BuildingPropertiesFactory_Access) return Boolean renames org.allbinary.game.layer.building.BuildingPropertiesFactory_Package_References."=";
   subtype BuildingPropertiesFactory_Access_Array is org.allbinary.game.layer.building.BuildingPropertiesFactory_Package_References.BuildingPropertiesFactory_Access_Array;
   function "=" (Left, Right : BuildingPropertiesFactory_Access_Array) return Boolean renames org.allbinary.game.layer.building.BuildingPropertiesFactory_Package_References."=";
   subtype BuildingPropertiesFactory_Access_Array_Access is org.allbinary.game.layer.building.BuildingPropertiesFactory_Package_References.BuildingPropertiesFactory_Access_Array_Access;
   function "=" (Left, Right : BuildingPropertiesFactory_Access_Array_Access) return Boolean renames org.allbinary.game.layer.building.BuildingPropertiesFactory_Package_References."=";
   subtype BuildingPropertiesFactory_Access_Array_Access_Array is org.allbinary.game.layer.building.BuildingPropertiesFactory_Package_References.BuildingPropertiesFactory_Access_Array_Access_Array;
   function "=" (Left, Right : BuildingPropertiesFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.building.BuildingPropertiesFactory_Package_References."=";
   subtype BuildingPropertiesFactory_Access_Array_Access_Array_Access is org.allbinary.game.layer.building.BuildingPropertiesFactory_Package_References.BuildingPropertiesFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BuildingPropertiesFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.building.BuildingPropertiesFactory_Package_References."=";
   procedure Initialize_Fields (This : in out BuildingLayer'Class) is
   begin
      null;
      This.buildingLevelCost := 0;
      This.productivity := 0;
      
      
      
      
      
      
      
      This.local := False;
      This.timeDelayHelper := TimeDelayHelper_Package.Create (3000);
   end Initialize_Fields;


   --  throws Exception
   function createSimulated return BuildingLayer_Access is
      nullAnimationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface_Access;
      nullIndexedAnimationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface_Access;
   begin
        nullAnimationInterfaceFactoryInterface := AnimationInterfaceFactoryInterface_Access (NullAnimationFactory_Package.getFactoryInstance);
        nullIndexedAnimationInterfaceFactoryInterface := AnimationInterfaceFactoryInterface_Access (NullIndexedAnimationFactory_Package.getFactoryInstance);
        return BuildingLayer_Package.Create (RemoteInfo_Package.REMOTE_INFO, SimulatedBuildingPropertiesFactory_Package.getInstance, AdvancedRTSProperties_Package.createPropertiesSimulated, GroupFactory_Package.getInstance.NULL_GROUP_ARRAY, StringUtil_Package.getInstance.EMPTY_STRING, StringUtil_Package.getInstance.EMPTY_STRING, Health_Package.NULL_HEALTH, NullRTSFormInputFactory_Package.getInstance, nullAnimationInterfaceFactoryInterface, nullIndexedAnimationInterfaceFactoryInterface, nullAnimationInterfaceFactoryInterface, nullAnimationInterfaceFactoryInterface, nullIndexedAnimationInterfaceFactoryInterface, NullIndexedAnimationFactory_Package.getFactoryInstance, RectangleFactory_Package.SINGLETON, 0, 0);
   end createSimulated;

   procedure Initialize (This : in out BuildingLayer'Class; remoteInfo_Param : access RemoteInfo_Package.RemoteInfo'Class; buildingPropertiesFactory_Param : access BuildingPropertiesFactory_Package.BuildingPropertiesFactory'Class; advancedRTSProperties_Param : access AdvancedRTSProperties_Package.AdvancedRTSProperties'Class; groupInterface : Group_Access_Array_Access; rootName : Unbounded_String; name : Unbounded_String; healthInterface_Param : access Health_Package.Health'Class; rtsFormInput_Param : access RTSFormInput_Package.RTSFormInput'Class; animationInterfaceFactoryInterface_Param : access AnimationInterfaceFactoryInterface_Package.AnimationInterfaceFactoryInterface'Class; emptyAnimationInterfaceFactoryInterface_Param : access AnimationInterfaceFactoryInterface_Package.AnimationInterfaceFactoryInterface'Class; baseAnimationInterfaceFactoryInterface_Param : access AnimationInterfaceFactoryInterface_Package.AnimationInterfaceFactoryInterface'Class; buildAnimationInterfaceFactoryInterface_Param : access AnimationInterfaceFactoryInterface_Package.AnimationInterfaceFactoryInterface'Class; verticleBuildAnimationInterfaceFactoryInterface_Param : access AnimationInterfaceFactoryInterface_Package.AnimationInterfaceFactoryInterface'Class; proceduralAnimationInterfaceFactoryInterface_Param : access ProceduralAnimationInterfaceFactoryInterface_Package.ProceduralAnimationInterfaceFactoryInterface'Class; rectangle_Param : access Rectangle_Package.Rectangle'Class; x : Integer; y : Integer) is
      remoteInfo : constant RemoteInfo_Access := RemoteInfo_Access (remoteInfo_Param);
      buildingPropertiesFactory : constant BuildingPropertiesFactory_Access := BuildingPropertiesFactory_Access (buildingPropertiesFactory_Param);
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
   begin
        AdvancedRTSGameLayer_Package.Initialize (This, remoteInfo, NullPathFindingLayer_Package.NULL_PATH_FINDING_LAYER, advancedRTSProperties, groupInterface, rootName, name, healthInterface, rtsFormInput, animationInterfaceFactoryInterface, emptyAnimationInterfaceFactoryInterface, baseAnimationInterfaceFactoryInterface, buildAnimationInterfaceFactoryInterface, verticleBuildAnimationInterfaceFactoryInterface, proceduralAnimationInterfaceFactoryInterface, rectangle, x, y, TileLayerPositionIntoViewPosition_Package.Create);
        Initialize_Fields (This);
        BuildingLayer'Class (This).setCollidableInferface (CollidableRTSBehavior_Package.Create (True));
        BuildingLayer'Class (This).getWaypointBehavior.setWaypoint (Waypoint_Package.Create (BuildingLayer_Access'(This'Unchecked_Access), SelectSound_Package.getInstance));
        This.damageFloaters := buildingPropertiesFactory.getDamageFloaters (BuildingLayer_Access'(This'Unchecked_Access));
        This.damageFloatersPaintableInterface := Paintable_Access (buildingPropertiesFactory.damageFloatersPaintableInterface);
        This.healthBar := buildingPropertiesFactory.getHealthBar (BuildingLayer_Access'(This'Unchecked_Access));
        This.pathsHashtable := buildingPropertiesFactory.getHashtable;
        BuildingLayer'Class (This).setMaxLevel (30);
        BuildingLayer'Class (This).setProductivity (1);
        BuildingLayer'Class (This).setEfficiency (BuildingLayer'Class (This).calculateEfficiency);
        This.efficiencyPerLevel := buildingPropertiesFactory.getEfficiencyPerLevel (BuildingLayer_Access'(This'Unchecked_Access));
        This.efficiency := This.efficiencyPerLevel;
        BuildingLayer'Class (This).generateMoveOutOfBuildAreaPaths;
        This.trackingEvent := buildingPropertiesFactory.getTrackingEvent (BuildingLayer_Access'(This'Unchecked_Access));
   end Initialize;

   function Create (remoteInfo_Param : access RemoteInfo_Package.RemoteInfo'Class; buildingPropertiesFactory_Param : access BuildingPropertiesFactory_Package.BuildingPropertiesFactory'Class; advancedRTSProperties_Param : access AdvancedRTSProperties_Package.AdvancedRTSProperties'Class; groupInterface : Group_Access_Array_Access; rootName : Unbounded_String; name : Unbounded_String; healthInterface_Param : access Health_Package.Health'Class; rtsFormInput_Param : access RTSFormInput_Package.RTSFormInput'Class; animationInterfaceFactoryInterface_Param : access AnimationInterfaceFactoryInterface_Package.AnimationInterfaceFactoryInterface'Class; emptyAnimationInterfaceFactoryInterface_Param : access AnimationInterfaceFactoryInterface_Package.AnimationInterfaceFactoryInterface'Class; baseAnimationInterfaceFactoryInterface_Param : access AnimationInterfaceFactoryInterface_Package.AnimationInterfaceFactoryInterface'Class; buildAnimationInterfaceFactoryInterface_Param : access AnimationInterfaceFactoryInterface_Package.AnimationInterfaceFactoryInterface'Class; verticleBuildAnimationInterfaceFactoryInterface_Param : access AnimationInterfaceFactoryInterface_Package.AnimationInterfaceFactoryInterface'Class; proceduralAnimationInterfaceFactoryInterface_Param : access ProceduralAnimationInterfaceFactoryInterface_Package.ProceduralAnimationInterfaceFactoryInterface'Class; rectangle_Param : access Rectangle_Package.Rectangle'Class; x : Integer; y : Integer) return BuildingLayer_Access is
      This : constant BuildingLayer_Access := new BuildingLayer;
   begin
      BuildingLayer_Package.Initialize (This.all, remoteInfo_Param, buildingPropertiesFactory_Param, advancedRTSProperties_Param, groupInterface, rootName, name, healthInterface_Param, rtsFormInput_Param, animationInterfaceFactoryInterface_Param, emptyAnimationInterfaceFactoryInterface_Param, baseAnimationInterfaceFactoryInterface_Param, buildAnimationInterfaceFactoryInterface_Param, verticleBuildAnimationInterfaceFactoryInterface_Param, proceduralAnimationInterfaceFactoryInterface_Param, rectangle_Param, x, y);
      return This;
   end Create;

   procedure initVisibility (This : in out BuildingLayer; rtsPlayerLayerInterface_Param : access RTSPlayerLayerInterface_Package.RTSPlayerLayerInterface'Class) is
      rtsPlayerLayerInterface : constant RTSPlayerLayerInterface_Access := RTSPlayerLayerInterface_Access (rtsPlayerLayerInterface_Param);
      advancedRTSPlayerLayerInterface : AdvancedRTSPlayerLayerInterface_Access;
   begin
        advancedRTSPlayerLayerInterface := AdvancedRTSPlayerLayerInterface_Access (rtsPlayerLayerInterface);
        if advancedRTSPlayerLayerInterface.isLocalPlayer then
            This.local := True;
            BuildingLayer'Class (This).addVisibility;
        else
            This.local := False;
        end if;
        AdvancedRTSGameLayer_Package.AdvancedRTSGameLayer (This).initVisibility (rtsPlayerLayerInterface);
   end initVisibility;

   --  throws Exception
   procedure construct (This : in out BuildingLayer; rtsPlayerLayerInterface_Param : access RTSPlayerLayerInterface_Package.RTSPlayerLayerInterface'Class) is
      rtsPlayerLayerInterface : constant RTSPlayerLayerInterface_Access := RTSPlayerLayerInterface_Access (rtsPlayerLayerInterface_Param);
   begin
        AdvancedRTSGameLayer_Package.AdvancedRTSGameLayer (This).construct (rtsPlayerLayerInterface);
        TrackingEventHandler_Package.getInstance.addListenerInterface (BuildingLayer_Access'(This'Unchecked_Access));
   end construct;

   procedure onMovement (This : in out BuildingLayer; trackingEvent_Param : access TrackingEvent_Package.TrackingEvent'Class) is
      trackingEvent : constant TrackingEvent_Access := TrackingEvent_Access (trackingEvent_Param);
      layerInterface : AdvancedRTSGameLayer_Access;
   begin
        begin
            layerInterface := AdvancedRTSGameLayer_Access (trackingEvent.getLayerInterface);
            if (layerInterface.getGroupInterface (0)) /= (BuildingLayer'Class (This).getGroupInterface (0)) then
                layerInterface.onMovementFound (This.trackingEvent);
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, BuildingLayer_Access'(This'Unchecked_Access), To_Unbounded_String ("onMovement"), e);
                end;
        end;
   end onMovement;

   --  throws Exception
   procedure processBuiltTick (This : in out BuildingLayer; allBinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class) is
      allBinaryLayerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (allBinaryLayerManager_Param);
      currentFrame : Integer;
      size : Integer;
   begin
        if BuildingLayer'Class (This).getHealthInterface.isDamaged then
            BuildingLayer'Class (This).setAnimationInterface (This.destroyAnimationInterface);
        end if;
        if not (BuildingLayer'Class (This).getHealthInterface.isAlive) then
            if BuildingLayer'Class (This).isReadyForExplosion then
                currentFrame := This.destroyAnimationInterface.getFrame;
                size := (This.destroyAnimationInterface.getSize) - (1);
                if ((currentFrame) = (size)) and then (not (This.timeDelayHelper.isTimeTNT)) then
                    if not (BuildingLayer'Class (This).getHealthInterface.isAlive) then
                        BuildingLayer'Class (This).setDestroyed (True);
                    end if;
                else
                    This.destroyAnimationInterface.nextFrame;
                end if;
            else
                BuildingLayer'Class (This).setAnimationInterface (This.destroyAnimationInterface);
                SecondaryPlayerQueueFactory_Package.getInstance.add (ExplosionBasicSound_Package.getInstance);
                This.shakeListener.onSmallShakeEvent;
                This.vibration.vibrate (This.duration, 0, 0);
                This.timeDelayHelper.setStartTimeTNT;
                BuildingLayer'Class (This).setReadyForExplosion (True);
            end if;
        else
            AdvancedRTSGameLayer_Package.AdvancedRTSGameLayer (This).processBuiltTick (allBinaryLayerManager);
        end if;
        This.indexedButShouldBeRotationAnimationInterface.nextFrame;
   end processBuiltTick;

   function calculateEfficiency (This : in out BuildingLayer) return Integer is
   begin
        return This.efficiencyPerLevel;
   end calculateEfficiency;

   function getCost (This : in out BuildingLayer) return Integer is
      total : Long_Long_Integer;
   begin
        total := RTSLayerUtil_Package.getInstance.getCostExponential (Long_Long_Integer (((BuildingLayer'Class (This).getLevel) * (BuildingLayer'Class (This).getBuildingLevelCost))));
        return Integer (total);
   end getCost;

   function getDowngradeCost (This : in out BuildingLayer) return Integer is
      downgradeCost : Long_Long_Integer;
   begin
        downgradeCost := RTSLayerUtil_Package.getInstance.getCostExponential (Long_Long_Integer (((((BuildingLayer'Class (This).getLevel) - (1))) * (BuildingLayer'Class (This).getBuildingLevelCost))));
        This.logUtil.putF (To_Unbounded_String ("Cost: ") & Java_Image (downgradeCost), BuildingLayer_Access'(This'Unchecked_Access), To_Unbounded_String ("getDowngradeCost"));
        return ((Integer (downgradeCost)) * (9)) / (10);
   end getDowngradeCost;

   function getUpgradeCost (This : in out BuildingLayer) return Integer is
      upgradeCost : Long_Long_Integer;
   begin
        upgradeCost := RTSLayerUtil_Package.getInstance.getCostExponential (Long_Long_Integer (((((BuildingLayer'Class (This).getLevel) + (1))) * (BuildingLayer'Class (This).getBuildingLevelCost))));
        return Integer (upgradeCost);
   end getUpgradeCost;

   procedure downgrade (This : in out BuildingLayer) is
   begin
        AdvancedRTSGameLayer_Package.AdvancedRTSGameLayer (This).downgrade;
        BuildingLayer'Class (This).setProductivity ((BuildingLayer'Class (This).getProductivity) - (1));
        BuildingLayer'Class (This).setEfficiency ((BuildingLayer'Class (This).getEfficiency) - (BuildingLayer'Class (This).calculateEfficiency));
        BuildingLayer'Class (This).getHealthInterface.setMaxHealth ((BuildingLayer'Class (This).getHealthInterface.getMaxHealth) - (((((BuildingLayer'Class (This).getLevel) + (1))) * (100))));
   end downgrade;

   procedure upgrade (This : in out BuildingLayer) is
   begin
        AdvancedRTSGameLayer_Package.AdvancedRTSGameLayer (This).upgrade;
        BuildingLayer'Class (This).setProductivity ((BuildingLayer'Class (This).getProductivity) + (1));
        BuildingLayer'Class (This).setEfficiency ((BuildingLayer'Class (This).getEfficiency) + (BuildingLayer'Class (This).calculateEfficiency));
        BuildingLayer'Class (This).getHealthInterface.setMaxHealth ((BuildingLayer'Class (This).getHealthInterface.getMaxHealth) + (((BuildingLayer'Class (This).getLevel) * (100))));
   end upgrade;

   function getBuildingLevelCost (This : in out BuildingLayer) return Integer is
   begin
        return This.buildingLevelCost;
   end getBuildingLevelCost;

   procedure setBuildingLevelCost (This : in out BuildingLayer; buildingLevelCost : Integer) is
   begin
        This.buildingLevelCost := buildingLevelCost;
   end setBuildingLevelCost;

   function getProductivity (This : in out BuildingLayer) return Integer is
   begin
        return This.productivity;
   end getProductivity;

   procedure setProductivity (This : in out BuildingLayer; productivity : Integer) is
   begin
        This.productivity := productivity;
   end setProductivity;

   function getEfficiency (This : in out BuildingLayer) return Integer is
   begin
        return This.efficiency;
   end getEfficiency;

   procedure setEfficiency (This : in out BuildingLayer; efficiency : Integer) is
   begin
        This.efficiency := efficiency;
   end setEfficiency;

   --  throws Exception
   procedure generateMoveOutOfBuildAreaPaths (This : in out BuildingLayer) is
      occupyList : BasicArrayList_Access;
      surroundList : BasicArrayList_Access;
      NO_DIRECTION : Direction_Access;
      geographicMapDirectionUtil : GeographicMapDirectionUtil_Access;
      pathsList : BasicArrayList_Access;
      occupyGeographicMapCellPosition : GeographicMapCellPosition_Access;
      surroundGeographicMapCellPosition : GeographicMapCellPosition_Access;
      list : BasicArrayList_Access;
      index : Integer;
      index2 : Integer;
   begin
        occupyList := This.geographicMapCellPositionAreaBase.getOccupyingGeographicMapCellPositionList;
        surroundList := This.geographicMapCellPositionAreaBase.getSurroundingGeographicMapCellPositionList;
        NO_DIRECTION := Direction_Access (DirectionFactory_Package.getInstance.NO_DIRECTION);
        geographicMapDirectionUtil := GeographicMapDirectionUtil_Package.getInstance;
        pathsList := null;
        occupyGeographicMapCellPosition := null;
        surroundGeographicMapCellPosition := null;
        list := null;
        for index2 in reverse 0 .. (occupyList.size) - (1) loop
            pathsList := BasicArrayList_Access (BasicArrayListD_Package.Create);
            occupyGeographicMapCellPosition := GeographicMapCellPosition_Access (occupyList.get (index2));
            for index in reverse 0 .. (surroundList.size) - (1) loop
                surroundGeographicMapCellPosition := GeographicMapCellPosition_Access (surroundList.get (index));
                if (Java_Object_Access (geographicMapDirectionUtil.getEightDirectionFromCellPositionToAdjacentCellPosition (surroundGeographicMapCellPosition, occupyGeographicMapCellPosition))) /= (Java_Object_Access (NO_DIRECTION)) then
                    list := BasicArrayList_Access (BasicArrayListS_Package.Create (1));
                    list.add (Java_Object_Access (surroundGeographicMapCellPosition));
                    pathsList.add (Java_Object_Access (list));
                end if;
            end loop;
            This.pathsHashtable.put (occupyGeographicMapCellPosition, pathsList);
        end loop;
   end generateMoveOutOfBuildAreaPaths;

   function getMoveOutOfBuildAreaPath (This : in out BuildingLayer; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) return BasicArrayList_Access is
      geographicMapCellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (geographicMapCellPosition_Param);
      pathsList : BasicArrayList_Access;
   begin
        pathsList := BasicArrayList_Access (This.pathsHashtable.get (geographicMapCellPosition));
        return pathsList;
   end getMoveOutOfBuildAreaPath;

   function getEndGeographicMapCellPositionList (This : in out BuildingLayer) return BasicArrayList_Access is
   begin
        return This.geographicMapCellPositionAreaBase.getSurroundingGeographicMapCellPositionList;
   end getEndGeographicMapCellPositionList;

   function shouldHandleStartSameAsEnd (This : in out BuildingLayer) return Boolean is
   begin
        return False;
   end shouldHandleStartSameAsEnd;

   procedure paint (This : in out BuildingLayer; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        if BuildingLayer'Class (This).isVisible then
            AdvancedRTSGameLayer_Package.AdvancedRTSGameLayer (This).paint (graphics);
            This.damageFloatersPaintableInterface.paint (graphics);
            This.healthBar.paint (graphics);
        end if;
   end paint;

   --  throws Exception
   procedure damage (This : in out BuildingLayer; damage : Integer; damageType : Integer) is
   begin
        AdvancedRTSGameLayer_Package.AdvancedRTSGameLayer (This).damage (damage, damageType);
        This.damageFloaters.add (damage);
        if (damage) > (0) then
            BuildingLayer'Class (This).getHealthInterface.damage (damage);
        end if;
   end damage;

   --  throws Exception
   function getDamage (This : in out BuildingLayer; damageType : Integer) return Integer is
   begin
        return 0;
   end getDamage;

   procedure addVisibility (This : in out BuildingLayer) is
      geographicMapCellPositionArea : GeographicMapCellPositionAreaBase_Access;
      occupyList : BasicArrayList_Access;
      surroundList : BasicArrayList_Access;
   begin
        geographicMapCellPositionArea := This.geographicMapCellPositionAreaBase;
        occupyList := geographicMapCellPositionArea.getOccupyingGeographicMapCellPositionList;
        VisibleCellPositionsSingleton_Package.getInstance.addStationaryCellPositions (occupyList);
        surroundList := geographicMapCellPositionArea.getSurroundingGeographicMapCellPositionList;
        VisibleCellPositionsSingleton_Package.getInstance.addStationaryCellPositions (surroundList);
   end addVisibility;

   procedure removeVisibility (This : in out BuildingLayer) is
      occupyList : BasicArrayList_Access;
      surroundList : BasicArrayList_Access;
   begin
        occupyList := This.geographicMapCellPositionAreaBase.getOccupyingGeographicMapCellPositionList;
        VisibleCellPositionsSingleton_Package.getInstance.removeStationaryCellPositions (occupyList);
        surroundList := This.geographicMapCellPositionAreaBase.getSurroundingGeographicMapCellPositionList;
        VisibleCellPositionsSingleton_Package.getInstance.removeStationaryCellPositions (surroundList);
   end removeVisibility;

   --  throws Exception
   procedure setDestroyed (This : in out BuildingLayer; destroyed : Boolean) is
      damage : Integer;
   begin
        AdvancedRTSGameLayer_Package.AdvancedRTSGameLayer (This).setDestroyed (destroyed);
        if BuildingLayer'Class (This).isDestroyed then
            DropCellPositionHistory_Package.getInstance.removeAll (BuildingLayer_Access'(This'Unchecked_Access));
            TrackingEventHandler_Package.getInstance.removeListener (BuildingLayer_Access'(This'Unchecked_Access));
            if This.local then
                BuildingLayer'Class (This).removeVisibility;
            end if;
            if not (BuildingLayer'Class (This).getHealthInterface.isAlive) then
                damage := BuildingLayer'Class (This).getHealthInterface.getMaxHealth;
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

   function createHudPaintable (This : in out BuildingLayer) return SelectionHudPaintable_Access is
      buildingInfoHudPaintable : BuildingInfoHudPaintable_Access;
   begin
        buildingInfoHudPaintable := BuildingInfoHudPaintable_Package.getInstance;
        buildingInfoHudPaintable.setBasicColorP (This.allBinaryGameLayerManagerP.getForegroundBasicColor);
        buildingInfoHudPaintable.setRtsLayer (BuildingLayer_Access'(This'Unchecked_Access));
        return SelectionHudPaintable_Access (buildingInfoHudPaintable);
   end createHudPaintable;

   function getHudPaintable (This : in out BuildingLayer) return SelectionHudPaintable_Access is
      buildingInfoHudPaintable : BuildingInfoHudPaintable_Access;
   begin
        buildingInfoHudPaintable := BuildingInfoHudPaintable_Package.getInstance;
        return SelectionHudPaintable_Access (buildingInfoHudPaintable);
   end getHudPaintable;

   function getType (This : in out BuildingLayer) return Integer is
   begin
        return BuildingLayer_Package.getStaticType;
   end getType;

   function getStaticType return Integer is
   begin
        return 2;
   end getStaticType;

   function getRotationAnimationInterface (This : in out BuildingLayer) return RotationAnimation_Access is
   begin
        return AdvancedRTSGameLayer_Package.AdvancedRTSGameLayer (This).getRotationAnimationInterface;
   end getRotationAnimationInterface;

   procedure setFrame (This : in out BuildingLayer; index : Integer) is
   begin
        AdvancedRTSGameLayer_Package.AdvancedRTSGameLayer (This).setFrame (index);
   end setFrame;

   procedure getMoveOutOfBuildAreaPath (This : in out BuildingLayer; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) is
      Java_Result : constant BasicArrayList_Access := BuildingLayer'Class (This).getMoveOutOfBuildAreaPath (geographicMapCellPosition_Param => geographicMapCellPosition_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getMoveOutOfBuildAreaPath;

   procedure getDamage (This : in out BuildingLayer; damageType : Integer) is
      Java_Result : constant Integer := BuildingLayer'Class (This).getDamage (damageType => damageType);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getDamage;

end org.allbinary.game.layer.building.BuildingLayer_Package;


