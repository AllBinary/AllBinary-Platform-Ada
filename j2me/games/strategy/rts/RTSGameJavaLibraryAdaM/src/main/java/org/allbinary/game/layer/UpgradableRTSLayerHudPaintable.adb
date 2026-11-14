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


with javax.microedition.lcdui.Font_Package; use javax.microedition.lcdui.Font_Package;
with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
with org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package; use org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package;
with org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References;
with org.allbinary.logic.java.character_Id.CharArrayFactory_Package; use org.allbinary.logic.java.character_Id.CharArrayFactory_Package;
with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package; use org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
with org.allbinary.graphics.font.MyFontProcessor_Package; use org.allbinary.graphics.font.MyFontProcessor_Package;
with org.allbinary.input.motion.button.CommonButtons_Package; use org.allbinary.input.motion.button.CommonButtons_Package;
with org.allbinary.game.layer.RTSLayerCompositePaintable_Package; use org.allbinary.game.layer.RTSLayerCompositePaintable_Package;
with org.allbinary.game.layer.RTSLayerCompositePaintable_Package_References;
with org.allbinary.game.layer.UpgradableWideRTSLayerPaintable_Package; use org.allbinary.game.layer.UpgradableWideRTSLayerPaintable_Package;
with org.allbinary.game.layer.RTSLayer_Package; use org.allbinary.game.layer.RTSLayer_Package;
with org.allbinary.game.layer.RTSLayer_Package_References;
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
with org.allbinary.util.BasicArrayList_Package;
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
with org.allbinary.game.identification.GroupCommonFactory_Package;
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
with org.allbinary.logic.communication.log.LogUtil_Package;
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
with org.allbinary.game.part.PartInterface_Package;
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
with org.allbinary.game.layer.RTSLayerCompositePaintable_Package;
with org.allbinary.game.layer.RTSLayerUtil_Package;
with org.allbinary.game.layer.RTSPlayerLayerInterface_Package;
with org.allbinary.graphics.Rectangle_Package;
with org.allbinary.math.RectangleCollisionUtil_Package;
with org.allbinary.game.multiplayer.layer.RemoteInfo_Package;
with org.allbinary.game.resource.ResourceLoadingLevel_Package;
with org.allbinary.animation.RotationAnimation_Package;
with org.allbinary.graphics.displayable.ScalableListener_Package;
with org.allbinary.media.ScaleProperties_Package;
with org.allbinary.graphics.ScreenCapture_Package;
with org.allbinary.game.combat.weapon.SimpleWeaponProperties_Package;
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
with org.allbinary.game.layer.UpgradableWideRTSLayerPaintable_Package;
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
with org.allbinary.game.combat.weapon.WeaponProperties_Package;

