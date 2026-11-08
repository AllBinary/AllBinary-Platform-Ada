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


with javax.microedition.lcdui.Displayable_Package; use javax.microedition.lcdui.Displayable_Package;
with javax.microedition.lcdui.Displayable_Package_References;
with org.allbinary.J2MEUtil_Package; use org.allbinary.J2MEUtil_Package;
with org.allbinary.game.configuration.feature.Features_Package; use org.allbinary.game.configuration.feature.Features_Package;
with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package; use org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;
with org.allbinary.game.displayable.canvas.DemoCanvas_Package; use org.allbinary.game.displayable.canvas.DemoCanvas_Package;
with org.allbinary.game.displayable.canvas.GameInputMappingCanvas_Package; use org.allbinary.game.displayable.canvas.GameInputMappingCanvas_Package;
with org.allbinary.game.displayable.canvas.GameInputMappingInstructionsCanvas_Package; use org.allbinary.game.displayable.canvas.GameInputMappingInstructionsCanvas_Package;
with org.allbinary.game.displayable.canvas.GameRunnable_Package; use org.allbinary.game.displayable.canvas.GameRunnable_Package;
with org.allbinary.game.displayable.canvas.GameRunnable_Package_References;
with org.allbinary.game.displayable.canvas.NullDisplayable_Package; use org.allbinary.game.displayable.canvas.NullDisplayable_Package;
with org.allbinary.game.displayable.canvas.NullWaitGameRunnable_Package; use org.allbinary.game.displayable.canvas.NullWaitGameRunnable_Package;
with org.allbinary.game.layer.SWTUtil_Package; use org.allbinary.game.layer.SWTUtil_Package;
with org.allbinary.game.score.displayable.HighScoresCanvas_Package; use org.allbinary.game.score.displayable.HighScoresCanvas_Package;
with org.allbinary.graphics.GraphicsStrings_Package; use org.allbinary.graphics.GraphicsStrings_Package;
with org.allbinary.graphics.displayable.CanvasStrings_Package; use org.allbinary.graphics.displayable.CanvasStrings_Package;
with org.allbinary.graphics.displayable.CanvasStrings_Package_References;
with org.allbinary.graphics.displayable.MyCanvas_Package; use org.allbinary.graphics.displayable.MyCanvas_Package;
with org.allbinary.graphics.displayable.MyCanvas_Package_References;
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.string_Id.StringUtil_Package_References;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with org.allbinary.thread.NullRunnable_Package; use org.allbinary.thread.NullRunnable_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package; use org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package;
with org.allbinary.util.ABHashtable_Package;
with org.allbinary.thread.ABRunnable_Package;
with org.allbinary.util.ABStack_Package;
with org.allbinary.logic.ABSystemWrapper_Package;
with org.allbinary.util.ABVector_Package;
with org.allbinary.thread.ARunnable_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with javax.microedition.lcdui.Alert_Package;
with javax.microedition.lcdui.AlertType_Package;
with org.microemu.device.ui.AlertUI_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.game.displayable.canvas.AllBinaryGameCanvasInterface_Package;
with org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
with org.allbinary.util.ArrayUtil_Package;
with javax.microedition.lcdui.BaseDisplay_Package;
with org.allbinary.canvas.BaseGameStatistics_Package;
with org.allbinary.game.displayable.canvas.BaseMenuBehavior_Package;
with org.allbinary.graphics.displayable.BaseScalable_Package;
with org.allbinary.util.BasicArrayListS_Package;
with org.allbinary.game.init.BasicBuildGameInitializerFactory_Package;
with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.graphics.color.BasicColorSetUtil_Package;
with javax.microedition.lcdui.Canvas_Package;
with org.microemu.device.ui.CanvasUI_Package;
with org.allbinary.logic.java.character_Id.CharacterSet_Package;
with javax.microedition.lcdui.Choice_Package;
with javax.microedition.lcdui.ChoiceGroup_Package;
with javax.microedition.lcdui.ChoiceItem_Package;
with org.allbinary.game.paint.ColorFillBasePaintable_Package;
with javax.microedition.lcdui.Command_Package;
with javax.microedition.lcdui.CommandListener_Package;
with org.microemu.device.ui.CommandUI_Package;
with org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.game.displayable.canvas.DemoGameBehavior_Package;
with org.allbinary.game.displayable.canvas.DemoGameStartupRunnable_Package;
with org.allbinary.game.displayable.canvas.DemoPaintableInterface_Package;
with org.microemu.device.Device_Package;
with org.microemu.device.DeviceDisplay_Package;
with javax.microedition.lcdui.Display_Package;
with org.microemu.DisplayAccess_Package;
with javax.microedition.lcdui.DisplayAccessor_Package;
with org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package;
with org.allbinary.graphics.displayable.event.DisplayChangeEventListener_Package;
with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
with org.allbinary.graphics.displayable.DisplayableInterface_Package;
with org.microemu.device.ui.DisplayableUI_Package;
with javax.microedition.lcdui.Event_Package;
with org.microemu.device.ui.EventDispatcher_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.game.configuration.feature.Feature_Package;
with javax.microedition.lcdui.Font_Package;
with org.microemu.device.FontManager_Package;
with javax.microedition.lcdui.Form_Package;
with org.microemu.device.ui.FormUI_Package;
with org.allbinary.game.displayable.canvas.GameCanvasPauseRunnable_Package;
with org.allbinary.game.displayable.canvas.GameCanvasRunnable_Package;
with org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface_Package;
with org.allbinary.game.GameInfo_Package;
with org.allbinary.game.GameInfoData_Package;
with org.allbinary.game.init.GameInitializationInterface_Package;
with org.allbinary.game.init.GameInitializationInterfaceFactoryInterface_Package;
with org.allbinary.game.GameMode_Package;
with org.allbinary.game.GameStrings_Package;
with org.allbinary.graphics.displayable.GameTickDisplayInfoSingleton_Package;
with org.allbinary.time.GameTickTimeDelayHelper_Package;
with org.allbinary.game.GameType_Package;
with org.allbinary.game.GameTypeFactory_Package;
with javax.microedition.lcdui.Gauge_Package;
with org.allbinary.logic.system.os.GenericOperatingSystem_Package;
with javax.microedition.lcdui.Graphics_Package;
with org.allbinary.game.paint.help.HelpPaintable_Package;
with org.allbinary.game.score.HighScoreCommandsBaseFactory_Package;
with org.allbinary.game.score.HighScoreCommandsFactory_Package;
with org.allbinary.game.score.HighScoresCanvasInputProcessor_Package;
with org.allbinary.game.score.HighScoresCanvasInputProcessorFactoryInterface_Package;
with javax.microedition.lcdui.Image_Package;
with javax.microedition.lcdui.ImageStringItem_Package;
with org.allbinary.graphics.paint.InitUpdatePaintable_Package;
with org.allbinary.game.paint.help.InputMappingHelpPaintable_Package;
with org.microemu.device.InputMethod_Package;
with org.microemu.device.InputMethodEvent_Package;
with org.microemu.device.InputMethodListener_Package;
with javax.microedition.lcdui.Item_Package;
with javax.microedition.lcdui.ItemCommandListener_Package;
with javax.microedition.lcdui.ItemStateListener_Package;
with javax.microedition.lcdui.List_Package;
with org.microemu.device.ui.ListUI_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package;
with javax.microedition.midlet.MIDlet_Package;
with org.microemu.MIDletAccess_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.microemu.device.MutableImage_Package;
with org.allbinary.graphics.displayable.command.MyCommandsFactory_Package;
with org.allbinary.graphics.font.MyFontProcessor_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.graphics.opengles.OpenGLFeature_Package;
with org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package;
with org.microemu.device.ui.PaintEvent_Package;
with org.allbinary.graphics.paint.Paintable_Package;
with org.allbinary.graphics.paint.PaintableInterface_Package;
with javax.microedition.media.Player_Package;
with javax.microedition.media.PlayerListener_Package;
with org.allbinary.game.PlayerType_Package;
with org.microemu.device.ui.PointerEvent_Package;
with org.allbinary.logic.math.PrimitiveLongSingleton_Package;
with org.allbinary.thread.PriorityRunnable_Package;
with org.allbinary.graphics.paint.ProcessPaintable_Package;
with org.allbinary.canvas.Processor_Package;
with org.allbinary.game.resource.ResourceLoadingLevel_Package;
with org.allbinary.canvas.RunnableCanvas_Package;
with org.allbinary.thread.RunnableInterface_Package;
with org.allbinary.graphics.displayable.ScalableListener_Package;
with javax.microedition.lcdui.Screen_Package;
with org.allbinary.graphics.ScreenCapture_Package;
with org.allbinary.graphics.paint.SimpleTextPaintable_Package;
with org.allbinary.media.audio.Sound_Package;
with org.allbinary.graphics.paint.StatePaintable_Package;
with org.allbinary.logic.StdUtil_Package;
with javax.microedition.lcdui.StringComponent_Package;
with org.allbinary.thread.SynchObject_Package;
with javax.microedition.lcdui.TextBox_Package;
with org.microemu.device.ui.TextBoxUI_Package;
with javax.microedition.lcdui.TextField_Package;
with org.allbinary.thread.ThreadFactoryUtil_Package;
with org.allbinary.thread.ThreadObjectUtil_Package;
with javax.microedition.lcdui.Ticker_Package;
with org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.time.TimeStampUtil_Package;
with org.allbinary.game.configuration.feature.TouchFeature_Package;
with org.allbinary.game.configuration.feature.TouchFeatureFactory_Package;
with org.allbinary.input.TouchJ2ME_Package;
with org.microemu.device.ui.UIFactory_Package;
with org.allbinary.graphics.font.UpdateMyFontInterface_Package;
with org.allbinary.game.paint.help.UpdateMyFontProperties_Package;

