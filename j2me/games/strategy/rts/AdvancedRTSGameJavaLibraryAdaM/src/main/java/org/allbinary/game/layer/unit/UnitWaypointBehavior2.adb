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


with org.allbinary.J2MEUtil_Package; use org.allbinary.J2MEUtil_Package;
with org.allbinary.game.configuration.feature.Features_Package; use org.allbinary.game.configuration.feature.Features_Package;
with org.allbinary.game.layer.SteeringVisitor_Package; use org.allbinary.game.layer.SteeringVisitor_Package;
with org.allbinary.game.layer.AdvancedRTSGameLayer_Package; use org.allbinary.game.layer.AdvancedRTSGameLayer_Package;
with org.allbinary.game.layer.AdvancedRTSGameLayer_Package_References;
with org.allbinary.game.layer.MultipassWaypointPathRunnable_Package; use org.allbinary.game.layer.MultipassWaypointPathRunnable_Package;
with org.allbinary.game.layer.RTSLayer_Package; use org.allbinary.game.layer.RTSLayer_Package;
with org.allbinary.game.layer.RTSLayer_Package_References;
with org.allbinary.game.layer.WaypointPathRunnable_Package; use org.allbinary.game.layer.WaypointPathRunnable_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.game.layer.PathFindingLayerInterface_Package; use org.allbinary.game.layer.PathFindingLayerInterface_Package;
with org.allbinary.game.layer.WaypointPathRunnableBase_Package; use org.allbinary.game.layer.WaypointPathRunnableBase_Package;
with org.allbinary.game.layer.WaypointPathRunnableBase_Package_References;
with org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package; use org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package;
with org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References;
with org.allbinary.game.layer.waypoint.WaypointBase_Package; use org.allbinary.game.layer.waypoint.WaypointBase_Package;
with org.allbinary.game.tracking.TrackingEventHandler_Package; use org.allbinary.game.tracking.TrackingEventHandler_Package;
with org.allbinary.graphics.GPoint_Package; use org.allbinary.graphics.GPoint_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package_References;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package_References;
with org.allbinary.layer.AllBinaryLayerManager_Package; use org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package_References;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.java.bool.BooleanFactory_Package; use org.allbinary.logic.java.bool.BooleanFactory_Package;
with org.allbinary.math.LayerDistanceUtil_Package; use org.allbinary.math.LayerDistanceUtil_Package;
with org.allbinary.math.LayerDistanceUtil_Package_References;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References;
with org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory_Package; use org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory_Package;
with org.allbinary.thread.PathFindingThreadPool_Package; use org.allbinary.thread.PathFindingThreadPool_Package;
with org.allbinary.thread.ThreadPool_Package; use org.allbinary.thread.ThreadPool_Package;
with org.allbinary.thread.ThreadPool_Package_References;
with org.allbinary.time.TimeDelayHelper_Package; use org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.time.TimeDelayHelper_Package_References;
with org.allbinary.game.layer.unit.UnitWaypointStrings_Package; use org.allbinary.game.layer.unit.UnitWaypointStrings_Package;
with org.allbinary.game.layer.unit.UnitWaypointStrings_Package_References;
with org.allbinary.game.layer.unit.UnitLayer_Package; use org.allbinary.game.layer.unit.UnitLayer_Package;
with org.allbinary.game.layer.unit.UnitLayer_Package_References;
with org.allbinary.game.layer.unit.BuildingSteeringVisitor_Package; use org.allbinary.game.layer.unit.BuildingSteeringVisitor_Package;
with org.allbinary.game.layer.unit.BuildingSteeringVisitor_Package_References;
with org.allbinary.game.layer.unit.UnitWaypointBehavior2_Package_References;
with org.allbinary.util.ABHashMap_Package;
with org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABStack_Package;
with org.allbinary.logic.ABSystemWrapper_Package;
with org.allbinary.util.ABVector_Package;
with org.allbinary.thread.ARunnable_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.game.layer.AdvancedRTSProperties_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
with org.allbinary.media.AllBinaryVibrationME_Package;
with org.allbinary.math.Angle_Package;
with org.allbinary.math.AngleFactory_Package;
with org.allbinary.math.AngleIncrementInfo_Package;
with org.allbinary.math.AngleInfo_Package;
with org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.animation.AnimationInterfaceFactoryInterface_Package;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.ai.ArtificialIntelligenceInterface_Package;
with org.allbinary.canvas.BaseGameStatistics_Package;
with org.allbinary.game.displayable.canvas.BaseMenuBehavior_Package;
with org.allbinary.graphics.displayable.BaseScalable_Package;
with org.allbinary.util.BasicArrayListS_Package;
with org.allbinary.game.init.BasicBuildGameInitializerFactory_Package;
with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.logic.math.BasicDecimal_Package;
with org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
with org.allbinary.game.layer.building.event.BuildingEventListenerInterface_Package;
with org.allbinary.game.layer.building.BuildingLayer_Package;
with org.allbinary.game.layer.building.BuildingPropertiesFactory_Package;
with org.allbinary.game.layer.unit.BuildingSteeringVisitor_Package;
with org.allbinary.graphics.displayable.CanvasStrings_Package;
with org.allbinary.graphics.CellPosition_Package;
with org.allbinary.graphics.CellPositionFactory_Package;
with org.allbinary.logic.java.character_Id.CharacterSet_Package;
with org.allbinary.util.CircularIndexUtil_Package;
with org.allbinary.game.collision.CollidableBaseBehaviorFactory_Package;
with org.allbinary.game.layer.CollidableCompositeLayer_Package;
with org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package;
with org.allbinary.game.collision.CollisionProcessor_Package;
with org.allbinary.game.collision.CollisionType_Package;
with org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactory_Package;
with org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactoryInterface_Package;
with org.allbinary.game.combat.damage.DamageFloaters_Package;
with org.allbinary.game.displayable.canvas.DemoGameBehavior_Package;
with org.allbinary.game.displayable.canvas.DemoPaintableInterface_Package;
with org.allbinary.game.combat.destroy.event.DestroyedEvent_Package;
with org.allbinary.game.combat.destroy.event.DestroyedEventListenerInterface_Package;
with org.allbinary.direction.Direction_Package;
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
with org.allbinary.game.identification.Group_Package;
with org.allbinary.game.identification.GroupCommonFactory_Package;
with org.allbinary.game.health.Health_Package;
with org.allbinary.game.health.HealthListenerInterface_Package;
with org.allbinary.game.score.HighScoresFactoryInterface_Package;
with org.allbinary.animation.IndexedAnimation_Package;
with org.allbinary.graphics.paint.InitUpdatePaintable_Package;
with org.allbinary.game.input.Input_Package;
with org.allbinary.game.input.InputFactory_Package;
with org.allbinary.game.input.mapping.InputMapping_Package;
with org.allbinary.game.IntermissionEnableListenerInterface_Package;
with org.allbinary.game.IntermissionInterface_Package;
with org.allbinary.graphics.form.ItemPaintableFactory_Package;
with org.allbinary.game.collision.LayerCollisionUtil_Package;
with org.allbinary.layer.LayerInterfaceFactoryInterface_Package;
with org.allbinary.layer.event.LayerManagerEvent_Package;
with org.allbinary.layer.event.LayerManagerEventHandler_Package;
with org.allbinary.layer.event.LayerManagerEventListener_Package;
with org.allbinary.layer.LayerManagerLoggingBase_Package;
with org.allbinary.layer.LayerProcessor_Package;
with org.allbinary.game.input.LocalPlayerInputIdFactory_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.math.NamedAngle_Package;
with org.allbinary.thread.NullRunnable_Package;
with org.allbinary.graphics.opengles.OpenGLFeature_Package;
with org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package;
with org.allbinary.game.part.PartInterface_Package;
with org.allbinary.game.layer.pickup.PickedUpLayerInterface_Package;
with org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactory_Package;
with org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryBase_Package;
with org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package;
with org.allbinary.game.layer.pickup.PickedUpLayerType_Package;
with org.allbinary.game.layer.pickup.PickupBehavior_Package;
with org.allbinary.game.layer.pickup.PickupProcessorInterface_Package;
with org.allbinary.game.input.PlayerGameInput_Package;
with org.allbinary.game.input.PlayerGameInputCompositeInterface_Package;
with org.allbinary.media.audio.PlayerQueue_Package;
with org.allbinary.game.PlayerType_Package;
with org.allbinary.game.input.event.PressGameKeyEventHandler_Package;
with org.allbinary.logic.math.PrimitiveLongSingleton_Package;
with org.allbinary.logic.math.PrimitiveLongUtil_Package;
with org.allbinary.thread.PriorityRunnable_Package;
with org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package;
with org.allbinary.canvas.Processor_Package;
with org.allbinary.graphics.canvas.transition.progress.ProgressEndListener_Package;
with org.allbinary.game.layer.RTSLayerEvent_Package;
with org.allbinary.graphics.Rectangle_Package;
with org.allbinary.math.RectangleCollisionUtil_Package;
with org.allbinary.game.multiplayer.layer.RemoteInfo_Package;
with org.allbinary.game.resource.ResourceLoadingLevel_Package;
with org.allbinary.animation.RotationAnimation_Package;
with org.allbinary.animation.RotationAnimationInterfaceCompositeInterface_Package;
with org.allbinary.graphics.displayable.ScalableListener_Package;
with org.allbinary.media.ScaleProperties_Package;
with org.allbinary.graphics.ScreenCapture_Package;
with org.allbinary.game.layer.SensorAction_Package;
with org.allbinary.animation.transition.shake.ShakeAnimationListener_Package;
with org.allbinary.animation.transition.shake.ShakeEvent_Package;
with org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.thread.SynchObject_Package;
with org.allbinary.thread.ThreadObjectUtil_Package;
with org.allbinary.thread.ThreadPoolStrings_Package;
with org.allbinary.game.tick.TickableInterface_Package;
with org.allbinary.time.TimeStampUtil_Package;
with org.allbinary.game.configuration.feature.TouchFeature_Package;
with org.allbinary.game.configuration.feature.TouchFeatureFactory_Package;
with org.allbinary.input.TouchJ2ME_Package;
with org.allbinary.game.layer.unit.UnitLayer_Package;
with org.allbinary.game.layer.unit.UnitWaypointStrings_Package;
with org.allbinary.game.input.event.UpGameKeyEventHandler_Package;
with org.allbinary.game.input.event.UpGameKeyEventHandlerBase_Package;
with org.allbinary.graph.V_Package;
with org.allbinary.view.ViewPositionBase_Package;
with org.allbinary.view.event.ViewPositionEvent_Package;
with org.allbinary.input.event.VirtualKeyboardEvent_Package;
with org.allbinary.input.event.VirtualKeyboardEventHandler_Package;
with org.allbinary.game.layer.waypoint.event.WaypointEventListenerInterface_Package;

