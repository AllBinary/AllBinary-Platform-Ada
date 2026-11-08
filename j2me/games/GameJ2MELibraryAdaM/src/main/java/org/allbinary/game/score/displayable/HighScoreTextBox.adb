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


with javax.microedition.lcdui.CommandListener_Package; use javax.microedition.lcdui.CommandListener_Package;
with javax.microedition.lcdui.CommandListener_Package_References;
with javax.microedition.lcdui.Font_Package; use javax.microedition.lcdui.Font_Package;
with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
with javax.microedition.lcdui.TextField_Package; use javax.microedition.lcdui.TextField_Package;
with org.allbinary.PostGameCommandFactory_Package; use org.allbinary.PostGameCommandFactory_Package;
with org.allbinary.game.GameInfo_Package; use org.allbinary.game.GameInfo_Package;
with org.allbinary.game.GameInfo_Package_References;
with org.allbinary.game.score.HighScore_Package; use org.allbinary.game.score.HighScore_Package;
with org.allbinary.game.score.HighScore_Package_References;
with org.allbinary.game.score.HighScoresHelperBaseInterface_Package; use org.allbinary.game.score.HighScoresHelperBaseInterface_Package;
with org.allbinary.game.score.HighScoresHelperBaseInterface_Package_References;
with org.allbinary.game.score.HighScoresFactoryInterface_Package; use org.allbinary.game.score.HighScoresFactoryInterface_Package;
with org.allbinary.game.score.HighScoresFactoryInterface_Package_References;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.graphics.form.item.CustomTextBox_Package; use org.allbinary.graphics.form.item.CustomTextBox_Package;
with org.allbinary.graphics.paint.NullPaintable_Package; use org.allbinary.graphics.paint.NullPaintable_Package;
with org.allbinary.graphics.paint.Paintable_Package; use org.allbinary.graphics.paint.Paintable_Package;
with org.allbinary.graphics.paint.Paintable_Package_References;
with org.allbinary.graphics.paint.SimpleTextPaintable_Package; use org.allbinary.graphics.paint.SimpleTextPaintable_Package;
with org.allbinary.input.event.VirtualKeyboardEventHandler_Package; use org.allbinary.input.event.VirtualKeyboardEventHandler_Package;
with org.allbinary.input.event.VirtualKeyboardEventHandler_Package_References;
with org.allbinary.logic.system.os.GenericOperatingSystem_Package; use org.allbinary.logic.system.os.GenericOperatingSystem_Package;
with org.allbinary.logic.system.os.OperatingSystemFactory_Package; use org.allbinary.logic.system.os.OperatingSystemFactory_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References;
with org.allbinary.logic.system.security.licensing.InApplicationPurchaseFactory_Package; use org.allbinary.logic.system.security.licensing.InApplicationPurchaseFactory_Package;
with org.allbinary.game.score.displayable.HighScoreUtil_Package; use org.allbinary.game.score.displayable.HighScoreUtil_Package;
with org.allbinary.game.score.displayable.HighScoreUtil_Package_References;
with org.allbinary.graphics.form.item.ABCustomItem_Package;
with org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABStack_Package;
with org.allbinary.graphics.form.item.ABStringComponent_Package;
with org.allbinary.graphics.form.item.ABTextFieldItem_Package;
with org.allbinary.graphics.form.item.ABTextItem_Package;
with javax.microedition.lcdui.Alert_Package;
with javax.microedition.lcdui.AlertType_Package;
with org.microemu.device.ui.AlertUI_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.util.ArrayUtil_Package;
with javax.microedition.lcdui.BaseDisplay_Package;
with org.allbinary.graphics.displayable.BaseScalable_Package;
with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
with javax.microedition.lcdui.Canvas_Package;
with org.allbinary.graphics.displayable.CanvasStrings_Package;
with org.microemu.device.ui.CanvasUI_Package;
with org.allbinary.logic.java.character_Id.CharacterSet_Package;
with javax.microedition.lcdui.ChoiceGroup_Package;
with javax.microedition.lcdui.ChoiceItem_Package;
with javax.microedition.lcdui.Command_Package;
with org.microemu.device.ui.CommandUI_Package;
with org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.graphics.form.item.CustomCustomItem_Package;
with org.microemu.device.Device_Package;
with org.microemu.device.DeviceDisplay_Package;
with javax.microedition.lcdui.Display_Package;
with javax.microedition.lcdui.DisplayAccessor_Package;
with org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package;
with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
with javax.microedition.lcdui.Displayable_Package;
with org.microemu.device.ui.DisplayableUI_Package;
with javax.microedition.lcdui.Event_Package;
with org.microemu.device.ui.EventDispatcher_Package;
with org.allbinary.logic.util.event.EventListenerInterface_Package;
with org.allbinary.logic.util.event.EventStrings_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.microemu.device.FontManager_Package;
with javax.microedition.lcdui.Form_Package;
with org.microemu.device.ui.FormUI_Package;
with org.allbinary.game.GameInfoData_Package;
with org.allbinary.game.GameMode_Package;
with org.allbinary.game.GameType_Package;
with javax.microedition.lcdui.Gauge_Package;
with org.allbinary.game.score.displayable.HighScoreUtil_Package;
with javax.microedition.lcdui.Image_Package;
with javax.microedition.lcdui.ImageStringItem_Package;
with org.allbinary.game.input.Input_Package;
with org.allbinary.game.input.InputFactory_Package;
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
with org.allbinary.logic.math.MathUtil_Package;
with org.microemu.device.MutableImage_Package;
with org.allbinary.graphics.displayable.MyCanvas_Package;
with org.allbinary.graphics.font.MyFontProcessor_Package;
with org.allbinary.logic.NullUtil_Package;
with org.microemu.device.ui.PaintEvent_Package;
with javax.microedition.media.Player_Package;
with javax.microedition.media.PlayerListener_Package;
with org.allbinary.game.PlayerType_Package;
with org.microemu.device.ui.PointerEvent_Package;
with org.allbinary.game.input.event.RawKeyEventListener_Package;
with org.allbinary.graphics.displayable.ScalableListener_Package;
with javax.microedition.lcdui.Screen_Package;
with org.allbinary.media.audio.Sound_Package;
with javax.microedition.lcdui.StringComponent_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.thread.SynchObject_Package;
with javax.microedition.lcdui.TextBox_Package;
with org.microemu.device.ui.TextBoxUI_Package;
with javax.microedition.lcdui.Ticker_Package;
with org.allbinary.time.TimeStampUtil_Package;
with org.allbinary.input.TouchJ2ME_Package;
with org.microemu.device.ui.UIFactory_Package;
with org.allbinary.input.event.VirtualKeyboardEvent_Package;
with org.allbinary.logic.util.visitor.Visitor_Package;

