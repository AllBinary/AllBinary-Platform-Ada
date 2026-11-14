--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
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
with org.allbinary.game.collision.CollidableNeverCollideBehaviorFactory_Package; use org.allbinary.game.collision.CollidableNeverCollideBehaviorFactory_Package;
with org.allbinary.game.combat.damage.DamageableInterface_Package; use org.allbinary.game.combat.damage.DamageableInterface_Package;
with org.allbinary.game.combat.destroy.DestroyableInterface_Package; use org.allbinary.game.combat.destroy.DestroyableInterface_Package;
with org.allbinary.game.combat.destroy.event.DestroyedEvent_Package; use org.allbinary.game.combat.destroy.event.DestroyedEvent_Package;
with org.allbinary.game.combat.destroy.event.DestroyedEvent_Package_References;
with org.allbinary.game.identification.BasicGroupFactory_Package; use org.allbinary.game.identification.BasicGroupFactory_Package;
with org.allbinary.game.identification.Group_Package; use org.allbinary.game.identification.Group_Package;
with org.allbinary.game.identification.Group_Package_References;
with org.allbinary.game.input.event.GameKeyEvent_Package; use org.allbinary.game.input.event.GameKeyEvent_Package;
with org.allbinary.game.input.event.GameKeyEvent_Package_References;
with org.allbinary.game.layer.AllBinaryGameLayerManager_Package; use org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
with org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References;
with org.allbinary.game.layer.CollidableCompositeLayer_Package; use org.allbinary.game.layer.CollidableCompositeLayer_Package;
with org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package; use org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package;
with org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package_References;
with org.allbinary.game.layer.pickup.PickupBehavior_Package; use org.allbinary.game.layer.pickup.PickupBehavior_Package;
with org.allbinary.game.layer.pickup.PickupBehavior_Package_References;
with org.allbinary.game.layer.pickup.PickupCompositeInterface_Package; use org.allbinary.game.layer.pickup.PickupCompositeInterface_Package;
with org.allbinary.game.part.PartInterface_Package; use org.allbinary.game.part.PartInterface_Package;
with org.allbinary.game.part.PartInterface_Package_References;
with org.allbinary.game.part.PartInterfaceUtil_Package; use org.allbinary.game.part.PartInterfaceUtil_Package;
with org.allbinary.graphics.Rectangle_Package; use org.allbinary.graphics.Rectangle_Package;
with org.allbinary.graphics.Rectangle_Package_References;
with org.allbinary.graphics.RectangleFactory_Package; use org.allbinary.graphics.RectangleFactory_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package; use org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package_References;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringMaker_Package_References;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.math.PositionStrings_Package; use org.allbinary.math.PositionStrings_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.view.ViewPositionBase_Package; use org.allbinary.view.ViewPositionBase_Package;
with org.allbinary.view.ViewPositionBase_Package_References;
with org.allbinary.graphics.form.ABCustomForm_Package;
with org.allbinary.graphics.form.item.ABCustomGaugeItem_Package;
with org.allbinary.graphics.form.item.ABCustomItem_Package;
with org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABStack_Package;
with org.allbinary.graphics.form.item.ABStringComponent_Package;
with org.allbinary.logic.ABSystemWrapper_Package;
with org.allbinary.graphics.form.item.ABTextFieldItem_Package;
with org.allbinary.graphics.form.item.ABTextItem_Package;
with org.allbinary.util.ABVector_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.business.advertisement.AdConfiguration_Package;
with org.allbinary.business.advertisement.AdvertisementProcessorInterface_Package;
with org.allbinary.business.advertisement.Advertisements_Package;
with javax.microedition.lcdui.Alert_Package;
with javax.microedition.lcdui.AlertType_Package;
with org.microemu.device.ui.AlertUI_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;
with org.allbinary.game.layer.AllBinaryGameLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.midlet.AllBinaryMidlet_Package;
with org.allbinary.input.AllBinarySensor_Package;
with org.allbinary.animation.Animation_Package;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.ai.ArtificialIntelligenceInterface_Package;
with javax.microedition.lcdui.BaseDisplay_Package;
with org.allbinary.canvas.BaseGameStatistics_Package;
with org.allbinary.game.displayable.canvas.BaseMenuBehavior_Package;
with org.allbinary.graphics.displayable.BaseScalable_Package;
with org.allbinary.input.motion.button.BaseTouchInput_Package;
with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListUtil_Package;
with org.allbinary.game.init.BasicBuildGameInitializerFactory_Package;
with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.graphics.color.BasicColorSetUtil_Package;
with org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
with org.allbinary.game.displayable.canvas.BasicMenuInputProcessor_Package;
with org.allbinary.input.motion.gesture.observer.BasicMotionGesturesHandler_Package;
with javax.microedition.lcdui.Canvas_Package;
with org.allbinary.graphics.displayable.CanvasStrings_Package;
with org.microemu.device.ui.CanvasUI_Package;
with org.allbinary.logic.java.character_Id.CharacterSet_Package;
with javax.microedition.lcdui.ChoiceGroup_Package;
with javax.microedition.lcdui.ChoiceItem_Package;
with org.allbinary.game.collision.CollidableBaseBehavior_Package;
with org.allbinary.game.collision.CollidableBaseBehaviorFactory_Package;
with org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package;
with org.allbinary.game.collision.CollidableNeverCollideBehavior_Package;
with org.allbinary.game.collision.CollisionProcessor_Package;
with org.allbinary.game.collision.CollisionType_Package;
with org.allbinary.game.paint.ColorFillBasePaintable_Package;
with javax.microedition.lcdui.Command_Package;
with javax.microedition.lcdui.CommandListener_Package;
with org.microemu.device.ui.CommandUI_Package;
with org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.game.part.CountedLayerInterfaceFactoryPart_Package;
with org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactory_Package;
with org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactoryInterface_Package;
with org.allbinary.graphics.form.item.CustomCustomItem_Package;
with org.allbinary.graphics.form.CustomDisplayable_Package;
with org.allbinary.graphics.form.CustomScreen_Package;
with org.allbinary.graphics.form.item.CustomTextBox_Package;
with org.allbinary.game.displayable.canvas.DemoGameBehavior_Package;
with org.allbinary.game.displayable.canvas.DemoPaintableInterface_Package;
with org.microemu.device.Device_Package;
with org.microemu.device.DeviceDisplay_Package;
with org.allbinary.direction.Direction_Package;
with javax.microedition.lcdui.Display_Package;
with javax.microedition.lcdui.DisplayAccessor_Package;
with org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package;
with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
with javax.microedition.lcdui.Displayable_Package;
with org.microemu.device.ui.DisplayableUI_Package;
with org.allbinary.game.input.event.DownGameKeyEventHandler_Package;
with org.allbinary.game.input.event.DownGameKeyEventHandlerBase_Package;
with org.allbinary.game.displayable.canvas.EndGameInfo_Package;
with javax.microedition.lcdui.Event_Package;
with org.microemu.device.ui.EventDispatcher_Package;
with org.allbinary.logic.util.event.EventListenerInterface_Package;
with org.allbinary.logic.util.event.EventStrings_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.game.configuration.feature.Feature_Package;
with javax.microedition.lcdui.Font_Package;
with org.microemu.device.FontManager_Package;
with javax.microedition.lcdui.Form_Package;
with org.allbinary.graphics.form.FormType_Package;
with org.microemu.device.ui.FormUI_Package;
with org.allbinary.game.displayable.canvas.FormUtil_Package;
with javax.microedition.khronos.opengles.GL_Package;
with org.allbinary.graphics.GPoint_Package;
with org.allbinary.game.GameAdState_Package;
with org.allbinary.business.advertisement.GameAdStateBase_Package;
with org.allbinary.business.advertisement.GameAdStateFactory_Package;
with org.allbinary.game.displayable.canvas.GameCanvasPauseRunnable_Package;
with org.allbinary.game.displayable.canvas.GameCanvasRunnable_Package;
with org.allbinary.game.displayable.canvas.GameCommandCanvas_Package;
with org.allbinary.game.GameInfo_Package;
with org.allbinary.game.GameInfoData_Package;
with org.allbinary.game.init.GameInitializationInterface_Package;
with org.allbinary.game.input.GameInput_Package;
with org.allbinary.game.input.GameInputStrings_Package;
with org.allbinary.game.input.GameKey_Package;
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
with javax.microedition.lcdui.Gauge_Package;
with org.allbinary.logic.system.os.GenericOperatingSystem_Package;
with org.allbinary.game.score.HighScore_Package;
with org.allbinary.game.score.displayable.HighScoreTextBox_Package;
with org.allbinary.game.score.displayable.HighScoreUtil_Package;
with org.allbinary.game.score.HighScores_Package;
with org.allbinary.game.score.HighScoresFactoryInterface_Package;
with org.allbinary.game.score.HighScoresHelperBaseInterface_Package;
with org.allbinary.game.score.HighScoresPaintable_Package;
with org.allbinary.game.score.HighScoresResultsListener_Package;
with org.allbinary.game.layer.pickup.IconLayer_Package;
with javax.microedition.lcdui.Image_Package;
with javax.microedition.lcdui.ImageStringItem_Package;
with org.allbinary.graphics.paint.InitUpdatePaintable_Package;
with org.allbinary.game.input.Input_Package;
with org.allbinary.game.input.InputFactory_Package;
with org.allbinary.game.input.mapping.InputMapping_Package;
with org.microemu.device.InputMethod_Package;
with org.microemu.device.InputMethodEvent_Package;
with org.microemu.device.InputMethodListener_Package;
with org.allbinary.game.input.InputProcessor_Package;
with org.allbinary.game.input.mapping.InputToGameKeyMapping_Package;
with org.allbinary.game.IntermissionEnableListenerInterface_Package;
with org.allbinary.game.IntermissionInterface_Package;
with javax.microedition.lcdui.Item_Package;
with javax.microedition.lcdui.ItemCommandListener_Package;
with org.allbinary.graphics.form.ItemPaintable_Package;
with org.allbinary.graphics.form.ItemPaintableFactory_Package;
with javax.microedition.lcdui.ItemStateListener_Package;
with org.allbinary.layer.Layer_Package;
with org.allbinary.game.collision.LayerCollisionUtil_Package;
with org.allbinary.layer.LayerManager_Package;
with org.allbinary.layer.event.LayerManagerEvent_Package;
with org.allbinary.layer.event.LayerManagerEventHandler_Package;
with org.allbinary.layer.event.LayerManagerEventListener_Package;
with org.allbinary.layer.LayerManagerLoggingBase_Package;
with org.allbinary.layer.LayerProcessor_Package;
with javax.microedition.lcdui.List_Package;
with org.microemu.device.ui.ListUI_Package;
with org.allbinary.game.input.LocalPlayerInputIdFactory_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package;
with javax.microedition.midlet.MIDlet_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package;
with org.allbinary.input.motion.gesture.MotionGestureInput_Package;
with org.microemu.device.MutableImage_Package;
with org.allbinary.graphics.displayable.MyCanvas_Package;
with org.allbinary.graphics.font.MyFontProcessor_Package;
with org.allbinary.game.displayable.canvas.MyFormUtil_Package;
with org.allbinary.game.rand.MyRandomFactory_Package;
with org.allbinary.layer.NamedInterface_Package;
with org.allbinary.graphics.opengles.OpenGLFeature_Package;
with org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package;
with org.microemu.device.ui.PaintEvent_Package;
with org.allbinary.graphics.paint.Paintable_Package;
with org.allbinary.graphics.form.PaintableForm_Package;
with org.allbinary.game.layer.pickup.PickedUpLayerInterface_Package;
with org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactory_Package;
with org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryBase_Package;
with org.allbinary.game.layer.pickup.PickedUpLayerType_Package;
with org.allbinary.game.layer.pickup.PickupBehaviorInterface_Package;
with org.allbinary.game.layer.pickup.PickupProcessorInterface_Package;
with javax.microedition.media.Player_Package;
with org.allbinary.game.input.PlayerGameInput_Package;
with org.allbinary.game.input.PlayerGameInputCompositeInterface_Package;
with javax.microedition.media.PlayerListener_Package;
with org.allbinary.media.audio.PlayerQueue_Package;
with org.allbinary.game.PlayerType_Package;
with org.microemu.device.ui.PointerEvent_Package;
with org.allbinary.game.input.event.PressGameKeyEventHandler_Package;
with org.allbinary.logic.math.PrimitiveLongSingleton_Package;
with org.allbinary.logic.math.PrimitiveLongUtil_Package;
with org.allbinary.thread.PriorityRunnable_Package;
with org.allbinary.canvas.Processor_Package;
with org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package;
with org.allbinary.graphics.canvas.transition.progress.ProgressEndListener_Package;
with org.allbinary.math.RectangleCollisionUtil_Package;
with org.allbinary.game.displayable.RepaintBehavior_Package;
with org.allbinary.game.resource.ResourceLoadingLevel_Package;
with org.allbinary.canvas.RunnableCanvas_Package;
with org.allbinary.graphics.displayable.ScalableListener_Package;
with javax.microedition.lcdui.Screen_Package;
with org.allbinary.graphics.ScreenCapture_Package;
with org.allbinary.graphics.form.ScrollSelectionForm_Package;
with org.allbinary.input.gyro.SensorGameUpdateProcessor_Package;
with org.allbinary.logic.system.SoftwareInformation_Package;
with org.allbinary.media.audio.Sound_Package;
with org.allbinary.logic.StdUtil_Package;
with javax.microedition.lcdui.StringComponent_Package;
with org.allbinary.thread.SynchObject_Package;
with javax.microedition.lcdui.TextBox_Package;
with org.microemu.device.ui.TextBoxUI_Package;
with javax.microedition.lcdui.TextField_Package;
with org.allbinary.thread.ThreadObjectUtil_Package;
with javax.microedition.lcdui.Ticker_Package;
with org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.time.TimeStampUtil_Package;
with org.allbinary.input.motion.button.TouchButtonFactory_Package;
with org.allbinary.game.configuration.feature.TouchFeature_Package;
with org.allbinary.game.configuration.feature.TouchFeatureFactory_Package;
with org.allbinary.input.TouchJ2ME_Package;
with org.allbinary.TsUtil_Package;
with org.microemu.device.ui.UIFactory_Package;
with org.allbinary.game.input.event.UpGameKeyEventHandler_Package;
with org.allbinary.game.input.event.UpGameKeyEventHandlerBase_Package;
with org.allbinary.view.event.ViewPositionEvent_Package;
with org.allbinary.input.event.VirtualKeyboardEvent_Package;
with org.allbinary.input.event.VirtualKeyboardEventHandler_Package;
with org.allbinary.logic.util.visitor.Visitor_Package;
with org.allbinary.game.layer.pickup.PickupBehavior_Package_References;

