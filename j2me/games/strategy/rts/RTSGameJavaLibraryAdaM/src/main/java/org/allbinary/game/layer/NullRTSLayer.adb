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


with org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHud_Package; use org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHud_Package;
with org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHud_Package_References;
with org.allbinary.game.combat.destroy.event.DestroyedEvent_Package; use org.allbinary.game.combat.destroy.event.DestroyedEvent_Package;
with org.allbinary.game.combat.destroy.event.DestroyedEvent_Package_References;
with org.allbinary.game.input.PlayerGameInput_Package; use org.allbinary.game.input.PlayerGameInput_Package;
with org.allbinary.game.input.PlayerGameInput_Package_References;
with org.allbinary.game.input.form.NullRTSFormInputFactory_Package; use org.allbinary.game.input.form.NullRTSFormInputFactory_Package;
with org.allbinary.game.input.form.RTSFormInput_Package; use org.allbinary.game.input.form.RTSFormInput_Package;
with org.allbinary.game.input.form.RTSFormInput_Package_References;
with org.allbinary.game.layer.capital.Capital_Package; use org.allbinary.game.layer.capital.Capital_Package;
with org.allbinary.game.layer.capital.Capital_Package_References;
with org.allbinary.graphics.form.ScrollSelectionForm_Package; use org.allbinary.graphics.form.ScrollSelectionForm_Package;
with org.allbinary.graphics.form.ScrollSelectionForm_Package_References;
with org.allbinary.layer.AllBinaryLayerManager_Package; use org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package_References;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package_References;
with org.allbinary.media.audio.Sound_Package; use org.allbinary.media.audio.Sound_Package;
with org.allbinary.media.audio.Sound_Package_References;
with org.allbinary.game.layer.PlayerOwnedRTSLayers_Package; use org.allbinary.game.layer.PlayerOwnedRTSLayers_Package;
with org.allbinary.game.layer.PlayerOwnedRTSLayers_Package_References;
with org.allbinary.graphics.form.item.ABCustomGaugeItem_Package;
with org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABStack_Package;
with org.allbinary.graphics.form.item.ABStringComponent_Package;
with org.allbinary.logic.ABSystemWrapper_Package;
with org.allbinary.util.ABVector_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.ai.ArtificialIntelligenceInterface_Package;
with org.allbinary.canvas.BaseGameStatistics_Package;
with org.allbinary.game.displayable.canvas.BaseMenuBehavior_Package;
with org.allbinary.graphics.displayable.BaseScalable_Package;
with org.allbinary.input.motion.button.BaseTouchInput_Package;
with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListUtil_Package;
with org.allbinary.game.init.BasicBuildGameInitializerFactory_Package;
with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
with org.allbinary.input.motion.gesture.observer.BasicMotionGesturesHandler_Package;
with org.allbinary.game.input.BuildMenuCompositeInterface_Package;
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
with org.allbinary.game.combat.destroy.event.DestroyedEventListenerInterface_Package;
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
with org.allbinary.game.identification.GroupCommonFactory_Package;
with org.allbinary.game.identification.GroupInterfaceCompositeInterface_Package;
with org.allbinary.game.score.HighScoresFactoryInterface_Package;
with org.allbinary.game.graphics.hud.HudGraphicsPosition_Package;
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
with org.allbinary.game.layer.PathFindingLayerInterface_Package;
with org.allbinary.game.layer.pickup.PickedUpLayerInterface_Package;
with org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactory_Package;
with org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryBase_Package;
with org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package;
with org.allbinary.game.layer.pickup.PickedUpLayerType_Package;
with org.allbinary.game.layer.pickup.PickupBehavior_Package;
with org.allbinary.game.layer.pickup.PickupProcessorInterface_Package;
with org.allbinary.game.input.PlayerGameInputCompositeInterface_Package;
with org.allbinary.game.layer.PlayerOwnedRTSLayers_Package;
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

