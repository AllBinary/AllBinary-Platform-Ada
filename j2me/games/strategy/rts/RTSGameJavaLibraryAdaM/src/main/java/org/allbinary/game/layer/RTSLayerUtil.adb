-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2003 AllBinary 
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


with org.allbinary.game.identification.GroupCommonFactory_Package; use org.allbinary.game.identification.GroupCommonFactory_Package;
with org.allbinary.game.identification.GroupCommonFactory_Package_References;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.direction.DirectionFactory_Package; use org.allbinary.direction.DirectionFactory_Package;
with org.allbinary.game.GameInfo_Package; use org.allbinary.game.GameInfo_Package;
with org.allbinary.game.combat.weapon.WeaponProperties_Package; use org.allbinary.game.combat.weapon.WeaponProperties_Package;
with org.allbinary.game.combat.weapon.WeaponProperties_Package_References;
with org.allbinary.game.identification.BasicGroupFactory_Package; use org.allbinary.game.identification.BasicGroupFactory_Package;
with org.allbinary.game.part.PartInterface_Package; use org.allbinary.game.part.PartInterface_Package;
with org.allbinary.game.part.weapon.BasicWeaponPart_Package; use org.allbinary.game.part.weapon.BasicWeaponPart_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package; use org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.racetrack.BaseRaceTrackGeographicMap_Package; use org.allbinary.media.graphics.geography.map.racetrack.BaseRaceTrackGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.racetrack.BaseRaceTrackGeographicMap_Package_References;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABHashtable_Package_References;
with org.allbinary.game.layer.RTSLayer_Package; use org.allbinary.game.layer.RTSLayer_Package;
with org.allbinary.game.layer.RTSLayer_Package_References;
with org.allbinary.game.layer.FakeLayerManager_Package; use org.allbinary.game.layer.FakeLayerManager_Package;
with org.allbinary.game.layer.AllBinaryGameLayerManager_Package; use org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
with org.allbinary.graphics.form.item.ABCustomGaugeItem_Package;
with org.allbinary.util.ABStack_Package;
with org.allbinary.graphics.form.item.ABStringComponent_Package;
with org.allbinary.logic.ABSystemWrapper_Package;
with org.allbinary.util.ABVector_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.math.Angle_Package;
with org.allbinary.math.AngleIncrementInfo_Package;
with org.allbinary.math.AngleInfo_Package;
with org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.animation.AnimationInterfaceFactoryInterface_Package;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.ai.ArtificialIntelligenceInterface_Package;
with org.allbinary.canvas.BaseGameStatistics_Package;
with org.allbinary.game.displayable.canvas.BaseMenuBehavior_Package;
with org.allbinary.graphics.displayable.BaseScalable_Package;
with org.allbinary.input.motion.button.BaseTouchInput_Package;
with org.allbinary.util.BasicArrayListUtil_Package;
with org.allbinary.game.init.BasicBuildGameInitializerFactory_Package;
with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.logic.math.BasicDecimal_Package;
with org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
with org.allbinary.input.motion.gesture.observer.BasicMotionGesturesHandler_Package;
with org.allbinary.game.input.BuildMenuCompositeInterface_Package;
with org.allbinary.graphics.displayable.CanvasStrings_Package;
with org.allbinary.game.layer.capital.Capital_Package;
with org.allbinary.logic.java.character_Id.CharacterSet_Package;
with org.allbinary.util.CircularIndexUtil_Package;
with org.allbinary.game.collision.CollidableBaseBehaviorFactory_Package;
with org.allbinary.game.layer.CollidableCompositeLayer_Package;
with org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package;
with org.allbinary.game.collision.CollisionProcessor_Package;
with org.allbinary.game.collision.CollisionType_Package;
with org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactory_Package;
with org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactoryInterface_Package;
with org.allbinary.graphics.form.CustomDisplayable_Package;
with org.allbinary.graphics.form.CustomScreen_Package;
with org.allbinary.game.displayable.canvas.DemoGameBehavior_Package;
with org.allbinary.game.displayable.canvas.DemoPaintableInterface_Package;
with org.allbinary.game.combat.destroy.DestroyableInterface_Package;
with org.allbinary.game.combat.destroy.event.DestroyedEvent_Package;
with org.allbinary.game.combat.destroy.event.DestroyedEventListenerInterface_Package;
with org.allbinary.direction.Direction_Package;
with org.allbinary.direction.DirectionUtil_Package;
with org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package;
with org.allbinary.game.input.event.DownGameKeyEventHandler_Package;
with org.allbinary.game.input.event.DownGameKeyEventHandlerBase_Package;
with org.allbinary.game.displayable.canvas.EndGameInfo_Package;
with org.allbinary.logic.util.event.EventListenerInterface_Package;
with org.allbinary.logic.util.event.EventStrings_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.game.layer.FakeLayerManager_Package;
with org.allbinary.game.configuration.feature.Feature_Package;
with org.allbinary.graphics.form.FormType_Package;
with org.allbinary.game.displayable.canvas.FormUtil_Package;
with org.allbinary.math.FrameUtil_Package;
with javax.microedition.khronos.opengles.GL_Package;
with org.allbinary.graphics.GPoint_Package;
with org.allbinary.game.displayable.canvas.GameCanvasPauseRunnable_Package;
with org.allbinary.game.displayable.canvas.GameCanvasRunnable_Package;
with org.allbinary.game.GameInfoData_Package;
with org.allbinary.game.input.GameInput_Package;
with org.allbinary.game.input.GameInputInterface_Package;
with org.allbinary.game.input.GameInputProcessor_Package;
with org.allbinary.game.input.GameInputStrings_Package;
with org.allbinary.game.input.GameKey_Package;
with org.allbinary.game.input.event.GameKeyEvent_Package;
with org.allbinary.game.input.event.GameKeyEventFactory_Package;
with org.allbinary.game.input.event.GameKeyEventHandler_Package;
with org.allbinary.game.input.GameKeyEventSourceInterface_Package;
with org.allbinary.game.input.GameKeyFactory_Package;
with org.allbinary.game.GameMode_Package;
with org.allbinary.game.layer.hud.event.GameNotificationEvent_Package;
with org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHudCompositeInterface_Package;
with org.allbinary.game.displayable.canvas.GameRunnable_Package;
with org.allbinary.game.state.GameState_Package;
with org.allbinary.game.state.GameStateFactory_Package;
with org.allbinary.game.GameStrings_Package;
with org.allbinary.graphics.displayable.GameTickDisplayInfoSingleton_Package;
with org.allbinary.time.GameTickTimeDelayHelper_Package;
with org.allbinary.game.GameType_Package;
with org.allbinary.game.GameTypeFactory_Package;
with org.allbinary.logic.system.os.GenericOperatingSystem_Package;
with org.allbinary.game.layer.GeographicMapCellPositionAreaBase_Package;
with org.allbinary.game.layer.GeographicMapCellPositionAreaInterface_Package;
with org.allbinary.game.identification.Group_Package;
with org.allbinary.game.identification.GroupInterfaceCompositeInterface_Package;
with org.allbinary.game.health.Health_Package;
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
with org.allbinary.game.collision.LayerCollisionUtil_Package;
with org.allbinary.math.LayerDistanceUtil_Package;
with org.allbinary.layer.event.LayerManagerEvent_Package;
with org.allbinary.layer.event.LayerManagerEventHandler_Package;
with org.allbinary.layer.event.LayerManagerEventListener_Package;
with org.allbinary.layer.LayerManagerLoggingBase_Package;
with org.allbinary.layer.LayerProcessor_Package;
with org.allbinary.game.input.LocalPlayerInputIdFactory_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package;
with org.allbinary.input.motion.gesture.MotionGestureInput_Package;
with org.allbinary.game.multiplayer.layer.MultiPlayerGameLayer_Package;
with org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package;
with org.allbinary.game.multiplayer.layer.MultiplayerBehavior_Package;
with org.allbinary.game.rand.MyRandomFactory_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.graphics.opengles.OpenGLFeature_Package;
with org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package;
with org.allbinary.graphics.form.PaintableForm_Package;
with org.allbinary.game.layer.PathFindingLayerInterface_Package;
with org.allbinary.game.layer.pickup.PickedUpLayerInterface_Package;
with org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactory_Package;
with org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryBase_Package;
with org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package;
with org.allbinary.game.layer.pickup.PickedUpLayerType_Package;
with org.allbinary.game.layer.pickup.PickupBehavior_Package;
with org.allbinary.game.layer.pickup.PickupProcessorInterface_Package;
with org.allbinary.game.input.PlayerGameInput_Package;
with org.allbinary.game.input.PlayerGameInputCompositeInterface_Package;
with org.allbinary.game.layer.PlayerOwnedRTSLayers_Package;
with org.allbinary.media.audio.PlayerQueue_Package;
with org.allbinary.game.PlayerType_Package;
with org.allbinary.game.input.event.PressGameKeyEventHandler_Package;
with org.allbinary.logic.math.PrimitiveLongSingleton_Package;
with org.allbinary.logic.math.PrimitiveLongUtil_Package;
with org.allbinary.thread.PriorityRunnable_Package;
with org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package;
with org.allbinary.canvas.Processor_Package;
with org.allbinary.graphics.canvas.transition.progress.ProgressEndListener_Package;
with org.allbinary.game.input.form.RTSFormInput_Package;
with org.allbinary.game.layer.RTSInterface_Package;
with org.allbinary.game.layer.RTSLayer_Package;
with org.allbinary.game.layer.RTSLayer2LogHelper_Package;
with org.allbinary.game.layer.RTSPlayerLayerInterface_Package;
with org.allbinary.graphics.Rectangle_Package;
with org.allbinary.math.RectangleCollisionUtil_Package;
with org.allbinary.graphics.RelativeRelationship_Package;
with org.allbinary.game.multiplayer.layer.RemoteInfo_Package;
with org.allbinary.game.resource.ResourceLoadingLevel_Package;
with org.allbinary.animation.RotationAnimation_Package;
with org.allbinary.graphics.displayable.ScalableListener_Package;
with org.allbinary.media.ScaleProperties_Package;
with org.allbinary.game.score.ScoreableInterface_Package;
with org.allbinary.graphics.ScreenCapture_Package;
with org.allbinary.game.layer.SelectionHudPaintable_Package;
with org.allbinary.game.combat.weapon.SimpleWeaponProperties_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.thread.SynchObject_Package;
with org.allbinary.thread.ThreadObjectUtil_Package;
with org.allbinary.game.tick.TickableInterface_Package;
with org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.time.TimeStampUtil_Package;
with org.allbinary.input.motion.button.TouchButtonFactory_Package;
with org.allbinary.game.configuration.feature.TouchFeature_Package;
with org.allbinary.game.configuration.feature.TouchFeatureFactory_Package;
with org.allbinary.input.TouchJ2ME_Package;
with org.allbinary.game.tracking.TrackingEvent_Package;
with org.allbinary.game.input.event.UpGameKeyEventHandler_Package;
with org.allbinary.game.input.event.UpGameKeyEventHandlerBase_Package;
with org.allbinary.view.ViewPositionBase_Package;
with org.allbinary.view.event.ViewPositionEvent_Package;
with org.allbinary.input.event.VirtualKeyboardEvent_Package;
with org.allbinary.input.event.VirtualKeyboardEventHandler_Package;
with org.allbinary.logic.util.visitor.Visitor_Package;
with org.allbinary.game.layer.waypoint.Waypoint2LogHelper_Package;
with org.allbinary.game.layer.waypoint.WaypointBase_Package;
with org.allbinary.game.layer.WaypointBehaviorBase_Package;
with org.allbinary.game.layer.waypoint.WaypointLayerInterface_Package;
with org.allbinary.game.layer.waypoint.WaypointLogHelper_Package;
with org.allbinary.game.layer.waypoint.WaypointRunnableLogHelper_Package;

