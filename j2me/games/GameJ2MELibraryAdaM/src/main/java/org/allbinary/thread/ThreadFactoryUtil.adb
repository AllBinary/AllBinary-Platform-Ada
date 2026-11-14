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


with org.allbinary.J2MEUtil_Package; use org.allbinary.J2MEUtil_Package;
with org.allbinary.canvas.RunnableCanvas_Package; use org.allbinary.canvas.RunnableCanvas_Package;
with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package; use org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;
with org.allbinary.game.displayable.canvas.DemoCanvas_Package; use org.allbinary.game.displayable.canvas.DemoCanvas_Package;
with org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface_Package; use org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface_Package;
with org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface_Package_References;
with org.allbinary.game.displayable.canvas.RunnableCanvasSingleThreadStartRunnable_Package; use org.allbinary.game.displayable.canvas.RunnableCanvasSingleThreadStartRunnable_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.thread.ABRunnable_Package; use org.allbinary.thread.ABRunnable_Package;
with org.allbinary.thread.ABRunnable_Package_References;
with org.allbinary.thread.PrimaryThreadPool_Package; use org.allbinary.thread.PrimaryThreadPool_Package;
with org.allbinary.thread.ThreadPool_Package; use org.allbinary.thread.ThreadPool_Package;
with org.allbinary.graphics.form.ABCustomForm_Package;
with org.allbinary.graphics.form.item.ABCustomGaugeItem_Package;
with org.allbinary.graphics.form.item.ABCustomItem_Package;
with org.allbinary.util.ABHashtable_Package;
with org.allbinary.thread.ABRunnable_Package;
with org.allbinary.util.ABStack_Package;
with org.allbinary.graphics.form.item.ABStringComponent_Package;
with org.allbinary.logic.ABSystemWrapper_Package;
with org.allbinary.graphics.form.item.ABTextFieldItem_Package;
with org.allbinary.graphics.form.item.ABTextItem_Package;
with org.allbinary.util.ABVector_Package;
with org.allbinary.thread.ARunnable_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.business.advertisement.AdConfiguration_Package;
with org.allbinary.business.advertisement.AdvertisementProcessorInterface_Package;
with org.allbinary.business.advertisement.Advertisements_Package;
with javax.microedition.lcdui.Alert_Package;
with javax.microedition.lcdui.AlertType_Package;
with org.microemu.device.ui.AlertUI_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.game.displayable.canvas.AllBinaryGameCanvasInterface_Package;
with org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
with org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.midlet.AllBinaryMidlet_Package;
with org.allbinary.input.AllBinarySensor_Package;
with org.allbinary.animation.Animation_Package;
with org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.util.ArrayUtil_Package;
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
with org.allbinary.game.paint.ColorFillBasePaintable_Package;
with javax.microedition.lcdui.Command_Package;
with javax.microedition.lcdui.CommandListener_Package;
with org.microemu.device.ui.CommandUI_Package;
with org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.graphics.form.item.CustomCustomItem_Package;
with org.allbinary.graphics.form.CustomDisplayable_Package;
with org.allbinary.graphics.form.CustomScreen_Package;
with org.allbinary.graphics.form.item.CustomTextBox_Package;
with org.allbinary.game.displayable.canvas.DemoGameBehavior_Package;
with org.allbinary.game.displayable.canvas.DemoGameStartupRunnable_Package;
with org.allbinary.game.displayable.canvas.DemoPaintableInterface_Package;
with org.microemu.device.Device_Package;
with org.microemu.device.DeviceDisplay_Package;
with org.allbinary.direction.Direction_Package;
with javax.microedition.lcdui.Display_Package;
with javax.microedition.lcdui.DisplayAccessor_Package;
with org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package;
with org.allbinary.graphics.displayable.event.DisplayChangeEventListener_Package;
with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
with javax.microedition.lcdui.Displayable_Package;
with org.allbinary.graphics.displayable.DisplayableInterface_Package;
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
with org.allbinary.canvas.FullScreenUtil_Package;
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
with org.allbinary.game.init.GameInitializationInterfaceFactoryInterface_Package;
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
with org.allbinary.game.state.GameStateCompositeInterface_Package;
with org.allbinary.game.state.GameStateFactory_Package;
with org.allbinary.game.GameStrings_Package;
with org.allbinary.graphics.displayable.GameTickDisplayInfoSingleton_Package;
with org.allbinary.time.GameTickTimeDelayHelper_Package;
with org.allbinary.game.GameType_Package;
with org.allbinary.game.GameTypeFactory_Package;
with javax.microedition.lcdui.Gauge_Package;
with org.allbinary.logic.system.os.GenericOperatingSystem_Package;
with javax.microedition.lcdui.Graphics_Package;
with org.allbinary.game.identification.Group_Package;
with org.allbinary.game.score.HighScore_Package;
with org.allbinary.game.score.displayable.HighScoreTextBox_Package;
with org.allbinary.game.score.displayable.HighScoreUtil_Package;
with org.allbinary.game.score.HighScores_Package;
with org.allbinary.game.score.HighScoresFactoryInterface_Package;
with org.allbinary.game.score.HighScoresHelperBase_Package;
with org.allbinary.game.score.HighScoresHelperBaseInterface_Package;
with org.allbinary.game.score.HighScoresPaintable_Package;
with org.allbinary.game.score.HighScoresResultsListener_Package;
with javax.microedition.lcdui.Image_Package;
with javax.microedition.lcdui.ImageStringItem_Package;
with org.allbinary.animation.IndexedAnimation_Package;
with org.allbinary.graphics.paint.InitUpdatePaintable_Package;
with org.allbinary.game.input.Input_Package;
with org.allbinary.game.input.InputFactory_Package;
with org.allbinary.game.input.mapping.InputMapping_Package;
with org.microemu.device.InputMethod_Package;
with org.microemu.device.InputMethodEvent_Package;
with org.microemu.device.InputMethodListener_Package;
with org.allbinary.game.input.InputProcessor_Package;
with org.allbinary.game.input.mapping.InputToGameKeyMapping_Package;
with org.allbinary.game.IntermissionCompositeInterface_Package;
with org.allbinary.game.IntermissionEnableListenerInterface_Package;
with org.allbinary.game.IntermissionInterface_Package;
with javax.microedition.lcdui.Item_Package;
with javax.microedition.lcdui.ItemCommandListener_Package;
with org.allbinary.graphics.form.ItemPaintable_Package;
with org.allbinary.graphics.form.ItemPaintableFactory_Package;
with javax.microedition.lcdui.ItemStateListener_Package;
with org.allbinary.layer.Layer_Package;
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
with javax.microedition.midlet.MIDlet_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.game.displayable.canvas.MenuListener_Package;
with org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package;
with org.allbinary.input.motion.gesture.MotionGestureInput_Package;
with org.microemu.device.MutableImage_Package;
with org.allbinary.graphics.displayable.MyCanvas_Package;
with org.allbinary.graphics.displayable.command.MyCommandsFactory_Package;
with org.allbinary.graphics.font.MyFontProcessor_Package;
with org.allbinary.game.displayable.canvas.MyFormUtil_Package;
with org.allbinary.game.rand.MyRandomFactory_Package;
with org.allbinary.thread.NullRunnable_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.graphics.opengles.OpenGLFeature_Package;
with org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package;
with org.microemu.device.ui.PaintEvent_Package;
with org.allbinary.graphics.paint.Paintable_Package;
with org.allbinary.graphics.form.PaintableForm_Package;
with org.allbinary.graphics.paint.PaintableInterface_Package;
with javax.microedition.media.Player_Package;
with org.allbinary.game.input.PlayerGameInput_Package;
with org.allbinary.game.input.PlayerGameInputCompositeInterface_Package;
with javax.microedition.media.PlayerListener_Package;
with org.allbinary.media.audio.PlayerQueue_Package;
with org.allbinary.game.PlayerType_Package;
with org.microemu.device.ui.PointerEvent_Package;
with org.allbinary.game.displayable.canvas.PopupMenuInterface_Package;
with org.allbinary.game.input.event.PressGameKeyEventHandler_Package;
with org.allbinary.thread.PrimaryThreadPool_Package;
with org.allbinary.logic.math.PrimitiveLongSingleton_Package;
with org.allbinary.thread.PriorityRunnable_Package;
with org.allbinary.canvas.Processor_Package;
with org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package;
with org.allbinary.graphics.canvas.transition.progress.ProgressEndListener_Package;
with org.allbinary.game.input.event.RawKeyEventListener_Package;
with org.allbinary.graphics.Rectangle_Package;
with org.allbinary.math.RectangleCollisionUtil_Package;
with org.allbinary.game.displayable.RepaintBehavior_Package;
with org.allbinary.game.resource.ResourceLoadingLevel_Package;
with org.allbinary.thread.RunnableInterface_Package;
with org.allbinary.graphics.displayable.ScalableListener_Package;
with javax.microedition.lcdui.Screen_Package;
with org.allbinary.graphics.ScreenCapture_Package;
with org.allbinary.graphics.form.ScrollSelectionForm_Package;
with org.allbinary.input.gyro.SensorGameUpdateProcessor_Package;
with org.allbinary.logic.system.SoftwareInformation_Package;
with org.allbinary.media.audio.Sound_Package;
with org.allbinary.animation.special.SpecialAnimation_Package;
with org.allbinary.graphics.paint.StatePaintable_Package;
with org.allbinary.logic.StdUtil_Package;
with javax.microedition.lcdui.StringComponent_Package;
with org.allbinary.thread.SynchObject_Package;
with javax.microedition.lcdui.TextBox_Package;
with org.microemu.device.ui.TextBoxUI_Package;
with javax.microedition.lcdui.TextField_Package;
with org.allbinary.thread.ThreadObjectUtil_Package;
with org.allbinary.thread.ThreadPool_Package;
with org.allbinary.thread.ThreadPoolStrings_Package;
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
with org.allbinary.graphics.font.UpdateMyFontInterface_Package;
with org.allbinary.view.ViewPositionBase_Package;
with org.allbinary.view.event.ViewPositionEvent_Package;
with org.allbinary.input.event.VirtualKeyboardEvent_Package;
with org.allbinary.input.event.VirtualKeyboardEventHandler_Package;
with org.allbinary.logic.util.visitor.Visitor_Package;

