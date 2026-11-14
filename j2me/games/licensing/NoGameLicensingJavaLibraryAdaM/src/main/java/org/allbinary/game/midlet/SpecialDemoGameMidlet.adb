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


with org.allbinary.logic.system.security.licensing.ClientInformationFactory_Package; use org.allbinary.logic.system.security.licensing.ClientInformationFactory_Package;
with org.allbinary.logic.system.security.licensing.ClientInformationFactory_Package_References;
with org.allbinary.logic.system.security.licensing.LicenseServerInitFileUtil_Package; use org.allbinary.logic.system.security.licensing.LicenseServerInitFileUtil_Package;
with org.allbinary.game.midlet.LicenseLoadingType_Package; use org.allbinary.game.midlet.LicenseLoadingType_Package;
with org.allbinary.game.midlet.LicenseLoadingType_Package_References;
with org.allbinary.game.midlet.LicensedDemoSetupFactory_Package; use org.allbinary.game.midlet.LicensedDemoSetupFactory_Package;
with org.allbinary.game.midlet.LicensedDemoSetupFactory_Package_References;
with org.allbinary.game.midlet.LicenseCheckRunnableFactory_Package; use org.allbinary.game.midlet.LicenseCheckRunnableFactory_Package;
with org.allbinary.game.midlet.LicenseCheckRunnableFactory_Package_References;
with org.allbinary.graphics.form.ABCustomForm_Package;
with org.allbinary.graphics.form.item.ABCustomItem_Package;
with org.allbinary.util.ABHashtable_Package;
with org.allbinary.thread.ABRunnable_Package;
with org.allbinary.util.ABStack_Package;
with org.allbinary.logic.ABSystemWrapper_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.graphics.displayable.screen.AboutCommandProcessor_Package;
with org.allbinary.business.advertisement.AdConfiguration_Package;
with org.allbinary.business.advertisement.AdvertisementProcessorInterface_Package;
with org.allbinary.business.advertisement.Advertisements_Package;
with javax.microedition.lcdui.Alert_Package;
with javax.microedition.lcdui.AlertType_Package;
with org.microemu.device.ui.AlertUI_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
with org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.midlet.AllBinaryMidlet_Package;
with org.allbinary.util.ArrayUtil_Package;
with javax.microedition.lcdui.BaseDisplay_Package;
with org.allbinary.graphics.displayable.BaseScalable_Package;
with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
with org.allbinary.game.displayable.canvas.BasicMenuInputProcessor_Package;
with javax.microedition.lcdui.Canvas_Package;
with org.allbinary.graphics.displayable.CanvasStrings_Package;
with org.microemu.device.ui.CanvasUI_Package;
with org.allbinary.logic.java.character_Id.CharacterSet_Package;
with javax.microedition.lcdui.ChoiceGroup_Package;
with javax.microedition.lcdui.ChoiceItem_Package;
with org.allbinary.logic.system.security.licensing.ClientInformation_Package;
with org.allbinary.game.paint.ColorFillBasePaintable_Package;
with javax.microedition.lcdui.Command_Package;
with org.allbinary.graphics.displayable.screen.CommandForm_Package;
with javax.microedition.lcdui.CommandListener_Package;
with org.microemu.device.ui.CommandUI_Package;
with org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.graphics.form.CustomDisplayable_Package;
with org.allbinary.graphics.form.CustomScreen_Package;
with org.allbinary.debug.DebugInterface_Package;
with org.allbinary.game.midlet.DemoSetup_Package;
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
with org.allbinary.util.EnumerationUtil_Package;
with javax.microedition.lcdui.Event_Package;
with org.microemu.device.ui.EventDispatcher_Package;
with org.allbinary.logic.util.event.EventListenerInterface_Package;
with org.allbinary.logic.util.event.EventStrings_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.game.configuration.feature.Feature_Package;
with org.allbinary.game.configuration.feature.Features_Package;
with javax.microedition.lcdui.Font_Package;
with org.microemu.device.FontManager_Package;
with javax.microedition.lcdui.Form_Package;
with org.allbinary.graphics.form.FormType_Package;
with org.microemu.device.ui.FormUI_Package;
with org.allbinary.canvas.FullScreenUtil_Package;
with org.allbinary.graphics.GPoint_Package;
with org.allbinary.game.GameAdState_Package;
with org.allbinary.business.advertisement.GameAdStateBase_Package;
with org.allbinary.business.advertisement.GameAdStateFactory_Package;
with org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface_Package;
with org.allbinary.game.displayable.canvas.GameCommandCanvas_Package;
with org.allbinary.game.GameInfo_Package;
with org.allbinary.game.GameInfoData_Package;
with org.allbinary.game.input.GameInput_Package;
with org.allbinary.game.input.GameInputStrings_Package;
with org.allbinary.game.input.GameKey_Package;
with org.allbinary.game.input.event.GameKeyEvent_Package;
with org.allbinary.game.input.event.GameKeyEventFactory_Package;
with org.allbinary.game.input.GameKeyEventSourceInterface_Package;
with org.allbinary.game.input.GameKeyFactory_Package;
with org.allbinary.game.midlet.GameMidlet_Package;
with org.allbinary.game.midlet.GameMidletStateFactory_Package;
with org.allbinary.game.GameMode_Package;
with org.allbinary.game.state.GameState_Package;
with org.allbinary.game.state.GameStateFactory_Package;
with org.allbinary.game.GameStrings_Package;
with org.allbinary.game.GameType_Package;
with javax.microedition.lcdui.Gauge_Package;
with org.allbinary.logic.system.os.GenericOperatingSystem_Package;
with javax.microedition.lcdui.Graphics_Package;
with org.allbinary.game.identification.Group_Package;
with org.allbinary.game.paint.help.HelpPaintable_Package;
with org.allbinary.game.score.HighScore_Package;
with org.allbinary.game.score.HighScoreCommandsBaseFactory_Package;
with org.allbinary.game.score.HighScoreCommandsFactory_Package;
with org.allbinary.game.score.HighScores_Package;
with org.allbinary.game.score.displayable.HighScoresCanvas_Package;
with org.allbinary.game.score.HighScoresCanvasInputProcessor_Package;
with org.allbinary.game.score.HighScoresCanvasInputProcessorFactoryInterface_Package;
with org.allbinary.game.score.HighScoresFactoryInterface_Package;
with org.allbinary.game.score.HighScoresHelperBase_Package;
with org.allbinary.game.score.HighScoresHelperBaseInterface_Package;
with org.allbinary.game.score.HighScoresPaintable_Package;
with org.allbinary.game.score.HighScoresResultsListener_Package;
with javax.microedition.lcdui.Image_Package;
with javax.microedition.lcdui.ImageStringItem_Package;
with org.allbinary.game.input.Input_Package;
with org.allbinary.game.input.mapping.InputMapping_Package;
with org.microemu.device.InputMethod_Package;
with org.microemu.device.InputMethodEvent_Package;
with org.microemu.device.InputMethodListener_Package;
with org.allbinary.game.input.mapping.InputToGameKeyMapping_Package;
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
with org.allbinary.game.midlet.LicenseCheckRunnableFactory_Package;
with org.allbinary.game.midlet.LicenseLoadingType_Package;
with org.allbinary.game.midlet.LicensedDemoSetupFactory_Package;
with javax.microedition.lcdui.List_Package;
with org.microemu.device.ui.ListUI_Package;
with org.allbinary.game.configuration.LoadGameForm_Package;
with org.allbinary.game.input.LocalPlayerInputIdFactory_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.MEUtil_Package;
with javax.microedition.midlet.MIDlet_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.midlet.MidletStrings_Package;
with org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package;
with org.allbinary.input.motion.gesture.MotionGestureInput_Package;
with org.microemu.device.MutableImage_Package;
with org.allbinary.graphics.displayable.MyCanvas_Package;
with org.allbinary.graphics.displayable.command.MyCommandsFactory_Package;
with org.allbinary.graphics.font.MyFontProcessor_Package;
with org.allbinary.game.rand.MyRandomFactory_Package;
with org.allbinary.logic.NullUtil_Package;
with org.microemu.device.ui.PaintEvent_Package;
with org.allbinary.graphics.paint.Paintable_Package;
with org.allbinary.graphics.form.PaintableForm_Package;
with javax.microedition.media.Player_Package;
with org.allbinary.game.input.PlayerGameInput_Package;
with org.allbinary.game.input.PlayerGameInputCompositeInterface_Package;
with javax.microedition.media.PlayerListener_Package;
with org.allbinary.game.PlayerType_Package;
with org.microemu.device.ui.PointerEvent_Package;
with org.allbinary.canvas.Processor_Package;
with org.allbinary.midlet.ProgressMidlet_Package;
with org.allbinary.graphics.Rectangle_Package;
with org.allbinary.math.RectangleCollisionUtil_Package;
with org.allbinary.game.displayable.RepaintBehavior_Package;
with org.allbinary.graphics.displayable.ScalableListener_Package;
with javax.microedition.lcdui.Screen_Package;
with org.allbinary.graphics.form.ScrollSelectionForm_Package;
with org.allbinary.graphics.paint.SimpleTextPaintable_Package;
with org.allbinary.logic.system.SoftwareInformation_Package;
with org.allbinary.media.audio.Sound_Package;
with javax.microedition.lcdui.StringComponent_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.thread.SynchObject_Package;
with javax.microedition.lcdui.TextBox_Package;
with org.microemu.device.ui.TextBoxUI_Package;
with javax.microedition.lcdui.TextField_Package;
with javax.microedition.lcdui.Ticker_Package;
with org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.time.TimeStampUtil_Package;
with org.allbinary.input.TouchJ2ME_Package;
with org.allbinary.TsUtil_Package;
with org.microemu.device.ui.UIFactory_Package;
with org.allbinary.game.input.event.UpGameKeyEventHandler_Package;
with org.allbinary.game.input.event.UpGameKeyEventHandlerBase_Package;
with org.allbinary.view.ViewPositionBase_Package;
with org.allbinary.view.event.ViewPositionEvent_Package;
with org.allbinary.input.event.VirtualKeyboardEvent_Package;
with org.allbinary.graphics.displayable.screen.WebCommandProcessor_Package;

