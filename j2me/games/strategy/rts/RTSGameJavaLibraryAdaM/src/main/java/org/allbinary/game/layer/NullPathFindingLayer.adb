-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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


with org.allbinary.animation.caption.CaptionAnimationHelperBase_Package; use org.allbinary.animation.caption.CaptionAnimationHelperBase_Package;
with org.allbinary.animation.caption.CaptionAnimationHelperBase_Package_References;
with org.allbinary.game.identification.Group_Package; use org.allbinary.game.identification.Group_Package;
with org.allbinary.game.identification.Group_Package_References;
with org.allbinary.game.layer.waypoint.Waypoint2LogHelper_Package; use org.allbinary.game.layer.waypoint.Waypoint2LogHelper_Package;
with org.allbinary.game.layer.waypoint.Waypoint2LogHelper_Package_References;
with org.allbinary.game.layer.waypoint.WaypointLogHelper_Package; use org.allbinary.game.layer.waypoint.WaypointLogHelper_Package;
with org.allbinary.game.layer.waypoint.WaypointLogHelper_Package_References;
with org.allbinary.game.layer.waypoint.WaypointRunnableLogHelper_Package; use org.allbinary.game.layer.waypoint.WaypointRunnableLogHelper_Package;
with org.allbinary.game.layer.waypoint.WaypointRunnableLogHelper_Package_References;
with org.allbinary.game.tracking.TrackingEvent_Package; use org.allbinary.game.tracking.TrackingEvent_Package;
with org.allbinary.game.tracking.TrackingEvent_Package_References;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package_References;
with org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.game.layer.GeographicMapCellPositionAreaBase_Package; use org.allbinary.game.layer.GeographicMapCellPositionAreaBase_Package;
with org.allbinary.game.layer.GeographicMapCellPositionAreaBase_Package_References;
with org.allbinary.game.layer.SelectionHudPaintable_Package; use org.allbinary.game.layer.SelectionHudPaintable_Package;
with org.allbinary.game.layer.SelectionHudPaintable_Package_References;
with org.allbinary.game.layer.RTSLayer2LogHelper_Package; use org.allbinary.game.layer.RTSLayer2LogHelper_Package;
with org.allbinary.game.layer.RTSLayer2LogHelper_Package_References;
with org.allbinary.game.layer.WaypointBehaviorBase_Package; use org.allbinary.game.layer.WaypointBehaviorBase_Package;
with org.allbinary.game.layer.WaypointBehaviorBase_Package_References;
with org.allbinary.graphics.form.item.ABCustomGaugeItem_Package;
with org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABStack_Package;
with org.allbinary.graphics.form.item.ABStringComponent_Package;
with org.allbinary.logic.ABSystemWrapper_Package;
with org.allbinary.util.ABVector_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package;
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
with org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
with org.allbinary.input.motion.gesture.observer.BasicMotionGesturesHandler_Package;
with org.allbinary.graphics.displayable.CanvasStrings_Package;
with org.allbinary.logic.java.character_Id.CharacterSet_Package;
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
with org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package;
with org.allbinary.game.input.event.DownGameKeyEventHandler_Package;
with org.allbinary.game.input.event.DownGameKeyEventHandlerBase_Package;
with org.allbinary.game.displayable.canvas.EndGameInfo_Package;
with org.allbinary.logic.util.event.EventListenerInterface_Package;
with org.allbinary.logic.util.event.EventStrings_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.game.configuration.feature.Feature_Package;
with org.allbinary.graphics.form.FormType_Package;
with org.allbinary.game.displayable.canvas.FormUtil_Package;
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
with org.allbinary.game.layer.GeographicMapCellPositionAreaBase_Package;
with org.allbinary.game.layer.GeographicMapCellPositionAreaInterface_Package;
with org.allbinary.game.identification.GroupInterfaceCompositeInterface_Package;
with org.allbinary.game.score.HighScoresFactoryInterface_Package;
with org.allbinary.graphics.paint.InitUpdatePaintable_Package;
with org.allbinary.game.input.Input_Package;
with org.allbinary.game.input.InputFactory_Package;
with org.allbinary.game.input.mapping.InputMapping_Package;
with org.allbinary.game.IntermissionEnableListenerInterface_Package;
with org.allbinary.game.IntermissionInterface_Package;
with org.allbinary.graphics.form.ItemPaintableFactory_Package;
with org.allbinary.game.collision.LayerCollisionUtil_Package;
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
with org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package;
with org.allbinary.input.motion.gesture.MotionGestureInput_Package;
with org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package;
with org.allbinary.game.rand.MyRandomFactory_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.graphics.opengles.OpenGLFeature_Package;
with org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package;
with org.allbinary.graphics.form.PaintableForm_Package;
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
with org.allbinary.canvas.Processor_Package;
with org.allbinary.graphics.canvas.transition.progress.ProgressEndListener_Package;
with org.allbinary.game.layer.RTSLayer2LogHelper_Package;
with org.allbinary.graphics.Rectangle_Package;
with org.allbinary.math.RectangleCollisionUtil_Package;
with org.allbinary.game.resource.ResourceLoadingLevel_Package;
with org.allbinary.graphics.displayable.ScalableListener_Package;
with org.allbinary.graphics.ScreenCapture_Package;
with org.allbinary.game.layer.SelectionHudPaintable_Package;
with org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
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
with org.allbinary.game.input.event.UpGameKeyEventHandler_Package;
with org.allbinary.game.input.event.UpGameKeyEventHandlerBase_Package;
with org.allbinary.view.ViewPositionBase_Package;
with org.allbinary.view.event.ViewPositionEvent_Package;
with org.allbinary.input.event.VirtualKeyboardEvent_Package;
with org.allbinary.input.event.VirtualKeyboardEventHandler_Package;
with org.allbinary.logic.util.visitor.Visitor_Package;
with org.allbinary.game.layer.waypoint.WaypointBase_Package;
with org.allbinary.game.layer.WaypointBehaviorBase_Package;
with org.allbinary.game.layer.waypoint.WaypointLayerInterface_Package;