package body org.allbinary.thread.ThreadFactoryUtil_Package is

   package J2MEUtil_Package renames Standard.org.allbinary.J2MEUtil_Package;
   package RunnableCanvas_Package renames Standard.org.allbinary.canvas.RunnableCanvas_Package;
   package AllBinaryGameCanvas_Package renames Standard.org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;
   package DemoCanvas_Package renames Standard.org.allbinary.game.displayable.canvas.DemoCanvas_Package;
   package RunnableCanvasSingleThreadStartRunnable_Package renames Standard.org.allbinary.game.displayable.canvas.RunnableCanvasSingleThreadStartRunnable_Package;
   package PreLogUtil_Package renames Standard.org.allbinary.logic.communication.log.PreLogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   subtype GameCanvasRunnableInterface_Access is org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface_Package_References.GameCanvasRunnableInterface_Access;
   function "=" (Left, Right : GameCanvasRunnableInterface_Access) return Boolean renames org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface_Package_References."=";
   subtype GameCanvasRunnableInterface_Access_Array is org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface_Package_References.GameCanvasRunnableInterface_Access_Array;
   function "=" (Left, Right : GameCanvasRunnableInterface_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface_Package_References."=";
   subtype GameCanvasRunnableInterface_Access_Array_Access is org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface_Package_References.GameCanvasRunnableInterface_Access_Array_Access;
   function "=" (Left, Right : GameCanvasRunnableInterface_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface_Package_References."=";
   subtype GameCanvasRunnableInterface_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface_Package_References.GameCanvasRunnableInterface_Access_Array_Access_Array;
   function "=" (Left, Right : GameCanvasRunnableInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface_Package_References."=";
   subtype GameCanvasRunnableInterface_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface_Package_References.GameCanvasRunnableInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameCanvasRunnableInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface_Package_References."=";
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
   subtype ABRunnable_Access is org.allbinary.thread.ABRunnable_Package_References.ABRunnable_Access;
   function "=" (Left, Right : ABRunnable_Access) return Boolean renames org.allbinary.thread.ABRunnable_Package_References."=";
   subtype ABRunnable_Access_Array is org.allbinary.thread.ABRunnable_Package_References.ABRunnable_Access_Array;
   function "=" (Left, Right : ABRunnable_Access_Array) return Boolean renames org.allbinary.thread.ABRunnable_Package_References."=";
   subtype ABRunnable_Access_Array_Access is org.allbinary.thread.ABRunnable_Package_References.ABRunnable_Access_Array_Access;
   function "=" (Left, Right : ABRunnable_Access_Array_Access) return Boolean renames org.allbinary.thread.ABRunnable_Package_References."=";
   subtype ABRunnable_Access_Array_Access_Array is org.allbinary.thread.ABRunnable_Package_References.ABRunnable_Access_Array_Access_Array;
   function "=" (Left, Right : ABRunnable_Access_Array_Access_Array) return Boolean renames org.allbinary.thread.ABRunnable_Package_References."=";
   subtype ABRunnable_Access_Array_Access_Array_Access is org.allbinary.thread.ABRunnable_Package_References.ABRunnable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ABRunnable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.thread.ABRunnable_Package_References."=";
   procedure Initialize_Fields (This : in out ThreadFactoryUtil'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out ThreadFactoryUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return ThreadFactoryUtil_Access is
      This : constant ThreadFactoryUtil_Access := new ThreadFactoryUtil;
   begin
      ThreadFactoryUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return ThreadFactoryUtil_Access is
   begin
        return ThreadFactoryUtil_Package.instance;
   end getInstance;

   function getInstanceGameCanvasRunnable (This : in out ThreadFactoryUtil; runnable_Param : access GameCanvasRunnableInterface_Package.GameCanvasRunnableInterface'Class) return Thread_Access is
      runnable : constant GameCanvasRunnableInterface_Access := GameCanvasRunnableInterface_Access (runnable_Param);
   begin
        return ThreadFactoryUtil'Class (This).getInstanceType (runnable, runnable.getType);
   end getInstanceGameCanvasRunnable;

   function getInstanceForRunnable (This : in out ThreadFactoryUtil; runnable_Param : access ABRunnable_Package.ABRunnable'Class) return Thread_Access is
      runnable : constant ABRunnable_Access := ABRunnable_Access (runnable_Param);
   begin
        return ThreadFactoryUtil'Class (This).getInstanceType (runnable, runnable.getType);
   end getInstanceForRunnable;

   function getInstanceType (This : in out ThreadFactoryUtil; runnable_Param : access Runnable_Package.Runnable'Class; type_Id : Integer) return Thread_Access is
      runnable : constant Runnable_Access := Runnable_Access (runnable_Param);
      commonStrings : CommonStrings_Access;
      primaryThreadPool : ThreadPool_Access;
      demoGameSingleThreadStartRunnable : RunnableCanvasSingleThreadStartRunnable_Access;
      thread : Thread_Access;
   begin
        commonStrings := CommonStrings_Package.getInstance;
        if J2MEUtil_Package.isHTML then
            if ((type_Id) = (DemoCanvas_Package.TYPE_Id)) or else ((type_Id) = (AllBinaryGameCanvas_Package.TYPE_Id)) then
                demoGameSingleThreadStartRunnable := RunnableCanvasSingleThreadStartRunnable_Package.Create (RunnableCanvas_Access (runnable));
                PreLogUtil_Package.put (StringMaker_Package.Create.append (To_Unbounded_String ("Using Pseudo Thread for DemoCanvas/AllBinaryGameCanvas under PlayN/HTML5: ")).append (StringUtil_Package.getInstance.toString (Runnable_Package.Java_Object_Access_From_Runnable (runnable))).toString, ThreadFactoryUtil_Access'(This'Unchecked_Access), commonStrings.CONSTRUCTOR);
                primaryThreadPool := PrimaryThreadPool_Package.getInstance;
                primaryThreadPool.runTask (demoGameSingleThreadStartRunnable);
            else
                PreLogUtil_Package.put (StringMaker_Package.Create.append (To_Unbounded_String ("Using Pseudo Thread for Runnable under PlayN/HTML5: ")).append (StringUtil_Package.getInstance.toString (Runnable_Package.Java_Object_Access_From_Runnable (runnable))).toString, ThreadFactoryUtil_Access'(This'Unchecked_Access), commonStrings.CONSTRUCTOR);
                primaryThreadPool := PrimaryThreadPool_Package.getInstance;
                primaryThreadPool.runTask (runnable);
            end if;
        end if;
        thread := Thread_Package.Create (runnable, Java_Object'Class (runnable.all).toString);
        This.logUtil.putF (thread.toString, ThreadFactoryUtil_Access'(This'Unchecked_Access), commonStrings.CONSTRUCTOR);
        return thread;
   end getInstanceType;

   procedure start (This : in out ThreadFactoryUtil; thread_Param : access Thread_Package.Thread'Class) is
      thread : constant Thread_Access := Thread_Access (thread_Param);
   begin
        thread.start;
   end start;

   procedure getInstanceGameCanvasRunnable (This : in out ThreadFactoryUtil; runnable_Param : access GameCanvasRunnableInterface_Package.GameCanvasRunnableInterface'Class) is
      Java_Result : constant Thread_Access := ThreadFactoryUtil'Class (This).getInstanceGameCanvasRunnable (runnable_Param => runnable_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstanceGameCanvasRunnable;

   procedure getInstanceForRunnable (This : in out ThreadFactoryUtil; runnable_Param : access ABRunnable_Package.ABRunnable'Class) is
      Java_Result : constant Thread_Access := ThreadFactoryUtil'Class (This).getInstanceForRunnable (runnable_Param => runnable_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstanceForRunnable;

   procedure getInstanceType (This : in out ThreadFactoryUtil; runnable_Param : access Runnable_Package.Runnable'Class; type_Id : Integer) is
      Java_Result : constant Thread_Access := ThreadFactoryUtil'Class (This).getInstanceType (runnable_Param => runnable_Param, type_Id => type_Id);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstanceType;

begin
   null;
   instance := ThreadFactoryUtil_Package.Create;

end org.allbinary.thread.ThreadFactoryUtil_Package;