package body org.allbinary.game.midlet.SpecialDemoGameMidlet_Package is

   package LicenseServerInitFileUtil_Package renames Standard.org.allbinary.logic.system.security.licensing.LicenseServerInitFileUtil_Package;
   subtype ClientInformationFactory_Access is org.allbinary.logic.system.security.licensing.ClientInformationFactory_Package_References.ClientInformationFactory_Access;
   function "=" (Left, Right : ClientInformationFactory_Access) return Boolean renames org.allbinary.logic.system.security.licensing.ClientInformationFactory_Package_References."=";
   subtype ClientInformationFactory_Access_Array is org.allbinary.logic.system.security.licensing.ClientInformationFactory_Package_References.ClientInformationFactory_Access_Array;
   function "=" (Left, Right : ClientInformationFactory_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.ClientInformationFactory_Package_References."=";
   subtype ClientInformationFactory_Access_Array_Access is org.allbinary.logic.system.security.licensing.ClientInformationFactory_Package_References.ClientInformationFactory_Access_Array_Access;
   function "=" (Left, Right : ClientInformationFactory_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.ClientInformationFactory_Package_References."=";
   subtype ClientInformationFactory_Access_Array_Access_Array is org.allbinary.logic.system.security.licensing.ClientInformationFactory_Package_References.ClientInformationFactory_Access_Array_Access_Array;
   function "=" (Left, Right : ClientInformationFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.ClientInformationFactory_Package_References."=";
   subtype ClientInformationFactory_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.licensing.ClientInformationFactory_Package_References.ClientInformationFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ClientInformationFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.ClientInformationFactory_Package_References."=";
   subtype LicenseLoadingType_Access is org.allbinary.game.midlet.LicenseLoadingType_Package_References.LicenseLoadingType_Access;
   function "=" (Left, Right : LicenseLoadingType_Access) return Boolean renames org.allbinary.game.midlet.LicenseLoadingType_Package_References."=";
   subtype LicenseLoadingType_Access_Array is org.allbinary.game.midlet.LicenseLoadingType_Package_References.LicenseLoadingType_Access_Array;
   function "=" (Left, Right : LicenseLoadingType_Access_Array) return Boolean renames org.allbinary.game.midlet.LicenseLoadingType_Package_References."=";
   subtype LicenseLoadingType_Access_Array_Access is org.allbinary.game.midlet.LicenseLoadingType_Package_References.LicenseLoadingType_Access_Array_Access;
   function "=" (Left, Right : LicenseLoadingType_Access_Array_Access) return Boolean renames org.allbinary.game.midlet.LicenseLoadingType_Package_References."=";
   subtype LicenseLoadingType_Access_Array_Access_Array is org.allbinary.game.midlet.LicenseLoadingType_Package_References.LicenseLoadingType_Access_Array_Access_Array;
   function "=" (Left, Right : LicenseLoadingType_Access_Array_Access_Array) return Boolean renames org.allbinary.game.midlet.LicenseLoadingType_Package_References."=";
   subtype LicenseLoadingType_Access_Array_Access_Array_Access is org.allbinary.game.midlet.LicenseLoadingType_Package_References.LicenseLoadingType_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LicenseLoadingType_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.midlet.LicenseLoadingType_Package_References."=";
   subtype LicensedDemoSetupFactory_Access is org.allbinary.game.midlet.LicensedDemoSetupFactory_Package_References.LicensedDemoSetupFactory_Access;
   function "=" (Left, Right : LicensedDemoSetupFactory_Access) return Boolean renames org.allbinary.game.midlet.LicensedDemoSetupFactory_Package_References."=";
   subtype LicensedDemoSetupFactory_Access_Array is org.allbinary.game.midlet.LicensedDemoSetupFactory_Package_References.LicensedDemoSetupFactory_Access_Array;
   function "=" (Left, Right : LicensedDemoSetupFactory_Access_Array) return Boolean renames org.allbinary.game.midlet.LicensedDemoSetupFactory_Package_References."=";
   subtype LicensedDemoSetupFactory_Access_Array_Access is org.allbinary.game.midlet.LicensedDemoSetupFactory_Package_References.LicensedDemoSetupFactory_Access_Array_Access;
   function "=" (Left, Right : LicensedDemoSetupFactory_Access_Array_Access) return Boolean renames org.allbinary.game.midlet.LicensedDemoSetupFactory_Package_References."=";
   subtype LicensedDemoSetupFactory_Access_Array_Access_Array is org.allbinary.game.midlet.LicensedDemoSetupFactory_Package_References.LicensedDemoSetupFactory_Access_Array_Access_Array;
   function "=" (Left, Right : LicensedDemoSetupFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.midlet.LicensedDemoSetupFactory_Package_References."=";
   subtype LicensedDemoSetupFactory_Access_Array_Access_Array_Access is org.allbinary.game.midlet.LicensedDemoSetupFactory_Package_References.LicensedDemoSetupFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LicensedDemoSetupFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.midlet.LicensedDemoSetupFactory_Package_References."=";
   subtype LicenseCheckRunnableFactory_Access is org.allbinary.game.midlet.LicenseCheckRunnableFactory_Package_References.LicenseCheckRunnableFactory_Access;
   function "=" (Left, Right : LicenseCheckRunnableFactory_Access) return Boolean renames org.allbinary.game.midlet.LicenseCheckRunnableFactory_Package_References."=";
   subtype LicenseCheckRunnableFactory_Access_Array is org.allbinary.game.midlet.LicenseCheckRunnableFactory_Package_References.LicenseCheckRunnableFactory_Access_Array;
   function "=" (Left, Right : LicenseCheckRunnableFactory_Access_Array) return Boolean renames org.allbinary.game.midlet.LicenseCheckRunnableFactory_Package_References."=";
   subtype LicenseCheckRunnableFactory_Access_Array_Access is org.allbinary.game.midlet.LicenseCheckRunnableFactory_Package_References.LicenseCheckRunnableFactory_Access_Array_Access;
   function "=" (Left, Right : LicenseCheckRunnableFactory_Access_Array_Access) return Boolean renames org.allbinary.game.midlet.LicenseCheckRunnableFactory_Package_References."=";
   subtype LicenseCheckRunnableFactory_Access_Array_Access_Array is org.allbinary.game.midlet.LicenseCheckRunnableFactory_Package_References.LicenseCheckRunnableFactory_Access_Array_Access_Array;
   function "=" (Left, Right : LicenseCheckRunnableFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.midlet.LicenseCheckRunnableFactory_Package_References."=";
   subtype LicenseCheckRunnableFactory_Access_Array_Access_Array_Access is org.allbinary.game.midlet.LicenseCheckRunnableFactory_Package_References.LicenseCheckRunnableFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LicenseCheckRunnableFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.midlet.LicenseCheckRunnableFactory_Package_References."=";
   procedure Initialize_Fields (This : in out SpecialDemoGameMidlet'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out SpecialDemoGameMidlet'Class; clientInformationFactory_Param : access ClientInformationFactory_Package.ClientInformationFactory'Class; licenseLoadingType_Param : access LicenseLoadingType_Package.LicenseLoadingType'Class; demoSetupFactory_Param : access LicensedDemoSetupFactory_Package.LicensedDemoSetupFactory'Class; licenseCheckRunnableFactory_Param : access LicenseCheckRunnableFactory_Package.LicenseCheckRunnableFactory'Class) is
      clientInformationFactory : constant ClientInformationFactory_Access := ClientInformationFactory_Access (clientInformationFactory_Param);
      licenseLoadingType : constant LicenseLoadingType_Access := LicenseLoadingType_Access (licenseLoadingType_Param);
      demoSetupFactory : constant LicensedDemoSetupFactory_Access := LicensedDemoSetupFactory_Access (demoSetupFactory_Param);
      licenseCheckRunnableFactory : constant LicenseCheckRunnableFactory_Access := LicenseCheckRunnableFactory_Access (licenseCheckRunnableFactory_Param);
   begin
        DemoGameMidlet_Package.Initialize (This, clientInformationFactory);
   end Initialize;

   function Create (clientInformationFactory_Param : access ClientInformationFactory_Package.ClientInformationFactory'Class; licenseLoadingType_Param : access LicenseLoadingType_Package.LicenseLoadingType'Class; demoSetupFactory_Param : access LicensedDemoSetupFactory_Package.LicensedDemoSetupFactory'Class; licenseCheckRunnableFactory_Param : access LicenseCheckRunnableFactory_Package.LicenseCheckRunnableFactory'Class) return SpecialDemoGameMidlet_Access is
      This : constant SpecialDemoGameMidlet_Access := new SpecialDemoGameMidlet;
   begin
      SpecialDemoGameMidlet_Package.Initialize (This.all, clientInformationFactory_Param, licenseLoadingType_Param, demoSetupFactory_Param, licenseCheckRunnableFactory_Param);
      return This;
   end Create;

   procedure initView (This : in out SpecialDemoGameMidlet) is
   begin
        null;
   end initView;

   procedure preInit (This : in out SpecialDemoGameMidlet) is
   begin
        LicenseServerInitFileUtil_Package.Create.init;
   end preInit;

end org.allbinary.game.midlet.SpecialDemoGameMidlet_Package;