package body org.allbinary.game.layer.UpgradableRTSLayerHudPaintable_Package is

   package Font_Package renames Standard.javax.microedition.lcdui.Font_Package;
   package CharArrayFactory_Package renames Standard.org.allbinary.logic.java.character_Id.CharArrayFactory_Package;
   package DisplayInfoSingleton_Package renames Standard.org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
   package MyFontProcessor_Package renames Standard.org.allbinary.graphics.font.MyFontProcessor_Package;
   package CommonButtons_Package renames Standard.org.allbinary.input.motion.button.CommonButtons_Package;
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
   subtype RTSLayerCompositePaintable_Access is org.allbinary.game.layer.RTSLayerCompositePaintable_Package_References.RTSLayerCompositePaintable_Access;
   function "=" (Left, Right : RTSLayerCompositePaintable_Access) return Boolean renames org.allbinary.game.layer.RTSLayerCompositePaintable_Package_References."=";
   subtype RTSLayerCompositePaintable_Access_Array is org.allbinary.game.layer.RTSLayerCompositePaintable_Package_References.RTSLayerCompositePaintable_Access_Array;
   function "=" (Left, Right : RTSLayerCompositePaintable_Access_Array) return Boolean renames org.allbinary.game.layer.RTSLayerCompositePaintable_Package_References."=";
   subtype RTSLayerCompositePaintable_Access_Array_Access is org.allbinary.game.layer.RTSLayerCompositePaintable_Package_References.RTSLayerCompositePaintable_Access_Array_Access;
   function "=" (Left, Right : RTSLayerCompositePaintable_Access_Array_Access) return Boolean renames org.allbinary.game.layer.RTSLayerCompositePaintable_Package_References."=";
   subtype RTSLayerCompositePaintable_Access_Array_Access_Array is org.allbinary.game.layer.RTSLayerCompositePaintable_Package_References.RTSLayerCompositePaintable_Access_Array_Access_Array;
   function "=" (Left, Right : RTSLayerCompositePaintable_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.RTSLayerCompositePaintable_Package_References."=";
   subtype RTSLayerCompositePaintable_Access_Array_Access_Array_Access is org.allbinary.game.layer.RTSLayerCompositePaintable_Package_References.RTSLayerCompositePaintable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RTSLayerCompositePaintable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.RTSLayerCompositePaintable_Package_References."=";
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
   procedure Initialize_Fields (This : in out UpgradableRTSLayerHudPaintable'Class) is
   begin
      null;
      This.PERCENT := To_Unbounded_String ("%");
      This.rtsLayer := CollidableDestroyableDamageableLayer_Package.getNullInstance;
      This.costY := 0;
      This.costY1 := 0;
      This.percentCompleteX2 := 0;
      This.rtsLayerCompositePaintableLateInit := null;
      This.charHeight := 0;
      This.charWidth := 0;
      This.percentComplete := 0;
      This.percentCompleteX := 0;
      This.percentCompleteArray := CharArrayFactory_Package.getInstance.getZeroCharArray;
      This.currentTotalDigits := 0;
   end Initialize_Fields;


   function getInstance return UpgradableRTSLayerHudPaintable_Access is
   begin
        return UpgradableRTSLayerHudPaintable_Package.instance;
   end getInstance;

   procedure Initialize (This : in out UpgradableRTSLayerHudPaintable'Class) is
   begin
      SelectionHudPaintable_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return UpgradableRTSLayerHudPaintable_Access is
      This : constant UpgradableRTSLayerHudPaintable_Access := new UpgradableRTSLayerHudPaintable;
   begin
      UpgradableRTSLayerHudPaintable_Package.Initialize (This.all);
      return This;
   end Create;

   procedure updateMeasurement (This : in out UpgradableRTSLayerHudPaintable; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
      font : Font_Access;
   begin
        SelectionHudPaintable_Package.SelectionHudPaintable (This).updateMeasurement (graphics);
        font := graphics.getFont;
        This.charHeight := font.getHeight;
        This.charWidth := MyFontProcessor_Package.defaultCharWidth (font);
   end updateMeasurement;

   procedure update (This : in out UpgradableRTSLayerHudPaintable) is
      commonButtons : CommonButtons_Access;
      displayInfoSingleton : DisplayInfoSingleton_Access;
   begin
        SelectionHudPaintable_Package.SelectionHudPaintable (This).update;
        commonButtons := CommonButtons_Package.getInstance;
        This.costY := ((This.y) + (commonButtons.STANDARD_BUTTON_SIZE));
        This.costY1 := (((This.y) + (commonButtons.STANDARD_BUTTON_SIZE)) - (This.charHeight));
        This.percentCompleteX2 := ((This.imageX) + (commonButtons.STANDARD_BUTTON_SIZE)) - (This.charWidth);
        displayInfoSingleton := DisplayInfoSingleton_Package.getInstance;
        if (displayInfoSingleton.getLastWidth) > (320) then
            This.rtsLayerCompositePaintableLateInit := RTSLayerCompositePaintable_Access (UpgradableWideRTSLayerPaintable_Package.Create (UpgradableRTSLayerHudPaintable_Access'(This'Unchecked_Access)));
        else
            This.rtsLayerCompositePaintableLateInit := RTSLayerCompositePaintable_Package.Create (UpgradableRTSLayerHudPaintable_Access'(This'Unchecked_Access));
        end if;
   end update;

   procedure updateSelectionInfo (This : in out UpgradableRTSLayerHudPaintable) is
      rtsLayer : RTSLayer_Access;
   begin
        rtsLayer := RTSLayer_Access (UpgradableRTSLayerHudPaintable'Class (This).getRtsLayer);
        This.rtsLayerCompositePaintableLateInit.update (rtsLayer);
        UpgradableRTSLayerHudPaintable'Class (This).setAnimationInterface (rtsLayer.getVerticleBuildAnimationInterface);
        UpgradableRTSLayerHudPaintable'Class (This).setName (rtsLayer.getName);
   end updateSelectionInfo;

   procedure updateInfo (This : in out UpgradableRTSLayerHudPaintable) is
      rtsLayer : RTSLayer_Access;
   begin
        rtsLayer := RTSLayer_Access (UpgradableRTSLayerHudPaintable'Class (This).getRtsLayer);
        This.percentComplete := rtsLayer.getPercentComplete;
        if (This.percentComplete) < (10) then
            This.percentCompleteX := 32;
        elsif (This.percentComplete) < (100) then
            This.percentCompleteX := 24;
        else
            This.percentCompleteX := 16;
        end if;
        This.percentCompleteArray := UpgradableRTSLayerHudPaintable'Class (This).getPrimitiveLongUtil.getCharArray (This.percentComplete);
        This.currentTotalDigits := UpgradableRTSLayerHudPaintable'Class (This).getPrimitiveLongUtil.getCurrentTotalDigits;
   end updateInfo;

   procedure paint (This : in out UpgradableRTSLayerHudPaintable; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        SelectionHudPaintable_Package.SelectionHudPaintable (This).paint (graphics);
        This.rtsLayerCompositePaintableLateInit.paint (graphics);
        graphics.drawChars (This.percentCompleteArray, 0, This.currentTotalDigits, (This.imageX) + (This.percentCompleteX), This.costY, 0);
        graphics.drawString (This.PERCENT, This.percentCompleteX2, This.costY, 0);
        UpgradableRTSLayerHudPaintable'Class (This).getAnimationInterface.paintXY (graphics, This.imageX, This.y);
   end paint;

   procedure setRtsLayer (This : in out UpgradableRTSLayerHudPaintable; rtsLayer_Param : access RTSLayer_Package.RTSLayer'Class) is
      rtsLayer : constant RTSLayer_Access := RTSLayer_Access (rtsLayer_Param);
   begin
        This.rtsLayer := CollidableDestroyableDamageableLayer_Access (rtsLayer);
   end setRtsLayer;

   function getRtsLayer (This : in out UpgradableRTSLayerHudPaintable) return CollidableDestroyableDamageableLayer_Access is
   begin
        return This.rtsLayer;
   end getRtsLayer;

begin
   null;
   instance := UpgradableRTSLayerHudPaintable_Package.Create;

end org.allbinary.game.layer.UpgradableRTSLayerHudPaintable_Package;


