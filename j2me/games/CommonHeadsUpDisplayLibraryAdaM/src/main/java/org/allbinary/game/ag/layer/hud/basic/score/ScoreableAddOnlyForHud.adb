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


with org.allbinary.game.score.Scoreable_Package; use org.allbinary.game.score.Scoreable_Package;
with org.allbinary.game.ag.layer.hud.basic.score.ScoreHudWidget_Package; use org.allbinary.game.ag.layer.hud.basic.score.ScoreHudWidget_Package;
with org.allbinary.game.ag.layer.hud.basic.score.ScoreHudWidget_Package_References;
with javax.microedition.lcdui.Alert_Package;
with javax.microedition.lcdui.AlertType_Package;
with org.microemu.device.ui.AlertUI_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.util.ArrayUtil_Package;
with javax.microedition.lcdui.BaseDisplay_Package;
with org.allbinary.graphics.displayable.BaseScalable_Package;
with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColorSetUtil_Package;
with org.allbinary.game.graphics.hud.BasicHud_Package;
with javax.microedition.lcdui.Canvas_Package;
with org.allbinary.graphics.displayable.CanvasStrings_Package;
with org.microemu.device.ui.CanvasUI_Package;
with javax.microedition.lcdui.ChoiceGroup_Package;
with javax.microedition.lcdui.ChoiceItem_Package;
with javax.microedition.lcdui.Command_Package;
with javax.microedition.lcdui.CommandListener_Package;
with org.microemu.device.ui.CommandUI_Package;
with org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package;
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
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with javax.microedition.lcdui.Font_Package;
with org.microemu.device.FontManager_Package;
with javax.microedition.lcdui.Form_Package;
with org.microemu.device.ui.FormUI_Package;
with org.allbinary.graphics.GPoint_Package;
with javax.microedition.lcdui.Gauge_Package;
with javax.microedition.lcdui.Graphics_Package;
with org.allbinary.game.graphics.hud.HudGraphicsPosition_Package;
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
with org.allbinary.logic.communication.log.LogUtil_Package;
with javax.microedition.midlet.MIDlet_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.microemu.device.MutableImage_Package;
with org.allbinary.graphics.font.MyFontProcessor_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.game.ag.layer.hud.basic.NumberStringHud_Package;
with org.microemu.device.ui.PaintEvent_Package;
with org.allbinary.graphics.paint.PaintableInterface_Package;
with org.microemu.device.ui.PointerEvent_Package;
with org.allbinary.logic.math.PrimitiveLongSingleton_Package;
with org.allbinary.logic.math.PrimitiveLongUtil_Package;
with org.allbinary.graphics.displayable.ScalableListener_Package;
with org.allbinary.game.ag.layer.hud.basic.score.ScoreHudWidget_Package;
with javax.microedition.lcdui.Screen_Package;
with javax.microedition.lcdui.StringComponent_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.thread.SynchObject_Package;
with javax.microedition.lcdui.TextBox_Package;
with org.microemu.device.ui.TextBoxUI_Package;
with javax.microedition.lcdui.TextField_Package;
with javax.microedition.lcdui.Ticker_Package;
with org.allbinary.time.TimeStampUtil_Package;
with org.microemu.device.ui.UIFactory_Package;

package body org.allbinary.game.ag.layer.hud.basic.score.ScoreableAddOnlyForHud_Package is

   subtype ScoreHudWidget_Access is org.allbinary.game.ag.layer.hud.basic.score.ScoreHudWidget_Package_References.ScoreHudWidget_Access;
   function "=" (Left, Right : ScoreHudWidget_Access) return Boolean renames org.allbinary.game.ag.layer.hud.basic.score.ScoreHudWidget_Package_References."=";
   subtype ScoreHudWidget_Access_Array is org.allbinary.game.ag.layer.hud.basic.score.ScoreHudWidget_Package_References.ScoreHudWidget_Access_Array;
   function "=" (Left, Right : ScoreHudWidget_Access_Array) return Boolean renames org.allbinary.game.ag.layer.hud.basic.score.ScoreHudWidget_Package_References."=";
   subtype ScoreHudWidget_Access_Array_Access is org.allbinary.game.ag.layer.hud.basic.score.ScoreHudWidget_Package_References.ScoreHudWidget_Access_Array_Access;
   function "=" (Left, Right : ScoreHudWidget_Access_Array_Access) return Boolean renames org.allbinary.game.ag.layer.hud.basic.score.ScoreHudWidget_Package_References."=";
   subtype ScoreHudWidget_Access_Array_Access_Array is org.allbinary.game.ag.layer.hud.basic.score.ScoreHudWidget_Package_References.ScoreHudWidget_Access_Array_Access_Array;
   function "=" (Left, Right : ScoreHudWidget_Access_Array_Access_Array) return Boolean renames org.allbinary.game.ag.layer.hud.basic.score.ScoreHudWidget_Package_References."=";
   subtype ScoreHudWidget_Access_Array_Access_Array_Access is org.allbinary.game.ag.layer.hud.basic.score.ScoreHudWidget_Package_References.ScoreHudWidget_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ScoreHudWidget_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.ag.layer.hud.basic.score.ScoreHudWidget_Package_References."=";
   procedure Initialize_Fields (This : in out ScoreableAddOnlyForHud'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out ScoreableAddOnlyForHud'Class; scoreVectorGraphic_Param : access ScoreHudWidget_Package.ScoreHudWidget'Class) is
      scoreVectorGraphic : constant ScoreHudWidget_Access := ScoreHudWidget_Access (scoreVectorGraphic_Param);
   begin
        Scoreable_Package.Initialize (This, 0);
        Initialize_Fields (This);
        This.scoreHudWidget := scoreVectorGraphic;
        ScoreableAddOnlyForHud'Class (This).getScoreHudWidget.set (0);
   end Initialize;

   function Create (scoreVectorGraphic_Param : access ScoreHudWidget_Package.ScoreHudWidget'Class) return ScoreableAddOnlyForHud_Access is
      This : constant ScoreableAddOnlyForHud_Access := new ScoreableAddOnlyForHud;
   begin
      ScoreableAddOnlyForHud_Package.Initialize (This.all, scoreVectorGraphic_Param);
      return This;
   end Create;

   procedure removePoints (This : in out ScoreableAddOnlyForHud; points : Integer) is
   begin
        null;
   end removePoints;

   procedure addPoints (This : in out ScoreableAddOnlyForHud; points : Integer) is
   begin
        Scoreable_Package.Scoreable (This).addPoints (points);
        ScoreableAddOnlyForHud'Class (This).getScoreHudWidget.add (points);
   end addPoints;

   function getScoreHudWidget (This : in out ScoreableAddOnlyForHud) return ScoreHudWidget_Access is
   begin
        return This.scoreHudWidget;
   end getScoreHudWidget;

end org.allbinary.game.ag.layer.hud.basic.score.ScoreableAddOnlyForHud_Package;