package body org.allbinary.game.score.displayable.HighScoreTextBox_Package is

   package Font_Package renames Standard.javax.microedition.lcdui.Font_Package;
   package TextField_Package renames Standard.javax.microedition.lcdui.TextField_Package;
   package PostGameCommandFactory_Package renames Standard.org.allbinary.PostGameCommandFactory_Package;
   package BasicColorFactory_Package renames Standard.org.allbinary.graphics.color.BasicColorFactory_Package;
   package NullPaintable_Package renames Standard.org.allbinary.graphics.paint.NullPaintable_Package;
   package SimpleTextPaintable_Package renames Standard.org.allbinary.graphics.paint.SimpleTextPaintable_Package;
   package GenericOperatingSystem_Package renames Standard.org.allbinary.logic.system.os.GenericOperatingSystem_Package;
   package OperatingSystemFactory_Package renames Standard.org.allbinary.logic.system.os.OperatingSystemFactory_Package;
   package InApplicationPurchaseFactory_Package renames Standard.org.allbinary.logic.system.security.licensing.InApplicationPurchaseFactory_Package;
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
   subtype HighScore_Access is org.allbinary.game.score.HighScore_Package_References.HighScore_Access;
   function "=" (Left, Right : HighScore_Access) return Boolean renames org.allbinary.game.score.HighScore_Package_References."=";
   subtype HighScore_Access_Array is org.allbinary.game.score.HighScore_Package_References.HighScore_Access_Array;
   function "=" (Left, Right : HighScore_Access_Array) return Boolean renames org.allbinary.game.score.HighScore_Package_References."=";
   subtype HighScore_Access_Array_Access is org.allbinary.game.score.HighScore_Package_References.HighScore_Access_Array_Access;
   function "=" (Left, Right : HighScore_Access_Array_Access) return Boolean renames org.allbinary.game.score.HighScore_Package_References."=";
   subtype HighScore_Access_Array_Access_Array is org.allbinary.game.score.HighScore_Package_References.HighScore_Access_Array_Access_Array;
   function "=" (Left, Right : HighScore_Access_Array_Access_Array) return Boolean renames org.allbinary.game.score.HighScore_Package_References."=";
   subtype HighScore_Access_Array_Access_Array_Access is org.allbinary.game.score.HighScore_Package_References.HighScore_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HighScore_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.score.HighScore_Package_References."=";
   subtype HighScoresHelperBaseInterface_Access is org.allbinary.game.score.HighScoresHelperBaseInterface_Package_References.HighScoresHelperBaseInterface_Access;
   function "=" (Left, Right : HighScoresHelperBaseInterface_Access) return Boolean renames org.allbinary.game.score.HighScoresHelperBaseInterface_Package_References."=";
   subtype HighScoresHelperBaseInterface_Access_Array is org.allbinary.game.score.HighScoresHelperBaseInterface_Package_References.HighScoresHelperBaseInterface_Access_Array;
   function "=" (Left, Right : HighScoresHelperBaseInterface_Access_Array) return Boolean renames org.allbinary.game.score.HighScoresHelperBaseInterface_Package_References."=";
   subtype HighScoresHelperBaseInterface_Access_Array_Access is org.allbinary.game.score.HighScoresHelperBaseInterface_Package_References.HighScoresHelperBaseInterface_Access_Array_Access;
   function "=" (Left, Right : HighScoresHelperBaseInterface_Access_Array_Access) return Boolean renames org.allbinary.game.score.HighScoresHelperBaseInterface_Package_References."=";
   subtype HighScoresHelperBaseInterface_Access_Array_Access_Array is org.allbinary.game.score.HighScoresHelperBaseInterface_Package_References.HighScoresHelperBaseInterface_Access_Array_Access_Array;
   function "=" (Left, Right : HighScoresHelperBaseInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.score.HighScoresHelperBaseInterface_Package_References."=";
   subtype HighScoresHelperBaseInterface_Access_Array_Access_Array_Access is org.allbinary.game.score.HighScoresHelperBaseInterface_Package_References.HighScoresHelperBaseInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HighScoresHelperBaseInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.score.HighScoresHelperBaseInterface_Package_References."=";
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
   subtype BasicColor_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access;
   function "=" (Left, Right : BasicColor_Access) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array;
   function "=" (Left, Right : BasicColor_Access_Array) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access;
   function "=" (Left, Right : BasicColor_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array;
   function "=" (Left, Right : BasicColor_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicColor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
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
   subtype VirtualKeyboardEventHandler_Access is org.allbinary.input.event.VirtualKeyboardEventHandler_Package_References.VirtualKeyboardEventHandler_Access;
   function "=" (Left, Right : VirtualKeyboardEventHandler_Access) return Boolean renames org.allbinary.input.event.VirtualKeyboardEventHandler_Package_References."=";
   subtype VirtualKeyboardEventHandler_Access_Array is org.allbinary.input.event.VirtualKeyboardEventHandler_Package_References.VirtualKeyboardEventHandler_Access_Array;
   function "=" (Left, Right : VirtualKeyboardEventHandler_Access_Array) return Boolean renames org.allbinary.input.event.VirtualKeyboardEventHandler_Package_References."=";
   subtype VirtualKeyboardEventHandler_Access_Array_Access is org.allbinary.input.event.VirtualKeyboardEventHandler_Package_References.VirtualKeyboardEventHandler_Access_Array_Access;
   function "=" (Left, Right : VirtualKeyboardEventHandler_Access_Array_Access) return Boolean renames org.allbinary.input.event.VirtualKeyboardEventHandler_Package_References."=";
   subtype VirtualKeyboardEventHandler_Access_Array_Access_Array is org.allbinary.input.event.VirtualKeyboardEventHandler_Package_References.VirtualKeyboardEventHandler_Access_Array_Access_Array;
   function "=" (Left, Right : VirtualKeyboardEventHandler_Access_Array_Access_Array) return Boolean renames org.allbinary.input.event.VirtualKeyboardEventHandler_Package_References."=";
   subtype VirtualKeyboardEventHandler_Access_Array_Access_Array_Access is org.allbinary.input.event.VirtualKeyboardEventHandler_Package_References.VirtualKeyboardEventHandler_Access_Array_Access_Array_Access;
   function "=" (Left, Right : VirtualKeyboardEventHandler_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.event.VirtualKeyboardEventHandler_Package_References."=";
   subtype AbeClientInformationInterface_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access;
   function "=" (Left, Right : AbeClientInformationInterface_Access) return Boolean renames org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References."=";
   subtype AbeClientInformationInterface_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array;
   function "=" (Left, Right : AbeClientInformationInterface_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References."=";
   subtype AbeClientInformationInterface_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access;
   function "=" (Left, Right : AbeClientInformationInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References."=";
   subtype AbeClientInformationInterface_Access_Array_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access_Array;
   function "=" (Left, Right : AbeClientInformationInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References."=";
   subtype AbeClientInformationInterface_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AbeClientInformationInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References."=";
   subtype HighScoreUtil_Access is org.allbinary.game.score.displayable.HighScoreUtil_Package_References.HighScoreUtil_Access;
   function "=" (Left, Right : HighScoreUtil_Access) return Boolean renames org.allbinary.game.score.displayable.HighScoreUtil_Package_References."=";
   subtype HighScoreUtil_Access_Array is org.allbinary.game.score.displayable.HighScoreUtil_Package_References.HighScoreUtil_Access_Array;
   function "=" (Left, Right : HighScoreUtil_Access_Array) return Boolean renames org.allbinary.game.score.displayable.HighScoreUtil_Package_References."=";
   subtype HighScoreUtil_Access_Array_Access is org.allbinary.game.score.displayable.HighScoreUtil_Package_References.HighScoreUtil_Access_Array_Access;
   function "=" (Left, Right : HighScoreUtil_Access_Array_Access) return Boolean renames org.allbinary.game.score.displayable.HighScoreUtil_Package_References."=";
   subtype HighScoreUtil_Access_Array_Access_Array is org.allbinary.game.score.displayable.HighScoreUtil_Package_References.HighScoreUtil_Access_Array_Access_Array;
   function "=" (Left, Right : HighScoreUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.game.score.displayable.HighScoreUtil_Package_References."=";
   subtype HighScoreUtil_Access_Array_Access_Array_Access is org.allbinary.game.score.displayable.HighScoreUtil_Package_References.HighScoreUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HighScoreUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.score.displayable.HighScoreUtil_Package_References."=";
   procedure Initialize_Fields (This : in out HighScoreTextBox'Class) is
   begin
      null;
      This.virtualKeyboardEventHandler := VirtualKeyboardEventHandler_Package.getInstance;
      
      This.pleaseWait := Paintable_Access (SimpleTextPaintable_Package.Create (This.commonStrings.PLEASE_WAIT, BasicColorFactory_Package.getInstance.WHITE));
      This.paintable := NullPaintable_Package.getInstance;
      This.submitted := False;
   end Initialize_Fields;


   procedure Initialize (This : in out HighScoreTextBox'Class; highScoresFactoryInterface_Param : access HighScoresFactoryInterface_Package.HighScoresFactoryInterface'Class; highScoresHelper_Param : access HighScoresHelperBaseInterface_Package.HighScoresHelperBaseInterface'Class; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; gameInfo_Param : access GameInfo_Package.GameInfo'Class; cmdListener_Param : access CommandListener_Package.CommandListener'Class; name : Unbounded_String; highScore_Param : access HighScore_Package.HighScore'Class; backgrounBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) is
      highScoresFactoryInterface : constant HighScoresFactoryInterface_Access := HighScoresFactoryInterface_Access (highScoresFactoryInterface_Param);
      highScoresHelper : constant HighScoresHelperBaseInterface_Access := HighScoresHelperBaseInterface_Access (highScoresHelper_Param);
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
      gameInfo : constant GameInfo_Access := GameInfo_Access (gameInfo_Param);
      cmdListener : constant CommandListener_Access := CommandListener_Access (cmdListener_Param);
      highScore : constant HighScore_Access := HighScore_Access (highScore_Param);
      backgrounBasicColor : constant BasicColor_Access := BasicColor_Access (backgrounBasicColor_Param);
      foregroundBasicColor : constant BasicColor_Access := BasicColor_Access (foregroundBasicColor_Param);
      operatingSystemInterface : GenericOperatingSystem_Access;
      username : Unbounded_String;
   begin
        CustomTextBox_Package.Initialize (This, cmdListener, To_Unbounded_String ("New High Score Enter Name:"), name, 12, TextField_Package.ANY, Font_Package.getDefaultFont, backgrounBasicColor, foregroundBasicColor);
        Initialize_Fields (This);
        This.highScoreUtil := HighScoreUtil_Package.Create (highScoresFactoryInterface, highScoresHelper, abeClientInformation, gameInfo, cmdListener, name, highScore);
        operatingSystemInterface := OperatingSystemFactory_Package.getInstance.getOperatingSystemInstance;
        if operatingSystemInterface.isOverScan then
            username := InApplicationPurchaseFactory_Package.getInstance.getUserName;
            if (username) /= (Null_Unbounded_String) then
                HighScoreTextBox'Class (This).getTextFieldItem.setString (username);
            else
                HighScoreTextBox'Class (This).getTextFieldItem.setString (To_Unbounded_String ("NoGamerInfo"));
            end if;
        end if;
   end Initialize;

   function Create (highScoresFactoryInterface_Param : access HighScoresFactoryInterface_Package.HighScoresFactoryInterface'Class; highScoresHelper_Param : access HighScoresHelperBaseInterface_Package.HighScoresHelperBaseInterface'Class; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; gameInfo_Param : access GameInfo_Package.GameInfo'Class; cmdListener_Param : access CommandListener_Package.CommandListener'Class; name : Unbounded_String; highScore_Param : access HighScore_Package.HighScore'Class; backgrounBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) return HighScoreTextBox_Access is
      This : constant HighScoreTextBox_Access := new HighScoreTextBox;
   begin
      HighScoreTextBox_Package.Initialize (This.all, highScoresFactoryInterface_Param, highScoresHelper_Param, abeClientInformation_Param, gameInfo_Param, cmdListener_Param, name, highScore_Param, backgrounBasicColor_Param, foregroundBasicColor_Param);
      return This;
   end Create;

   procedure initCommands (This : in out HighScoreTextBox; cmdListener_Param : access CommandListener_Package.CommandListener'Class) is
      cmdListener : constant CommandListener_Access := CommandListener_Access (cmdListener_Param);
   begin
        HighScoreTextBox'Class (This).removeAllCommands;
        PostGameCommandFactory_Package.getInstance.addCommands (HighScoreTextBox_Access'(This'Unchecked_Access));
        HighScoreTextBox'Class (This).addCommand (HighScoreUtil_Package.SUBMIT_TEXTBOX_COMMAND);
        HighScoreTextBox'Class (This).setCommandListener (cmdListener);
   end initCommands;

   procedure open (This : in out HighScoreTextBox) is
   begin
        This.virtualKeyboardEventHandler.open;
        This.paintable := NullPaintable_Package.getInstance;
        CustomTextBox_Package.CustomTextBox (This).open;
   end open;

   --  throws Exception
   procedure close (This : in out HighScoreTextBox) is
   begin
        This.virtualKeyboardEventHandler.close;
        This.paintable := This.pleaseWait;
        This.repaintBehavior.onChangeRepaint (HighScoreTextBox_Access'(This'Unchecked_Access));
        CustomTextBox_Package.CustomTextBox (This).close;
        HighScoreTextBox'Class (This).removeCommand (HighScoreUtil_Package.SUBMIT_TEXTBOX_COMMAND);
        HighScoreTextBox'Class (This).update;
        if This.submitted then
            This.highScoreUtil.saveHighScore;
        else
            null;
        end if;
        This.paintable := NullPaintable_Package.getInstance;
        This.repaintBehavior.onChangeRepaint (HighScoreTextBox_Access'(This'Unchecked_Access));
   end close;

   --  throws Exception
   procedure update (This : in out HighScoreTextBox) is
      name : Unbounded_String;
   begin
        name := HighScoreTextBox'Class (This).getTextFieldItem.getString;
        This.highScoreUtil.update (name);
        CustomTextBox_Package.CustomTextBox (This).update;
   end update;

   procedure paint (This : in out HighScoreTextBox; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        CustomTextBox_Package.CustomTextBox (This).paint (graphics);
        This.paintable.paint (graphics);
   end paint;

   procedure saveHighScore (This : in out HighScoreTextBox) is
   begin
        This.highScoreUtil.saveHighScore;
   end saveHighScore;

   procedure submit (This : in out HighScoreTextBox) is
   begin
        This.highScoreUtil.submit (HighScoreTextBox_Access'(This'Unchecked_Access));
   end submit;

end org.allbinary.game.score.displayable.HighScoreTextBox_Package;