package body org.allbinary.game.layer.NullPathFindingLayer_Package is

   subtype CaptionAnimationHelperBase_Access is org.allbinary.animation.caption.CaptionAnimationHelperBase_Package_References.CaptionAnimationHelperBase_Access;
   function "=" (Left, Right : CaptionAnimationHelperBase_Access) return Boolean renames org.allbinary.animation.caption.CaptionAnimationHelperBase_Package_References."=";
   subtype CaptionAnimationHelperBase_Access_Array is org.allbinary.animation.caption.CaptionAnimationHelperBase_Package_References.CaptionAnimationHelperBase_Access_Array;
   function "=" (Left, Right : CaptionAnimationHelperBase_Access_Array) return Boolean renames org.allbinary.animation.caption.CaptionAnimationHelperBase_Package_References."=";
   subtype CaptionAnimationHelperBase_Access_Array_Access is org.allbinary.animation.caption.CaptionAnimationHelperBase_Package_References.CaptionAnimationHelperBase_Access_Array_Access;
   function "=" (Left, Right : CaptionAnimationHelperBase_Access_Array_Access) return Boolean renames org.allbinary.animation.caption.CaptionAnimationHelperBase_Package_References."=";
   subtype CaptionAnimationHelperBase_Access_Array_Access_Array is org.allbinary.animation.caption.CaptionAnimationHelperBase_Package_References.CaptionAnimationHelperBase_Access_Array_Access_Array;
   function "=" (Left, Right : CaptionAnimationHelperBase_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.caption.CaptionAnimationHelperBase_Package_References."=";
   subtype CaptionAnimationHelperBase_Access_Array_Access_Array_Access is org.allbinary.animation.caption.CaptionAnimationHelperBase_Package_References.CaptionAnimationHelperBase_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CaptionAnimationHelperBase_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.caption.CaptionAnimationHelperBase_Package_References."=";
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
   subtype GeographicMapCellHistory_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References.GeographicMapCellHistory_Access;
   function "=" (Left, Right : GeographicMapCellHistory_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References."=";
   subtype GeographicMapCellHistory_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References.GeographicMapCellHistory_Access_Array;
   function "=" (Left, Right : GeographicMapCellHistory_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References."=";
   subtype GeographicMapCellHistory_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References.GeographicMapCellHistory_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellHistory_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References."=";
   subtype GeographicMapCellHistory_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References.GeographicMapCellHistory_Access_Array_Access_Array;
   function "=" (Left, Right : GeographicMapCellHistory_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References."=";
   subtype GeographicMapCellHistory_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References.GeographicMapCellHistory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellHistory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References."=";
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
   subtype GeographicMapCellPositionAreaBase_Access is org.allbinary.game.layer.GeographicMapCellPositionAreaBase_Package_References.GeographicMapCellPositionAreaBase_Access;
   function "=" (Left, Right : GeographicMapCellPositionAreaBase_Access) return Boolean renames org.allbinary.game.layer.GeographicMapCellPositionAreaBase_Package_References."=";
   subtype GeographicMapCellPositionAreaBase_Access_Array is org.allbinary.game.layer.GeographicMapCellPositionAreaBase_Package_References.GeographicMapCellPositionAreaBase_Access_Array;
   function "=" (Left, Right : GeographicMapCellPositionAreaBase_Access_Array) return Boolean renames org.allbinary.game.layer.GeographicMapCellPositionAreaBase_Package_References."=";
   subtype GeographicMapCellPositionAreaBase_Access_Array_Access is org.allbinary.game.layer.GeographicMapCellPositionAreaBase_Package_References.GeographicMapCellPositionAreaBase_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellPositionAreaBase_Access_Array_Access) return Boolean renames org.allbinary.game.layer.GeographicMapCellPositionAreaBase_Package_References."=";
   subtype GeographicMapCellPositionAreaBase_Access_Array_Access_Array is org.allbinary.game.layer.GeographicMapCellPositionAreaBase_Package_References.GeographicMapCellPositionAreaBase_Access_Array_Access_Array;
   function "=" (Left, Right : GeographicMapCellPositionAreaBase_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.GeographicMapCellPositionAreaBase_Package_References."=";
   subtype GeographicMapCellPositionAreaBase_Access_Array_Access_Array_Access is org.allbinary.game.layer.GeographicMapCellPositionAreaBase_Package_References.GeographicMapCellPositionAreaBase_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellPositionAreaBase_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.GeographicMapCellPositionAreaBase_Package_References."=";
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
   subtype RTSLayer2LogHelper_Access is org.allbinary.game.layer.RTSLayer2LogHelper_Package_References.RTSLayer2LogHelper_Access;
   function "=" (Left, Right : RTSLayer2LogHelper_Access) return Boolean renames org.allbinary.game.layer.RTSLayer2LogHelper_Package_References."=";
   subtype RTSLayer2LogHelper_Access_Array is org.allbinary.game.layer.RTSLayer2LogHelper_Package_References.RTSLayer2LogHelper_Access_Array;
   function "=" (Left, Right : RTSLayer2LogHelper_Access_Array) return Boolean renames org.allbinary.game.layer.RTSLayer2LogHelper_Package_References."=";
   subtype RTSLayer2LogHelper_Access_Array_Access is org.allbinary.game.layer.RTSLayer2LogHelper_Package_References.RTSLayer2LogHelper_Access_Array_Access;
   function "=" (Left, Right : RTSLayer2LogHelper_Access_Array_Access) return Boolean renames org.allbinary.game.layer.RTSLayer2LogHelper_Package_References."=";
   subtype RTSLayer2LogHelper_Access_Array_Access_Array is org.allbinary.game.layer.RTSLayer2LogHelper_Package_References.RTSLayer2LogHelper_Access_Array_Access_Array;
   function "=" (Left, Right : RTSLayer2LogHelper_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.RTSLayer2LogHelper_Package_References."=";
   subtype RTSLayer2LogHelper_Access_Array_Access_Array_Access is org.allbinary.game.layer.RTSLayer2LogHelper_Package_References.RTSLayer2LogHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RTSLayer2LogHelper_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.RTSLayer2LogHelper_Package_References."=";
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
   procedure Initialize_Fields (This : in out NullPathFindingLayer'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out NullPathFindingLayer'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return NullPathFindingLayer_Access is
      This : constant NullPathFindingLayer_Access := new NullPathFindingLayer;
   begin
      NullPathFindingLayer_Package.Initialize (This.all);
      return This;
   end Create;


   function getName (This : in out NullPathFindingLayer) return Unbounded_String is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return Null_Unbounded_String;
   end getName;

   --  throws Exception
   function getEndGeographicMapCellPositionList (This : in out NullPathFindingLayer) return BasicArrayList_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getEndGeographicMapCellPositionList;

   function shouldHandleStartSameAsEnd (This : in out NullPathFindingLayer) return Boolean is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return False;
   end shouldHandleStartSameAsEnd;

   function getGeographicMapCellPositionArea (This : in out NullPathFindingLayer) return GeographicMapCellPositionAreaBase_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getGeographicMapCellPositionArea;

   function getHudPaintable (This : in out NullPathFindingLayer) return SelectionHudPaintable_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getHudPaintable;

   --  throws Exception
   procedure handleCost (This : in out NullPathFindingLayer; ownerLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class) is
      ownerLayer : constant PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (ownerLayer_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end handleCost;

   function getParentLayer (This : in out NullPathFindingLayer) return PathFindingLayerInterface_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getParentLayer;

   function getRTSLayer2LogHelper (This : in out NullPathFindingLayer) return RTSLayer2LogHelper_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getRTSLayer2LogHelper;

   --  throws Exception
   procedure setTarget (This : in out NullPathFindingLayer; targetGameLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class) is
      targetGameLayer : constant PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (targetGameLayer_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end setTarget;

   --  throws Exception
   procedure init (This : in out NullPathFindingLayer; geographicMapCellHistory_Param : access GeographicMapCellHistory_Package.GeographicMapCellHistory'Class; geographicMapCellPositionBasicArrayList_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      geographicMapCellHistory : constant GeographicMapCellHistory_Access := GeographicMapCellHistory_Access (geographicMapCellHistory_Param);
      geographicMapCellPositionBasicArrayList : constant BasicArrayList_Access := BasicArrayList_Access (geographicMapCellPositionBasicArrayList_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end init;

   function getMoveOutOfBuildAreaPath (This : in out NullPathFindingLayer; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) return BasicArrayList_Access is
      geographicMapCellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (geographicMapCellPosition_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getMoveOutOfBuildAreaPath;

   --  throws Exception
   procedure setClosestGeographicMapCellHistory (This : in out NullPathFindingLayer; pathsList_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      pathsList : constant BasicArrayList_Access := BasicArrayList_Access (pathsList_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end setClosestGeographicMapCellHistory;

   procedure teleportTo (This : in out NullPathFindingLayer; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) is
      geographicMapCellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (geographicMapCellPosition_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end teleportTo;

   --  throws Exception
   procedure setLoad (This : in out NullPathFindingLayer; resource : Integer) is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end setLoad;

   --  throws Exception
   function getSurroundingGeographicMapCellPositionList (This : in out NullPathFindingLayer) return BasicArrayList_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getSurroundingGeographicMapCellPositionList;

   function isSelected (This : in out NullPathFindingLayer) return Boolean is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return False;
   end isSelected;

   function shouldAddWaypointFromBuilding (This : in out NullPathFindingLayer) return Boolean is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return False;
   end shouldAddWaypointFromBuilding;

   function isShowMoreCaptionStates (This : in out NullPathFindingLayer) return Boolean is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return False;
   end isShowMoreCaptionStates;

   --  throws Exception
   procedure trackTo (This : in out NullPathFindingLayer; reason : Unbounded_String) is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end trackTo;

   --  throws Exception
   procedure trackToDXY (This : in out NullPathFindingLayer; dx : Integer; dy : Integer) is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end trackToDXY;

   --  throws Exception
   function buildingChase (This : in out NullPathFindingLayer; allbinaryLayer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; cellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) return Boolean is
      allbinaryLayer : constant AllBinaryLayer_Access := AllBinaryLayer_Access (allbinaryLayer_Param);
      cellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (cellPosition_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return False;
   end buildingChase;

   function getTrackingEvent (This : in out NullPathFindingLayer) return TrackingEvent_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getTrackingEvent;

   procedure allStop (This : in out NullPathFindingLayer) is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end allStop;

   function isWaypointListEmptyOrOnlyTargets (This : in out NullPathFindingLayer) return Boolean is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return False;
   end isWaypointListEmptyOrOnlyTargets;

   --  throws Exception
   function getCurrentGeographicMapCellPosition (This : in out NullPathFindingLayer) return GeographicMapCellPosition_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getCurrentGeographicMapCellPosition;

   --  throws Exception
   function getTopLeftGeographicMapCellPosition (This : in out NullPathFindingLayer) return GeographicMapCellPosition_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getTopLeftGeographicMapCellPosition;

   function getCaptionAnimationHelper (This : in out NullPathFindingLayer) return CaptionAnimationHelperBase_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getCaptionAnimationHelper;

   function getWaypointBehavior (This : in out NullPathFindingLayer) return WaypointBehaviorBase_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getWaypointBehavior;

   function getWaypointLogHelper (This : in out NullPathFindingLayer) return WaypointLogHelper_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getWaypointLogHelper;

   function getWaypoint2LogHelper (This : in out NullPathFindingLayer) return Waypoint2LogHelper_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getWaypoint2LogHelper;

   function getWaypointRunnableLogHelper (This : in out NullPathFindingLayer) return WaypointRunnableLogHelper_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getWaypointRunnableLogHelper;

   function getGroupInterface (This : in out NullPathFindingLayer) return Group_Access_Array_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getGroupInterface;

   --  throws Exception
   function isDestroyed (This : in out NullPathFindingLayer) return Boolean is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return False;
   end isDestroyed;

   function getSourceId (This : in out NullPathFindingLayer) return Integer is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return 0;
   end getSourceId;

   procedure getMoveOutOfBuildAreaPath (This : in out NullPathFindingLayer; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) is
      Java_Result : constant BasicArrayList_Access := NullPathFindingLayer'Class (This).getMoveOutOfBuildAreaPath (geographicMapCellPosition_Param => geographicMapCellPosition_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getMoveOutOfBuildAreaPath;

   procedure buildingChase (This : in out NullPathFindingLayer; allbinaryLayer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; cellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) is
      Java_Result : constant Boolean := NullPathFindingLayer'Class (This).buildingChase (allbinaryLayer_Param => allbinaryLayer_Param, cellPosition_Param => cellPosition_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end buildingChase;

begin
   null;
   NULL_PATH_FINDING_LAYER := NullPathFindingLayer_Package.Create;

end org.allbinary.game.layer.NullPathFindingLayer_Package;