package body org.allbinary.game.layer.unit.UnitWaypointBehavior2_Package is

   package J2MEUtil_Package renames Standard.org.allbinary.J2MEUtil_Package;
   package Features_Package renames Standard.org.allbinary.game.configuration.feature.Features_Package;
   package MultipassWaypointPathRunnable_Package renames Standard.org.allbinary.game.layer.MultipassWaypointPathRunnable_Package;
   package WaypointPathRunnable_Package renames Standard.org.allbinary.game.layer.WaypointPathRunnable_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package PathFindingLayerInterface_Package renames Standard.org.allbinary.game.layer.PathFindingLayerInterface_Package;
   package WaypointBase_Package renames Standard.org.allbinary.game.layer.waypoint.WaypointBase_Package;
   package TrackingEventHandler_Package renames Standard.org.allbinary.game.tracking.TrackingEventHandler_Package;
   package GPoint_Package renames Standard.org.allbinary.graphics.GPoint_Package;
   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   package BooleanFactory_Package renames Standard.org.allbinary.logic.java.bool.BooleanFactory_Package;
   package SimpleGeographicMapCellPositionFactory_Package renames Standard.org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory_Package;
   package PathFindingThreadPool_Package renames Standard.org.allbinary.thread.PathFindingThreadPool_Package;
   subtype AdvancedRTSGameLayer_Access is org.allbinary.game.layer.AdvancedRTSGameLayer_Package_References.AdvancedRTSGameLayer_Access;
   function "=" (Left, Right : AdvancedRTSGameLayer_Access) return Boolean renames org.allbinary.game.layer.AdvancedRTSGameLayer_Package_References."=";
   subtype AdvancedRTSGameLayer_Access_Array is org.allbinary.game.layer.AdvancedRTSGameLayer_Package_References.AdvancedRTSGameLayer_Access_Array;
   function "=" (Left, Right : AdvancedRTSGameLayer_Access_Array) return Boolean renames org.allbinary.game.layer.AdvancedRTSGameLayer_Package_References."=";
   subtype AdvancedRTSGameLayer_Access_Array_Access is org.allbinary.game.layer.AdvancedRTSGameLayer_Package_References.AdvancedRTSGameLayer_Access_Array_Access;
   function "=" (Left, Right : AdvancedRTSGameLayer_Access_Array_Access) return Boolean renames org.allbinary.game.layer.AdvancedRTSGameLayer_Package_References."=";
   subtype AdvancedRTSGameLayer_Access_Array_Access_Array is org.allbinary.game.layer.AdvancedRTSGameLayer_Package_References.AdvancedRTSGameLayer_Access_Array_Access_Array;
   function "=" (Left, Right : AdvancedRTSGameLayer_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.AdvancedRTSGameLayer_Package_References."=";
   subtype AdvancedRTSGameLayer_Access_Array_Access_Array_Access is org.allbinary.game.layer.AdvancedRTSGameLayer_Package_References.AdvancedRTSGameLayer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AdvancedRTSGameLayer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.AdvancedRTSGameLayer_Package_References."=";
   subtype RTSLayer_Access is org.allbinary.game.layer.RTSLayer_Package_References.RTSLayer_Access;
   function "=" (Left, Right : RTSLayer_Access) return Boolean renames org.allbinary.game.layer.RTSLayer_Package_References."=";
   subtype RTSLayer_Access_Array is org.allbinary.game.layer.RTSLayer_Package_References.RTSLayer_Access_Array;
   function "=" (Left, Right : RTSLayer_Access_Array) return Boolean renames org.allbinary.game.layer.RTSLayer_Package_References."=";
   subtype RTSLayer_Access_Array_Access is org.allbinary.game.layer.RTSLayer_Package_References.RTSLayer_Access_Array_Access;
   function "=" (Left, Right : RTSLayer_Access_Array_Access) return Boolean renames org.allbinary.game.layer.RTSLayer_Package_References."=";
   subtype RTSLayer_Access_Array_Access_Array is org.allbinary.game.layer.RTSLayer_Package_References.RTSLayer_Access_Array_Access_Array;
   function "=" (Left, Right : RTSLayer_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.RTSLayer_Package_References."=";
   subtype RTSLayer_Access_Array_Access_Array_Access is org.allbinary.game.layer.RTSLayer_Package_References.RTSLayer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RTSLayer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.RTSLayer_Package_References."=";
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
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   function "=" (Left, Right : LogUtil_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype WaypointPathRunnableBase_Access is org.allbinary.game.layer.WaypointPathRunnableBase_Package_References.WaypointPathRunnableBase_Access;
   function "=" (Left, Right : WaypointPathRunnableBase_Access) return Boolean renames org.allbinary.game.layer.WaypointPathRunnableBase_Package_References."=";
   subtype WaypointPathRunnableBase_Access_Array is org.allbinary.game.layer.WaypointPathRunnableBase_Package_References.WaypointPathRunnableBase_Access_Array;
   function "=" (Left, Right : WaypointPathRunnableBase_Access_Array) return Boolean renames org.allbinary.game.layer.WaypointPathRunnableBase_Package_References."=";
   subtype WaypointPathRunnableBase_Access_Array_Access is org.allbinary.game.layer.WaypointPathRunnableBase_Package_References.WaypointPathRunnableBase_Access_Array_Access;
   function "=" (Left, Right : WaypointPathRunnableBase_Access_Array_Access) return Boolean renames org.allbinary.game.layer.WaypointPathRunnableBase_Package_References."=";
   subtype WaypointPathRunnableBase_Access_Array_Access_Array is org.allbinary.game.layer.WaypointPathRunnableBase_Package_References.WaypointPathRunnableBase_Access_Array_Access_Array;
   function "=" (Left, Right : WaypointPathRunnableBase_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.WaypointPathRunnableBase_Package_References."=";
   subtype WaypointPathRunnableBase_Access_Array_Access_Array_Access is org.allbinary.game.layer.WaypointPathRunnableBase_Package_References.WaypointPathRunnableBase_Access_Array_Access_Array_Access;
   function "=" (Left, Right : WaypointPathRunnableBase_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.WaypointPathRunnableBase_Package_References."=";
   subtype CollidableDestroyableDamageableLayer_Access is org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References.CollidableDestroyableDamageableLayer_Access;
   function "=" (Left, Right : CollidableDestroyableDamageableLayer_Access) return Boolean renames org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References."=";
   subtype CollidableDestroyableDamageableLayer_Access_Array is org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References.CollidableDestroyableDamageableLayer_Access_Array;
   function "=" (Left, Right : CollidableDestroyableDamageableLayer_Access_Array) return Boolean renames org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References."=";
   subtype CollidableDestroyableDamageableLayer_Access_Array_Access is org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References.CollidableDestroyableDamageableLayer_Access_Array_Access;
   function "=" (Left, Right : CollidableDestroyableDamageableLayer_Access_Array_Access) return Boolean renames org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References."=";
   subtype CollidableDestroyableDamageableLayer_Access_Array_Access_Array is org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References.CollidableDestroyableDamageableLayer_Access_Array_Access_Array;
   function "=" (Left, Right : CollidableDestroyableDamageableLayer_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References."=";
   subtype CollidableDestroyableDamageableLayer_Access_Array_Access_Array_Access is org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References.CollidableDestroyableDamageableLayer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CollidableDestroyableDamageableLayer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References."=";
   subtype BasicColorFactory_Access is org.allbinary.graphics.color.BasicColorFactory_Package_References.BasicColorFactory_Access;
   function "=" (Left, Right : BasicColorFactory_Access) return Boolean renames org.allbinary.graphics.color.BasicColorFactory_Package_References."=";
   subtype BasicColorFactory_Access_Array is org.allbinary.graphics.color.BasicColorFactory_Package_References.BasicColorFactory_Access_Array;
   function "=" (Left, Right : BasicColorFactory_Access_Array) return Boolean renames org.allbinary.graphics.color.BasicColorFactory_Package_References."=";
   subtype BasicColorFactory_Access_Array_Access is org.allbinary.graphics.color.BasicColorFactory_Package_References.BasicColorFactory_Access_Array_Access;
   function "=" (Left, Right : BasicColorFactory_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.BasicColorFactory_Package_References."=";
   subtype BasicColorFactory_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColorFactory_Package_References.BasicColorFactory_Access_Array_Access_Array;
   function "=" (Left, Right : BasicColorFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.color.BasicColorFactory_Package_References."=";
   subtype BasicColorFactory_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColorFactory_Package_References.BasicColorFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicColorFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.BasicColorFactory_Package_References."=";
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
   subtype LayerDistanceUtil_Access is org.allbinary.math.LayerDistanceUtil_Package_References.LayerDistanceUtil_Access;
   function "=" (Left, Right : LayerDistanceUtil_Access) return Boolean renames org.allbinary.math.LayerDistanceUtil_Package_References."=";
   subtype LayerDistanceUtil_Access_Array is org.allbinary.math.LayerDistanceUtil_Package_References.LayerDistanceUtil_Access_Array;
   function "=" (Left, Right : LayerDistanceUtil_Access_Array) return Boolean renames org.allbinary.math.LayerDistanceUtil_Package_References."=";
   subtype LayerDistanceUtil_Access_Array_Access is org.allbinary.math.LayerDistanceUtil_Package_References.LayerDistanceUtil_Access_Array_Access;
   function "=" (Left, Right : LayerDistanceUtil_Access_Array_Access) return Boolean renames org.allbinary.math.LayerDistanceUtil_Package_References."=";
   subtype LayerDistanceUtil_Access_Array_Access_Array is org.allbinary.math.LayerDistanceUtil_Package_References.LayerDistanceUtil_Access_Array_Access_Array;
   function "=" (Left, Right : LayerDistanceUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.math.LayerDistanceUtil_Package_References."=";
   subtype LayerDistanceUtil_Access_Array_Access_Array_Access is org.allbinary.math.LayerDistanceUtil_Package_References.LayerDistanceUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LayerDistanceUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.math.LayerDistanceUtil_Package_References."=";
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
   subtype ThreadPool_Access is org.allbinary.thread.ThreadPool_Package_References.ThreadPool_Access;
   function "=" (Left, Right : ThreadPool_Access) return Boolean renames org.allbinary.thread.ThreadPool_Package_References."=";
   subtype ThreadPool_Access_Array is org.allbinary.thread.ThreadPool_Package_References.ThreadPool_Access_Array;
   function "=" (Left, Right : ThreadPool_Access_Array) return Boolean renames org.allbinary.thread.ThreadPool_Package_References."=";
   subtype ThreadPool_Access_Array_Access is org.allbinary.thread.ThreadPool_Package_References.ThreadPool_Access_Array_Access;
   function "=" (Left, Right : ThreadPool_Access_Array_Access) return Boolean renames org.allbinary.thread.ThreadPool_Package_References."=";
   subtype ThreadPool_Access_Array_Access_Array is org.allbinary.thread.ThreadPool_Package_References.ThreadPool_Access_Array_Access_Array;
   function "=" (Left, Right : ThreadPool_Access_Array_Access_Array) return Boolean renames org.allbinary.thread.ThreadPool_Package_References."=";
   subtype ThreadPool_Access_Array_Access_Array_Access is org.allbinary.thread.ThreadPool_Package_References.ThreadPool_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ThreadPool_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.thread.ThreadPool_Package_References."=";
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
   subtype UnitWaypointStrings_Access is org.allbinary.game.layer.unit.UnitWaypointStrings_Package_References.UnitWaypointStrings_Access;
   function "=" (Left, Right : UnitWaypointStrings_Access) return Boolean renames org.allbinary.game.layer.unit.UnitWaypointStrings_Package_References."=";
   subtype UnitWaypointStrings_Access_Array is org.allbinary.game.layer.unit.UnitWaypointStrings_Package_References.UnitWaypointStrings_Access_Array;
   function "=" (Left, Right : UnitWaypointStrings_Access_Array) return Boolean renames org.allbinary.game.layer.unit.UnitWaypointStrings_Package_References."=";
   subtype UnitWaypointStrings_Access_Array_Access is org.allbinary.game.layer.unit.UnitWaypointStrings_Package_References.UnitWaypointStrings_Access_Array_Access;
   function "=" (Left, Right : UnitWaypointStrings_Access_Array_Access) return Boolean renames org.allbinary.game.layer.unit.UnitWaypointStrings_Package_References."=";
   subtype UnitWaypointStrings_Access_Array_Access_Array is org.allbinary.game.layer.unit.UnitWaypointStrings_Package_References.UnitWaypointStrings_Access_Array_Access_Array;
   function "=" (Left, Right : UnitWaypointStrings_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.unit.UnitWaypointStrings_Package_References."=";
   subtype UnitWaypointStrings_Access_Array_Access_Array_Access is org.allbinary.game.layer.unit.UnitWaypointStrings_Package_References.UnitWaypointStrings_Access_Array_Access_Array_Access;
   function "=" (Left, Right : UnitWaypointStrings_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.unit.UnitWaypointStrings_Package_References."=";
   subtype UnitLayer_Access is org.allbinary.game.layer.unit.UnitLayer_Package_References.UnitLayer_Access;
   function "=" (Left, Right : UnitLayer_Access) return Boolean renames org.allbinary.game.layer.unit.UnitLayer_Package_References."=";
   subtype UnitLayer_Access_Array is org.allbinary.game.layer.unit.UnitLayer_Package_References.UnitLayer_Access_Array;
   function "=" (Left, Right : UnitLayer_Access_Array) return Boolean renames org.allbinary.game.layer.unit.UnitLayer_Package_References."=";
   subtype UnitLayer_Access_Array_Access is org.allbinary.game.layer.unit.UnitLayer_Package_References.UnitLayer_Access_Array_Access;
   function "=" (Left, Right : UnitLayer_Access_Array_Access) return Boolean renames org.allbinary.game.layer.unit.UnitLayer_Package_References."=";
   subtype UnitLayer_Access_Array_Access_Array is org.allbinary.game.layer.unit.UnitLayer_Package_References.UnitLayer_Access_Array_Access_Array;
   function "=" (Left, Right : UnitLayer_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.unit.UnitLayer_Package_References."=";
   subtype UnitLayer_Access_Array_Access_Array_Access is org.allbinary.game.layer.unit.UnitLayer_Package_References.UnitLayer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : UnitLayer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.unit.UnitLayer_Package_References."=";
   subtype BuildingSteeringVisitor_Access is org.allbinary.game.layer.unit.BuildingSteeringVisitor_Package_References.BuildingSteeringVisitor_Access;
   function "=" (Left, Right : BuildingSteeringVisitor_Access) return Boolean renames org.allbinary.game.layer.unit.BuildingSteeringVisitor_Package_References."=";
   subtype BuildingSteeringVisitor_Access_Array is org.allbinary.game.layer.unit.BuildingSteeringVisitor_Package_References.BuildingSteeringVisitor_Access_Array;
   function "=" (Left, Right : BuildingSteeringVisitor_Access_Array) return Boolean renames org.allbinary.game.layer.unit.BuildingSteeringVisitor_Package_References."=";
   subtype BuildingSteeringVisitor_Access_Array_Access is org.allbinary.game.layer.unit.BuildingSteeringVisitor_Package_References.BuildingSteeringVisitor_Access_Array_Access;
   function "=" (Left, Right : BuildingSteeringVisitor_Access_Array_Access) return Boolean renames org.allbinary.game.layer.unit.BuildingSteeringVisitor_Package_References."=";
   subtype BuildingSteeringVisitor_Access_Array_Access_Array is org.allbinary.game.layer.unit.BuildingSteeringVisitor_Package_References.BuildingSteeringVisitor_Access_Array_Access_Array;
   function "=" (Left, Right : BuildingSteeringVisitor_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.unit.BuildingSteeringVisitor_Package_References."=";
   subtype BuildingSteeringVisitor_Access_Array_Access_Array_Access is org.allbinary.game.layer.unit.BuildingSteeringVisitor_Package_References.BuildingSteeringVisitor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BuildingSteeringVisitor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.unit.BuildingSteeringVisitor_Package_References."=";
   procedure Initialize_Fields (This : in out UnitWaypointBehavior2'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.UnitWaypointBehavior2_Field_unitWaypointStrings := UnitWaypointStrings_Package.getInstance;
      This.basicColorFactory := BasicColorFactory_Package.getInstance;
      This.layerDistanceUtil := LayerDistanceUtil_Package.getInstance;
      This.pathFindingThreadPool := PathFindingThreadPool_Package.getInstance;
      
      
      
      This.sensorRange := 0;
      This.closeRange := 0;
      This.nextUnvisitedPathGeographicMapCellPosition := GeographicMapCellPosition_Access (SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION);
      This.afterNextUnvisitedPathGeographicMapCellPosition := GeographicMapCellPosition_Access (SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION);
      This.waitingOnTargetPath := False;
      This.waitingOnWaypointPath := False;
      This.targetWithoutCachedPathLayerInterface := CollidableDestroyableDamageableLayer_Package.getNullInstance;
      This.buildingSteeringVisitor_Var := BuildingSteeringVisitor_Package.Create (org.allbinary.game.layer.unit.UnitWaypointBehavior2_Package_References.UnitWaypointBehavior2_Access'(This'Unchecked_Access));
   end Initialize_Fields;


   procedure Initialize (This : in out UnitWaypointBehavior2'Class; ownerAdvancedRTSGameLayer_Param : access UnitLayer_Package.UnitLayer'Class; fakeWaypoint_Param : access AdvancedRTSGameLayer_Package.AdvancedRTSGameLayer'Class) is
      ownerAdvancedRTSGameLayer : constant UnitLayer_Access := UnitLayer_Access (ownerAdvancedRTSGameLayer_Param);
      fakeWaypoint : constant AdvancedRTSGameLayer_Access := AdvancedRTSGameLayer_Access (fakeWaypoint_Param);
      features : Features_Access;
   begin
        UnitWaypointBehavior_Package.Initialize (This, ownerAdvancedRTSGameLayer, fakeWaypoint);
        Initialize_Fields (This);
        This.progressTimeDelayHelper := TimeDelayHelper_Package.Create (5000);
        This.wanderPathsList := BasicArrayList_Access (BasicArrayListD_Package.Create);
        features := Features_Package.getInstance;
        This.waypointPathRunnable := (if J2MEUtil_Package.isHTML then MultipassWaypointPathRunnable_Package.Create else WaypointPathRunnable_Package.Create);
   end Initialize;

   function Create (ownerAdvancedRTSGameLayer_Param : access UnitLayer_Package.UnitLayer'Class; fakeWaypoint_Param : access AdvancedRTSGameLayer_Package.AdvancedRTSGameLayer'Class) return UnitWaypointBehavior2_Access is
      This : constant UnitWaypointBehavior2_Access := new UnitWaypointBehavior2;
   begin
      UnitWaypointBehavior2_Package.Initialize (This.all, ownerAdvancedRTSGameLayer_Param, fakeWaypoint_Param);
      return This;
   end Create;

   procedure initRange (This : in out UnitWaypointBehavior2; weaponRange : Integer) is
   begin
        UnitWaypointBehavior_Package.UnitWaypointBehavior (This).initRange (weaponRange);
        This.closeRange := weaponRange;
        This.sensorRange := (weaponRange) * (4);
        This.associatedAdvancedRTSGameLayer.waypoint2LogHelperP.initRange (This.associatedAdvancedRTSGameLayer, This.closeRange, This.sensorRange);
   end initRange;

   function getNextUnvisitedPathGeographicMapCellPosition (This : in out UnitWaypointBehavior2) return GeographicMapCellPosition_Access is
   begin
        return This.nextUnvisitedPathGeographicMapCellPosition;
   end getNextUnvisitedPathGeographicMapCellPosition;

   function isRunning (This : in out UnitWaypointBehavior2) return Boolean is
   begin
        if This.waypointPathRunnable.isRunning then
            return True;
        else
            return False;
        end if;
   end isRunning;

   --  throws Exception
   procedure processTick (This : in out UnitWaypointBehavior2; allBinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class) is
      allBinaryLayerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (allBinaryLayerManager_Param);
   begin
        if This.waypointPathRunnable.isRunning then
            if (Java_Object_Access (This.waypointPathsListP)) /= (Java_Object_Access (UnitWaypointBehavior2_Package.runningWaypointPathList)) then
                This.waypointPathRunnable.setRunning (False);
                if This.waitingOnTargetPath then
                    UnitWaypointBehavior2'Class (This).setTargetPath;
                elsif This.waitingOnWaypointPath then
                    UnitWaypointBehavior2'Class (This).setWaypointPath (AdvancedRTSGameLayer_Access (This.waypointPathRunnable.getTargetLayer));
                else
                    Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Should not happen")));
                end if;
            else
                return;
            end if;
        end if;
        UnitWaypointBehavior2'Class (This).processTargetList;
        if not (This.waypointPathRunnable.isRunning) then
            UnitWaypointBehavior2'Class (This).processWaypoint;
        else
            return;
        end if;
        if not (This.waypointPathRunnable.isRunning) then
            UnitWaypointBehavior2'Class (This).processTargeting;
        else
            return;
        end if;
        if not (This.waypointPathRunnable.isRunning) then
            UnitWaypointBehavior2'Class (This).teleportIfNoProgress;
        else
            return;
        end if;
   end processTick;

   --  throws Exception
   procedure onEnemyMovement (This : in out UnitWaypointBehavior2; layerInterface_Param : access AdvancedRTSGameLayer_Package.AdvancedRTSGameLayer'Class) is
      layerInterface : constant AdvancedRTSGameLayer_Access := AdvancedRTSGameLayer_Access (layerInterface_Param);
      anotherTargetDistance : Integer;
   begin
        anotherTargetDistance := This.layerDistanceUtil.getDistance (This.associatedAdvancedRTSGameLayer, layerInterface);
        if (Java_Object_Access (layerInterface)) = (Java_Object_Access (This.currentTargetLayerInterfaceP)) then
            UnitWaypointBehavior2'Class (This).setCurrentTargetDistance (anotherTargetDistance);
        else
            UnitWaypointBehavior2'Class (This).processPossibleTarget (layerInterface, anotherTargetDistance);
        end if;
   end onEnemyMovement;

   --  throws Exception
   procedure processPossibleTarget (This : in out UnitWaypointBehavior2; layerInterface_Param : access AdvancedRTSGameLayer_Package.AdvancedRTSGameLayer'Class; anotherTargetDistance : Integer) is
      layerInterface : constant AdvancedRTSGameLayer_Access := AdvancedRTSGameLayer_Access (layerInterface_Param);
      isShorterThanCurrentTargetDistance : Boolean;
      isCurrentTargetDestroyed : Boolean;
   begin
        isShorterThanCurrentTargetDistance := (UnitWaypointBehavior2'Class (This).getCurrentTargetDistance) > (anotherTargetDistance);
        isCurrentTargetDestroyed := ((Java_Object_Access (This.currentTargetLayerInterfaceP)) /= (Java_Object_Access (CollidableDestroyableDamageableLayer_Package.getNullInstance))) and then (This.currentTargetLayerInterfaceP.isDestroyed);
        This.associatedAdvancedRTSGameLayer.waypoint2LogHelperP.processPossibleTarget (This.associatedAdvancedRTSGameLayer, UnitWaypointBehavior2_Access'(This'Unchecked_Access), layerInterface, anotherTargetDistance, isShorterThanCurrentTargetDistance, isCurrentTargetDestroyed);
        if ((UnitWaypointBehavior2'Class (This).isWaypointListEmptyOrOnlyTargets) and then (UnitWaypointBehavior2'Class (This).isInSensorRange (layerInterface, anotherTargetDistance))) and then (((isShorterThanCurrentTargetDistance) or else (isCurrentTargetDestroyed))) then
            This.associatedAdvancedRTSGameLayer.waypoint2LogHelperP.processSetTarget (This.associatedAdvancedRTSGameLayer, UnitWaypointBehavior2_Access'(This'Unchecked_Access), layerInterface, anotherTargetDistance);
            UnitWaypointBehavior2'Class (This).setTarget (layerInterface, anotherTargetDistance);
        elsif (UnitWaypointBehavior2'Class (This).isCloseRange (layerInterface, anotherTargetDistance)) and then (((isShorterThanCurrentTargetDistance) or else (isCurrentTargetDestroyed))) then
            This.associatedAdvancedRTSGameLayer.waypoint2LogHelperP.processPossibleTargetCloser (This.associatedAdvancedRTSGameLayer, UnitWaypointBehavior2_Access'(This'Unchecked_Access), layerInterface, anotherTargetDistance);
            UnitWaypointBehavior2'Class (This).setTarget (layerInterface, anotherTargetDistance);
        end if;
   end processPossibleTarget;

   --  throws Exception
   procedure teleportIfNoProgress (This : in out UnitWaypointBehavior2) is
      geographicMapCellPosition : GeographicMapCellPosition_Access;
   begin
        if (UnitWaypointBehavior2'Class (This).isTrackingWaypoint) or else (This.associatedAdvancedRTSGameLayer.getParentLayer.isDestroyed) then
            if (This.progressTimeDelayHelper.isTimeTNT) and then ((Java_Object_Access (This.nextUnvisitedPathGeographicMapCellPosition)) /= (Java_Object_Access (SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION))) then
                This.associatedAdvancedRTSGameLayer.teleportTo (This.nextUnvisitedPathGeographicMapCellPosition);
            end if;
            if UnitWaypointBehavior2'Class (This).getCompleteTimeDelayHelper.isTimeTNT then
                geographicMapCellPosition := GeographicMapCellPosition_Access (This.currentGeographicMapCellHistoryP.getTracked.get ((This.currentGeographicMapCellHistoryP.getSize) - (1)));
                This.associatedAdvancedRTSGameLayer.teleportTo (geographicMapCellPosition);
            end if;
        end if;
   end teleportIfNoProgress;

   --  throws Exception
   procedure setTarget (This : in out UnitWaypointBehavior2; layerInterface_Param : access AdvancedRTSGameLayer_Package.AdvancedRTSGameLayer'Class; anotherTargetDistance : Integer) is
      layerInterface : constant AdvancedRTSGameLayer_Access := AdvancedRTSGameLayer_Access (layerInterface_Param);
      geographicMapCellPosition : GeographicMapCellPosition_Access;
      pathFindingLayerInterface : PathFindingLayerInterface_Access;
      waypoint : WaypointBase_Access;
      list : BasicArrayList_Access;
   begin
        This.associatedAdvancedRTSGameLayer.waypoint2LogHelperP.setTarget (This.associatedAdvancedRTSGameLayer, UnitWaypointBehavior2_Access'(This'Unchecked_Access), layerInterface, anotherTargetDistance);
        This.associatedAdvancedRTSGameLayer.getCaptionAnimationHelper.update (This.UnitWaypointBehavior2_Field_unitWaypointStrings.TARGET, BasicColorFactory_Package.getInstance.GREEN);
        This.associatedAdvancedRTSGameLayer.setLoad (0);
        UnitWaypointBehavior2'Class (This).setCurrentTargetDistance (anotherTargetDistance);
        UnitWaypointBehavior2'Class (This).setCurrentTargetLayerInterface (layerInterface);
        UnitWaypointBehavior2'Class (This).setTrackingWaypoint (False);
        This.targetList.clear;
        if (not (UnitWaypointBehavior2'Class (This).isCloseRange (layerInterface, anotherTargetDistance))) and then (UnitWaypointBehavior2'Class (This).canInsertWaypoint (0, This.currentTargetLayerInterfaceP)) then
            geographicMapCellPosition := This.associatedAdvancedRTSGameLayer.getCurrentGeographicMapCellPosition;
            pathFindingLayerInterface := (PathFindingLayerInterface_Access (This.currentTargetLayerInterfaceP));
            waypoint := pathFindingLayerInterface.getWaypointBehavior.getWaypoint;
            list := waypoint.getPathsListFromCacheOnly (geographicMapCellPosition);
            UnitWaypointBehavior2'Class (This).setWaypointPathsList (list);
            if (This.waypointPathsListP) = (null) then
                This.targetWithoutCachedPathLayerInterface := This.currentTargetLayerInterfaceP;
            elsif (This.waypointPathsListP.size) /= (0) then
                UnitWaypointBehavior2'Class (This).setTargetPath;
            end if;
        end if;
   end setTarget;

   --  throws Exception
   procedure setTargetPath (This : in out UnitWaypointBehavior2) is
   begin
        if (Java_Object_Access (This.currentTargetLayerInterfaceP)) /= (Java_Object_Access (CollidableDestroyableDamageableLayer_Package.getNullInstance)) then
            if This.currentTargetLayerInterfaceP.isDestroyed then
                This.associatedAdvancedRTSGameLayer.waypoint2LogHelperP.setTargetPath (This.associatedAdvancedRTSGameLayer);
                This.associatedAdvancedRTSGameLayer.getCaptionAnimationHelper.update (This.UnitWaypointBehavior2_Field_unitWaypointStrings.KILL, This.basicColorFactory.ORANGE);
                UnitWaypointBehavior2'Class (This).clearTarget;
                return;
            end if;
            if (Java_Object_Access (This.currentTargetLayerInterfaceP)) = (Java_Object_Access (This.waypointPathRunnable.getTargetLayer)) then
                This.associatedAdvancedRTSGameLayer.waypoint2LogHelperP.setTargetPathIgnoreNewPath (This.associatedAdvancedRTSGameLayer, UnitWaypointBehavior2_Access'(This'Unchecked_Access));
                UnitWaypointBehavior2'Class (This).insertWaypoint (0, This.currentTargetLayerInterfaceP);
                UnitWaypointBehavior2'Class (This).setRandomGeographicMapCellHistory (This.waypointPathsListP);
            end if;
        end if;
   end setTargetPath;

   --  throws Exception
   procedure setGeographicMapCellHistoryPath (This : in out UnitWaypointBehavior2; geographicMapCellPositionBasicArrayList_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      geographicMapCellPositionBasicArrayList : constant BasicArrayList_Access := BasicArrayList_Access (geographicMapCellPositionBasicArrayList_Param);
   begin
        UnitWaypointBehavior2'Class (This).setCurrentPathGeographicMapCellPosition (SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION);
        This.nextUnvisitedPathGeographicMapCellPosition := GeographicMapCellPosition_Access (SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION);
        UnitWaypointBehavior_Package.UnitWaypointBehavior (This).setGeographicMapCellHistoryPath (geographicMapCellPositionBasicArrayList);
   end setGeographicMapCellHistoryPath;

   --  throws Exception
   procedure processWaypoint (This : in out UnitWaypointBehavior2) is
      size : Integer;
      targetLayer : AdvancedRTSGameLayer_Access;
      geographicMapCellPosition : GeographicMapCellPosition_Access;
      list : BasicArrayList_Access;
      oldWaypointLayer : AdvancedRTSGameLayer_Access;
   begin
        size := This.targetList.size;
        if (size) > (0) then
            targetLayer := AdvancedRTSGameLayer_Access (This.targetList.get (0));
            This.associatedAdvancedRTSGameLayer.waypoint2LogHelperP.processWaypoint (This.associatedAdvancedRTSGameLayer, UnitWaypointBehavior2_Access'(This'Unchecked_Access), targetLayer, size);
            if targetLayer.isDestroyed then
                This.associatedAdvancedRTSGameLayer.getCaptionAnimationHelper.update (This.UnitWaypointBehavior2_Field_unitWaypointStrings.WAYPOINT_DESTROYED_SHORT, This.basicColorFactory.YELLOW);
                UnitWaypointBehavior2'Class (This).removeWaypoint (targetLayer, This.UnitWaypointBehavior2_Field_unitWaypointStrings.WAYPOINT_DESTROYED);
            else
                geographicMapCellPosition := This.associatedAdvancedRTSGameLayer.getCurrentGeographicMapCellPosition;
                if UnitWaypointBehavior2'Class (This).isTrackingWaypoint then
                    This.associatedAdvancedRTSGameLayer.waypoint2LogHelperP.processWaypointTracked (This.associatedAdvancedRTSGameLayer, UnitWaypointBehavior2_Access'(This'Unchecked_Access));
                    if UnitWaypointBehavior2'Class (This).visitIfAtMidPoint (geographicMapCellPosition) then
                        This.associatedAdvancedRTSGameLayer.waypoint2LogHelperP.processWaypointTrackedVisit (This.associatedAdvancedRTSGameLayer, geographicMapCellPosition);
                    end if;
                    if (This.currentGeographicMapCellHistoryP.isAllVisited2) and then ((Java_Object_Access (This.currentTargetLayerInterfaceP)) /= (Java_Object_Access (CollidableDestroyableDamageableLayer_Package.getNullInstance))) then
                        oldWaypointLayer := AdvancedRTSGameLayer_Access (This.currentTargetLayerInterfaceP);
                        oldWaypointLayer.getWaypointBehavior.getWaypoint.visit (This.associatedAdvancedRTSGameLayer);
                        This.associatedAdvancedRTSGameLayer.getCaptionAnimationHelper.update (This.UnitWaypointBehavior2_Field_unitWaypointStrings.ALL_VISITED_SHORT, This.basicColorFactory.GREEN);
                        UnitWaypointBehavior2'Class (This).removeWaypoint (AdvancedRTSGameLayer_Access (This.currentTargetLayerInterfaceP), This.UnitWaypointBehavior2_Field_unitWaypointStrings.ALL_VISITED);
                    end if;
                elsif ((This.currentTargetLayerInterfaceP) = (null)) or else (This.waypointOverridesAttacking) then
                    list := targetLayer.getWaypointBehavior.getWaypoint.getPathsListFromCacheOnly (geographicMapCellPosition);
                    UnitWaypointBehavior2'Class (This).setWaypointPathsList (list);
                    if (This.waypointPathsListP) = (null) then
                        This.waitingOnWaypointPath := True;
                        This.associatedAdvancedRTSGameLayer.getCaptionAnimationHelper.update (This.UnitWaypointBehavior2_Field_unitWaypointStrings.THINKING, This.basicColorFactory.GREEN);
                        UnitWaypointBehavior2'Class (This).runWaypointPathTask (targetLayer);
                        return;
                    end if;
                    UnitWaypointBehavior2'Class (This).setWaypointPath (targetLayer);
                end if;
            end if;
        end if;
   end processWaypoint;

   --  throws Exception
   procedure wander (This : in out UnitWaypointBehavior2) is
   begin
        if This.currentGeographicMapCellHistoryP.isAllVisited2 then
            This.associatedAdvancedRTSGameLayer.waypoint2LogHelperP.wander (This.associatedAdvancedRTSGameLayer);
            This.associatedAdvancedRTSGameLayer.getCaptionAnimationHelper.update (This.UnitWaypointBehavior2_Field_unitWaypointStrings.WANDERING, This.basicColorFactory.RED);
            This.wanderPathsList.clear;
            This.wanderPathsList.add (This.associatedAdvancedRTSGameLayer.getSurroundingGeographicMapCellPositionList);
            UnitWaypointBehavior2'Class (This).setRandomGeographicMapCellHistory (This.wanderPathsList);
        end if;
        UnitWaypointBehavior2'Class (This).visitIfAtMidPoint (UnitWaypointBehavior2'Class (This).getCurrentPathGeographicMapCellPosition);
        UnitWaypointBehavior2'Class (This).updateCurrentPathGeographicMapCellPosition;
        This.associatedAdvancedRTSGameLayer.trackTo (This.UnitWaypointBehavior2_Field_unitWaypointStrings.NEXT_PATH_NODE);
   end wander;

   function visitIfAtMidPoint (This : in out UnitWaypointBehavior2; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) return Boolean is
      geographicMapCellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (geographicMapCellPosition_Param);
      unitLayer : UnitLayer_Access;
      point : GPoint_Access;
      afterNextPoint : GPoint_Access;
      beyondMidPoint : Boolean;
   begin
        unitLayer := This.associatedAdvancedRTSGameLayer;
        if ((Java_Object_Access (geographicMapCellPosition)) /= (Java_Object_Access (SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION))) and then ((This.nextUnvisitedPathGeographicMapCellPosition) = (geographicMapCellPosition)) then
            point := geographicMapCellPosition.getMidPoint;
            afterNextPoint := This.afterNextUnvisitedPathGeographicMapCellPosition.getMidPoint;
            beyondMidPoint := True;
            if (geographicMapCellPosition.getColumn) = (This.afterNextUnvisitedPathGeographicMapCellPosition.getColumn) then
                null;
            elsif (point.getX) < (afterNextPoint.getX) then
                if ((unitLayer.getXP) + (unitLayer.getHalfWidth)) < (point.getX) then
                    beyondMidPoint := False;
                end if;
            else
                if ((unitLayer.getXP) + (unitLayer.getHalfWidth)) > (point.getX) then
                    beyondMidPoint := False;
                end if;
            end if;
            if (geographicMapCellPosition.getRow) = (This.afterNextUnvisitedPathGeographicMapCellPosition.getRow) then
                null;
            elsif (point.getY) < (afterNextPoint.getY) then
                if ((unitLayer.getYP) + (unitLayer.getHalfHeight)) < (point.getY) then
                    beyondMidPoint := False;
                end if;
            else
                if ((unitLayer.getYP) + (unitLayer.getHalfHeight)) > (point.getY) then
                    beyondMidPoint := False;
                end if;
            end if;
            if beyondMidPoint then
                return This.currentGeographicMapCellHistoryP.visit (geographicMapCellPosition);
            end if;
        end if;
        return False;
   end visitIfAtMidPoint;

   --  throws Exception
   procedure processTargetList (This : in out UnitWaypointBehavior2) is
      layerInterface : AdvancedRTSGameLayer_Access;
      index : Integer;
   begin
        This.targetWithoutCachedPathLayerInterface := CollidableDestroyableDamageableLayer_Package.getNullInstance;
        for index in reverse 0 .. (UnitWaypointBehavior2'Class (This).getPossibleTargetList.size) - (1) loop
            layerInterface := AdvancedRTSGameLayer_Access (UnitWaypointBehavior2'Class (This).getPossibleTargetList.get (index));
            if layerInterface.isDestroyed then
                UnitWaypointBehavior2'Class (This).getPossibleTargetList.remove (Java_Object_Access (layerInterface));
            else
                UnitWaypointBehavior2'Class (This).onEnemyMovement (layerInterface);
            end if;
        end loop;
        if (Java_Object_Access (This.targetWithoutCachedPathLayerInterface)) /= (Java_Object_Access (CollidableDestroyableDamageableLayer_Package.getNullInstance)) then
            This.waitingOnTargetPath := True;
            This.associatedAdvancedRTSGameLayer.getCaptionAnimationHelper.update (This.UnitWaypointBehavior2_Field_unitWaypointStrings.THINKING_ABOUT_TARGET, This.basicColorFactory.GREEN);
            UnitWaypointBehavior2'Class (This).runWaypointPathTask (AdvancedRTSGameLayer_Access (This.currentTargetLayerInterfaceP));
        end if;
        UnitWaypointBehavior2'Class (This).getPossibleTargetList.clear;
   end processTargetList;

   --  throws Exception
   procedure processTargeting (This : in out UnitWaypointBehavior2) is
      dx : Integer;
      dy : Integer;
      point : GPoint_Access;
   begin
        if ((Java_Object_Access (This.currentTargetLayerInterfaceP)) /= (Java_Object_Access (CollidableDestroyableDamageableLayer_Package.getNullInstance))) and then (((UnitWaypointBehavior2'Class (This).isInSensorRange (This.currentTargetLayerInterfaceP, UnitWaypointBehavior2'Class (This).getCurrentTargetDistance)) or else (UnitWaypointBehavior2'Class (This).isTrackingWaypoint))) then
            if This.currentTargetLayerInterfaceP.isDestroyed then
                This.associatedAdvancedRTSGameLayer.waypoint2LogHelperP.targetDestroyed (This.associatedAdvancedRTSGameLayer);
                This.associatedAdvancedRTSGameLayer.getCaptionAnimationHelper.update (This.UnitWaypointBehavior2_Field_unitWaypointStrings.KILL, This.basicColorFactory.ORANGE);
                UnitWaypointBehavior2'Class (This).clearTarget;
                return;
            end if;
            dx := 0;
            dy := 0;
            if UnitWaypointBehavior2'Class (This).isTrackingWaypoint then
                UnitWaypointBehavior2'Class (This).updateCurrentPathGeographicMapCellPosition;
                point := This.nextUnvisitedPathGeographicMapCellPosition.getMidPoint;
                dx := ((This.associatedAdvancedRTSGameLayer.getXP) + (This.associatedAdvancedRTSGameLayer.getHalfWidth)) - (point.getX);
                dy := ((This.associatedAdvancedRTSGameLayer.getYP) + (This.associatedAdvancedRTSGameLayer.getHalfHeight)) - (point.getY);
                This.associatedAdvancedRTSGameLayer.waypoint2LogHelperP.processTargeting (This.associatedAdvancedRTSGameLayer, dx, dy);
            else
                This.associatedAdvancedRTSGameLayer.waypoint2LogHelperP.processTargetingNonWayPoint (This.associatedAdvancedRTSGameLayer, dx, dy);
                dx := (((This.associatedAdvancedRTSGameLayer.getXP) + (This.associatedAdvancedRTSGameLayer.getHalfWidth))) - (((This.currentTargetLayerInterfaceP.getXP) + (This.currentTargetLayerInterfaceP.getHalfWidth)));
                dy := (((This.associatedAdvancedRTSGameLayer.getYP) + (This.associatedAdvancedRTSGameLayer.getHalfHeight))) - (((This.currentTargetLayerInterfaceP.getYP) + (This.currentTargetLayerInterfaceP.getHalfHeight)));
            end if;
            This.associatedAdvancedRTSGameLayer.trackToDXY (dx, dy);
        else
            if This.associatedAdvancedRTSGameLayer.getParentLayer.isDestroyed then
                UnitWaypointBehavior2'Class (This).wander;
            else
                if This.associatedAdvancedRTSGameLayer.showMoreCaptionStates then
                    This.associatedAdvancedRTSGameLayer.getCaptionAnimationHelper.update (This.UnitWaypointBehavior2_Field_unitWaypointStrings.STOP, This.basicColorFactory.YELLOW);
                end if;
                This.associatedAdvancedRTSGameLayer.allStop;
            end if;
        end if;
   end processTargeting;

   procedure updateCurrentPathGeographicMapCellPosition (This : in out UnitWaypointBehavior2) is
   begin
        UnitWaypointBehavior2'Class (This).setLastPathGeographicMapCellPosition (UnitWaypointBehavior2'Class (This).getCurrentPathGeographicMapCellPosition);
        UnitWaypointBehavior2'Class (This).setCurrentPathGeographicMapCellPosition (This.nextUnvisitedPathGeographicMapCellPosition);
        This.nextUnvisitedPathGeographicMapCellPosition := This.currentGeographicMapCellHistoryP.getFirstUnvisited;
        This.afterNextUnvisitedPathGeographicMapCellPosition := This.currentGeographicMapCellHistoryP.getAfterIfNotLast (This.nextUnvisitedPathGeographicMapCellPosition);
        if (Java_Object_Access (UnitWaypointBehavior2'Class (This).getCurrentPathGeographicMapCellPosition)) /= (Java_Object_Access (This.nextUnvisitedPathGeographicMapCellPosition)) then
            This.progressTimeDelayHelper.setStartTimeTNT;
        end if;
   end updateCurrentPathGeographicMapCellPosition;

   --  throws Exception
   procedure setWaypointPath (This : in out UnitWaypointBehavior2; waypointLayer_Param : access AdvancedRTSGameLayer_Package.AdvancedRTSGameLayer'Class) is
      waypointLayer : constant AdvancedRTSGameLayer_Access := AdvancedRTSGameLayer_Access (waypointLayer_Param);
      MAX : Integer;
   begin
        if (This.waypointPathsListP.size) /= (0) then
            UnitWaypointBehavior2'Class (This).setCurrentTargetLayerInterface (waypointLayer);
            MAX := Integer'Last;
            UnitWaypointBehavior2'Class (This).setCurrentTargetDistance (MAX);
            UnitWaypointBehavior2'Class (This).setRandomGeographicMapCellHistory (This.waypointPathsListP);
        else
            waypointLayer.getWaypointBehavior.getWaypoint.visit (This.associatedAdvancedRTSGameLayer);
            This.associatedAdvancedRTSGameLayer.getCaptionAnimationHelper.update (This.UnitWaypointBehavior2_Field_unitWaypointStrings.ALREADY_THERE_SHORT, This.basicColorFactory.YELLOW);
            UnitWaypointBehavior2'Class (This).removeWaypoint (waypointLayer, This.UnitWaypointBehavior2_Field_unitWaypointStrings.ALREADY_THERE);
        end if;
   end setWaypointPath;

   --  throws Exception
   procedure runWaypointPathTask (This : in out UnitWaypointBehavior2; waypointLayer_Param : access AdvancedRTSGameLayer_Package.AdvancedRTSGameLayer'Class) is
      waypointLayer : constant AdvancedRTSGameLayer_Access := AdvancedRTSGameLayer_Access (waypointLayer_Param);
   begin
        UnitWaypointBehavior2'Class (This).setWaypointPathsList (UnitWaypointBehavior2_Package.runningWaypointPathList);
        if This.waypointPathRunnable.isRunning then
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Should never be running here")));
        end if;
        This.waypointPathRunnable.setRunning (True);
        This.waypointPathRunnable.setUnitLayer (This.associatedAdvancedRTSGameLayer);
        This.waypointPathRunnable.setTargetLayer (waypointLayer);
        This.pathFindingThreadPool.runTask (This.waypointPathRunnable);
   end runWaypointPathTask;

   --  throws Exception
   procedure removeWaypoint (This : in out UnitWaypointBehavior2; waypointLayer_Param : access RTSLayer_Package.RTSLayer'Class; reason : Unbounded_String) is
      waypointLayer : constant RTSLayer_Access := RTSLayer_Access (waypointLayer_Param);
   begin
        This.associatedAdvancedRTSGameLayer.waypoint2LogHelperP.removeWaypoint (This.associatedAdvancedRTSGameLayer, UnitWaypointBehavior2_Access'(This'Unchecked_Access), waypointLayer, reason);
        This.targetList.remove (Java_Object_Access (waypointLayer));
        This.associatedAdvancedRTSGameLayer.waypoint2LogHelperP.removeWaypointList (This.associatedAdvancedRTSGameLayer, UnitWaypointBehavior2_Access'(This'Unchecked_Access), This.targetList);
        if (Java_Object_Access (This.currentTargetLayerInterfaceP)) = (Java_Object_Access (waypointLayer)) then
            This.associatedAdvancedRTSGameLayer.waypoint2LogHelperP.removeWaypointClear (This.associatedAdvancedRTSGameLayer);
            UnitWaypointBehavior2'Class (This).clearTarget;
        end if;
   end removeWaypoint;

   --  throws Exception
   procedure clearTarget (This : in out UnitWaypointBehavior2) is
      MAX : Integer;
   begin
        This.associatedAdvancedRTSGameLayer.waypoint2LogHelperP.clearTarget (This.associatedAdvancedRTSGameLayer);
        UnitWaypointBehavior2'Class (This).setCurrentTargetLayerInterface (CollidableDestroyableDamageableLayer_Package.getNullInstance);
        UnitWaypointBehavior2'Class (This).setTrackingWaypoint (False);
        MAX := Integer'Last;
        UnitWaypointBehavior2'Class (This).setCurrentTargetDistance (MAX);
        TrackingEventHandler_Package.getInstance.fireEvent (This.associatedAdvancedRTSGameLayer.getTrackingEvent);
   end clearTarget;

   function isWaypointListEmptyOrOnlyTargets (This : in out UnitWaypointBehavior2) return Boolean is
      list : BasicArrayList_Access;
      layerInterface : AdvancedRTSGameLayer_Access;
      index : Integer;
   begin
        list := This.targetList;
        if (list.size) = (0) then
            return True;
        end if;
        for index in reverse 0 .. (list.size) - (1) loop
            layerInterface := AdvancedRTSGameLayer_Access (list.get (index));
            if layerInterface.isWaypointListEmptyOrOnlyTargets then
                return False;
            end if;
        end loop;
        return True;
   end isWaypointListEmptyOrOnlyTargets;

   function isCloseRange (This : in out UnitWaypointBehavior2; layerInterface_Param : access AdvancedRTSGameLayer_Package.AdvancedRTSGameLayer'Class; targetDistance : Integer) return Boolean is
      layerInterface : constant AdvancedRTSGameLayer_Access := AdvancedRTSGameLayer_Access (layerInterface_Param);
   begin
        return (targetDistance) < ((This.closeRange) + (layerInterface.getHalfHeight));
   end isCloseRange;

   function isInSensorRange (This : in out UnitWaypointBehavior2; layerInterface_Param : access CollidableDestroyableDamageableLayer_Package.CollidableDestroyableDamageableLayer'Class; targetDistance : Integer) return Boolean is
      layerInterface : constant CollidableDestroyableDamageableLayer_Access := CollidableDestroyableDamageableLayer_Access (layerInterface_Param);
   begin
        return (targetDistance) < ((This.sensorRange) + (layerInterface.getHalfHeight));
   end isInSensorRange;

   function getCurrentTargetingStateString (This : in out UnitWaypointBehavior2) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        if (Java_Object_Access (This.currentTargetLayerInterfaceP)) /= (Java_Object_Access (CollidableDestroyableDamageableLayer_Package.getNullInstance)) then
            stringBuffer.append (UnitWaypointBehavior2_Package.TARGET_LAYER);
            stringBuffer.append (This.commonSeps.SPACE);
            stringBuffer.append (This.currentTargetLayerInterfaceP.getName);
            stringBuffer.append (To_Unbounded_String (" with "));
            stringBuffer.append (UnitWaypointBehavior2_Package.TARGET_DISTANCE);
            stringBuffer.append (This.commonSeps.SPACE);
            stringBuffer.appendint (UnitWaypointBehavior2'Class (This).getCurrentTargetDistance);
        end if;
        return stringBuffer.toString;
   end getCurrentTargetingStateString;

   --  throws Exception
   procedure addWaypointFromUser (This : in out UnitWaypointBehavior2; advancedRTSGameLayer_Param : access AdvancedRTSGameLayer_Package.AdvancedRTSGameLayer'Class) is
      advancedRTSGameLayer : constant AdvancedRTSGameLayer_Access := AdvancedRTSGameLayer_Access (advancedRTSGameLayer_Param);
   begin
        if advancedRTSGameLayer.isDestroyed then
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Trying to add a dead: ") & Java_Image (advancedRTSGameLayer)));
        end if;
        This.associatedAdvancedRTSGameLayer.waypoint2LogHelperP.addWaypointFromUser (This.associatedAdvancedRTSGameLayer, advancedRTSGameLayer);
        This.targetList.clear;
        This.targetList.add (Java_Object_Access (advancedRTSGameLayer));
        UnitWaypointBehavior2'Class (This).clearTarget;
   end addWaypointFromUser;

   --  throws Exception
   procedure addBuildingChase (This : in out UnitWaypointBehavior2; allbinaryLayer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; cellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) is
      allbinaryLayer : constant AllBinaryLayer_Access := AllBinaryLayer_Access (allbinaryLayer_Param);
      cellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (cellPosition_Param);
   begin
        if not (This.buildingSteeringVisitor_Var.getList.contains (Java_Object_Access (allbinaryLayer))) then
            This.buildingSteeringVisitor_Var.getList.add (Java_Object_Access (allbinaryLayer));
            This.buildingSteeringVisitor_Var.getPositionList.add (Java_Object_Access (cellPosition));
        end if;
        if not (UnitWaypointBehavior2'Class (This).getSteeringVisitorList.contains (Java_Object_Access (This.buildingSteeringVisitor_Var))) then
            UnitWaypointBehavior2'Class (This).getSteeringVisitorList.add (Java_Object_Access (This.buildingSteeringVisitor_Var));
        end if;
   end addBuildingChase;

   --  throws Exception
   function buildingChase (This : in out UnitWaypointBehavior2; allbinaryLayer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; cellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) return Boolean is
      allbinaryLayer : constant AllBinaryLayer_Access := AllBinaryLayer_Access (allbinaryLayer_Param);
      cellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (cellPosition_Param);
   begin
        return This.associatedAdvancedRTSGameLayer.buildingChase (allbinaryLayer, cellPosition);
   end buildingChase;

   procedure visitIfAtMidPoint (This : in out UnitWaypointBehavior2; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) is
      Java_Result : constant Boolean := UnitWaypointBehavior2'Class (This).visitIfAtMidPoint (geographicMapCellPosition_Param => geographicMapCellPosition_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end visitIfAtMidPoint;

   procedure isCloseRange (This : in out UnitWaypointBehavior2; layerInterface_Param : access AdvancedRTSGameLayer_Package.AdvancedRTSGameLayer'Class; targetDistance : Integer) is
      Java_Result : constant Boolean := UnitWaypointBehavior2'Class (This).isCloseRange (layerInterface_Param => layerInterface_Param, targetDistance => targetDistance);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isCloseRange;

   procedure isInSensorRange (This : in out UnitWaypointBehavior2; layerInterface_Param : access CollidableDestroyableDamageableLayer_Package.CollidableDestroyableDamageableLayer'Class; targetDistance : Integer) is
      Java_Result : constant Boolean := UnitWaypointBehavior2'Class (This).isInSensorRange (layerInterface_Param => layerInterface_Param, targetDistance => targetDistance);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isInSensorRange;

   procedure buildingChase (This : in out UnitWaypointBehavior2; allbinaryLayer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; cellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) is
      Java_Result : constant Boolean := UnitWaypointBehavior2'Class (This).buildingChase (allbinaryLayer_Param => allbinaryLayer_Param, cellPosition_Param => cellPosition_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end buildingChase;

begin
   null;
   runningWaypointPathList := BasicArrayList_Access (BasicArrayListD_Package.Create);
   TARGET_DISTANCE := To_Unbounded_String ("Target Distance");
   TARGET_LAYER := To_Unbounded_String ("Target Layer");

end org.allbinary.game.layer.unit.UnitWaypointBehavior2_Package;


with org.allbinary.J2MEUtil_Package; use org.allbinary.J2MEUtil_Package;
with org.allbinary.game.configuration.feature.Features_Package; use org.allbinary.game.configuration.feature.Features_Package;
with org.allbinary.game.layer.SteeringVisitor_Package; use org.allbinary.game.layer.SteeringVisitor_Package;
with org.allbinary.game.layer.AdvancedRTSGameLayer_Package; use org.allbinary.game.layer.AdvancedRTSGameLayer_Package;
with org.allbinary.game.layer.AdvancedRTSGameLayer_Package_References;
with org.allbinary.game.layer.MultipassWaypointPathRunnable_Package; use org.allbinary.game.layer.MultipassWaypointPathRunnable_Package;
with org.allbinary.game.layer.RTSLayer_Package; use org.allbinary.game.layer.RTSLayer_Package;
with org.allbinary.game.layer.RTSLayer_Package_References;
with org.allbinary.game.layer.WaypointPathRunnable_Package; use org.allbinary.game.layer.WaypointPathRunnable_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.game.layer.PathFindingLayerInterface_Package; use org.allbinary.game.layer.PathFindingLayerInterface_Package;
with org.allbinary.game.layer.WaypointPathRunnableBase_Package; use org.allbinary.game.layer.WaypointPathRunnableBase_Package;
with org.allbinary.game.layer.WaypointPathRunnableBase_Package_References;
with org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package; use org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package;
with org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References;
with org.allbinary.game.layer.waypoint.WaypointBase_Package; use org.allbinary.game.layer.waypoint.WaypointBase_Package;
with org.allbinary.game.tracking.TrackingEventHandler_Package; use org.allbinary.game.tracking.TrackingEventHandler_Package;
with org.allbinary.graphics.GPoint_Package; use org.allbinary.graphics.GPoint_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package_References;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package_References;
with org.allbinary.layer.AllBinaryLayerManager_Package; use org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package_References;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.java.bool.BooleanFactory_Package; use org.allbinary.logic.java.bool.BooleanFactory_Package;
with org.allbinary.math.LayerDistanceUtil_Package; use org.allbinary.math.LayerDistanceUtil_Package;
with org.allbinary.math.LayerDistanceUtil_Package_References;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References;
with org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory_Package; use org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory_Package;
with org.allbinary.thread.PathFindingThreadPool_Package; use org.allbinary.thread.PathFindingThreadPool_Package;
with org.allbinary.thread.ThreadPool_Package; use org.allbinary.thread.ThreadPool_Package;
with org.allbinary.thread.ThreadPool_Package_References;
with org.allbinary.time.TimeDelayHelper_Package; use org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.time.TimeDelayHelper_Package_References;
with org.allbinary.game.layer.unit.UnitWaypointBehavior_Package; use org.allbinary.game.layer.unit.UnitWaypointBehavior_Package;
with org.allbinary.game.layer.unit.UnitWaypointStrings_Package; use org.allbinary.game.layer.unit.UnitWaypointStrings_Package;
with org.allbinary.game.layer.unit.UnitWaypointStrings_Package_References;
with org.allbinary.game.layer.unit.UnitLayer_Package; use org.allbinary.game.layer.unit.UnitLayer_Package;
with org.allbinary.game.layer.unit.UnitLayer_Package_References;
with org.allbinary.game.layer.unit.UnitWaypointBehavior2_Package; use org.allbinary.game.layer.unit.UnitWaypointBehavior2_Package;
with org.allbinary.game.layer.unit.UnitWaypointBehavior2_Package;
with org.allbinary.util.ABHashMap_Package;
with org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABStack_Package;
with org.allbinary.logic.ABSystemWrapper_Package;
with org.allbinary.util.ABVector_Package;
with org.allbinary.thread.ARunnable_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.game.layer.AdvancedRTSProperties_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
with org.allbinary.media.AllBinaryVibrationME_Package;
with org.allbinary.math.Angle_Package;
with org.allbinary.math.AngleFactory_Package;
with org.allbinary.math.AngleIncrementInfo_Package;
with org.allbinary.math.AngleInfo_Package;
with org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.animation.AnimationInterfaceFactoryInterface_Package;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.ai.ArtificialIntelligenceInterface_Package;
with org.allbinary.canvas.BaseGameStatistics_Package;
with org.allbinary.game.displayable.canvas.BaseMenuBehavior_Package;
with org.allbinary.graphics.displayable.BaseScalable_Package;
with org.allbinary.util.BasicArrayListS_Package;
with org.allbinary.game.init.BasicBuildGameInitializerFactory_Package;
with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.logic.math.BasicDecimal_Package;
with org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
with org.allbinary.game.layer.building.event.BuildingEventListenerInterface_Package;
with org.allbinary.game.layer.building.BuildingLayer_Package;
with org.allbinary.game.layer.building.BuildingPropertiesFactory_Package;
with org.allbinary.graphics.displayable.CanvasStrings_Package;
with org.allbinary.graphics.CellPosition_Package;
with org.allbinary.graphics.CellPositionFactory_Package;
with org.allbinary.logic.java.character_Id.CharacterSet_Package;
with org.allbinary.util.CircularIndexUtil_Package;
with org.allbinary.game.collision.CollidableBaseBehaviorFactory_Package;
with org.allbinary.game.layer.CollidableCompositeLayer_Package;
with org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package;
with org.allbinary.game.collision.CollisionProcessor_Package;
with org.allbinary.game.collision.CollisionType_Package;
with org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactory_Package;
with org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactoryInterface_Package;
with org.allbinary.game.combat.damage.DamageFloaters_Package;
with org.allbinary.game.displayable.canvas.DemoGameBehavior_Package;
with org.allbinary.game.displayable.canvas.DemoPaintableInterface_Package;
with org.allbinary.game.combat.destroy.event.DestroyedEvent_Package;
with org.allbinary.game.combat.destroy.event.DestroyedEventListenerInterface_Package;
with org.allbinary.direction.Direction_Package;
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
with org.allbinary.game.identification.Group_Package;
with org.allbinary.game.identification.GroupCommonFactory_Package;
with org.allbinary.game.health.Health_Package;
with org.allbinary.game.health.HealthListenerInterface_Package;
with org.allbinary.game.score.HighScoresFactoryInterface_Package;
with org.allbinary.animation.IndexedAnimation_Package;
with org.allbinary.graphics.paint.InitUpdatePaintable_Package;
with org.allbinary.game.input.Input_Package;
with org.allbinary.game.input.InputFactory_Package;
with org.allbinary.game.input.mapping.InputMapping_Package;
with org.allbinary.game.IntermissionEnableListenerInterface_Package;
with org.allbinary.game.IntermissionInterface_Package;
with org.allbinary.graphics.form.ItemPaintableFactory_Package;
with org.allbinary.game.collision.LayerCollisionUtil_Package;
with org.allbinary.layer.LayerInterfaceFactoryInterface_Package;
with org.allbinary.layer.event.LayerManagerEvent_Package;
with org.allbinary.layer.event.LayerManagerEventHandler_Package;
with org.allbinary.layer.event.LayerManagerEventListener_Package;
with org.allbinary.layer.LayerManagerLoggingBase_Package;
with org.allbinary.layer.LayerProcessor_Package;
with org.allbinary.game.input.LocalPlayerInputIdFactory_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.math.NamedAngle_Package;
with org.allbinary.thread.NullRunnable_Package;
with org.allbinary.graphics.opengles.OpenGLFeature_Package;
with org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package;
with org.allbinary.game.part.PartInterface_Package;
with org.allbinary.game.layer.pickup.PickedUpLayerInterface_Package;
with org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactory_Package;
with org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryBase_Package;
with org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package;
with org.allbinary.game.layer.pickup.PickedUpLayerType_Package;
with org.allbinary.game.layer.pickup.PickupBehavior_Package;
with org.allbinary.game.layer.pickup.PickupProcessorInterface_Package;
with org.allbinary.game.input.PlayerGameInput_Package;
with org.allbinary.game.input.PlayerGameInputCompositeInterface_Package;
with org.allbinary.media.audio.PlayerQueue_Package;
with org.allbinary.game.PlayerType_Package;
with org.allbinary.game.input.event.PressGameKeyEventHandler_Package;
with org.allbinary.logic.math.PrimitiveLongSingleton_Package;
with org.allbinary.logic.math.PrimitiveLongUtil_Package;
with org.allbinary.thread.PriorityRunnable_Package;
with org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package;
with org.allbinary.canvas.Processor_Package;
with org.allbinary.graphics.canvas.transition.progress.ProgressEndListener_Package;
with org.allbinary.game.layer.RTSLayerEvent_Package;
with org.allbinary.graphics.Rectangle_Package;
with org.allbinary.math.RectangleCollisionUtil_Package;
with org.allbinary.game.multiplayer.layer.RemoteInfo_Package;
with org.allbinary.game.resource.ResourceLoadingLevel_Package;
with org.allbinary.animation.RotationAnimation_Package;
with org.allbinary.animation.RotationAnimationInterfaceCompositeInterface_Package;
with org.allbinary.graphics.displayable.ScalableListener_Package;
with org.allbinary.media.ScaleProperties_Package;
with org.allbinary.graphics.ScreenCapture_Package;
with org.allbinary.game.layer.SensorAction_Package;
with org.allbinary.animation.transition.shake.ShakeAnimationListener_Package;
with org.allbinary.animation.transition.shake.ShakeEvent_Package;
with org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.thread.SynchObject_Package;
with org.allbinary.thread.ThreadObjectUtil_Package;
with org.allbinary.thread.ThreadPoolStrings_Package;
with org.allbinary.game.tick.TickableInterface_Package;
with org.allbinary.time.TimeStampUtil_Package;
with org.allbinary.game.configuration.feature.TouchFeature_Package;
with org.allbinary.game.configuration.feature.TouchFeatureFactory_Package;
with org.allbinary.input.TouchJ2ME_Package;
with org.allbinary.game.layer.unit.UnitLayer_Package;
with org.allbinary.game.layer.unit.UnitWaypointBehavior_Package;
with org.allbinary.game.layer.unit.UnitWaypointBehavior2_Package;
with org.allbinary.game.layer.unit.UnitWaypointStrings_Package;
with org.allbinary.game.input.event.UpGameKeyEventHandler_Package;
with org.allbinary.game.input.event.UpGameKeyEventHandlerBase_Package;
with org.allbinary.graph.V_Package;
with org.allbinary.view.ViewPositionBase_Package;
with org.allbinary.view.event.ViewPositionEvent_Package;
with org.allbinary.input.event.VirtualKeyboardEvent_Package;
with org.allbinary.input.event.VirtualKeyboardEventHandler_Package;
with org.allbinary.game.layer.waypoint.event.WaypointEventListenerInterface_Package;

package body org.allbinary.game.layer.unit.BuildingSteeringVisitor_Package is

   package J2MEUtil_Package renames Standard.org.allbinary.J2MEUtil_Package;
   package Features_Package renames Standard.org.allbinary.game.configuration.feature.Features_Package;
   package MultipassWaypointPathRunnable_Package renames Standard.org.allbinary.game.layer.MultipassWaypointPathRunnable_Package;
   package WaypointPathRunnable_Package renames Standard.org.allbinary.game.layer.WaypointPathRunnable_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package PathFindingLayerInterface_Package renames Standard.org.allbinary.game.layer.PathFindingLayerInterface_Package;
   package WaypointBase_Package renames Standard.org.allbinary.game.layer.waypoint.WaypointBase_Package;
   package TrackingEventHandler_Package renames Standard.org.allbinary.game.tracking.TrackingEventHandler_Package;
   package GPoint_Package renames Standard.org.allbinary.graphics.GPoint_Package;
   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   package BooleanFactory_Package renames Standard.org.allbinary.logic.java.bool.BooleanFactory_Package;
   package SimpleGeographicMapCellPositionFactory_Package renames Standard.org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory_Package;
   package PathFindingThreadPool_Package renames Standard.org.allbinary.thread.PathFindingThreadPool_Package;
   subtype AdvancedRTSGameLayer_Access is org.allbinary.game.layer.AdvancedRTSGameLayer_Package_References.AdvancedRTSGameLayer_Access;
   function "=" (Left, Right : AdvancedRTSGameLayer_Access) return Boolean renames org.allbinary.game.layer.AdvancedRTSGameLayer_Package_References."=";
   subtype AdvancedRTSGameLayer_Access_Array is org.allbinary.game.layer.AdvancedRTSGameLayer_Package_References.AdvancedRTSGameLayer_Access_Array;
   function "=" (Left, Right : AdvancedRTSGameLayer_Access_Array) return Boolean renames org.allbinary.game.layer.AdvancedRTSGameLayer_Package_References."=";
   subtype AdvancedRTSGameLayer_Access_Array_Access is org.allbinary.game.layer.AdvancedRTSGameLayer_Package_References.AdvancedRTSGameLayer_Access_Array_Access;
   function "=" (Left, Right : AdvancedRTSGameLayer_Access_Array_Access) return Boolean renames org.allbinary.game.layer.AdvancedRTSGameLayer_Package_References."=";
   subtype AdvancedRTSGameLayer_Access_Array_Access_Array is org.allbinary.game.layer.AdvancedRTSGameLayer_Package_References.AdvancedRTSGameLayer_Access_Array_Access_Array;
   function "=" (Left, Right : AdvancedRTSGameLayer_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.AdvancedRTSGameLayer_Package_References."=";
   subtype AdvancedRTSGameLayer_Access_Array_Access_Array_Access is org.allbinary.game.layer.AdvancedRTSGameLayer_Package_References.AdvancedRTSGameLayer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AdvancedRTSGameLayer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.AdvancedRTSGameLayer_Package_References."=";
   subtype RTSLayer_Access is org.allbinary.game.layer.RTSLayer_Package_References.RTSLayer_Access;
   function "=" (Left, Right : RTSLayer_Access) return Boolean renames org.allbinary.game.layer.RTSLayer_Package_References."=";
   subtype RTSLayer_Access_Array is org.allbinary.game.layer.RTSLayer_Package_References.RTSLayer_Access_Array;
   function "=" (Left, Right : RTSLayer_Access_Array) return Boolean renames org.allbinary.game.layer.RTSLayer_Package_References."=";
   subtype RTSLayer_Access_Array_Access is org.allbinary.game.layer.RTSLayer_Package_References.RTSLayer_Access_Array_Access;
   function "=" (Left, Right : RTSLayer_Access_Array_Access) return Boolean renames org.allbinary.game.layer.RTSLayer_Package_References."=";
   subtype RTSLayer_Access_Array_Access_Array is org.allbinary.game.layer.RTSLayer_Package_References.RTSLayer_Access_Array_Access_Array;
   function "=" (Left, Right : RTSLayer_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.RTSLayer_Package_References."=";
   subtype RTSLayer_Access_Array_Access_Array_Access is org.allbinary.game.layer.RTSLayer_Package_References.RTSLayer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RTSLayer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.RTSLayer_Package_References."=";
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
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   function "=" (Left, Right : LogUtil_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype WaypointPathRunnableBase_Access is org.allbinary.game.layer.WaypointPathRunnableBase_Package_References.WaypointPathRunnableBase_Access;
   function "=" (Left, Right : WaypointPathRunnableBase_Access) return Boolean renames org.allbinary.game.layer.WaypointPathRunnableBase_Package_References."=";
   subtype WaypointPathRunnableBase_Access_Array is org.allbinary.game.layer.WaypointPathRunnableBase_Package_References.WaypointPathRunnableBase_Access_Array;
   function "=" (Left, Right : WaypointPathRunnableBase_Access_Array) return Boolean renames org.allbinary.game.layer.WaypointPathRunnableBase_Package_References."=";
   subtype WaypointPathRunnableBase_Access_Array_Access is org.allbinary.game.layer.WaypointPathRunnableBase_Package_References.WaypointPathRunnableBase_Access_Array_Access;
   function "=" (Left, Right : WaypointPathRunnableBase_Access_Array_Access) return Boolean renames org.allbinary.game.layer.WaypointPathRunnableBase_Package_References."=";
   subtype WaypointPathRunnableBase_Access_Array_Access_Array is org.allbinary.game.layer.WaypointPathRunnableBase_Package_References.WaypointPathRunnableBase_Access_Array_Access_Array;
   function "=" (Left, Right : WaypointPathRunnableBase_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.WaypointPathRunnableBase_Package_References."=";
   subtype WaypointPathRunnableBase_Access_Array_Access_Array_Access is org.allbinary.game.layer.WaypointPathRunnableBase_Package_References.WaypointPathRunnableBase_Access_Array_Access_Array_Access;
   function "=" (Left, Right : WaypointPathRunnableBase_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.WaypointPathRunnableBase_Package_References."=";
   subtype CollidableDestroyableDamageableLayer_Access is org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References.CollidableDestroyableDamageableLayer_Access;
   function "=" (Left, Right : CollidableDestroyableDamageableLayer_Access) return Boolean renames org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References."=";
   subtype CollidableDestroyableDamageableLayer_Access_Array is org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References.CollidableDestroyableDamageableLayer_Access_Array;
   function "=" (Left, Right : CollidableDestroyableDamageableLayer_Access_Array) return Boolean renames org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References."=";
   subtype CollidableDestroyableDamageableLayer_Access_Array_Access is org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References.CollidableDestroyableDamageableLayer_Access_Array_Access;
   function "=" (Left, Right : CollidableDestroyableDamageableLayer_Access_Array_Access) return Boolean renames org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References."=";
   subtype CollidableDestroyableDamageableLayer_Access_Array_Access_Array is org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References.CollidableDestroyableDamageableLayer_Access_Array_Access_Array;
   function "=" (Left, Right : CollidableDestroyableDamageableLayer_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References."=";
   subtype CollidableDestroyableDamageableLayer_Access_Array_Access_Array_Access is org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References.CollidableDestroyableDamageableLayer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CollidableDestroyableDamageableLayer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References."=";
   subtype BasicColorFactory_Access is org.allbinary.graphics.color.BasicColorFactory_Package_References.BasicColorFactory_Access;
   function "=" (Left, Right : BasicColorFactory_Access) return Boolean renames org.allbinary.graphics.color.BasicColorFactory_Package_References."=";
   subtype BasicColorFactory_Access_Array is org.allbinary.graphics.color.BasicColorFactory_Package_References.BasicColorFactory_Access_Array;
   function "=" (Left, Right : BasicColorFactory_Access_Array) return Boolean renames org.allbinary.graphics.color.BasicColorFactory_Package_References."=";
   subtype BasicColorFactory_Access_Array_Access is org.allbinary.graphics.color.BasicColorFactory_Package_References.BasicColorFactory_Access_Array_Access;
   function "=" (Left, Right : BasicColorFactory_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.BasicColorFactory_Package_References."=";
   subtype BasicColorFactory_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColorFactory_Package_References.BasicColorFactory_Access_Array_Access_Array;
   function "=" (Left, Right : BasicColorFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.color.BasicColorFactory_Package_References."=";
   subtype BasicColorFactory_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColorFactory_Package_References.BasicColorFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicColorFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.BasicColorFactory_Package_References."=";
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
   subtype LayerDistanceUtil_Access is org.allbinary.math.LayerDistanceUtil_Package_References.LayerDistanceUtil_Access;
   function "=" (Left, Right : LayerDistanceUtil_Access) return Boolean renames org.allbinary.math.LayerDistanceUtil_Package_References."=";
   subtype LayerDistanceUtil_Access_Array is org.allbinary.math.LayerDistanceUtil_Package_References.LayerDistanceUtil_Access_Array;
   function "=" (Left, Right : LayerDistanceUtil_Access_Array) return Boolean renames org.allbinary.math.LayerDistanceUtil_Package_References."=";
   subtype LayerDistanceUtil_Access_Array_Access is org.allbinary.math.LayerDistanceUtil_Package_References.LayerDistanceUtil_Access_Array_Access;
   function "=" (Left, Right : LayerDistanceUtil_Access_Array_Access) return Boolean renames org.allbinary.math.LayerDistanceUtil_Package_References."=";
   subtype LayerDistanceUtil_Access_Array_Access_Array is org.allbinary.math.LayerDistanceUtil_Package_References.LayerDistanceUtil_Access_Array_Access_Array;
   function "=" (Left, Right : LayerDistanceUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.math.LayerDistanceUtil_Package_References."=";
   subtype LayerDistanceUtil_Access_Array_Access_Array_Access is org.allbinary.math.LayerDistanceUtil_Package_References.LayerDistanceUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LayerDistanceUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.math.LayerDistanceUtil_Package_References."=";
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
   subtype ThreadPool_Access is org.allbinary.thread.ThreadPool_Package_References.ThreadPool_Access;
   function "=" (Left, Right : ThreadPool_Access) return Boolean renames org.allbinary.thread.ThreadPool_Package_References."=";
   subtype ThreadPool_Access_Array is org.allbinary.thread.ThreadPool_Package_References.ThreadPool_Access_Array;
   function "=" (Left, Right : ThreadPool_Access_Array) return Boolean renames org.allbinary.thread.ThreadPool_Package_References."=";
   subtype ThreadPool_Access_Array_Access is org.allbinary.thread.ThreadPool_Package_References.ThreadPool_Access_Array_Access;
   function "=" (Left, Right : ThreadPool_Access_Array_Access) return Boolean renames org.allbinary.thread.ThreadPool_Package_References."=";
   subtype ThreadPool_Access_Array_Access_Array is org.allbinary.thread.ThreadPool_Package_References.ThreadPool_Access_Array_Access_Array;
   function "=" (Left, Right : ThreadPool_Access_Array_Access_Array) return Boolean renames org.allbinary.thread.ThreadPool_Package_References."=";
   subtype ThreadPool_Access_Array_Access_Array_Access is org.allbinary.thread.ThreadPool_Package_References.ThreadPool_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ThreadPool_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.thread.ThreadPool_Package_References."=";
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
   subtype UnitWaypointStrings_Access is org.allbinary.game.layer.unit.UnitWaypointStrings_Package_References.UnitWaypointStrings_Access;
   function "=" (Left, Right : UnitWaypointStrings_Access) return Boolean renames org.allbinary.game.layer.unit.UnitWaypointStrings_Package_References."=";
   subtype UnitWaypointStrings_Access_Array is org.allbinary.game.layer.unit.UnitWaypointStrings_Package_References.UnitWaypointStrings_Access_Array;
   function "=" (Left, Right : UnitWaypointStrings_Access_Array) return Boolean renames org.allbinary.game.layer.unit.UnitWaypointStrings_Package_References."=";
   subtype UnitWaypointStrings_Access_Array_Access is org.allbinary.game.layer.unit.UnitWaypointStrings_Package_References.UnitWaypointStrings_Access_Array_Access;
   function "=" (Left, Right : UnitWaypointStrings_Access_Array_Access) return Boolean renames org.allbinary.game.layer.unit.UnitWaypointStrings_Package_References."=";
   subtype UnitWaypointStrings_Access_Array_Access_Array is org.allbinary.game.layer.unit.UnitWaypointStrings_Package_References.UnitWaypointStrings_Access_Array_Access_Array;
   function "=" (Left, Right : UnitWaypointStrings_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.unit.UnitWaypointStrings_Package_References."=";
   subtype UnitWaypointStrings_Access_Array_Access_Array_Access is org.allbinary.game.layer.unit.UnitWaypointStrings_Package_References.UnitWaypointStrings_Access_Array_Access_Array_Access;
   function "=" (Left, Right : UnitWaypointStrings_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.unit.UnitWaypointStrings_Package_References."=";
   subtype UnitLayer_Access is org.allbinary.game.layer.unit.UnitLayer_Package_References.UnitLayer_Access;
   function "=" (Left, Right : UnitLayer_Access) return Boolean renames org.allbinary.game.layer.unit.UnitLayer_Package_References."=";
   subtype UnitLayer_Access_Array is org.allbinary.game.layer.unit.UnitLayer_Package_References.UnitLayer_Access_Array;
   function "=" (Left, Right : UnitLayer_Access_Array) return Boolean renames org.allbinary.game.layer.unit.UnitLayer_Package_References."=";
   subtype UnitLayer_Access_Array_Access is org.allbinary.game.layer.unit.UnitLayer_Package_References.UnitLayer_Access_Array_Access;
   function "=" (Left, Right : UnitLayer_Access_Array_Access) return Boolean renames org.allbinary.game.layer.unit.UnitLayer_Package_References."=";
   subtype UnitLayer_Access_Array_Access_Array is org.allbinary.game.layer.unit.UnitLayer_Package_References.UnitLayer_Access_Array_Access_Array;
   function "=" (Left, Right : UnitLayer_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.unit.UnitLayer_Package_References."=";
   subtype UnitLayer_Access_Array_Access_Array_Access is org.allbinary.game.layer.unit.UnitLayer_Package_References.UnitLayer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : UnitLayer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.unit.UnitLayer_Package_References."=";
   procedure Initialize_Fields (This : in out BuildingSteeringVisitor'Class) is
   begin
      null;
      This.positionList := BasicArrayList_Access (BasicArrayListD_Package.Create);
   end Initialize_Fields;

   procedure Initialize (This : in out BuildingSteeringVisitor'Class) is
   begin
      SteeringVisitor_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create (Java_Outer_Param : org.allbinary.game.layer.unit.UnitWaypointBehavior2_Package_References.UnitWaypointBehavior2_Access) return BuildingSteeringVisitor_Access is
      This : constant BuildingSteeringVisitor_Access := new BuildingSteeringVisitor;
   begin
      This.Java_Outer := Java_Outer_Param;
      BuildingSteeringVisitor_Package.Initialize (This.all);
      return This;
   end Create;

    
   function visit (This : in out BuildingSteeringVisitor; anyType_Param : access Java_Object'Class) return Java_Object_Access is
      anyType : constant Java_Object_Access := Java_Object_Access (anyType_Param);
      logUtil : LogUtil_Access;
      allbinaryLayer : AllBinaryLayer_Access;
      cellPosition : GeographicMapCellPosition_Access;
      clear : Boolean;
      commonStrings : CommonStrings_Access;
   begin
            logUtil := LogUtil_Package.getInstance;
            begin
                if (BuildingSteeringVisitor'Class (This).getList.size) > (0) then
                    allbinaryLayer := AllBinaryLayer_Access (BuildingSteeringVisitor'Class (This).getList.get (0));
                    cellPosition := GeographicMapCellPosition_Access (BuildingSteeringVisitor'Class (This).getPositionList.get (0));
                    clear := This.Java_Outer.buildingChase (allbinaryLayer, cellPosition);
                    if clear then
                        BuildingSteeringVisitor'Class (This).getList.clear;
                        This.positionList.clear;
                        return NullUtil_Package.getInstance.NULL_OBJECT;
                    end if;
                    return Java_Box (BooleanFactory_Package.getInstance.FALSE);
                end if;
                return NullUtil_Package.getInstance.NULL_OBJECT;
            exception
                when Java_Occurrence : others =>
                    declare
                        e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                    begin
                commonStrings := CommonStrings_Package.getInstance;
                logUtil.put (commonStrings.EXCEPTION_Id, BuildingSteeringVisitor_Access'(This'Unchecked_Access), To_Unbounded_String ("visit"), e);
                return NullUtil_Package.getInstance.NULL_OBJECT;
                    end;
            end;
   end visit;
    
   function getPositionList (This : in out BuildingSteeringVisitor) return BasicArrayList_Access is
   begin
            return This.positionList;
   end getPositionList;

   procedure visit (This : in out BuildingSteeringVisitor; anyType_Param : access Java_Object'Class) is
      Java_Result : constant Java_Object_Access := BuildingSteeringVisitor'Class (This).visit (anyType_Param => anyType_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end visit;

   function visit (This : in out BuildingSteeringVisitor; Value : Unbounded_String) return Java_Object_Access is
   begin
      return BuildingSteeringVisitor'Class (This).visit (Java_Box (Value));
   end visit;

   procedure visit (This : in out BuildingSteeringVisitor; Value : Unbounded_String) is
      Java_Result : constant Java_Object_Access := BuildingSteeringVisitor'Class (This).visit (Java_Box (Value));
      pragma Unreferenced (Java_Result);
   begin
      null;
   end visit;

end org.allbinary.game.layer.unit.BuildingSteeringVisitor_Package;


