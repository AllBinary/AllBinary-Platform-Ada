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


with javax.microedition.lcdui.Command_Package; use javax.microedition.lcdui.Command_Package;
with javax.microedition.lcdui.Command_Package_References;
with javax.microedition.lcdui.CommandListener_Package; use javax.microedition.lcdui.CommandListener_Package;
with javax.microedition.lcdui.CommandListener_Package_References;
with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
with org.allbinary.J2MEUtil_Package; use org.allbinary.J2MEUtil_Package;
with org.allbinary.game.GameInfo_Package; use org.allbinary.game.GameInfo_Package;
with org.allbinary.game.GameInfo_Package_References;
with org.allbinary.game.commands.GameCommandsFactory_Package; use org.allbinary.game.commands.GameCommandsFactory_Package;
with org.allbinary.game.displayable.canvas.GameCommandCanvas_Package; use org.allbinary.game.displayable.canvas.GameCommandCanvas_Package;
with org.allbinary.game.layer.AllBinaryGameLayerManager_Package; use org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
with org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References;
with org.allbinary.game.paint.ColorFillBasePaintable_Package; use org.allbinary.game.paint.ColorFillBasePaintable_Package;
with org.allbinary.game.paint.ColorFillBasePaintable_Package_References;
with org.allbinary.game.paint.ColorFillPaintableFactory_Package; use org.allbinary.game.paint.ColorFillPaintableFactory_Package;
with org.allbinary.game.score.HighScoreCommandsFactory_Package; use org.allbinary.game.score.HighScoreCommandsFactory_Package;
with org.allbinary.game.score.HighScoreCommandsFactory_Package_References;
with org.allbinary.game.score.HighScores_Package; use org.allbinary.game.score.HighScores_Package;
with org.allbinary.game.score.HighScores_Package_References;
with org.allbinary.game.score.HighScoresCanvasInputProcessor_Package; use org.allbinary.game.score.HighScoresCanvasInputProcessor_Package;
with org.allbinary.game.score.HighScoresCanvasInputProcessor_Package_References;
with org.allbinary.game.score.HighScoresCanvasInputProcessorFactoryInterface_Package; use org.allbinary.game.score.HighScoresCanvasInputProcessorFactoryInterface_Package;
with org.allbinary.game.score.HighScoresCanvasInputProcessorFactoryInterface_Package_References;
with org.allbinary.game.score.HighScoresFactoryInterface_Package; use org.allbinary.game.score.HighScoresFactoryInterface_Package;
with org.allbinary.game.score.HighScoresFactoryInterface_Package_References;
with org.allbinary.game.score.HighScoresHelperBase_Package; use org.allbinary.game.score.HighScoresHelperBase_Package;
with org.allbinary.game.score.HighScoresHelperBase_Package_References;
with org.allbinary.game.score.HighScoresPaintable_Package; use org.allbinary.game.score.HighScoresPaintable_Package;
with org.allbinary.game.score.HighScoresPaintable_Package_References;
with org.allbinary.game.score.HighScoresResultsListener_Package; use org.allbinary.game.score.HighScoresResultsListener_Package;
with org.allbinary.game.score.NoHighScoresFactory_Package; use org.allbinary.game.score.NoHighScoresFactory_Package;
with org.allbinary.game.score.NullHighScoresSingletonFactory_Package; use org.allbinary.game.score.NullHighScoresSingletonFactory_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.graphics.paint.NullPaintable_Package; use org.allbinary.graphics.paint.NullPaintable_Package;
with org.allbinary.graphics.paint.Paintable_Package; use org.allbinary.graphics.paint.Paintable_Package;
with org.allbinary.graphics.paint.Paintable_Package_References;
with org.allbinary.graphics.paint.SimpleTextPaintable_Package; use org.allbinary.graphics.paint.SimpleTextPaintable_Package;
with org.allbinary.graphics.paint.SimpleTextPaintable_Package_References;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.thread.ARunnable_Package; use org.allbinary.thread.ARunnable_Package;
with org.allbinary.thread.SecondaryThreadPool_Package; use org.allbinary.thread.SecondaryThreadPool_Package;
with org.allbinary.logic.ABSystemWrapper_Package; use org.allbinary.logic.ABSystemWrapper_Package;
with org.allbinary.game.score.displayable.HighScoreRunnable_Package; use org.allbinary.game.score.displayable.HighScoreRunnable_Package;
with org.allbinary.util.ABHashtable_Package;
with javax.microedition.lcdui.Alert_Package;
with javax.microedition.lcdui.AlertType_Package;
with org.microemu.device.ui.AlertUI_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.util.ArrayUtil_Package;
with javax.microedition.lcdui.BaseDisplay_Package;
with org.allbinary.graphics.displayable.BaseScalable_Package;
with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.graphics.color.BasicColor_Package;
with javax.microedition.lcdui.Canvas_Package;
with org.microemu.device.ui.CanvasUI_Package;
with javax.microedition.lcdui.Choice_Package;
with javax.microedition.lcdui.ChoiceGroup_Package;
with javax.microedition.lcdui.ChoiceItem_Package;
with org.microemu.device.ui.CommandUI_Package;
with org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.microemu.device.Device_Package;
with org.microemu.device.DeviceDisplay_Package;
with javax.microedition.lcdui.Display_Package;
with org.microemu.DisplayAccess_Package;
with javax.microedition.lcdui.DisplayAccessor_Package;
with org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package;
with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
with javax.microedition.lcdui.Displayable_Package;
with org.microemu.device.ui.DisplayableUI_Package;
with javax.microedition.lcdui.Event_Package;
with org.microemu.device.ui.EventDispatcher_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with javax.microedition.lcdui.Font_Package;
with org.microemu.device.FontManager_Package;
with javax.microedition.lcdui.Form_Package;
with org.microemu.device.ui.FormUI_Package;
with org.allbinary.game.GameInfoData_Package;
with org.allbinary.game.GameMode_Package;
with org.allbinary.game.GameType_Package;
with javax.microedition.lcdui.Gauge_Package;
with org.allbinary.game.score.HighScoreCommandsBaseFactory_Package;
with org.allbinary.game.score.displayable.HighScoreRunnable_Package;
with javax.microedition.lcdui.Image_Package;
with javax.microedition.lcdui.ImageStringItem_Package;
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
with javax.microedition.midlet.MIDlet_Package;
with org.microemu.MIDletAccess_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.microemu.device.MutableImage_Package;
with org.allbinary.graphics.font.MyFontProcessor_Package;
with org.allbinary.thread.NullRunnable_Package;
with org.allbinary.logic.NullUtil_Package;
with org.microemu.device.ui.PaintEvent_Package;
with org.allbinary.game.PlayerType_Package;
with org.microemu.device.ui.PointerEvent_Package;
with org.allbinary.thread.PriorityRunnable_Package;
with org.allbinary.graphics.displayable.ScalableListener_Package;
with javax.microedition.lcdui.Screen_Package;
with javax.microedition.lcdui.StringComponent_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.thread.SynchObject_Package;
with javax.microedition.lcdui.TextBox_Package;
with org.microemu.device.ui.TextBoxUI_Package;
with javax.microedition.lcdui.TextField_Package;
with org.allbinary.thread.ThreadObjectUtil_Package;
with org.allbinary.thread.ThreadPool_Package;
with org.allbinary.thread.ThreadPoolStrings_Package;
with javax.microedition.lcdui.Ticker_Package;
with org.allbinary.time.TimeStampUtil_Package;
with org.microemu.device.ui.UIFactory_Package;