package body org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package is

   package CollidableNeverCollideBehaviorFactory_Package renames Standard.org.allbinary.game.collision.CollidableNeverCollideBehaviorFactory_Package;
   package BasicGroupFactory_Package renames Standard.org.allbinary.game.identification.BasicGroupFactory_Package;
   package PartInterfaceUtil_Package renames Standard.org.allbinary.game.part.PartInterfaceUtil_Package;
   package RectangleFactory_Package renames Standard.org.allbinary.graphics.RectangleFactory_Package;
   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package PositionStrings_Package renames Standard.org.allbinary.math.PositionStrings_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
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
   subtype GameKeyEvent_Access is org.allbinary.game.input.event.GameKeyEvent_Package_References.GameKeyEvent_Access;
   function "=" (Left, Right : GameKeyEvent_Access) return Boolean renames org.allbinary.game.input.event.GameKeyEvent_Package_References."=";
   subtype GameKeyEvent_Access_Array is org.allbinary.game.input.event.GameKeyEvent_Package_References.GameKeyEvent_Access_Array;
   function "=" (Left, Right : GameKeyEvent_Access_Array) return Boolean renames org.allbinary.game.input.event.GameKeyEvent_Package_References."=";
   subtype GameKeyEvent_Access_Array_Access is org.allbinary.game.input.event.GameKeyEvent_Package_References.GameKeyEvent_Access_Array_Access;
   function "=" (Left, Right : GameKeyEvent_Access_Array_Access) return Boolean renames org.allbinary.game.input.event.GameKeyEvent_Package_References."=";
   subtype GameKeyEvent_Access_Array_Access_Array is org.allbinary.game.input.event.GameKeyEvent_Package_References.GameKeyEvent_Access_Array_Access_Array;
   function "=" (Left, Right : GameKeyEvent_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.event.GameKeyEvent_Package_References."=";
   subtype GameKeyEvent_Access_Array_Access_Array_Access is org.allbinary.game.input.event.GameKeyEvent_Package_References.GameKeyEvent_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameKeyEvent_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.event.GameKeyEvent_Package_References."=";
   subtype AllBinaryGameLayerManager_Access is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access;
   function "=" (Left, Right : AllBinaryGameLayerManager_Access) return Boolean renames org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References."=";
   subtype AllBinaryGameLayerManager_Access_Array is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access_Array;
   function "=" (Left, Right : AllBinaryGameLayerManager_Access_Array) return Boolean renames org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References."=";
   subtype AllBinaryGameLayerManager_Access_Array_Access is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access_Array_Access;
   function "=" (Left, Right : AllBinaryGameLayerManager_Access_Array_Access) return Boolean renames org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References."=";
   subtype AllBinaryGameLayerManager_Access_Array_Access_Array is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryGameLayerManager_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References."=";
   subtype AllBinaryGameLayerManager_Access_Array_Access_Array_Access is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryGameLayerManager_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References."=";
   subtype PickedUpLayerInterfaceFactoryInterface_Access is org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package_References.PickedUpLayerInterfaceFactoryInterface_Access;
   function "=" (Left, Right : PickedUpLayerInterfaceFactoryInterface_Access) return Boolean renames org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package_References."=";
   subtype PickedUpLayerInterfaceFactoryInterface_Access_Array is org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package_References.PickedUpLayerInterfaceFactoryInterface_Access_Array;
   function "=" (Left, Right : PickedUpLayerInterfaceFactoryInterface_Access_Array) return Boolean renames org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package_References."=";
   subtype PickedUpLayerInterfaceFactoryInterface_Access_Array_Access is org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package_References.PickedUpLayerInterfaceFactoryInterface_Access_Array_Access;
   function "=" (Left, Right : PickedUpLayerInterfaceFactoryInterface_Access_Array_Access) return Boolean renames org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package_References."=";
   subtype PickedUpLayerInterfaceFactoryInterface_Access_Array_Access_Array is org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package_References.PickedUpLayerInterfaceFactoryInterface_Access_Array_Access_Array;
   function "=" (Left, Right : PickedUpLayerInterfaceFactoryInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package_References."=";
   subtype PickedUpLayerInterfaceFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package_References.PickedUpLayerInterfaceFactoryInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PickedUpLayerInterfaceFactoryInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package_References."=";
   subtype PickupBehavior_Access is org.allbinary.game.layer.pickup.PickupBehavior_Package_References.PickupBehavior_Access;
   function "=" (Left, Right : PickupBehavior_Access) return Boolean renames org.allbinary.game.layer.pickup.PickupBehavior_Package_References."=";
   subtype PickupBehavior_Access_Array is org.allbinary.game.layer.pickup.PickupBehavior_Package_References.PickupBehavior_Access_Array;
   function "=" (Left, Right : PickupBehavior_Access_Array) return Boolean renames org.allbinary.game.layer.pickup.PickupBehavior_Package_References."=";
   subtype PickupBehavior_Access_Array_Access is org.allbinary.game.layer.pickup.PickupBehavior_Package_References.PickupBehavior_Access_Array_Access;
   function "=" (Left, Right : PickupBehavior_Access_Array_Access) return Boolean renames org.allbinary.game.layer.pickup.PickupBehavior_Package_References."=";
   subtype PickupBehavior_Access_Array_Access_Array is org.allbinary.game.layer.pickup.PickupBehavior_Package_References.PickupBehavior_Access_Array_Access_Array;
   function "=" (Left, Right : PickupBehavior_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.pickup.PickupBehavior_Package_References."=";
   subtype PickupBehavior_Access_Array_Access_Array_Access is org.allbinary.game.layer.pickup.PickupBehavior_Package_References.PickupBehavior_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PickupBehavior_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.pickup.PickupBehavior_Package_References."=";
   subtype PartInterface_Access is org.allbinary.game.part.PartInterface_Package_References.PartInterface_Access;
   function "=" (Left, Right : PartInterface_Access) return Boolean renames org.allbinary.game.part.PartInterface_Package_References."=";
   subtype PartInterface_Access_Array is org.allbinary.game.part.PartInterface_Package_References.PartInterface_Access_Array;
   function "=" (Left, Right : PartInterface_Access_Array) return Boolean renames org.allbinary.game.part.PartInterface_Package_References."=";
   subtype PartInterface_Access_Array_Access is org.allbinary.game.part.PartInterface_Package_References.PartInterface_Access_Array_Access;
   function "=" (Left, Right : PartInterface_Access_Array_Access) return Boolean renames org.allbinary.game.part.PartInterface_Package_References."=";
   subtype PartInterface_Access_Array_Access_Array is org.allbinary.game.part.PartInterface_Package_References.PartInterface_Access_Array_Access_Array;
   function "=" (Left, Right : PartInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.part.PartInterface_Package_References."=";
   subtype PartInterface_Access_Array_Access_Array_Access is org.allbinary.game.part.PartInterface_Package_References.PartInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PartInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.part.PartInterface_Package_References."=";
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
   subtype StringMaker_Access is org.allbinary.logic.string_Id.StringMaker_Package_References.StringMaker_Access;
   function "=" (Left, Right : StringMaker_Access) return Boolean renames org.allbinary.logic.string_Id.StringMaker_Package_References."=";
   subtype StringMaker_Access_Array is org.allbinary.logic.string_Id.StringMaker_Package_References.StringMaker_Access_Array;
   function "=" (Left, Right : StringMaker_Access_Array) return Boolean renames org.allbinary.logic.string_Id.StringMaker_Package_References."=";
   subtype StringMaker_Access_Array_Access is org.allbinary.logic.string_Id.StringMaker_Package_References.StringMaker_Access_Array_Access;
   function "=" (Left, Right : StringMaker_Access_Array_Access) return Boolean renames org.allbinary.logic.string_Id.StringMaker_Package_References."=";
   subtype StringMaker_Access_Array_Access_Array is org.allbinary.logic.string_Id.StringMaker_Package_References.StringMaker_Access_Array_Access_Array;
   function "=" (Left, Right : StringMaker_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.string_Id.StringMaker_Package_References."=";
   subtype StringMaker_Access_Array_Access_Array_Access is org.allbinary.logic.string_Id.StringMaker_Package_References.StringMaker_Access_Array_Access_Array_Access;
   function "=" (Left, Right : StringMaker_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.string_Id.StringMaker_Package_References."=";
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
   procedure Initialize_Fields (This : in out CollidableDestroyableDamageableLayer'Class) is
   begin
      null;
      
      This.readyForExplosion_Case := False;
      
      
      This.initX := 0;
      This.initY := 0;
      This.initZ := 0;
      This.partInterfaceArrayP := PartInterfaceUtil_Package.getZeroArray;
      
      This.allBinaryGameLayerManagerP := AllBinaryGameLayerManager_Package.getNullInstance;
      This.isDraggable := False;
      This.isDragged := False;
      This.isDropped := False;
   end Initialize_Fields;


   function getNullInstance return CollidableDestroyableDamageableLayer_Access is
   begin
        if (Java_Object_Access (CollidableDestroyableDamageableLayer_Package.NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER)) = (Java_Object_Access (NullUtil_Package.getInstance.NULL_OBJECT)) then
            CollidableDestroyableDamageableLayer_Package.NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER := Java_Object_Access (CollidableDestroyableDamageableLayer_Package.Create (BasicGroupFactory_Package.getInstance.NONE_ARRAY, StringUtil_Package.getInstance.EMPTY_STRING, RectangleFactory_Package.SINGLETON, ViewPositionBase_Package.NULL_VIEW_POSITION));
        end if;
        return CollidableDestroyableDamageableLayer_Access (CollidableDestroyableDamageableLayer_Package.NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER);
   end getNullInstance;

   procedure Initialize (This : in out CollidableDestroyableDamageableLayer'Class; groupInterface : Group_Access_Array_Access; name : Unbounded_String; layerInfo_Param : access Rectangle_Package.Rectangle'Class; viewPosition_Param : access ViewPositionBase_Package.ViewPositionBase'Class) is
      layerInfo : constant Rectangle_Access := Rectangle_Access (layerInfo_Param);
      viewPosition : constant ViewPositionBase_Access := ViewPositionBase_Access (viewPosition_Param);
   begin
        CollidableCompositeLayer_Package.Initialize (This, name, layerInfo, viewPosition, CollidableNeverCollideBehaviorFactory_Package.getInstance);
        Initialize_Fields (This);
        This.initWidth := layerInfo.getWidth;
        This.initHeight := layerInfo.getHeight;
        This.groupInterface := groupInterface;
        This.pickupBehavior := PickupBehavior_Package.getNullInstance;
   end Initialize;

   function Create (groupInterface : Group_Access_Array_Access; name : Unbounded_String; layerInfo_Param : access Rectangle_Package.Rectangle'Class; viewPosition_Param : access ViewPositionBase_Package.ViewPositionBase'Class) return CollidableDestroyableDamageableLayer_Access is
      This : constant CollidableDestroyableDamageableLayer_Access := new CollidableDestroyableDamageableLayer;
   begin
      CollidableDestroyableDamageableLayer_Package.Initialize (This.all, groupInterface, name, layerInfo_Param, viewPosition_Param);
      return This;
   end Create;

   --  throws Exception
   procedure initPosition (This : in out CollidableDestroyableDamageableLayer) is
   begin
        CollidableDestroyableDamageableLayer'Class (This).setPosition (This.initX, This.initY, This.initZ);
   end initPosition;

   --  throws Exception
   procedure initPositionXYZ (This : in out CollidableDestroyableDamageableLayer; x : Integer; y : Integer; z : Integer) is
   begin
        This.initX := x;
        This.initY := y;
        This.initZ := z;
   end initPositionXYZ;

   procedure paint (This : in out CollidableDestroyableDamageableLayer; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        CollidableCompositeLayer_Package.CollidableCompositeLayer (This).paint (graphics);
   end paint;

   --  throws Exception
   procedure damage (This : in out CollidableDestroyableDamageableLayer; damage : Integer; damageType : Integer) is
   begin
        Java_Throw (Java_New_Exception ("Exception", This.commonStrings.NOT_IMPLEMENTED));
   end damage;

   --  throws Exception
   function getDamage (This : in out CollidableDestroyableDamageableLayer; damageType : Integer) return Integer is
   begin
        Java_Throw (Java_New_Exception ("Exception", This.commonStrings.NOT_IMPLEMENTED));
        return 0;
   end getDamage;

   --  throws Exception
   function isDestroyed (This : in out CollidableDestroyableDamageableLayer) return Boolean is
   begin
        Java_Throw (Java_New_Exception ("Exception", This.commonStrings.NOT_IMPLEMENTED));
        return False;
   end isDestroyed;

   function getGroupInterface (This : in out CollidableDestroyableDamageableLayer) return Group_Access_Array_Access is
   begin
        return This.groupInterface;
   end getGroupInterface;

   procedure setGroupInterface (This : in out CollidableDestroyableDamageableLayer; teamInterface : Group_Access_Array_Access) is
   begin
        This.groupInterface := teamInterface;
   end setGroupInterface;

   --  throws Exception
   procedure setAllBinaryGameLayerManager (This : in out CollidableDestroyableDamageableLayer; allBinaryGameLayerManager_Param : access AllBinaryGameLayerManager_Package.AllBinaryGameLayerManager'Class) is
      allBinaryGameLayerManager : constant AllBinaryGameLayerManager_Access := AllBinaryGameLayerManager_Access (allBinaryGameLayerManager_Param);
   begin
        This.allBinaryGameLayerManagerP := allBinaryGameLayerManager;
        if (This.allBinaryGameLayerManagerP) = (null) then
            Java_Throw (Java_New_Exception ("RuntimeException"));
        end if;
   end setAllBinaryGameLayerManager;

   function isReadyForExplosion (This : in out CollidableDestroyableDamageableLayer) return Boolean is
   begin
        return This.readyForExplosion_Case;
   end isReadyForExplosion;

   procedure setReadyForExplosion (This : in out CollidableDestroyableDamageableLayer; isReadyForExplosion : Boolean) is
   begin
        This.readyForExplosion_Case := isReadyForExplosion;
   end setReadyForExplosion;

   function getInitWidth (This : in out CollidableDestroyableDamageableLayer) return Integer is
   begin
        return This.initWidth;
   end getInitWidth;

   function getInitHeight (This : in out CollidableDestroyableDamageableLayer) return Integer is
   begin
        return This.initHeight;
   end getInitHeight;

   function getInitX (This : in out CollidableDestroyableDamageableLayer) return Integer is
   begin
        return This.initX;
   end getInitX;

   function getInitY (This : in out CollidableDestroyableDamageableLayer) return Integer is
   begin
        return This.initY;
   end getInitY;

   --  throws Exception
   procedure up (This : in out CollidableDestroyableDamageableLayer) is
   begin
        null;
   end up;

   --  throws Exception
   procedure down (This : in out CollidableDestroyableDamageableLayer) is
   begin
        null;
   end down;

   --  throws Exception
   procedure right (This : in out CollidableDestroyableDamageableLayer) is
   begin
        null;
   end right;

   --  throws Exception
   procedure left (This : in out CollidableDestroyableDamageableLayer) is
   begin
        null;
   end left;

   --  throws Exception
   procedure strafeLeft (This : in out CollidableDestroyableDamageableLayer) is
   begin
        null;
   end strafeLeft;

   --  throws Exception
   procedure strafeRight (This : in out CollidableDestroyableDamageableLayer) is
   begin
        null;
   end strafeRight;

   --  throws Exception
   procedure fire (This : in out CollidableDestroyableDamageableLayer; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class) is
      layerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (layerManager_Param);
      gameKeyEvent : constant GameKeyEvent_Access := GameKeyEvent_Access (gameKeyEvent_Param);
   begin
        null;
   end fire;

   --  throws Exception
   procedure special1 (This : in out CollidableDestroyableDamageableLayer; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class) is
      layerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (layerManager_Param);
      gameKeyEvent : constant GameKeyEvent_Access := GameKeyEvent_Access (gameKeyEvent_Param);
   begin
        null;
   end special1;

   --  throws Exception
   procedure special2 (This : in out CollidableDestroyableDamageableLayer; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class) is
      layerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (layerManager_Param);
      gameKeyEvent : constant GameKeyEvent_Access := GameKeyEvent_Access (gameKeyEvent_Param);
   begin
        null;
   end special2;

   --  throws Exception
   procedure special3 (This : in out CollidableDestroyableDamageableLayer; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class) is
      layerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (layerManager_Param);
      gameKeyEvent : constant GameKeyEvent_Access := GameKeyEvent_Access (gameKeyEvent_Param);
   begin
        null;
   end special3;

   --  throws Exception
   procedure special4 (This : in out CollidableDestroyableDamageableLayer; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class) is
      layerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (layerManager_Param);
      gameKeyEvent : constant GameKeyEvent_Access := GameKeyEvent_Access (gameKeyEvent_Param);
   begin
        null;
   end special4;

   --  throws Exception
   procedure special5 (This : in out CollidableDestroyableDamageableLayer; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class) is
      layerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (layerManager_Param);
      gameKeyEvent : constant GameKeyEvent_Access := GameKeyEvent_Access (gameKeyEvent_Param);
   begin
        null;
   end special5;

   --  throws Exception
   procedure upAnalog (This : in out CollidableDestroyableDamageableLayer; yAnalogValue : Integer) is
   begin
        null;
   end upAnalog;

   --  throws Exception
   procedure downAnalog (This : in out CollidableDestroyableDamageableLayer; yAnalogValue : Integer) is
   begin
        null;
   end downAnalog;

   --  throws Exception
   procedure rightAnalog (This : in out CollidableDestroyableDamageableLayer; xAnalogValue : Integer) is
   begin
        null;
   end rightAnalog;

   --  throws Exception
   procedure leftAnalog (This : in out CollidableDestroyableDamageableLayer; xAnalogValue : Integer) is
   begin
        null;
   end leftAnalog;

   --  throws Exception
   procedure rightTrigger (This : in out CollidableDestroyableDamageableLayer; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class; xAnalogValue : Integer) is
      layerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (layerManager_Param);
      gameKeyEvent : constant GameKeyEvent_Access := GameKeyEvent_Access (gameKeyEvent_Param);
   begin
        null;
   end rightTrigger;

   --  throws Exception
   procedure leftTrigger (This : in out CollidableDestroyableDamageableLayer; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class; xAnalogValue : Integer) is
      layerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (layerManager_Param);
      gameKeyEvent : constant GameKeyEvent_Access := GameKeyEvent_Access (gameKeyEvent_Param);
   begin
        null;
   end leftTrigger;

   procedure onDestroyed (This : in out CollidableDestroyableDamageableLayer; destroyedEvent_Param : access DestroyedEvent_Package.DestroyedEvent'Class) is
      destroyedEvent : constant DestroyedEvent_Access := DestroyedEvent_Access (destroyedEvent_Param);
   begin
        null;
   end onDestroyed;

   function getPickupBehavior (This : in out CollidableDestroyableDamageableLayer) return PickupBehavior_Access is
   begin
        return This.pickupBehavior;
   end getPickupBehavior;

   procedure setPickupBehavior (This : in out CollidableDestroyableDamageableLayer; pickupBehavior_Param : access PickupBehavior_Package.PickupBehavior'Class) is
      pickupBehavior : constant PickupBehavior_Access := PickupBehavior_Access (pickupBehavior_Param);
   begin
        This.pickupBehavior := pickupBehavior;
   end setPickupBehavior;

   --  throws Exception
   procedure addPart (This : in out CollidableDestroyableDamageableLayer; pickedUpLayerInterfaceFactoryInterface_Param : access PickedUpLayerInterfaceFactoryInterface_Package.PickedUpLayerInterfaceFactoryInterface'Class) is
      pickedUpLayerInterfaceFactoryInterface : constant PickedUpLayerInterfaceFactoryInterface_Access := PickedUpLayerInterfaceFactoryInterface_Access (pickedUpLayerInterfaceFactoryInterface_Param);
   begin
        null;
   end addPart;

   procedure setPartInterfaceArray (This : in out CollidableDestroyableDamageableLayer; partInterfaceArray : PartInterface_Access_Array_Access) is
   begin
        This.partInterfaceArrayP := partInterfaceArray;
   end setPartInterfaceArray;

   function getPartInterfaceArray (This : in out CollidableDestroyableDamageableLayer) return PartInterface_Access_Array_Access is
   begin
        return This.partInterfaceArrayP;
   end getPartInterfaceArray;

   procedure toStringAppend (This : in out CollidableDestroyableDamageableLayer; stringBuffer_Param : access StringMaker_Package.StringMaker'Class) is
      stringBuffer : constant StringMaker_Access := StringMaker_Access (stringBuffer_Param);
      commonSeps : CommonSeps_Access;
      positionStrings : PositionStrings_Access;
      groupInterfaceArray : Group_Access_Array_Access;
      size : Integer;
      index : Integer;
      pickupBehavior : PickupBehavior_Access;
   begin
        commonSeps := CommonSeps_Package.getInstance;
        positionStrings := PositionStrings_Package.getInstance;
        CollidableCompositeLayer_Package.CollidableCompositeLayer (This).toStringAppend (stringBuffer);
        stringBuffer.append (commonSeps.NEW_LINE);
        groupInterfaceArray := CollidableDestroyableDamageableLayer'Class (This).getGroupInterface;
        size := groupInterfaceArray'Length;
        for index in 0 .. (size) - 1 loop
            stringBuffer.append (groupInterfaceArray (index).toString);
            stringBuffer.append (commonSeps.COMMA);
        end loop;
        pickupBehavior := CollidableDestroyableDamageableLayer'Class (This).getPickupBehavior;
        if (not org.allbinary.game.layer.pickup.PickupBehavior_Package_References."=" (pickupBehavior, null)) then
            stringBuffer.append (commonSeps.NEW_LINE);
            stringBuffer.append (pickupBehavior.toString);
        end if;
        stringBuffer.append (commonSeps.NEW_LINE);
        stringBuffer.append (CollidableDestroyableDamageableLayer_Package.READYFOREXPLOSION);
        stringBuffer.appendboolean (This.readyForExplosion_Case);
        stringBuffer.append (commonSeps.NEW_LINE);
        stringBuffer.append (This.commonStrings.INIT);
        stringBuffer.append (commonSeps.SPACE);
        stringBuffer.append (positionStrings.X_LABEL);
        stringBuffer.appendint (This.initX);
        stringBuffer.append (positionStrings.Y_LABEL);
        stringBuffer.appendint (This.initX);
        stringBuffer.append (positionStrings.Z_LABEL);
        stringBuffer.appendint (This.initZ);
   end toStringAppend;

   function toString (This : in out CollidableDestroyableDamageableLayer) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        CollidableDestroyableDamageableLayer'Class (This).toStringAppend (stringBuffer);
        return stringBuffer.toString;
   end toString;

   procedure getDamage (This : in out CollidableDestroyableDamageableLayer; damageType : Integer) is
      Java_Result : constant Integer := CollidableDestroyableDamageableLayer'Class (This).getDamage (damageType => damageType);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getDamage;

begin
   null;
   NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER := NullUtil_Package.getInstance.NULL_OBJECT;
   READYFOREXPLOSION := To_Unbounded_String ("ReadyForExplosion: ");

end org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package;


