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


with javax.microedition.khronos.opengles.GL_Package; use javax.microedition.khronos.opengles.GL_Package;
with javax.microedition.khronos.opengles.GL_Package_References;
with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
with org.allbinary.animation.Animation_Package; use org.allbinary.animation.Animation_Package;
with org.allbinary.animation.Animation_Package_References;
with org.allbinary.animation.IndexedAnimation_Package; use org.allbinary.animation.IndexedAnimation_Package;
with org.allbinary.animation.NullAnimationFactory_Package; use org.allbinary.animation.NullAnimationFactory_Package;
with org.allbinary.game.collision.CollidableBaseBehavior_Package; use org.allbinary.game.collision.CollidableBaseBehavior_Package;
with org.allbinary.game.collision.CollidableBaseBehavior_Package_References;
with org.allbinary.game.combat.destroy.DestroyedLayerProcessor_Package; use org.allbinary.game.combat.destroy.DestroyedLayerProcessor_Package;
with org.allbinary.game.combat.weapon.WeaponProperties_Package; use org.allbinary.game.combat.weapon.WeaponProperties_Package;
with org.allbinary.game.combat.weapon.WeaponProperties_Package_References;
with org.allbinary.game.configuration.GameConfigurationUtil_Package; use org.allbinary.game.configuration.GameConfigurationUtil_Package;
with org.allbinary.game.identification.BasicGroupFactory_Package; use org.allbinary.game.identification.BasicGroupFactory_Package;
with org.allbinary.game.multiplayer.layer.MultiPlayerGameLayer_Package; use org.allbinary.game.multiplayer.layer.MultiPlayerGameLayer_Package;
with org.allbinary.game.multiplayer.layer.RemoteInfo_Package; use org.allbinary.game.multiplayer.layer.RemoteInfo_Package;
with org.allbinary.game.multiplayer.layer.RemoteInfo_Package_References;
with org.allbinary.game.score.NoScoreable_Package; use org.allbinary.game.score.NoScoreable_Package;
with org.allbinary.game.score.ScoreableInterface_Package; use org.allbinary.game.score.ScoreableInterface_Package;
with org.allbinary.game.score.ScoreableInterface_Package_References;
with org.allbinary.game.tick.TickableInterface_Package; use org.allbinary.game.tick.TickableInterface_Package;
with org.allbinary.graphics.Rectangle_Package; use org.allbinary.graphics.Rectangle_Package;
with org.allbinary.graphics.Rectangle_Package_References;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package; use org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package_References;
with org.allbinary.physics.movement.Movement_Package; use org.allbinary.physics.movement.Movement_Package;
with org.allbinary.physics.movement.Movement_Package_References;
with org.allbinary.view.ViewPosition_Package; use org.allbinary.view.ViewPosition_Package;
with org.allbinary.view.ViewPositionBase_Package; use org.allbinary.view.ViewPositionBase_Package;
with org.allbinary.view.ViewPositionBase_Package_References;
with org.allbinary.game.layer.weapon.CollidableWeaponBehavior_Package; use org.allbinary.game.layer.weapon.CollidableWeaponBehavior_Package;
with org.allbinary.game.layer.weapon.CollidableWeaponBehavior_Package_References;
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
with org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
with org.allbinary.midlet.AllBinaryMidlet_Package;
with org.allbinary.input.AllBinarySensor_Package;
with org.allbinary.animation.AnimationBehavior_Package;
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
with org.allbinary.logic.math.BasicDecimal_Package;
with org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
with org.allbinary.layer.BasicLayerProcessor_Package;
with org.allbinary.game.displayable.canvas.BasicMenuInputProcessor_Package;
with org.allbinary.input.motion.gesture.observer.BasicMotionGesturesHandler_Package;
with javax.microedition.lcdui.Canvas_Package;
with org.allbinary.graphics.displayable.CanvasStrings_Package;
with org.microemu.device.ui.CanvasUI_Package;
with org.allbinary.logic.java.character_Id.CharacterSet_Package;
with javax.microedition.lcdui.ChoiceGroup_Package;
with javax.microedition.lcdui.ChoiceItem_Package;
with org.allbinary.game.collision.CollidableBaseBehaviorFactory_Package;
with org.allbinary.game.layer.CollidableCompositeLayer_Package;
with org.allbinary.game.layer.special.CollidableDestroyableDamageableBehavior_Package;
with org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package;
with org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package;
with org.allbinary.game.layer.weapon.CollidableWeaponBehavior_Package;
with org.allbinary.game.collision.CollisionHelper_Package;
with org.allbinary.game.collision.CollisionProcessor_Package;
with org.allbinary.game.collision.CollisionType_Package;
with org.allbinary.game.paint.ColorFillBasePaintable_Package;
with javax.microedition.lcdui.Command_Package;
with org.allbinary.graphics.displayable.screen.CommandForm_Package;
with javax.microedition.lcdui.CommandListener_Package;
with org.microemu.device.ui.CommandUI_Package;
with org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.game.part.CountedLayerInterfaceFactoryPart_Package;
with org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactory_Package;
with org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactoryInterface_Package;
with org.allbinary.graphics.form.item.CustomCustomItem_Package;
with org.allbinary.graphics.form.CustomDisplayable_Package;
with org.allbinary.graphics.form.CustomScreen_Package;
with org.allbinary.graphics.form.item.CustomTextBox_Package;
with org.allbinary.game.combat.damage.DamageUtil_Package;
with org.allbinary.game.combat.damage.DamageableInterface_Package;
with org.allbinary.game.displayable.canvas.DemoGameBehavior_Package;
with org.allbinary.game.displayable.canvas.DemoPaintableInterface_Package;
with org.allbinary.game.combat.destroy.event.DestroyedEvent_Package;
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
with org.allbinary.graphics.GPoint_Package;
with org.allbinary.game.GameAdState_Package;
with org.allbinary.business.advertisement.GameAdStateBase_Package;
with org.allbinary.business.advertisement.GameAdStateFactory_Package;
with org.allbinary.game.displayable.canvas.GameCanvasPauseRunnable_Package;
with org.allbinary.game.displayable.canvas.GameCanvasRunnable_Package;
with org.allbinary.game.displayable.canvas.GameCommandCanvas_Package;
with org.allbinary.game.configuration.GameConfiguration_Package;
with org.allbinary.game.configuration.GameConfigurationGauge_Package;
with org.allbinary.game.GameInfo_Package;
with org.allbinary.game.GameInfoData_Package;
with org.allbinary.game.init.GameInitializationInterface_Package;
with org.allbinary.game.input.GameInput_Package;
with org.allbinary.game.input.GameInputStrings_Package;
with org.allbinary.game.input.GameKey_Package;
with org.allbinary.game.input.event.GameKeyEvent_Package;
with org.allbinary.game.input.event.GameKeyEventFactory_Package;
with org.allbinary.game.input.event.GameKeyEventHandler_Package;
with org.allbinary.game.input.GameKeyEventSourceInterface_Package;
with org.allbinary.game.input.GameKeyFactory_Package;
with org.allbinary.game.GameMode_Package;
with org.allbinary.game.configuration.GameOptionsForm_Package;
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
with org.allbinary.game.identification.Group_Package;
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
with org.allbinary.logic.MEUtil_Package;
with javax.microedition.midlet.MIDlet_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package;
with org.allbinary.input.motion.gesture.MotionGestureInput_Package;
with org.allbinary.game.multiplayer.layer.MultiplayerBehavior_Package;
with org.microemu.device.MutableImage_Package;
with org.allbinary.graphics.displayable.MyCanvas_Package;
with org.allbinary.graphics.font.MyFontProcessor_Package;
with org.allbinary.game.displayable.canvas.MyFormUtil_Package;
with org.allbinary.game.rand.MyRandomFactory_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.graphics.opengles.OpenGLFeature_Package;
with org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package;
with org.microemu.device.ui.PaintEvent_Package;
with org.allbinary.graphics.paint.Paintable_Package;
with org.allbinary.graphics.form.PaintableForm_Package;
with org.allbinary.game.part.PartInterface_Package;
with org.allbinary.game.layer.pickup.PickedUpLayerInterface_Package;
with org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactory_Package;
with org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryBase_Package;
with org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package;
with org.allbinary.game.layer.pickup.PickedUpLayerType_Package;
with org.allbinary.game.layer.pickup.PickupBehavior_Package;
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
with org.allbinary.media.ScaleProperties_Package;
with org.allbinary.game.score.Scoreable_Package;
with javax.microedition.lcdui.Screen_Package;
with org.allbinary.graphics.ScreenCapture_Package;
with org.allbinary.graphics.form.ScrollSelectionForm_Package;
with org.allbinary.input.gyro.SensorGameUpdateProcessor_Package;
with org.allbinary.game.combat.weapon.SimpleWeaponProperties_Package;
with org.allbinary.logic.system.SoftwareInformation_Package;
with org.allbinary.media.audio.Sound_Package;
with org.allbinary.logic.StdUtil_Package;
with javax.microedition.lcdui.StringComponent_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
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