package body org.allbinary.game.score.displayable.HighScoresCanvas_Package is

   package J2MEUtil_Package renames Standard.org.allbinary.J2MEUtil_Package;
   package GameCommandsFactory_Package renames Standard.org.allbinary.game.commands.GameCommandsFactory_Package;
   package ColorFillPaintableFactory_Package renames Standard.org.allbinary.game.paint.ColorFillPaintableFactory_Package;
   package NoHighScoresFactory_Package renames Standard.org.allbinary.game.score.NoHighScoresFactory_Package;
   package NullHighScoresSingletonFactory_Package renames Standard.org.allbinary.game.score.NullHighScoresSingletonFactory_Package;
   package BasicColorFactory_Package renames Standard.org.allbinary.graphics.color.BasicColorFactory_Package;
   package NullPaintable_Package renames Standard.org.allbinary.graphics.paint.NullPaintable_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package ARunnable_Package renames Standard.org.allbinary.thread.ARunnable_Package;
   package SecondaryThreadPool_Package renames Standard.org.allbinary.thread.SecondaryThreadPool_Package;
   package ABSystemWrapper_Package renames Standard.org.allbinary.logic.ABSystemWrapper_Package;
   subtype Command_Access is javax.microedition.lcdui.Command_Package_References.Command_Access;
   function "=" (Left, Right : Command_Access) return Boolean renames javax.microedition.lcdui.Command_Package_References."=";
   subtype Command_Access_Array is javax.microedition.lcdui.Command_Package_References.Command_Access_Array;
   function "=" (Left, Right : Command_Access_Array) return Boolean renames javax.microedition.lcdui.Command_Package_References."=";
   subtype Command_Access_Array_Access is javax.microedition.lcdui.Command_Package_References.Command_Access_Array_Access;
   function "=" (Left, Right : Command_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Command_Package_References."=";
   subtype Command_Access_Array_Access_Array is javax.microedition.lcdui.Command_Package_References.Command_Access_Array_Access_Array;
   function "=" (Left, Right : Command_Access_Array_Access_Array) return Boolean renames javax.microedition.lcdui.Command_Package_References."=";
   subtype Command_Access_Array_Access_Array_Access is javax.microedition.lcdui.Command_Package_References.Command_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Command_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Command_Package_References."=";
   subtype CommandListener_Access is javax.microedition.lcdui.CommandListener_Package_References.CommandListener_Access;
   function "=" (Left, Right : CommandListener_Access) return Boolean renames javax.microedition.lcdui.CommandListener_Package_References."=";
   subtype CommandListener_Access_Array is javax.microedition.lcdui.CommandListener_Package_References.CommandListener_Access_Array;
   function "=" (Left, Right : CommandListener_Access_Array) return Boolean renames javax.microedition.lcdui.CommandListener_Package_References."=";
   subtype CommandListener_Access_Array_Access is javax.microedition.lcdui.CommandListener_Package_References.CommandListener_Access_Array_Access;
   function "=" (Left, Right : CommandListener_Access_Array_Access) return Boolean renames javax.microedition.lcdui.CommandListener_Package_References."=";
   subtype CommandListener_Access_Array_Access_Array is javax.microedition.lcdui.CommandListener_Package_References.CommandListener_Access_Array_Access_Array;
   function "=" (Left, Right : CommandListener_Access_Array_Access_Array) return Boolean renames javax.microedition.lcdui.CommandListener_Package_References."=";
   subtype CommandListener_Access_Array_Access_Array_Access is javax.microedition.lcdui.CommandListener_Package_References.CommandListener_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CommandListener_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.lcdui.CommandListener_Package_References."=";
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
   subtype GameInfo_Access is org.allbinary.game.GameInfo_Package_References.GameInfo_Access;
   function "=" (Left, Right : GameInfo_Access) return Boolean renames org.allbinary.game.GameInfo_Package_References."=";
   subtype GameInfo_Access_Array is org.allbinary.game.GameInfo_Package_References.GameInfo_Access_Array;
   function "=" (Left, Right : GameInfo_Access_Array) return Boolean renames org.allbinary.game.GameInfo_Package_References."=";
   subtype GameInfo_Access_Array_Access is org.allbinary.game.GameInfo_Package_References.GameInfo_Access_Array_Access;
   function "=" (Left, Right : GameInfo_Access_Array_Access) return Boolean renames org.allbinary.game.GameInfo_Package_References."=";
   subtype GameInfo_Access_Array_Access_Array is org.allbinary.game.GameInfo_Package_References.GameInfo_Access_Array_Access_Array;
   function "=" (Left, Right : GameInfo_Access_Array_Access_Array) return Boolean renames org.allbinary.game.GameInfo_Package_References."=";
   subtype GameInfo_Access_Array_Access_Array_Access is org.allbinary.game.GameInfo_Package_References.GameInfo_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameInfo_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.GameInfo_Package_References."=";
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
   subtype ColorFillBasePaintable_Access is org.allbinary.game.paint.ColorFillBasePaintable_Package_References.ColorFillBasePaintable_Access;
   function "=" (Left, Right : ColorFillBasePaintable_Access) return Boolean renames org.allbinary.game.paint.ColorFillBasePaintable_Package_References."=";
   subtype ColorFillBasePaintable_Access_Array is org.allbinary.game.paint.ColorFillBasePaintable_Package_References.ColorFillBasePaintable_Access_Array;
   function "=" (Left, Right : ColorFillBasePaintable_Access_Array) return Boolean renames org.allbinary.game.paint.ColorFillBasePaintable_Package_References."=";
   subtype ColorFillBasePaintable_Access_Array_Access is org.allbinary.game.paint.ColorFillBasePaintable_Package_References.ColorFillBasePaintable_Access_Array_Access;
   function "=" (Left, Right : ColorFillBasePaintable_Access_Array_Access) return Boolean renames org.allbinary.game.paint.ColorFillBasePaintable_Package_References."=";
   subtype ColorFillBasePaintable_Access_Array_Access_Array is org.allbinary.game.paint.ColorFillBasePaintable_Package_References.ColorFillBasePaintable_Access_Array_Access_Array;
   function "=" (Left, Right : ColorFillBasePaintable_Access_Array_Access_Array) return Boolean renames org.allbinary.game.paint.ColorFillBasePaintable_Package_References."=";
   subtype ColorFillBasePaintable_Access_Array_Access_Array_Access is org.allbinary.game.paint.ColorFillBasePaintable_Package_References.ColorFillBasePaintable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ColorFillBasePaintable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.paint.ColorFillBasePaintable_Package_References."=";
   subtype HighScoreCommandsFactory_Access is org.allbinary.game.score.HighScoreCommandsFactory_Package_References.HighScoreCommandsFactory_Access;
   function "=" (Left, Right : HighScoreCommandsFactory_Access) return Boolean renames org.allbinary.game.score.HighScoreCommandsFactory_Package_References."=";
   subtype HighScoreCommandsFactory_Access_Array is org.allbinary.game.score.HighScoreCommandsFactory_Package_References.HighScoreCommandsFactory_Access_Array;
   function "=" (Left, Right : HighScoreCommandsFactory_Access_Array) return Boolean renames org.allbinary.game.score.HighScoreCommandsFactory_Package_References."=";
   subtype HighScoreCommandsFactory_Access_Array_Access is org.allbinary.game.score.HighScoreCommandsFactory_Package_References.HighScoreCommandsFactory_Access_Array_Access;
   function "=" (Left, Right : HighScoreCommandsFactory_Access_Array_Access) return Boolean renames org.allbinary.game.score.HighScoreCommandsFactory_Package_References."=";
   subtype HighScoreCommandsFactory_Access_Array_Access_Array is org.allbinary.game.score.HighScoreCommandsFactory_Package_References.HighScoreCommandsFactory_Access_Array_Access_Array;
   function "=" (Left, Right : HighScoreCommandsFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.score.HighScoreCommandsFactory_Package_References."=";
   subtype HighScoreCommandsFactory_Access_Array_Access_Array_Access is org.allbinary.game.score.HighScoreCommandsFactory_Package_References.HighScoreCommandsFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HighScoreCommandsFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.score.HighScoreCommandsFactory_Package_References."=";
   subtype HighScores_Access is org.allbinary.game.score.HighScores_Package_References.HighScores_Access;
   function "=" (Left, Right : HighScores_Access) return Boolean renames org.allbinary.game.score.HighScores_Package_References."=";
   subtype HighScores_Access_Array is org.allbinary.game.score.HighScores_Package_References.HighScores_Access_Array;
   function "=" (Left, Right : HighScores_Access_Array) return Boolean renames org.allbinary.game.score.HighScores_Package_References."=";
   subtype HighScores_Access_Array_Access is org.allbinary.game.score.HighScores_Package_References.HighScores_Access_Array_Access;
   function "=" (Left, Right : HighScores_Access_Array_Access) return Boolean renames org.allbinary.game.score.HighScores_Package_References."=";
   subtype HighScores_Access_Array_Access_Array is org.allbinary.game.score.HighScores_Package_References.HighScores_Access_Array_Access_Array;
   function "=" (Left, Right : HighScores_Access_Array_Access_Array) return Boolean renames org.allbinary.game.score.HighScores_Package_References."=";
   subtype HighScores_Access_Array_Access_Array_Access is org.allbinary.game.score.HighScores_Package_References.HighScores_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HighScores_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.score.HighScores_Package_References."=";
   subtype HighScoresCanvasInputProcessor_Access is org.allbinary.game.score.HighScoresCanvasInputProcessor_Package_References.HighScoresCanvasInputProcessor_Access;
   function "=" (Left, Right : HighScoresCanvasInputProcessor_Access) return Boolean renames org.allbinary.game.score.HighScoresCanvasInputProcessor_Package_References."=";
   subtype HighScoresCanvasInputProcessor_Access_Array is org.allbinary.game.score.HighScoresCanvasInputProcessor_Package_References.HighScoresCanvasInputProcessor_Access_Array;
   function "=" (Left, Right : HighScoresCanvasInputProcessor_Access_Array) return Boolean renames org.allbinary.game.score.HighScoresCanvasInputProcessor_Package_References."=";
   subtype HighScoresCanvasInputProcessor_Access_Array_Access is org.allbinary.game.score.HighScoresCanvasInputProcessor_Package_References.HighScoresCanvasInputProcessor_Access_Array_Access;
   function "=" (Left, Right : HighScoresCanvasInputProcessor_Access_Array_Access) return Boolean renames org.allbinary.game.score.HighScoresCanvasInputProcessor_Package_References."=";
   subtype HighScoresCanvasInputProcessor_Access_Array_Access_Array is org.allbinary.game.score.HighScoresCanvasInputProcessor_Package_References.HighScoresCanvasInputProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : HighScoresCanvasInputProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.game.score.HighScoresCanvasInputProcessor_Package_References."=";
   subtype HighScoresCanvasInputProcessor_Access_Array_Access_Array_Access is org.allbinary.game.score.HighScoresCanvasInputProcessor_Package_References.HighScoresCanvasInputProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HighScoresCanvasInputProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.score.HighScoresCanvasInputProcessor_Package_References."=";
   subtype HighScoresCanvasInputProcessorFactoryInterface_Access is org.allbinary.game.score.HighScoresCanvasInputProcessorFactoryInterface_Package_References.HighScoresCanvasInputProcessorFactoryInterface_Access;
   function "=" (Left, Right : HighScoresCanvasInputProcessorFactoryInterface_Access) return Boolean renames org.allbinary.game.score.HighScoresCanvasInputProcessorFactoryInterface_Package_References."=";
   subtype HighScoresCanvasInputProcessorFactoryInterface_Access_Array is org.allbinary.game.score.HighScoresCanvasInputProcessorFactoryInterface_Package_References.HighScoresCanvasInputProcessorFactoryInterface_Access_Array;
   function "=" (Left, Right : HighScoresCanvasInputProcessorFactoryInterface_Access_Array) return Boolean renames org.allbinary.game.score.HighScoresCanvasInputProcessorFactoryInterface_Package_References."=";
   subtype HighScoresCanvasInputProcessorFactoryInterface_Access_Array_Access is org.allbinary.game.score.HighScoresCanvasInputProcessorFactoryInterface_Package_References.HighScoresCanvasInputProcessorFactoryInterface_Access_Array_Access;
   function "=" (Left, Right : HighScoresCanvasInputProcessorFactoryInterface_Access_Array_Access) return Boolean renames org.allbinary.game.score.HighScoresCanvasInputProcessorFactoryInterface_Package_References."=";
   subtype HighScoresCanvasInputProcessorFactoryInterface_Access_Array_Access_Array is org.allbinary.game.score.HighScoresCanvasInputProcessorFactoryInterface_Package_References.HighScoresCanvasInputProcessorFactoryInterface_Access_Array_Access_Array;
   function "=" (Left, Right : HighScoresCanvasInputProcessorFactoryInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.score.HighScoresCanvasInputProcessorFactoryInterface_Package_References."=";
   subtype HighScoresCanvasInputProcessorFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.game.score.HighScoresCanvasInputProcessorFactoryInterface_Package_References.HighScoresCanvasInputProcessorFactoryInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HighScoresCanvasInputProcessorFactoryInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.score.HighScoresCanvasInputProcessorFactoryInterface_Package_References."=";
   subtype HighScoresFactoryInterface_Access is org.allbinary.game.score.HighScoresFactoryInterface_Package_References.HighScoresFactoryInterface_Access;
   function "=" (Left, Right : HighScoresFactoryInterface_Access) return Boolean renames org.allbinary.game.score.HighScoresFactoryInterface_Package_References."=";
   subtype HighScoresFactoryInterface_Access_Array is org.allbinary.game.score.HighScoresFactoryInterface_Package_References.HighScoresFactoryInterface_Access_Array;
   function "=" (Left, Right : HighScoresFactoryInterface_Access_Array) return Boolean renames org.allbinary.game.score.HighScoresFactoryInterface_Package_References."=";
   subtype HighScoresFactoryInterface_Access_Array_Access is org.allbinary.game.score.HighScoresFactoryInterface_Package_References.HighScoresFactoryInterface_Access_Array_Access;
   function "=" (Left, Right : HighScoresFactoryInterface_Access_Array_Access) return Boolean renames org.allbinary.game.score.HighScoresFactoryInterface_Package_References."=";
   subtype HighScoresFactoryInterface_Access_Array_Access_Array is org.allbinary.game.score.HighScoresFactoryInterface_Package_References.HighScoresFactoryInterface_Access_Array_Access_Array;
   function "=" (Left, Right : HighScoresFactoryInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.score.HighScoresFactoryInterface_Package_References."=";
   subtype HighScoresFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.game.score.HighScoresFactoryInterface_Package_References.HighScoresFactoryInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HighScoresFactoryInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.score.HighScoresFactoryInterface_Package_References."=";
   subtype HighScoresHelperBase_Access is org.allbinary.game.score.HighScoresHelperBase_Package_References.HighScoresHelperBase_Access;
   function "=" (Left, Right : HighScoresHelperBase_Access) return Boolean renames org.allbinary.game.score.HighScoresHelperBase_Package_References."=";
   subtype HighScoresHelperBase_Access_Array is org.allbinary.game.score.HighScoresHelperBase_Package_References.HighScoresHelperBase_Access_Array;
   function "=" (Left, Right : HighScoresHelperBase_Access_Array) return Boolean renames org.allbinary.game.score.HighScoresHelperBase_Package_References."=";
   subtype HighScoresHelperBase_Access_Array_Access is org.allbinary.game.score.HighScoresHelperBase_Package_References.HighScoresHelperBase_Access_Array_Access;
   function "=" (Left, Right : HighScoresHelperBase_Access_Array_Access) return Boolean renames org.allbinary.game.score.HighScoresHelperBase_Package_References."=";
   subtype HighScoresHelperBase_Access_Array_Access_Array is org.allbinary.game.score.HighScoresHelperBase_Package_References.HighScoresHelperBase_Access_Array_Access_Array;
   function "=" (Left, Right : HighScoresHelperBase_Access_Array_Access_Array) return Boolean renames org.allbinary.game.score.HighScoresHelperBase_Package_References."=";
   subtype HighScoresHelperBase_Access_Array_Access_Array_Access is org.allbinary.game.score.HighScoresHelperBase_Package_References.HighScoresHelperBase_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HighScoresHelperBase_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.score.HighScoresHelperBase_Package_References."=";
   subtype HighScoresPaintable_Access is org.allbinary.game.score.HighScoresPaintable_Package_References.HighScoresPaintable_Access;
   function "=" (Left, Right : HighScoresPaintable_Access) return Boolean renames org.allbinary.game.score.HighScoresPaintable_Package_References."=";
   subtype HighScoresPaintable_Access_Array is org.allbinary.game.score.HighScoresPaintable_Package_References.HighScoresPaintable_Access_Array;
   function "=" (Left, Right : HighScoresPaintable_Access_Array) return Boolean renames org.allbinary.game.score.HighScoresPaintable_Package_References."=";
   subtype HighScoresPaintable_Access_Array_Access is org.allbinary.game.score.HighScoresPaintable_Package_References.HighScoresPaintable_Access_Array_Access;
   function "=" (Left, Right : HighScoresPaintable_Access_Array_Access) return Boolean renames org.allbinary.game.score.HighScoresPaintable_Package_References."=";
   subtype HighScoresPaintable_Access_Array_Access_Array is org.allbinary.game.score.HighScoresPaintable_Package_References.HighScoresPaintable_Access_Array_Access_Array;
   function "=" (Left, Right : HighScoresPaintable_Access_Array_Access_Array) return Boolean renames org.allbinary.game.score.HighScoresPaintable_Package_References."=";
   subtype HighScoresPaintable_Access_Array_Access_Array_Access is org.allbinary.game.score.HighScoresPaintable_Package_References.HighScoresPaintable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HighScoresPaintable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.score.HighScoresPaintable_Package_References."=";
   subtype Paintable_Access is org.allbinary.graphics.paint.Paintable_Package_References.Paintable_Access;
   function "=" (Left, Right : Paintable_Access) return Boolean renames org.allbinary.graphics.paint.Paintable_Package_References."=";
   subtype Paintable_Access_Array is org.allbinary.graphics.paint.Paintable_Package_References.Paintable_Access_Array;
   function "=" (Left, Right : Paintable_Access_Array) return Boolean renames org.allbinary.graphics.paint.Paintable_Package_References."=";
   subtype Paintable_Access_Array_Access is org.allbinary.graphics.paint.Paintable_Package_References.Paintable_Access_Array_Access;
   function "=" (Left, Right : Paintable_Access_Array_Access) return Boolean renames org.allbinary.graphics.paint.Paintable_Package_References."=";
   subtype Paintable_Access_Array_Access_Array is org.allbinary.graphics.paint.Paintable_Package_References.Paintable_Access_Array_Access_Array;
   function "=" (Left, Right : Paintable_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.paint.Paintable_Package_References."=";
   subtype Paintable_Access_Array_Access_Array_Access is org.allbinary.graphics.paint.Paintable_Package_References.Paintable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Paintable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.paint.Paintable_Package_References."=";
   subtype SimpleTextPaintable_Access is org.allbinary.graphics.paint.SimpleTextPaintable_Package_References.SimpleTextPaintable_Access;
   function "=" (Left, Right : SimpleTextPaintable_Access) return Boolean renames org.allbinary.graphics.paint.SimpleTextPaintable_Package_References."=";
   subtype SimpleTextPaintable_Access_Array is org.allbinary.graphics.paint.SimpleTextPaintable_Package_References.SimpleTextPaintable_Access_Array;
   function "=" (Left, Right : SimpleTextPaintable_Access_Array) return Boolean renames org.allbinary.graphics.paint.SimpleTextPaintable_Package_References."=";
   subtype SimpleTextPaintable_Access_Array_Access is org.allbinary.graphics.paint.SimpleTextPaintable_Package_References.SimpleTextPaintable_Access_Array_Access;
   function "=" (Left, Right : SimpleTextPaintable_Access_Array_Access) return Boolean renames org.allbinary.graphics.paint.SimpleTextPaintable_Package_References."=";
   subtype SimpleTextPaintable_Access_Array_Access_Array is org.allbinary.graphics.paint.SimpleTextPaintable_Package_References.SimpleTextPaintable_Access_Array_Access_Array;
   function "=" (Left, Right : SimpleTextPaintable_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.paint.SimpleTextPaintable_Package_References."=";
   subtype SimpleTextPaintable_Access_Array_Access_Array_Access is org.allbinary.graphics.paint.SimpleTextPaintable_Package_References.SimpleTextPaintable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SimpleTextPaintable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.paint.SimpleTextPaintable_Package_References."=";
   procedure Initialize_Fields (This : in out HighScoresCanvas'Class) is
   begin
      null;
      This.paintable := NullPaintable_Package.getInstance;
      This.highScoreCommandsFactory := HighScoreCommandsFactory_Package.getInstance;
      This.waitPaintable := SimpleTextPaintable_Package.Create (This.commonStrings.PLEASE_WAIT_FOR_SERVER, BasicColorFactory_Package.getInstance.WHITE);
      
      
      
      This.highScoresHelper := HighScoresHelperBase_Package.Create;
      
      
      This.currentCommand := This.highScoreCommandsFactory.HIGH_SCORE_COMMANDS (0);
      This.hasPainted := False;
   end Initialize_Fields;


   procedure Initialize (This : in out HighScoresCanvas'Class; commandListener_Param : access CommandListener_Package.CommandListener'Class; allBinaryGameLayerManager_Param : access AllBinaryGameLayerManager_Package.AllBinaryGameLayerManager'Class; gameInfo_Param : access GameInfo_Package.GameInfo'Class; paintable_Param : access HighScoresPaintable_Package.HighScoresPaintable'Class; highScoresFactoryInterface_Param : access HighScoresFactoryInterface_Package.HighScoresFactoryInterface'Class; highScoresCanvasInputProcessorFactoryInterface_Param : access HighScoresCanvasInputProcessorFactoryInterface_Package.HighScoresCanvasInputProcessorFactoryInterface'Class) is
      commandListener : constant CommandListener_Access := CommandListener_Access (commandListener_Param);
      allBinaryGameLayerManager : constant AllBinaryGameLayerManager_Access := AllBinaryGameLayerManager_Access (allBinaryGameLayerManager_Param);
      gameInfo : constant GameInfo_Access := GameInfo_Access (gameInfo_Param);
      paintable : constant HighScoresPaintable_Access := HighScoresPaintable_Access (paintable_Param);
      highScoresFactoryInterface : constant HighScoresFactoryInterface_Access := HighScoresFactoryInterface_Access (highScoresFactoryInterface_Param);
      highScoresCanvasInputProcessorFactoryInterface : constant HighScoresCanvasInputProcessorFactoryInterface_Access := HighScoresCanvasInputProcessorFactoryInterface_Access (highScoresCanvasInputProcessorFactoryInterface_Param);
   begin
        GameCommandCanvas_Package.Initialize (This, commandListener, HighScoresCanvas_Package.NAME, allBinaryGameLayerManager.getBackgroundBasicColor, allBinaryGameLayerManager.getForegroundBasicColor);
        Initialize_Fields (This);
        This.logUtil.putF (This.commonStrings.START, HighScoresCanvas_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
        This.highScoresPaintable := paintable;
        This.highScoresFactoryInterface := highScoresFactoryInterface;
        This.highScoresCanvasInputProcessor := highScoresCanvasInputProcessorFactoryInterface.getInstance (HighScoresCanvas_Access'(This'Unchecked_Access));
        This.gameInfo := gameInfo;
        This.waitPaintable.setBasicColorP (allBinaryGameLayerManager.getForegroundBasicColor);
        HighScoresCanvas'Class (This).getHighScoresPaintable.setBasicColorP (allBinaryGameLayerManager.getForegroundBasicColor);
        This.colorFillPaintable := ColorFillPaintableFactory_Package.getInstance.getInstance (allBinaryGameLayerManager.getBackgroundBasicColor, False);
        if (This.highScoresHelper.getHighScoresArray) = (NoHighScoresFactory_Package.getInstance.NO_HIGH_SCORES) then
            HighScoresCanvas'Class (This).setPaintable (This.waitPaintable);
        else
            This.logUtil.putF (To_Unbounded_String ("Show HighScores that are already loaded"), HighScoresCanvas_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
            HighScoresCanvas'Class (This).updateCommand (This.currentCommand);
            HighScoresCanvas'Class (This).setPaintable (HighScoresCanvas'Class (This).getHighScoresPaintable);
        end if;
        --  Java nested class HighScoreRunnable: move it to its own package
        SecondaryThreadPool_Package.getInstance.runTask (HighScoreRunnable_Package.Create (HighScoresCanvas_Access'(This'Unchecked_Access)));
   end Initialize;

   function Create (commandListener_Param : access CommandListener_Package.CommandListener'Class; allBinaryGameLayerManager_Param : access AllBinaryGameLayerManager_Package.AllBinaryGameLayerManager'Class; gameInfo_Param : access GameInfo_Package.GameInfo'Class; paintable_Param : access HighScoresPaintable_Package.HighScoresPaintable'Class; highScoresFactoryInterface_Param : access HighScoresFactoryInterface_Package.HighScoresFactoryInterface'Class; highScoresCanvasInputProcessorFactoryInterface_Param : access HighScoresCanvasInputProcessorFactoryInterface_Package.HighScoresCanvasInputProcessorFactoryInterface'Class) return HighScoresCanvas_Access is
      This : constant HighScoresCanvas_Access := new HighScoresCanvas;
   begin
      HighScoresCanvas_Package.Initialize (This.all, commandListener_Param, allBinaryGameLayerManager_Param, gameInfo_Param, paintable_Param, highScoresFactoryInterface_Param, highScoresCanvasInputProcessorFactoryInterface_Param);
      return This;
   end Create;

   procedure initCommands (This : in out HighScoresCanvas; cmdListener_Param : access CommandListener_Package.CommandListener'Class) is
      cmdListener : constant CommandListener_Access := CommandListener_Access (cmdListener_Param);
   begin
        HighScoresCanvas'Class (This).removeAllCommands;
        HighScoresCanvas'Class (This).addCommand (GameCommandsFactory_Package.getInstance.CLOSE_AND_SHOW_GAME_CANVAS);
        HighScoresCanvas'Class (This).setCommandListener (cmdListener);
   end initCommands;

   procedure open (This : in out HighScoresCanvas) is
   begin
        GameCommandCanvas_Package.GameCommandCanvas (This).open;
        This.highScoresCanvasInputProcessor.open;
   end open;

   --  throws Exception
   procedure close (This : in out HighScoresCanvas) is
   begin
        GameCommandCanvas_Package.GameCommandCanvas (This).close;
        This.highScoresCanvasInputProcessor.close;
   end close;

   procedure paint (This : in out HighScoresCanvas; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        This.colorFillPaintable.paint (graphics);
        This.paintable.paint (graphics);
        if (Java_Object_Access (This.waitPaintable)) /= (Java_Object_Access (This.paintable)) then
            This.highScoresCanvasInputProcessor.paint (graphics);
        end if;
        GameCommandCanvas_Package.GameCommandCanvas (This).paint (graphics);
        This.hasPainted := True;
   end paint;

   procedure executeUpdate (This : in out HighScoresCanvas) is
   begin
        begin
            This.highScoresFactoryInterface.fetchHighScores (HighScoresCanvas'Class (This).getGameInfo, HighScoresCanvas_Access'(This'Unchecked_Access));
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, HighScoresCanvas_Access'(This'Unchecked_Access), This.commonStrings.UPDATE, e);
                end;
        end;
   end executeUpdate;

   function getHighScoresPaintable (This : in out HighScoresCanvas) return HighScoresPaintable_Access is
   begin
        return This.highScoresPaintable;
   end getHighScoresPaintable;

   procedure setHighScoresArray (This : in out HighScoresCanvas; highScoresArray : HighScores_Access_Array_Access) is
   begin
        begin
            if (highScoresArray) /= (null) then
                This.logUtil.putF (StringMaker_Package.Create.append (This.commonStrings.START).appendint (highScoresArray'Length).toString, HighScoresCanvas_Access'(This'Unchecked_Access), To_Unbounded_String ("setHighScoresArray"));
            else
                This.logUtil.putF (This.commonStrings.START, HighScoresCanvas_Access'(This'Unchecked_Access), To_Unbounded_String ("setHighScoresArray"));
            end if;
            This.highScoresHelper.setHighScoresArray (highScoresArray);
            HighScoresCanvas'Class (This).updateCommand (This.currentCommand);
            HighScoresCanvas'Class (This).setPaintable (HighScoresCanvas'Class (This).getHighScoresPaintable);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, HighScoresCanvas_Access'(This'Unchecked_Access), This.commonStrings.UPDATE, e);
                end;
        end;
   end setHighScoresArray;

   --  throws Exception
   procedure updateCommand (This : in out HighScoresCanvas; command_Param : access Command_Package.Command'Class) is
      command : constant Command_Access := Command_Access (command_Param);
      gameCommandsFactory : GameCommandsFactory_Access;
      index : Integer;
      nextIndex : Integer;
      highScoresArray : HighScores_Access_Array_Access;
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (This.commonStrings.START).append (This.stringUtil.toString (command)).toString, HighScoresCanvas_Access'(This'Unchecked_Access), This.commonStrings.UPDATE);
        gameCommandsFactory := GameCommandsFactory_Package.getInstance;
        if This.highScoreCommandsFactory.isHighScoreCommand (command) then
            index := This.highScoreCommandsFactory.getIndex (command);
            nextIndex := (index) + (1);
            highScoresArray := This.highScoresHelper.getHighScoresArray;
            if (nextIndex) >= (highScoresArray'Length) then
                nextIndex := 0;
            end if;
            if (highScoresArray'Length) > (0) then
                HighScoresCanvas'Class (This).getHighScoresPaintable.setHighScores (highScoresArray (index));
            else
                HighScoresCanvas'Class (This).getHighScoresPaintable.setHighScores (NullHighScoresSingletonFactory_Package.getInstance);
            end if;
            if (index) /= (nextIndex) then
                HighScoresCanvas'Class (This).removeAllCommands;
                HighScoresCanvas'Class (This).addCommand (gameCommandsFactory.CLOSE_AND_SHOW_GAME_CANVAS);
                HighScoresCanvas'Class (This).addCommand (This.highScoreCommandsFactory.HIGH_SCORE_COMMANDS (nextIndex));
            end if;
        end if;
        This.currentCommand := command;
        HighScoresCanvas'Class (This).close;
        GameCommandCanvas_Package.GameCommandCanvas (This).initMenu;
        HighScoresCanvas'Class (This).open;
        This.repaintBehavior.onChangeRepaint (HighScoresCanvas_Access'(This'Unchecked_Access));
   end updateCommand;

   function getGameInfo (This : in out HighScoresCanvas) return GameInfo_Access is
   begin
        return This.gameInfo;
   end getGameInfo;

   procedure setPaintable (This : in out HighScoresCanvas; paintable_Param : access Paintable_Package.Paintable'Class) is
      paintable : constant Paintable_Access := Paintable_Access (paintable_Param);
   begin
        This.paintable := paintable;
        This.repaintBehavior.onChangeRepaint (HighScoresCanvas_Access'(This'Unchecked_Access));
   end setPaintable;

begin
   null;
   NAME := To_Unbounded_String ("HighScoresCanvas");

end org.allbinary.game.score.displayable.HighScoresCanvas_Package;