package body org.allbinary.graphics.opengles.CurrentDisplayableFactory_Package is

   package J2MEUtil_Package renames Standard.org.allbinary.J2MEUtil_Package;
   package Features_Package renames Standard.org.allbinary.game.configuration.feature.Features_Package;
   package AllBinaryGameCanvas_Package renames Standard.org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;
   package DemoCanvas_Package renames Standard.org.allbinary.game.displayable.canvas.DemoCanvas_Package;
   package GameInputMappingCanvas_Package renames Standard.org.allbinary.game.displayable.canvas.GameInputMappingCanvas_Package;
   package GameInputMappingInstructionsCanvas_Package renames Standard.org.allbinary.game.displayable.canvas.GameInputMappingInstructionsCanvas_Package;
   package NullDisplayable_Package renames Standard.org.allbinary.game.displayable.canvas.NullDisplayable_Package;
   package NullWaitGameRunnable_Package renames Standard.org.allbinary.game.displayable.canvas.NullWaitGameRunnable_Package;
   package SWTUtil_Package renames Standard.org.allbinary.game.layer.SWTUtil_Package;
   package HighScoresCanvas_Package renames Standard.org.allbinary.game.score.displayable.HighScoresCanvas_Package;
   package GraphicsStrings_Package renames Standard.org.allbinary.graphics.GraphicsStrings_Package;
   package PreLogUtil_Package renames Standard.org.allbinary.logic.communication.log.PreLogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package NullRunnable_Package renames Standard.org.allbinary.thread.NullRunnable_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   subtype Displayable_Access is javax.microedition.lcdui.Displayable_Package_References.Displayable_Access;
   function "=" (Left, Right : Displayable_Access) return Boolean renames javax.microedition.lcdui.Displayable_Package_References."=";
   subtype Displayable_Access_Array is javax.microedition.lcdui.Displayable_Package_References.Displayable_Access_Array;
   function "=" (Left, Right : Displayable_Access_Array) return Boolean renames javax.microedition.lcdui.Displayable_Package_References."=";
   subtype Displayable_Access_Array_Access is javax.microedition.lcdui.Displayable_Package_References.Displayable_Access_Array_Access;
   function "=" (Left, Right : Displayable_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Displayable_Package_References."=";
   subtype Displayable_Access_Array_Access_Array is javax.microedition.lcdui.Displayable_Package_References.Displayable_Access_Array_Access_Array;
   function "=" (Left, Right : Displayable_Access_Array_Access_Array) return Boolean renames javax.microedition.lcdui.Displayable_Package_References."=";
   subtype Displayable_Access_Array_Access_Array_Access is javax.microedition.lcdui.Displayable_Package_References.Displayable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Displayable_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Displayable_Package_References."=";
   subtype GameRunnable_Access is org.allbinary.game.displayable.canvas.GameRunnable_Package_References.GameRunnable_Access;
   function "=" (Left, Right : GameRunnable_Access) return Boolean renames org.allbinary.game.displayable.canvas.GameRunnable_Package_References."=";
   subtype GameRunnable_Access_Array is org.allbinary.game.displayable.canvas.GameRunnable_Package_References.GameRunnable_Access_Array;
   function "=" (Left, Right : GameRunnable_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.GameRunnable_Package_References."=";
   subtype GameRunnable_Access_Array_Access is org.allbinary.game.displayable.canvas.GameRunnable_Package_References.GameRunnable_Access_Array_Access;
   function "=" (Left, Right : GameRunnable_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.GameRunnable_Package_References."=";
   subtype GameRunnable_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.GameRunnable_Package_References.GameRunnable_Access_Array_Access_Array;
   function "=" (Left, Right : GameRunnable_Access_Array_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.GameRunnable_Package_References."=";
   subtype GameRunnable_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.GameRunnable_Package_References.GameRunnable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameRunnable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.GameRunnable_Package_References."=";
   subtype CanvasStrings_Access is org.allbinary.graphics.displayable.CanvasStrings_Package_References.CanvasStrings_Access;
   function "=" (Left, Right : CanvasStrings_Access) return Boolean renames org.allbinary.graphics.displayable.CanvasStrings_Package_References."=";
   subtype CanvasStrings_Access_Array is org.allbinary.graphics.displayable.CanvasStrings_Package_References.CanvasStrings_Access_Array;
   function "=" (Left, Right : CanvasStrings_Access_Array) return Boolean renames org.allbinary.graphics.displayable.CanvasStrings_Package_References."=";
   subtype CanvasStrings_Access_Array_Access is org.allbinary.graphics.displayable.CanvasStrings_Package_References.CanvasStrings_Access_Array_Access;
   function "=" (Left, Right : CanvasStrings_Access_Array_Access) return Boolean renames org.allbinary.graphics.displayable.CanvasStrings_Package_References."=";
   subtype CanvasStrings_Access_Array_Access_Array is org.allbinary.graphics.displayable.CanvasStrings_Package_References.CanvasStrings_Access_Array_Access_Array;
   function "=" (Left, Right : CanvasStrings_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.displayable.CanvasStrings_Package_References."=";
   subtype CanvasStrings_Access_Array_Access_Array_Access is org.allbinary.graphics.displayable.CanvasStrings_Package_References.CanvasStrings_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CanvasStrings_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.displayable.CanvasStrings_Package_References."=";
   subtype MyCanvas_Access is org.allbinary.graphics.displayable.MyCanvas_Package_References.MyCanvas_Access;
   function "=" (Left, Right : MyCanvas_Access) return Boolean renames org.allbinary.graphics.displayable.MyCanvas_Package_References."=";
   subtype MyCanvas_Access_Array is org.allbinary.graphics.displayable.MyCanvas_Package_References.MyCanvas_Access_Array;
   function "=" (Left, Right : MyCanvas_Access_Array) return Boolean renames org.allbinary.graphics.displayable.MyCanvas_Package_References."=";
   subtype MyCanvas_Access_Array_Access is org.allbinary.graphics.displayable.MyCanvas_Package_References.MyCanvas_Access_Array_Access;
   function "=" (Left, Right : MyCanvas_Access_Array_Access) return Boolean renames org.allbinary.graphics.displayable.MyCanvas_Package_References."=";
   subtype MyCanvas_Access_Array_Access_Array is org.allbinary.graphics.displayable.MyCanvas_Package_References.MyCanvas_Access_Array_Access_Array;
   function "=" (Left, Right : MyCanvas_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.displayable.MyCanvas_Package_References."=";
   subtype MyCanvas_Access_Array_Access_Array_Access is org.allbinary.graphics.displayable.MyCanvas_Package_References.MyCanvas_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MyCanvas_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.displayable.MyCanvas_Package_References."=";
   subtype StringUtil_Access is org.allbinary.logic.string_Id.StringUtil_Package_References.StringUtil_Access;
   function "=" (Left, Right : StringUtil_Access) return Boolean renames org.allbinary.logic.string_Id.StringUtil_Package_References."=";
   subtype StringUtil_Access_Array is org.allbinary.logic.string_Id.StringUtil_Package_References.StringUtil_Access_Array;
   function "=" (Left, Right : StringUtil_Access_Array) return Boolean renames org.allbinary.logic.string_Id.StringUtil_Package_References."=";
   subtype StringUtil_Access_Array_Access is org.allbinary.logic.string_Id.StringUtil_Package_References.StringUtil_Access_Array_Access;
   function "=" (Left, Right : StringUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.string_Id.StringUtil_Package_References."=";
   subtype StringUtil_Access_Array_Access_Array is org.allbinary.logic.string_Id.StringUtil_Package_References.StringUtil_Access_Array_Access_Array;
   function "=" (Left, Right : StringUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.string_Id.StringUtil_Package_References."=";
   subtype StringUtil_Access_Array_Access_Array_Access is org.allbinary.logic.string_Id.StringUtil_Package_References.StringUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : StringUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.string_Id.StringUtil_Package_References."=";
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   function "=" (Left, Right : CommonStrings_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
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
   procedure Initialize_Fields (This : in out CurrentDisplayableFactory'Class) is
   begin
      null;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.canvasStrings := CanvasStrings_Package.getInstance;
      This.stringUtil := StringUtil_Package.getInstance;
      This.SET_DISPLAYABLE := To_Unbounded_String ("setDisplayable");
      This.SET_RUNNABLE := To_Unbounded_String ("setRunnable");
      This.CLEAR_RUNNABLE := To_Unbounded_String ("clearRunnable");
      This.SET_USED_RUNNABLE := To_Unbounded_String ("setUsedRunnable");
      This.RUNNABLE := To_Unbounded_String ("Runnable: ");
      This.RUNNABLE_WAS_ALREADY_IN_USE := To_Unbounded_String ("Runnable was already in use: ");
      This.DEFAULT_CHILD_NAME_LIST := BasicArrayList_Access (BasicArrayListD_Package.Create);
      This.displayable := Displayable_Access (NullDisplayable_Package.getInstance);
      This.openGlReadydisplayable := Displayable_Access (NullDisplayable_Package.getInstance);
      This.runnable_Case := NullWaitGameRunnable_Package.getInstance;
      This.usedRunnable := NullWaitGameRunnable_Package.getInstance;
   end Initialize_Fields;


   function getInstance return CurrentDisplayableFactory_Access is
   begin
        return CurrentDisplayableFactory_Access (CurrentDisplayableFactory_Package.instance);
   end getInstance;

   procedure Initialize (This : in out CurrentDisplayableFactory'Class) is
   begin
      Initialize_Fields (This);
        This.DEFAULT_CHILD_NAME_LIST.add (This.canvasStrings.ABOUT);
        This.DEFAULT_CHILD_NAME_LIST.add (This.canvasStrings.OPTIONS);
        This.DEFAULT_CHILD_NAME_LIST.add (GameInputMappingCanvas_Package.NAME);
        This.DEFAULT_CHILD_NAME_LIST.add (GameInputMappingInstructionsCanvas_Package.NAME);
        This.DEFAULT_CHILD_NAME_LIST.add (HighScoresCanvas_Package.NAME);
   end Initialize;

   function Create return CurrentDisplayableFactory_Access is
      This : constant CurrentDisplayableFactory_Access := new CurrentDisplayableFactory;
   begin
      CurrentDisplayableFactory_Package.Initialize (This.all);
      return This;
   end Create;

   procedure setMyCanvas (This : in out CurrentDisplayableFactory; displayable_Param : access MyCanvas_Package.MyCanvas'Class) is
      displayable : constant MyCanvas_Access := MyCanvas_Access (displayable_Param);
   begin
        if (This.displayable.all in MyCanvas_Package.MyCanvas'Class) then
            if displayable.hasChild (MyCanvas_Access (This.displayable)) then
                PreLogUtil_Package.put (StringMaker_Package.Create.append (To_Unbounded_String ("Child Displayable is already set for: ")).append (This.stringUtil.toString (displayable)).toString, CurrentDisplayableFactory_Access'(This'Unchecked_Access), This.SET_DISPLAYABLE);
                return;
            end if;
        end if;
        CurrentDisplayableFactory'Class (This).setDisplayable (displayable);
   end setMyCanvas;

   procedure setDisplayable (This : in out CurrentDisplayableFactory; displayable_Param : access Displayable_Package.Displayable'Class) is
      displayable : constant Displayable_Access := Displayable_Access (displayable_Param);
   begin
        This.displayable := displayable;
        CurrentDisplayableFactory'Class (This).setOpenGlReadydisplayable (displayable);
   end setDisplayable;

   procedure setOpenGlReadydisplayable (This : in out CurrentDisplayableFactory; openGlReadydisplayable_Param : access Displayable_Package.Displayable'Class) is
      openGlReadydisplayable : constant Displayable_Access := Displayable_Access (openGlReadydisplayable_Param);
   begin
        This.openGlReadydisplayable := openGlReadydisplayable;
        CurrentDisplayableFactory'Class (This).update;
   end setOpenGlReadydisplayable;

   function getOpenGlReadydisplayable (This : in out CurrentDisplayableFactory) return Displayable_Access is
   begin
        return This.openGlReadydisplayable;
   end getOpenGlReadydisplayable;

   procedure setRunnable (This : in out CurrentDisplayableFactory; runnable_Param : access GameRunnable_Package.GameRunnable'Class) is
      runnable : constant GameRunnable_Access := GameRunnable_Access (runnable_Param);
   begin
        PreLogUtil_Package.put (StringMaker_Package.Create.append (This.RUNNABLE).append (This.stringUtil.toString (runnable)).toString, CurrentDisplayableFactory_Access'(This'Unchecked_Access), This.SET_RUNNABLE);
        This.runnable_Case := runnable;
        if (This.usedRunnable) /= (This.runnable_Case) then
            CurrentDisplayableFactory'Class (This).update;
        else
            PreLogUtil_Package.put (StringMaker_Package.Create.append (This.RUNNABLE_WAS_ALREADY_IN_USE).append (This.stringUtil.toString (runnable)).toString, CurrentDisplayableFactory_Access'(This'Unchecked_Access), This.SET_RUNNABLE);
        end if;
   end setRunnable;

   procedure clearRunnable (This : in out CurrentDisplayableFactory) is
   begin
        PreLogUtil_Package.put (StringMaker_Package.Create.append (This.RUNNABLE).append (This.stringUtil.toString (NullRunnable_Package.getInstance)).toString, CurrentDisplayableFactory_Access'(This'Unchecked_Access), This.CLEAR_RUNNABLE);
        CurrentDisplayableFactory'Class (This).setUsedRunnable (NullWaitGameRunnable_Package.getInstance);
   end clearRunnable;

   procedure update (This : in out CurrentDisplayableFactory) is
      commonSeps : CommonSeps_Access;
      features : Features_Access;
      stringMaker : StringMaker_Access;
   begin
        begin  --  synchronized
            commonSeps := CommonSeps_Package.getInstance;
            features := Features_Package.getInstance;
            stringMaker := StringMaker_Package.Create;
            stringMaker.append (This.stringUtil.toString (This.openGlReadydisplayable));
            if (SWTUtil_Package.isSWT) and then (not (features.isDefault (OpenGLFeatureFactory_Package.getInstance.OPENGL))) then
                PreLogUtil_Package.put (stringMaker.append (commonSeps.SPACE).append (SWTUtil_Package.SWT).append (commonSeps.SPACE).append (This.RUNNABLE).append (This.stringUtil.toString (NullRunnable_Package.getInstance)).toString, CurrentDisplayableFactory_Access'(This'Unchecked_Access), This.commonStrings.UPDATE);
                CurrentDisplayableFactory'Class (This).setUsedRunnable (NullWaitGameRunnable_Package.getInstance);
            elsif J2MEUtil_Package.isHTML then
                PreLogUtil_Package.put (stringMaker.append (commonSeps.SPACE).append (GraphicsStrings_Package.getInstance.HTML).append (commonSeps.SPACE).append (This.RUNNABLE).append (This.stringUtil.toString (This.runnable_Case)).toString, CurrentDisplayableFactory_Access'(This'Unchecked_Access), This.commonStrings.UPDATE);
                CurrentDisplayableFactory'Class (This).setUsedRunnable (This.runnable_Case);
            elsif (((This.openGlReadydisplayable.all in DemoCanvas_Package.DemoCanvas'Class)) or else ((This.openGlReadydisplayable.all in AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class))) or else (features.isDefault (OpenGLFeatureFactory_Package.getInstance.OPENGL)) then
                PreLogUtil_Package.put (stringMaker.append (commonSeps.SPACE).append (OpenGLFeatureFactory_Package.getInstance.OPENGL.toString).append (commonSeps.SPACE).append (This.RUNNABLE).append (This.stringUtil.toString (This.runnable_Case)).toString, CurrentDisplayableFactory_Access'(This'Unchecked_Access), This.commonStrings.UPDATE);
                CurrentDisplayableFactory'Class (This).setUsedRunnable (This.runnable_Case);
            else
                PreLogUtil_Package.put (stringMaker.append (This.RUNNABLE).append (This.stringUtil.toString (NullRunnable_Package.getInstance)).toString, CurrentDisplayableFactory_Access'(This'Unchecked_Access), This.commonStrings.UPDATE);
                CurrentDisplayableFactory'Class (This).setUsedRunnable (NullWaitGameRunnable_Package.getInstance);
            end if;
        end;
   end update;

   function getDisplayable (This : in out CurrentDisplayableFactory) return Displayable_Access is
   begin
        return This.displayable;
   end getDisplayable;

   function getUsedRunnable (This : in out CurrentDisplayableFactory) return GameRunnable_Access is
   begin
        return This.usedRunnable;
   end getUsedRunnable;

   procedure setUsedRunnable (This : in out CurrentDisplayableFactory; usedRunnable_Param : access GameRunnable_Package.GameRunnable'Class) is
      usedRunnable : constant GameRunnable_Access := GameRunnable_Access (usedRunnable_Param);
   begin
        PreLogUtil_Package.put (StringMaker_Package.Create.append (This.RUNNABLE).append (This.stringUtil.toString (This.runnable_Case)).append (CommonSeps_Package.getInstance.COLON_SEP).append (This.stringUtil.toString (usedRunnable)).toString, CurrentDisplayableFactory_Access'(This'Unchecked_Access), This.SET_USED_RUNNABLE);
        This.usedRunnable := usedRunnable;
   end setUsedRunnable;

begin
   null;
   instance := CurrentDisplayableFactory_Package.Create;

end org.allbinary.graphics.opengles.CurrentDisplayableFactory_Package;