package body org.allbinary.game.layer.weapon.WeaponLayer_Package is

   package IndexedAnimation_Package renames Standard.org.allbinary.animation.IndexedAnimation_Package;
   package NullAnimationFactory_Package renames Standard.org.allbinary.animation.NullAnimationFactory_Package;
   package DestroyedLayerProcessor_Package renames Standard.org.allbinary.game.combat.destroy.DestroyedLayerProcessor_Package;
   package GameConfigurationUtil_Package renames Standard.org.allbinary.game.configuration.GameConfigurationUtil_Package;
   package BasicGroupFactory_Package renames Standard.org.allbinary.game.identification.BasicGroupFactory_Package;
   package NoScoreable_Package renames Standard.org.allbinary.game.score.NoScoreable_Package;
   subtype GL_Access is javax.microedition.khronos.opengles.GL_Package_References.GL_Access;
   function "=" (Left, Right : GL_Access) return Boolean renames javax.microedition.khronos.opengles.GL_Package_References."=";
   subtype GL_Access_Array is javax.microedition.khronos.opengles.GL_Package_References.GL_Access_Array;
   function "=" (Left, Right : GL_Access_Array) return Boolean renames javax.microedition.khronos.opengles.GL_Package_References."=";
   subtype GL_Access_Array_Access is javax.microedition.khronos.opengles.GL_Package_References.GL_Access_Array_Access;
   function "=" (Left, Right : GL_Access_Array_Access) return Boolean renames javax.microedition.khronos.opengles.GL_Package_References."=";
   subtype GL_Access_Array_Access_Array is javax.microedition.khronos.opengles.GL_Package_References.GL_Access_Array_Access_Array;
   function "=" (Left, Right : GL_Access_Array_Access_Array) return Boolean renames javax.microedition.khronos.opengles.GL_Package_References."=";
   subtype GL_Access_Array_Access_Array_Access is javax.microedition.khronos.opengles.GL_Package_References.GL_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GL_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.khronos.opengles.GL_Package_References."=";
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
   subtype Animation_Access is org.allbinary.animation.Animation_Package_References.Animation_Access;
   function "=" (Left, Right : Animation_Access) return Boolean renames org.allbinary.animation.Animation_Package_References."=";
   subtype Animation_Access_Array is org.allbinary.animation.Animation_Package_References.Animation_Access_Array;
   function "=" (Left, Right : Animation_Access_Array) return Boolean renames org.allbinary.animation.Animation_Package_References."=";
   subtype Animation_Access_Array_Access is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access;
   function "=" (Left, Right : Animation_Access_Array_Access) return Boolean renames org.allbinary.animation.Animation_Package_References."=";
   subtype Animation_Access_Array_Access_Array is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access_Array;
   function "=" (Left, Right : Animation_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.Animation_Package_References."=";
   subtype Animation_Access_Array_Access_Array_Access is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Animation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.Animation_Package_References."=";
   subtype CollidableBaseBehavior_Access is org.allbinary.game.collision.CollidableBaseBehavior_Package_References.CollidableBaseBehavior_Access;
   function "=" (Left, Right : CollidableBaseBehavior_Access) return Boolean renames org.allbinary.game.collision.CollidableBaseBehavior_Package_References."=";
   subtype CollidableBaseBehavior_Access_Array is org.allbinary.game.collision.CollidableBaseBehavior_Package_References.CollidableBaseBehavior_Access_Array;
   function "=" (Left, Right : CollidableBaseBehavior_Access_Array) return Boolean renames org.allbinary.game.collision.CollidableBaseBehavior_Package_References."=";
   subtype CollidableBaseBehavior_Access_Array_Access is org.allbinary.game.collision.CollidableBaseBehavior_Package_References.CollidableBaseBehavior_Access_Array_Access;
   function "=" (Left, Right : CollidableBaseBehavior_Access_Array_Access) return Boolean renames org.allbinary.game.collision.CollidableBaseBehavior_Package_References."=";
   subtype CollidableBaseBehavior_Access_Array_Access_Array is org.allbinary.game.collision.CollidableBaseBehavior_Package_References.CollidableBaseBehavior_Access_Array_Access_Array;
   function "=" (Left, Right : CollidableBaseBehavior_Access_Array_Access_Array) return Boolean renames org.allbinary.game.collision.CollidableBaseBehavior_Package_References."=";
   subtype CollidableBaseBehavior_Access_Array_Access_Array_Access is org.allbinary.game.collision.CollidableBaseBehavior_Package_References.CollidableBaseBehavior_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CollidableBaseBehavior_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.collision.CollidableBaseBehavior_Package_References."=";
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
   subtype ScoreableInterface_Access is org.allbinary.game.score.ScoreableInterface_Package_References.ScoreableInterface_Access;
   function "=" (Left, Right : ScoreableInterface_Access) return Boolean renames org.allbinary.game.score.ScoreableInterface_Package_References."=";
   subtype ScoreableInterface_Access_Array is org.allbinary.game.score.ScoreableInterface_Package_References.ScoreableInterface_Access_Array;
   function "=" (Left, Right : ScoreableInterface_Access_Array) return Boolean renames org.allbinary.game.score.ScoreableInterface_Package_References."=";
   subtype ScoreableInterface_Access_Array_Access is org.allbinary.game.score.ScoreableInterface_Package_References.ScoreableInterface_Access_Array_Access;
   function "=" (Left, Right : ScoreableInterface_Access_Array_Access) return Boolean renames org.allbinary.game.score.ScoreableInterface_Package_References."=";
   subtype ScoreableInterface_Access_Array_Access_Array is org.allbinary.game.score.ScoreableInterface_Package_References.ScoreableInterface_Access_Array_Access_Array;
   function "=" (Left, Right : ScoreableInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.score.ScoreableInterface_Package_References."=";
   subtype ScoreableInterface_Access_Array_Access_Array_Access is org.allbinary.game.score.ScoreableInterface_Package_References.ScoreableInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ScoreableInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.score.ScoreableInterface_Package_References."=";
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
   subtype Movement_Access is org.allbinary.physics.movement.Movement_Package_References.Movement_Access;
   function "=" (Left, Right : Movement_Access) return Boolean renames org.allbinary.physics.movement.Movement_Package_References."=";
   subtype Movement_Access_Array is org.allbinary.physics.movement.Movement_Package_References.Movement_Access_Array;
   function "=" (Left, Right : Movement_Access_Array) return Boolean renames org.allbinary.physics.movement.Movement_Package_References."=";
   subtype Movement_Access_Array_Access is org.allbinary.physics.movement.Movement_Package_References.Movement_Access_Array_Access;
   function "=" (Left, Right : Movement_Access_Array_Access) return Boolean renames org.allbinary.physics.movement.Movement_Package_References."=";
   subtype Movement_Access_Array_Access_Array is org.allbinary.physics.movement.Movement_Package_References.Movement_Access_Array_Access_Array;
   function "=" (Left, Right : Movement_Access_Array_Access_Array) return Boolean renames org.allbinary.physics.movement.Movement_Package_References."=";
   subtype Movement_Access_Array_Access_Array_Access is org.allbinary.physics.movement.Movement_Package_References.Movement_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Movement_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.physics.movement.Movement_Package_References."=";
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
   subtype CollidableWeaponBehavior_Access is org.allbinary.game.layer.weapon.CollidableWeaponBehavior_Package_References.CollidableWeaponBehavior_Access;
   function "=" (Left, Right : CollidableWeaponBehavior_Access) return Boolean renames org.allbinary.game.layer.weapon.CollidableWeaponBehavior_Package_References."=";
   subtype CollidableWeaponBehavior_Access_Array is org.allbinary.game.layer.weapon.CollidableWeaponBehavior_Package_References.CollidableWeaponBehavior_Access_Array;
   function "=" (Left, Right : CollidableWeaponBehavior_Access_Array) return Boolean renames org.allbinary.game.layer.weapon.CollidableWeaponBehavior_Package_References."=";
   subtype CollidableWeaponBehavior_Access_Array_Access is org.allbinary.game.layer.weapon.CollidableWeaponBehavior_Package_References.CollidableWeaponBehavior_Access_Array_Access;
   function "=" (Left, Right : CollidableWeaponBehavior_Access_Array_Access) return Boolean renames org.allbinary.game.layer.weapon.CollidableWeaponBehavior_Package_References."=";
   subtype CollidableWeaponBehavior_Access_Array_Access_Array is org.allbinary.game.layer.weapon.CollidableWeaponBehavior_Package_References.CollidableWeaponBehavior_Access_Array_Access_Array;
   function "=" (Left, Right : CollidableWeaponBehavior_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.weapon.CollidableWeaponBehavior_Package_References."=";
   subtype CollidableWeaponBehavior_Access_Array_Access_Array_Access is org.allbinary.game.layer.weapon.CollidableWeaponBehavior_Package_References.CollidableWeaponBehavior_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CollidableWeaponBehavior_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.weapon.CollidableWeaponBehavior_Package_References."=";
   procedure Initialize_Fields (This : in out WeaponLayer'Class) is
   begin
      null;
      This.animationInterface := NullAnimationFactory_Package.getFactoryInstance.getInstance (0);
      
      
      This.sourceLayerInterface := AllBinaryLayer_Access (AllBinaryLayer_Package.NULL_ALLBINARY_LAYER);
      This.totalDamage := 0;
      This.initDamage := 0;
      This.destroyed := True;
      This.scoreableInterface := ScoreableInterface_Access (NoScoreable_Package.getInstance);
      
      This.weaponProperties := WeaponProperties_Access (WeaponProperties_Package.NULL_WEAPON_PROPERTIES);
      
      This.collidableWeaponBehavior := CollidableWeaponBehavior_Package.getNullInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out WeaponLayer'Class; name : Unbounded_String; remoteInfo_Param : access RemoteInfo_Package.RemoteInfo'Class; multiPlayerType : Integer; movement_Param : access Movement_Package.Movement'Class; animationInterface_Param : access Animation_Package.Animation'Class; destroyedAnimationInterface_Param : access Animation_Package.Animation'Class; rectangle_Param : access Rectangle_Package.Rectangle'Class; viewPosition_Param : access ViewPositionBase_Package.ViewPositionBase'Class) is
      remoteInfo : constant RemoteInfo_Access := RemoteInfo_Access (remoteInfo_Param);
      movement : constant Movement_Access := Movement_Access (movement_Param);
      animationInterface : constant Animation_Access := Animation_Access (animationInterface_Param);
      destroyedAnimationInterface : constant Animation_Access := Animation_Access (destroyedAnimationInterface_Param);
      rectangle : constant Rectangle_Access := Rectangle_Access (rectangle_Param);
      viewPosition : constant ViewPositionBase_Access := ViewPositionBase_Access (viewPosition_Param);
   begin
        MultiPlayerGameLayer_Package.Initialize (This, remoteInfo, BasicGroupFactory_Package.getInstance.NONE_ARRAY, name, rectangle, viewPosition);
        Initialize_Fields (This);
        This.initAnimationInterface := animationInterface;
        WeaponLayer'Class (This).setAnimationInterface (animationInterface);
        This.destroyedAnimationInterface := destroyedAnimationInterface;
        This.movement := movement;
        This.multiPlayerType := multiPlayerType;
   end Initialize;

   function Create (name : Unbounded_String; remoteInfo_Param : access RemoteInfo_Package.RemoteInfo'Class; multiPlayerType : Integer; movement_Param : access Movement_Package.Movement'Class; animationInterface_Param : access Animation_Package.Animation'Class; destroyedAnimationInterface_Param : access Animation_Package.Animation'Class; rectangle_Param : access Rectangle_Package.Rectangle'Class; viewPosition_Param : access ViewPositionBase_Package.ViewPositionBase'Class) return WeaponLayer_Access is
      This : constant WeaponLayer_Access := new WeaponLayer;
   begin
      WeaponLayer_Package.Initialize (This.all, name, remoteInfo_Param, multiPlayerType, movement_Param, animationInterface_Param, destroyedAnimationInterface_Param, rectangle_Param, viewPosition_Param);
      return This;
   end Create;

   procedure setCollidableInferface (This : in out WeaponLayer; collidableInferface_Param : access CollidableBaseBehavior_Package.CollidableBaseBehavior'Class) is
      collidableInferface : constant CollidableBaseBehavior_Access := CollidableBaseBehavior_Access (collidableInferface_Param);
   begin
        MultiPlayerGameLayer_Package.MultiPlayerGameLayer (This).setCollidableInferface (collidableInferface);
        This.collidableWeaponBehavior := CollidableWeaponBehavior_Access (WeaponLayer'Class (This).getCollidableInferface);
   end setCollidableInferface;

   --  throws Exception
   procedure initXYZ (This : in out WeaponLayer; x : Integer; y : Integer; z : Integer) is
   begin
        This.x := x;
        This.y := y;
        This.z := z;
   end initXYZ;

   --  throws Exception
   procedure init (This : in out WeaponLayer; sourceLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; angle : Integer; otherAngle : Integer; weaponProperties_Param : access WeaponProperties_Package.WeaponProperties'Class; scoreable_Param : access ScoreableInterface_Package.ScoreableInterface'Class) is
      sourceLayerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (sourceLayerInterface_Param);
      weaponProperties : constant WeaponProperties_Access := WeaponProperties_Access (weaponProperties_Param);
      scoreable : constant ScoreableInterface_Access := ScoreableInterface_Access (scoreable_Param);
   begin
        WeaponLayer'Class (This).setWeaponPropertiesP (weaponProperties);
        WeaponLayer'Class (This).setReadyForExplosion (False);
        WeaponLayer'Class (This).setAnimationInterface (WeaponLayer'Class (This).getInitAnimationInterfaceP);
        WeaponLayer'Class (This).setOwnerLayerInterface (sourceLayerInterface);
        This.collidableWeaponBehavior.init (sourceLayerInterface);
        WeaponLayer'Class (This).setGroupInterfaces;
        if (scoreable) /= (null) then
            This.scoreableInterface := scoreable;
        end if;
        This.totalDamage := 0;
        This.initDamage := weaponProperties.getDamage;
        WeaponLayer'Class (This).setDestroyed (False);
        This.movement.init (weaponProperties.getSpeed, angle, otherAngle);
   end init;

   procedure setGroupInterfaces (This : in out WeaponLayer) is
      basicGroupFactory : BasicGroupFactory_Access;
   begin
        basicGroupFactory := BasicGroupFactory_Package.getInstance;
        if (Java_Object_Access (This.sourceLayerInterface.getGroupInterface (0))) = (Java_Object_Access (basicGroupFactory.ENEMY)) then
            WeaponLayer'Class (This).setGroupInterface (basicGroupFactory.ENEMY_ARRAY);
        else
            WeaponLayer'Class (This).setGroupInterface (This.sourceLayerInterface.getGroupInterface);
        end if;
   end setGroupInterfaces;

   --  throws Exception
   procedure processTick (This : in out WeaponLayer; allBinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class) is
      allBinaryLayerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (allBinaryLayerManager_Param);
      collidableWeaponBehavior : CollidableWeaponBehavior_Access;
      indexedAnimationInterface : IndexedAnimation_Access;
      currentFrame : Integer;
   begin
        if (WeaponLayer'Class (This).isExhausted) and then (not (WeaponLayer'Class (This).isDestroyed)) then
            if WeaponLayer'Class (This).isReadyForExplosion then
                indexedAnimationInterface := IndexedAnimation_Access (WeaponLayer'Class (This).getAnimationInterface);
                currentFrame := indexedAnimationInterface.getFrame;
                if (currentFrame) < ((indexedAnimationInterface.getAnimationSize) - (1)) then
                    indexedAnimationInterface.nextFrame;
                else
                    WeaponLayer'Class (This).setDestroyed (True);
                end if;
            else
                collidableWeaponBehavior := CollidableWeaponBehavior_Access (WeaponLayer'Class (This).getCollidableInferface);
                if collidableWeaponBehavior.isCollided then
                    WeaponLayer'Class (This).setAnimationInterface (This.destroyedAnimationInterface);
                    WeaponLayer'Class (This).getMovement.stop;
                    WeaponLayer'Class (This).setReadyForExplosion (True);
                else
                    WeaponLayer'Class (This).setDestroyed (True);
                end if;
            end if;
        end if;
        This.movement.process (WeaponLayer_Access'(This'Unchecked_Access));
        This.totalDamage := (This.totalDamage) + (Integer (This.weaponProperties.getDissipation));
   end processTick;

   function isDestroyed (This : in out WeaponLayer) return Boolean is
   begin
        return This.destroyed;
   end isDestroyed;

   procedure damage (This : in out WeaponLayer; damage : Integer; damageType : Integer) is
   begin
        This.totalDamage := (This.totalDamage) + ((damage) * (damage));
   end damage;

   procedure givePoints (This : in out WeaponLayer; total : Integer) is
   begin
        This.scoreableInterface.addPoints ((GameConfigurationUtil_Package.getInstance.getCompetitionValue) * (total));
   end givePoints;

   function isExhausted (This : in out WeaponLayer) return Boolean is
   begin
        if ((This.totalDamage) > (WeaponLayer'Class (This).getInitDamage)) or else ((This.totalDamage) < (0)) then
            return True;
        else
            return False;
        end if;
   end isExhausted;

   function getDamage (This : in out WeaponLayer; damageType : Integer) return Integer is
      total : Integer;
   begin
        if not (WeaponLayer'Class (This).isExhausted) then
            total := (WeaponLayer'Class (This).getInitDamage) - (This.totalDamage);
            WeaponLayer'Class (This).givePoints (total);
            return total;
        end if;
        return 0;
   end getDamage;

   procedure setDestroyed (This : in out WeaponLayer; destroyed : Boolean) is
   begin
        This.destroyed := destroyed;
        if WeaponLayer'Class (This).isDestroyed then
            This.scoreableInterface := ScoreableInterface_Access (NoScoreable_Package.getInstance);
            DestroyedLayerProcessor_Package.getInstance.add (WeaponLayer_Access'(This'Unchecked_Access));
        end if;
   end setDestroyed;

   function getInitDamage (This : in out WeaponLayer) return Integer is
   begin
        return This.initDamage;
   end getInitDamage;

   procedure setAnimationInterface (This : in out WeaponLayer; animationInterface_Param : access Animation_Package.Animation'Class) is
      animationInterface : constant Animation_Access := Animation_Access (animationInterface_Param);
   begin
        This.animationInterface := animationInterface;
   end setAnimationInterface;

   function getAnimationInterface (This : in out WeaponLayer) return Animation_Access is
   begin
        return This.animationInterface;
   end getAnimationInterface;

   function getInitAnimationInterfaceP (This : in out WeaponLayer) return Animation_Access is
   begin
        return This.initAnimationInterface;
   end getInitAnimationInterfaceP;

   procedure setInitAnimationInterfaceP (This : in out WeaponLayer; initAnimationInterface_Param : access Animation_Package.Animation'Class) is
      initAnimationInterface : constant Animation_Access := Animation_Access (initAnimationInterface_Param);
   begin
        This.initAnimationInterface := initAnimationInterface;
   end setInitAnimationInterfaceP;

   function getDestroyedAnimationInterface (This : in out WeaponLayer) return Animation_Access is
   begin
        return This.destroyedAnimationInterface;
   end getDestroyedAnimationInterface;

   function getOwnerLayerInterface (This : in out WeaponLayer) return AllBinaryLayer_Access is
   begin
        return This.sourceLayerInterface;
   end getOwnerLayerInterface;

   procedure setOwnerLayerInterface (This : in out WeaponLayer; sourceLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) is
      sourceLayerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (sourceLayerInterface_Param);
   begin
        This.sourceLayerInterface := sourceLayerInterface;
   end setOwnerLayerInterface;

   procedure paint (This : in out WeaponLayer; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
      viewPosition : ViewPositionBase_Access;
   begin
        viewPosition := WeaponLayer'Class (This).getViewPosition;
        This.animationInterface.paintXY (graphics, (viewPosition.getX2) - (WeaponLayer'Class (This).getHalfWidth), (viewPosition.getY2) - (WeaponLayer'Class (This).getHalfHeight));
   end paint;

   procedure paintThreed (This : in out WeaponLayer; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
      viewPosition : ViewPositionBase_Access;
   begin
        viewPosition := WeaponLayer'Class (This).getViewPosition;
        This.animationInterface.paintThreedXYZ (graphics, (viewPosition.getX2) - (WeaponLayer'Class (This).getHalfWidth), (viewPosition.getY2) - (WeaponLayer'Class (This).getHalfHeight), (viewPosition.getZ2) - (WeaponLayer'Class (This).getHalfDepth));
   end paintThreed;

   function getMovement (This : in out WeaponLayer) return Movement_Access is
   begin
        return This.movement;
   end getMovement;

   procedure setMovement (This : in out WeaponLayer; movement_Param : access Movement_Package.Movement'Class) is
      movement : constant Movement_Access := Movement_Access (movement_Param);
   begin
        This.movement := movement;
   end setMovement;

   function getType (This : in out WeaponLayer) return Integer is
   begin
        return WeaponLayer_Package.getStaticType;
   end getType;

   function getStaticType return Integer is
   begin
        return 0;
   end getStaticType;

   function getMultiPlayerType (This : in out WeaponLayer) return Integer is
   begin
        return This.multiPlayerType;
   end getMultiPlayerType;

   procedure setWeaponPropertiesP (This : in out WeaponLayer; weaponProperties_Param : access WeaponProperties_Package.WeaponProperties'Class) is
      weaponProperties : constant WeaponProperties_Access := WeaponProperties_Access (weaponProperties_Param);
   begin
        This.weaponProperties := weaponProperties;
   end setWeaponPropertiesP;

   function getWeaponPropertiesP (This : in out WeaponLayer) return WeaponProperties_Access is
   begin
        return This.weaponProperties;
   end getWeaponPropertiesP;

   function implmentsTickableInterface (This : in out WeaponLayer) return Boolean is
   begin
        return True;
   end implmentsTickableInterface;

   --  throws Exception
   procedure set (This : in out WeaponLayer; gl_Param : access GL_Package.GL'Class) is
      gl : constant GL_Access := GL_Access (gl_Param);
   begin
        This.initAnimationInterface.set (gl);
   end set;

   procedure getDamage (This : in out WeaponLayer; damageType : Integer) is
      Java_Result : constant Integer := WeaponLayer'Class (This).getDamage (damageType => damageType);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getDamage;

end org.allbinary.game.layer.weapon.WeaponLayer_Package;