package body org.allbinary.game.layer.NullRTSLayer_Package is

   package NullRTSFormInputFactory_Package renames Standard.org.allbinary.game.input.form.NullRTSFormInputFactory_Package;
   subtype GameNotificationHud_Access is org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHud_Package_References.GameNotificationHud_Access;
   function "=" (Left, Right : GameNotificationHud_Access) return Boolean renames org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHud_Package_References."=";
   subtype GameNotificationHud_Access_Array is org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHud_Package_References.GameNotificationHud_Access_Array;
   function "=" (Left, Right : GameNotificationHud_Access_Array) return Boolean renames org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHud_Package_References."=";
   subtype GameNotificationHud_Access_Array_Access is org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHud_Package_References.GameNotificationHud_Access_Array_Access;
   function "=" (Left, Right : GameNotificationHud_Access_Array_Access) return Boolean renames org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHud_Package_References."=";
   subtype GameNotificationHud_Access_Array_Access_Array is org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHud_Package_References.GameNotificationHud_Access_Array_Access_Array;
   function "=" (Left, Right : GameNotificationHud_Access_Array_Access_Array) return Boolean renames org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHud_Package_References."=";
   subtype GameNotificationHud_Access_Array_Access_Array_Access is org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHud_Package_References.GameNotificationHud_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameNotificationHud_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHud_Package_References."=";
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
   subtype PlayerGameInput_Access is org.allbinary.game.input.PlayerGameInput_Package_References.PlayerGameInput_Access;
   function "=" (Left, Right : PlayerGameInput_Access) return Boolean renames org.allbinary.game.input.PlayerGameInput_Package_References."=";
   subtype PlayerGameInput_Access_Array is org.allbinary.game.input.PlayerGameInput_Package_References.PlayerGameInput_Access_Array;
   function "=" (Left, Right : PlayerGameInput_Access_Array) return Boolean renames org.allbinary.game.input.PlayerGameInput_Package_References."=";
   subtype PlayerGameInput_Access_Array_Access is org.allbinary.game.input.PlayerGameInput_Package_References.PlayerGameInput_Access_Array_Access;
   function "=" (Left, Right : PlayerGameInput_Access_Array_Access) return Boolean renames org.allbinary.game.input.PlayerGameInput_Package_References."=";
   subtype PlayerGameInput_Access_Array_Access_Array is org.allbinary.game.input.PlayerGameInput_Package_References.PlayerGameInput_Access_Array_Access_Array;
   function "=" (Left, Right : PlayerGameInput_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.PlayerGameInput_Package_References."=";
   subtype PlayerGameInput_Access_Array_Access_Array_Access is org.allbinary.game.input.PlayerGameInput_Package_References.PlayerGameInput_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PlayerGameInput_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.PlayerGameInput_Package_References."=";
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
   subtype Capital_Access is org.allbinary.game.layer.capital.Capital_Package_References.Capital_Access;
   function "=" (Left, Right : Capital_Access) return Boolean renames org.allbinary.game.layer.capital.Capital_Package_References."=";
   subtype Capital_Access_Array is org.allbinary.game.layer.capital.Capital_Package_References.Capital_Access_Array;
   function "=" (Left, Right : Capital_Access_Array) return Boolean renames org.allbinary.game.layer.capital.Capital_Package_References."=";
   subtype Capital_Access_Array_Access is org.allbinary.game.layer.capital.Capital_Package_References.Capital_Access_Array_Access;
   function "=" (Left, Right : Capital_Access_Array_Access) return Boolean renames org.allbinary.game.layer.capital.Capital_Package_References."=";
   subtype Capital_Access_Array_Access_Array is org.allbinary.game.layer.capital.Capital_Package_References.Capital_Access_Array_Access_Array;
   function "=" (Left, Right : Capital_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.capital.Capital_Package_References."=";
   subtype Capital_Access_Array_Access_Array_Access is org.allbinary.game.layer.capital.Capital_Package_References.Capital_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Capital_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.capital.Capital_Package_References."=";
   subtype ScrollSelectionForm_Access is org.allbinary.graphics.form.ScrollSelectionForm_Package_References.ScrollSelectionForm_Access;
   function "=" (Left, Right : ScrollSelectionForm_Access) return Boolean renames org.allbinary.graphics.form.ScrollSelectionForm_Package_References."=";
   subtype ScrollSelectionForm_Access_Array is org.allbinary.graphics.form.ScrollSelectionForm_Package_References.ScrollSelectionForm_Access_Array;
   function "=" (Left, Right : ScrollSelectionForm_Access_Array) return Boolean renames org.allbinary.graphics.form.ScrollSelectionForm_Package_References."=";
   subtype ScrollSelectionForm_Access_Array_Access is org.allbinary.graphics.form.ScrollSelectionForm_Package_References.ScrollSelectionForm_Access_Array_Access;
   function "=" (Left, Right : ScrollSelectionForm_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.ScrollSelectionForm_Package_References."=";
   subtype ScrollSelectionForm_Access_Array_Access_Array is org.allbinary.graphics.form.ScrollSelectionForm_Package_References.ScrollSelectionForm_Access_Array_Access_Array;
   function "=" (Left, Right : ScrollSelectionForm_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.form.ScrollSelectionForm_Package_References."=";
   subtype ScrollSelectionForm_Access_Array_Access_Array_Access is org.allbinary.graphics.form.ScrollSelectionForm_Package_References.ScrollSelectionForm_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ScrollSelectionForm_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.ScrollSelectionForm_Package_References."=";
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
   subtype AllBinaryEventObject_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access;
   function "=" (Left, Right : AllBinaryEventObject_Access) return Boolean renames org.allbinary.logic.util.event.AllBinaryEventObject_Package_References."=";
   subtype AllBinaryEventObject_Access_Array is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array;
   function "=" (Left, Right : AllBinaryEventObject_Access_Array) return Boolean renames org.allbinary.logic.util.event.AllBinaryEventObject_Package_References."=";
   subtype AllBinaryEventObject_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access;
   function "=" (Left, Right : AllBinaryEventObject_Access_Array_Access) return Boolean renames org.allbinary.logic.util.event.AllBinaryEventObject_Package_References."=";
   subtype AllBinaryEventObject_Access_Array_Access_Array is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryEventObject_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.util.event.AllBinaryEventObject_Package_References."=";
   subtype AllBinaryEventObject_Access_Array_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryEventObject_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.util.event.AllBinaryEventObject_Package_References."=";
   subtype Sound_Access is org.allbinary.media.audio.Sound_Package_References.Sound_Access;
   function "=" (Left, Right : Sound_Access) return Boolean renames org.allbinary.media.audio.Sound_Package_References."=";
   subtype Sound_Access_Array is org.allbinary.media.audio.Sound_Package_References.Sound_Access_Array;
   function "=" (Left, Right : Sound_Access_Array) return Boolean renames org.allbinary.media.audio.Sound_Package_References."=";
   subtype Sound_Access_Array_Access is org.allbinary.media.audio.Sound_Package_References.Sound_Access_Array_Access;
   function "=" (Left, Right : Sound_Access_Array_Access) return Boolean renames org.allbinary.media.audio.Sound_Package_References."=";
   subtype Sound_Access_Array_Access_Array is org.allbinary.media.audio.Sound_Package_References.Sound_Access_Array_Access_Array;
   function "=" (Left, Right : Sound_Access_Array_Access_Array) return Boolean renames org.allbinary.media.audio.Sound_Package_References."=";
   subtype Sound_Access_Array_Access_Array_Access is org.allbinary.media.audio.Sound_Package_References.Sound_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Sound_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.audio.Sound_Package_References."=";
   subtype PlayerOwnedRTSLayers_Access is org.allbinary.game.layer.PlayerOwnedRTSLayers_Package_References.PlayerOwnedRTSLayers_Access;
   function "=" (Left, Right : PlayerOwnedRTSLayers_Access) return Boolean renames org.allbinary.game.layer.PlayerOwnedRTSLayers_Package_References."=";
   subtype PlayerOwnedRTSLayers_Access_Array is org.allbinary.game.layer.PlayerOwnedRTSLayers_Package_References.PlayerOwnedRTSLayers_Access_Array;
   function "=" (Left, Right : PlayerOwnedRTSLayers_Access_Array) return Boolean renames org.allbinary.game.layer.PlayerOwnedRTSLayers_Package_References."=";
   subtype PlayerOwnedRTSLayers_Access_Array_Access is org.allbinary.game.layer.PlayerOwnedRTSLayers_Package_References.PlayerOwnedRTSLayers_Access_Array_Access;
   function "=" (Left, Right : PlayerOwnedRTSLayers_Access_Array_Access) return Boolean renames org.allbinary.game.layer.PlayerOwnedRTSLayers_Package_References."=";
   subtype PlayerOwnedRTSLayers_Access_Array_Access_Array is org.allbinary.game.layer.PlayerOwnedRTSLayers_Package_References.PlayerOwnedRTSLayers_Access_Array_Access_Array;
   function "=" (Left, Right : PlayerOwnedRTSLayers_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.PlayerOwnedRTSLayers_Package_References."=";
   subtype PlayerOwnedRTSLayers_Access_Array_Access_Array_Access is org.allbinary.game.layer.PlayerOwnedRTSLayers_Package_References.PlayerOwnedRTSLayers_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PlayerOwnedRTSLayers_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.PlayerOwnedRTSLayers_Package_References."=";
   procedure Initialize_Fields (This : in out NullRTSLayer'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out NullRTSLayer'Class) is
   begin
      NullPathFindingLayer_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return NullRTSLayer_Access is
      This : constant NullRTSLayer_Access := new NullRTSLayer;
   begin
      NullRTSLayer_Package.Initialize (This.all);
      return This;
   end Create;


   function getName (This : in out NullRTSLayer) return Unbounded_String is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return Null_Unbounded_String;
   end getName;

   --  throws Exception
   procedure processInput (This : in out NullRTSLayer; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class) is
      layerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (layerManager_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end processInput;

   procedure initInputProcessors (This : in out NullRTSLayer) is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end initInputProcessors;

   function getGameNotificationHud (This : in out NullRTSLayer) return GameNotificationHud_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getGameNotificationHud;

   function getCurrentScrollSelectionForm (This : in out NullRTSLayer) return ScrollSelectionForm_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getCurrentScrollSelectionForm;

   procedure setCurrentScrollSelectionForm (This : in out NullRTSLayer; currentScrollSelectionForm_Param : access ScrollSelectionForm_Package.ScrollSelectionForm'Class) is
      currentScrollSelectionForm : constant ScrollSelectionForm_Access := ScrollSelectionForm_Access (currentScrollSelectionForm_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end setCurrentScrollSelectionForm;

   function getBuildingScrollSelectionForm (This : in out NullRTSLayer) return ScrollSelectionForm_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getBuildingScrollSelectionForm;

   function getPlayerGameInput (This : in out NullRTSLayer) return PlayerGameInput_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getPlayerGameInput;

   procedure onEvent (This : in out NullRTSLayer; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class) is
      eventObject : constant AllBinaryEventObject_Access := AllBinaryEventObject_Access (eventObject_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end onEvent;

   --  throws Exception
   procedure onDestroyed (This : in out NullRTSLayer; destroyedEvent_Param : access DestroyedEvent_Package.DestroyedEvent'Class) is
      destroyedEvent : constant DestroyedEvent_Access := DestroyedEvent_Access (destroyedEvent_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end onDestroyed;

   --  throws Exception
   procedure processTick (This : in out NullRTSLayer; allBinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class) is
      allBinaryLayerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (allBinaryLayerManager_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end processTick;

   function getCapital (This : in out NullRTSLayer) return Capital_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getCapital;

   function getRTSFormInput (This : in out NullRTSLayer) return RTSFormInput_Access is
   begin
        return NullRTSFormInputFactory_Package.getInstance;
   end getRTSFormInput;

   procedure add (This : in out NullRTSLayer; sound_Param : access Sound_Package.Sound'Class) is
      sound : constant Sound_Access := Sound_Access (sound_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end add;

   function getPlayerOwnedRTSLayers (This : in out NullRTSLayer) return PlayerOwnedRTSLayers_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getPlayerOwnedRTSLayers;

   function implmentsArtificialIntelligenceCompositeInterface (This : in out NullRTSLayer) return Boolean is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return False;
   end implmentsArtificialIntelligenceCompositeInterface;

begin
   null;
   NULL_RTS_LAYER := NullRTSLayer_Package.Create;

end org.allbinary.game.layer.NullRTSLayer_Package;