package body org.allbinary.game.layer.RTSLayerUtil_Package is

   package DirectionFactory_Package renames Standard.org.allbinary.direction.DirectionFactory_Package;
   package GameInfo_Package renames Standard.org.allbinary.game.GameInfo_Package;
   package BasicGroupFactory_Package renames Standard.org.allbinary.game.identification.BasicGroupFactory_Package;
   package PartInterface_Package renames Standard.org.allbinary.game.part.PartInterface_Package;
   package BasicWeaponPart_Package renames Standard.org.allbinary.game.part.weapon.BasicWeaponPart_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package BasicGeographicMap_Package renames Standard.org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
   subtype GroupCommonFactory_Access is org.allbinary.game.identification.GroupCommonFactory_Package_References.GroupCommonFactory_Access;
   function "=" (Left, Right : GroupCommonFactory_Access) return Boolean renames org.allbinary.game.identification.GroupCommonFactory_Package_References."=";
   subtype GroupCommonFactory_Access_Array is org.allbinary.game.identification.GroupCommonFactory_Package_References.GroupCommonFactory_Access_Array;
   function "=" (Left, Right : GroupCommonFactory_Access_Array) return Boolean renames org.allbinary.game.identification.GroupCommonFactory_Package_References."=";
   subtype GroupCommonFactory_Access_Array_Access is org.allbinary.game.identification.GroupCommonFactory_Package_References.GroupCommonFactory_Access_Array_Access;
   function "=" (Left, Right : GroupCommonFactory_Access_Array_Access) return Boolean renames org.allbinary.game.identification.GroupCommonFactory_Package_References."=";
   subtype GroupCommonFactory_Access_Array_Access_Array is org.allbinary.game.identification.GroupCommonFactory_Package_References.GroupCommonFactory_Access_Array_Access_Array;
   function "=" (Left, Right : GroupCommonFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.identification.GroupCommonFactory_Package_References."=";
   subtype GroupCommonFactory_Access_Array_Access_Array_Access is org.allbinary.game.identification.GroupCommonFactory_Package_References.GroupCommonFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GroupCommonFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.identification.GroupCommonFactory_Package_References."=";
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
   subtype WeaponProperties_Access is org.allbinary.game.combat.weapon.WeaponProperties_Package_References.WeaponProperties_Access;
   function "=" (Left, Right : WeaponProperties_Access) return Boolean renames org.allbinary.game.combat.weapon.WeaponProperties_Package_References."=";
   subtype WeaponProperties_Access_Array is org.allbinary.game.combat.weapon.WeaponProperties_Package_References.WeaponProperties_Access_Array;
   function "=" (Left, Right : WeaponProperties_Access_Array) return Boolean renames org.allbinary.game.combat.weapon.WeaponProperties_Package_References."=";
   subtype WeaponProperties_Access_Array_Access is org.allbinary.game.combat.weapon.WeaponProperties_Package_References.WeaponProperties_Access_Array_Access;
   function "=" (Left, Right : WeaponProperties_Access_Array_Access) return Boolean renames org.allbinary.game.combat.weapon.WeaponProperties_Package_References."=";
   subtype WeaponProperties_Access_Array_Access_Array is org.allbinary.game.combat.weapon.WeaponProperties_Package_References.WeaponProperties_Access_Array_Access_Array;
   function "=" (Left, Right : WeaponProperties_Access_Array_Access_Array) return Boolean renames org.allbinary.game.combat.weapon.WeaponProperties_Package_References."=";
   subtype WeaponProperties_Access_Array_Access_Array_Access is org.allbinary.game.combat.weapon.WeaponProperties_Package_References.WeaponProperties_Access_Array_Access_Array_Access;
   function "=" (Left, Right : WeaponProperties_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.combat.weapon.WeaponProperties_Package_References."=";
   subtype BaseRaceTrackGeographicMap_Access is org.allbinary.media.graphics.geography.map.racetrack.BaseRaceTrackGeographicMap_Package_References.BaseRaceTrackGeographicMap_Access;
   function "=" (Left, Right : BaseRaceTrackGeographicMap_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.BaseRaceTrackGeographicMap_Package_References."=";
   subtype BaseRaceTrackGeographicMap_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.BaseRaceTrackGeographicMap_Package_References.BaseRaceTrackGeographicMap_Access_Array;
   function "=" (Left, Right : BaseRaceTrackGeographicMap_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.BaseRaceTrackGeographicMap_Package_References."=";
   subtype BaseRaceTrackGeographicMap_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.BaseRaceTrackGeographicMap_Package_References.BaseRaceTrackGeographicMap_Access_Array_Access;
   function "=" (Left, Right : BaseRaceTrackGeographicMap_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.BaseRaceTrackGeographicMap_Package_References."=";
   subtype BaseRaceTrackGeographicMap_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.BaseRaceTrackGeographicMap_Package_References.BaseRaceTrackGeographicMap_Access_Array_Access_Array;
   function "=" (Left, Right : BaseRaceTrackGeographicMap_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.BaseRaceTrackGeographicMap_Package_References."=";
   subtype BaseRaceTrackGeographicMap_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.BaseRaceTrackGeographicMap_Package_References.BaseRaceTrackGeographicMap_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BaseRaceTrackGeographicMap_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.BaseRaceTrackGeographicMap_Package_References."=";
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
   procedure Initialize_Fields (This : in out RTSLayerUtil'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.groupCommonFactory := GroupCommonFactory_Package.getInstance;
      This.MAX_RELOAD_TIME := (Long_Long_Integer (Integer'Last)) / (100000);
   end Initialize_Fields;

   procedure Initialize (This : in out RTSLayerUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return RTSLayerUtil_Access is
      This : constant RTSLayerUtil_Access := new RTSLayerUtil;
   begin
      RTSLayerUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return RTSLayerUtil_Access is
   begin
        return RTSLayerUtil_Package.instance;
   end getInstance;

   function createWeaponProperties (This : in out RTSLayerUtil; weaponProperties_Param : access WeaponProperties_Package.WeaponProperties'Class; currentLevel : Integer; lastLevel : Integer) return WeaponProperties_Access is
      weaponProperties : constant WeaponProperties_Access := WeaponProperties_Access (weaponProperties_Param);
      reloadTime : Long_Long_Integer;
      newWeaponProperties : WeaponProperties_Access;
   begin
        reloadTime := weaponProperties.getReloadTime;
        if (lastLevel) > (currentLevel) then
            reloadTime := (reloadTime) + (50);
        elsif (lastLevel) < (currentLevel) then
            reloadTime := (reloadTime) - (50);
        end if;
        newWeaponProperties := WeaponProperties_Package.Create (reloadTime, weaponProperties.getTargetingTime, weaponProperties.getSpeed.getUnscaled, ((weaponProperties.getDamage) / (lastLevel)) * (currentLevel), weaponProperties.getDissipation);
        return newWeaponProperties;
   end createWeaponProperties;

   procedure downgrade (This : in out RTSLayerUtil; rtsLayer_Param : access RTSLayer_Package.RTSLayer'Class) is
      rtsLayer : constant RTSLayer_Access := RTSLayer_Access (rtsLayer_Param);
      partInterfaceArray : PartInterface_Access_Array_Access;
      size : Integer;
      partInterface : BasicWeaponPart_Access;
      index : Integer;
   begin
        rtsLayer.setLevel ((rtsLayer.getLevel) - (1));
        partInterfaceArray := rtsLayer.getPartInterfaceArray;
        size := partInterfaceArray'Length;
        partInterface := null;
        index := size;
        while (Java_Pre_Decrement (index)) >= (0) loop
            partInterface := BasicWeaponPart_Access (partInterfaceArray (index));
            partInterface.setWeaponProperties (RTSLayerUtil'Class (This).createWeaponProperties (partInterface.getWeaponProperties, rtsLayer.getLevel, (rtsLayer.getLevel) + (1)));
        end loop;
        rtsLayer.select_Id;
   end downgrade;

   procedure upgrade (This : in out RTSLayerUtil; rtsLayer_Param : access RTSLayer_Package.RTSLayer'Class) is
      rtsLayer : constant RTSLayer_Access := RTSLayer_Access (rtsLayer_Param);
      partInterfaceArray : PartInterface_Access_Array_Access;
      size : Integer;
      partInterface : BasicWeaponPart_Access;
      index : Integer;
   begin
        rtsLayer.setLevel ((rtsLayer.getLevel) + (1));
        partInterfaceArray := rtsLayer.getPartInterfaceArray;
        size := partInterfaceArray'Length;
        partInterface := null;
        index := size;
        while (Java_Pre_Decrement (index)) >= (0) loop
            partInterface := BasicWeaponPart_Access (partInterfaceArray (index));
            partInterface.setWeaponProperties (RTSLayerUtil'Class (This).createWeaponProperties (partInterface.getWeaponProperties, rtsLayer.getLevel, (rtsLayer.getLevel) - (1)));
        end loop;
        rtsLayer.select_Id;
   end upgrade;

   function getCostExponential (This : in out RTSLayerUtil; cost : Long_Long_Integer) return Long_Long_Integer is
   begin
        return (((((cost) * (cost)) * (cost))) / (((cost) * (1000))));
   end getCostExponential;

   function getWeaponPropertiesCost (This : in out RTSLayerUtil; weaponProperties_Param : access WeaponProperties_Package.WeaponProperties'Class) return Integer is
      weaponProperties : constant WeaponProperties_Access := WeaponProperties_Access (weaponProperties_Param);
      cost : Long_Long_Integer;
   begin
        cost := ((Long_Long_Integer ((weaponProperties.getDamage) + (weaponProperties.getRange))) + ((Java_Shift_Right_Arithmetic (((This.MAX_RELOAD_TIME) / (weaponProperties.getReloadTime)), 1))));
        cost := RTSLayerUtil'Class (This).getCostExponential (cost);
        return Integer (cost);
   end getWeaponPropertiesCost;

   function getCost (This : in out RTSLayerUtil; rtsLayer_Param : access RTSLayer_Package.RTSLayer'Class) return Integer is
      rtsLayer : constant RTSLayer_Access := RTSLayer_Access (rtsLayer_Param);
      total : Integer;
      partInterfaceArray : PartInterface_Access_Array_Access;
      size : Integer;
      partInterface : BasicWeaponPart_Access;
      weaponProperties : WeaponProperties_Access;
      index : Integer;
   begin
        total := 0;
        partInterfaceArray := rtsLayer.getPartInterfaceArray;
        size := partInterfaceArray'Length;
        partInterface := null;
        weaponProperties := null;
        for index in reverse 0 .. (size) - (1) loop
            partInterface := BasicWeaponPart_Access (partInterfaceArray (index));
            weaponProperties := partInterface.getWeaponProperties;
            total := (total) + (RTSLayerUtil'Class (This).getWeaponPropertiesCost (weaponProperties));
        end loop;
        return total;
   end getCost;

   function getDowngradeCost (This : in out RTSLayerUtil; rtsLayer_Param : access RTSLayer_Package.RTSLayer'Class) return Integer is
      rtsLayer : constant RTSLayer_Access := RTSLayer_Access (rtsLayer_Param);
      partInterfaceArray : PartInterface_Access_Array_Access;
      size : Integer;
      downgradeCost : Integer;
      partInterface : BasicWeaponPart_Access;
      weaponProperties : WeaponProperties_Access;
      downgradeWeaponCost : Integer;
      currentWeaponCost : Integer;
      index : Integer;
   begin
        partInterfaceArray := rtsLayer.getPartInterfaceArray;
        size := partInterfaceArray'Length;
        downgradeCost := 0;
        partInterface := null;
        weaponProperties := null;
        downgradeWeaponCost := 0;
        currentWeaponCost := 0;
        for index in reverse 0 .. (size) - (1) loop
            partInterface := BasicWeaponPart_Access (partInterfaceArray (index));
            weaponProperties := partInterface.getWeaponProperties;
            downgradeWeaponCost := RTSLayerUtil'Class (This).getWeaponPropertiesCost (RTSLayerUtil'Class (This).createWeaponProperties (weaponProperties, (rtsLayer.getLevel) - (1), rtsLayer.getLevel));
            currentWeaponCost := RTSLayerUtil'Class (This).getWeaponPropertiesCost (weaponProperties);
            downgradeCost := (downgradeCost) + (((currentWeaponCost) - (downgradeWeaponCost)));
        end loop;
        downgradeCost := ((downgradeCost) * (9)) / (10);
        This.logUtil.putF (StringMaker_Package.Create.append (To_Unbounded_String ("Total Cost: ")).appendint (downgradeCost).toString, RTSLayerUtil_Access'(This'Unchecked_Access), To_Unbounded_String ("getDowngradeCost"));
        return downgradeCost;
   end getDowngradeCost;

   function getUpgradeCost (This : in out RTSLayerUtil; rtsLayer_Param : access RTSLayer_Package.RTSLayer'Class) return Integer is
      rtsLayer : constant RTSLayer_Access := RTSLayer_Access (rtsLayer_Param);
      upgradeCost : Integer;
      partInterfaceArray : PartInterface_Access_Array_Access;
      size : Integer;
      partInterface : BasicWeaponPart_Access;
      weaponProperties : WeaponProperties_Access;
      upgradedWeaponCost : Integer;
      currentWeaponCost : Integer;
      index : Integer;
   begin
        upgradeCost := 0;
        partInterfaceArray := rtsLayer.getPartInterfaceArray;
        size := partInterfaceArray'Length;
        partInterface := null;
        weaponProperties := null;
        upgradedWeaponCost := 0;
        currentWeaponCost := 0;
        for index in reverse 0 .. (size) - (1) loop
            partInterface := BasicWeaponPart_Access (partInterfaceArray (index));
            weaponProperties := partInterface.getWeaponProperties;
            upgradedWeaponCost := RTSLayerUtil'Class (This).getWeaponPropertiesCost (RTSLayerUtil'Class (This).createWeaponProperties (weaponProperties, (rtsLayer.getLevel) + (1), rtsLayer.getLevel));
            currentWeaponCost := RTSLayerUtil'Class (This).getWeaponPropertiesCost (weaponProperties);
            upgradeCost := (upgradeCost) + (((upgradedWeaponCost) - (currentWeaponCost)));
        end loop;
        This.logUtil.putF (StringMaker_Package.Create.append (To_Unbounded_String ("Total Cost: ")).appendint (upgradeCost).toString, RTSLayerUtil_Access'(This'Unchecked_Access), To_Unbounded_String ("getUpgradeCost"));
        return upgradeCost;
   end getUpgradeCost;

   --  throws Exception
   procedure destroyAndClear (This : in out RTSLayerUtil; list_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      list : constant BasicArrayList_Access := BasicArrayList_Access (list_Param);
      rtsLayer : RTSLayer_Access;
      index : Integer;
   begin
        rtsLayer := null;
        for index in reverse 0 .. (list.size) - (1) loop
            rtsLayer := RTSLayer_Access (list.get (index));
            rtsLayer.setDestroyed (True);
        end loop;
        list.clear;
   end destroyAndClear;

   function createFakeRTSLayerHashtable (This : in out RTSLayerUtil; baseRaceTrackGeographicMap_Param : access BaseRaceTrackGeographicMap_Package.BaseRaceTrackGeographicMap'Class) return ABHashtable_Access is
      baseRaceTrackGeographicMap : constant BaseRaceTrackGeographicMap_Access := BaseRaceTrackGeographicMap_Access (baseRaceTrackGeographicMap_Param);
      hashtable : ABHashtable_Access;
      layerManager : FakeLayerManager_Access;
   begin
        hashtable := StdUtil_Package.getInstance.createHashtable;
        layerManager := FakeLayerManager_Package.Create (GameInfo_Package.NONE);
        layerManager.setGeographicMapInterface (new BasicGeographicMap_Access_Array'(0 => baseRaceTrackGeographicMap));
        hashtable.put (Java_Box (AllBinaryGameLayerManager_Package.ID), layerManager);
        hashtable.put (Java_Box (DirectionFactory_Package.getInstance.NAME), DirectionFactory_Package.getInstance.LEFT);
        hashtable.put (Java_Box (This.groupCommonFactory.ID), BasicGroupFactory_Package.getInstance.NONE_ARRAY);
        return hashtable;
   end createFakeRTSLayerHashtable;

   procedure createWeaponProperties (This : in out RTSLayerUtil; weaponProperties_Param : access WeaponProperties_Package.WeaponProperties'Class; currentLevel : Integer; lastLevel : Integer) is
      Java_Result : constant WeaponProperties_Access := RTSLayerUtil'Class (This).createWeaponProperties (weaponProperties_Param => weaponProperties_Param, currentLevel => currentLevel, lastLevel => lastLevel);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createWeaponProperties;

   procedure getCostExponential (This : in out RTSLayerUtil; cost : Long_Long_Integer) is
      Java_Result : constant Long_Long_Integer := RTSLayerUtil'Class (This).getCostExponential (cost => cost);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCostExponential;

   procedure getWeaponPropertiesCost (This : in out RTSLayerUtil; weaponProperties_Param : access WeaponProperties_Package.WeaponProperties'Class) is
      Java_Result : constant Integer := RTSLayerUtil'Class (This).getWeaponPropertiesCost (weaponProperties_Param => weaponProperties_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getWeaponPropertiesCost;

   procedure getCost (This : in out RTSLayerUtil; rtsLayer_Param : access RTSLayer_Package.RTSLayer'Class) is
      Java_Result : constant Integer := RTSLayerUtil'Class (This).getCost (rtsLayer_Param => rtsLayer_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCost;

   procedure getDowngradeCost (This : in out RTSLayerUtil; rtsLayer_Param : access RTSLayer_Package.RTSLayer'Class) is
      Java_Result : constant Integer := RTSLayerUtil'Class (This).getDowngradeCost (rtsLayer_Param => rtsLayer_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getDowngradeCost;

   procedure getUpgradeCost (This : in out RTSLayerUtil; rtsLayer_Param : access RTSLayer_Package.RTSLayer'Class) is
      Java_Result : constant Integer := RTSLayerUtil'Class (This).getUpgradeCost (rtsLayer_Param => rtsLayer_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getUpgradeCost;

   procedure createFakeRTSLayerHashtable (This : in out RTSLayerUtil; baseRaceTrackGeographicMap_Param : access BaseRaceTrackGeographicMap_Package.BaseRaceTrackGeographicMap'Class) is
      Java_Result : constant ABHashtable_Access := RTSLayerUtil'Class (This).createFakeRTSLayerHashtable (baseRaceTrackGeographicMap_Param => baseRaceTrackGeographicMap_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createFakeRTSLayerHashtable;

begin
   null;
   instance := RTSLayerUtil_Package.Create;

end org.allbinary.game.layer.RTSLayerUtil_Package;


