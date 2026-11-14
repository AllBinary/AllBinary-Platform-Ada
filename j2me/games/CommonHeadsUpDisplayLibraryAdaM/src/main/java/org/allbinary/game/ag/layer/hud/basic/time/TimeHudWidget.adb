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


with javax.microedition.lcdui.Font_Package; use javax.microedition.lcdui.Font_Package;
with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
with org.allbinary.game.graphics.hud.BasicHud_Package; use org.allbinary.game.graphics.hud.BasicHud_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
with org.allbinary.graphics.font.MyFontProcessor_Package; use org.allbinary.graphics.font.MyFontProcessor_Package;
with org.allbinary.logic.math.PrimitiveLongSingleton_Package; use org.allbinary.logic.math.PrimitiveLongSingleton_Package;
with org.allbinary.game.ag.layer.hud.basic.time.HudTimer_Package; use org.allbinary.game.ag.layer.hud.basic.time.HudTimer_Package;
with org.allbinary.game.ag.layer.hud.basic.time.HudTimer_Package_References;
with javax.microedition.lcdui.Alert_Package;
with javax.microedition.lcdui.AlertType_Package;
with org.microemu.device.ui.AlertUI_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.util.ArrayUtil_Package;
with javax.microedition.lcdui.BaseDisplay_Package;
with org.allbinary.graphics.displayable.BaseScalable_Package;
with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.graphics.color.BasicColorSetUtil_Package;
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
with org.microemu.device.FontManager_Package;
with javax.microedition.lcdui.Form_Package;
with org.microemu.device.ui.FormUI_Package;
with org.allbinary.graphics.GPoint_Package;
with org.allbinary.time.GameTickTimeDelayHelper_Package;
with javax.microedition.lcdui.Gauge_Package;
with org.allbinary.game.graphics.hud.HudGraphicsPosition_Package;
with org.allbinary.game.ag.layer.hud.basic.time.HudTimer_Package;
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
with org.allbinary.logic.NullUtil_Package;
with org.microemu.device.ui.PaintEvent_Package;
with org.microemu.device.ui.PointerEvent_Package;
with org.allbinary.logic.math.PrimitiveLongUtil_Package;
with org.allbinary.graphics.displayable.ScalableListener_Package;
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

package body org.allbinary.game.ag.layer.hud.basic.time.TimeHudWidget_Package is

   package Font_Package renames Standard.javax.microedition.lcdui.Font_Package;
   package MyFontProcessor_Package renames Standard.org.allbinary.graphics.font.MyFontProcessor_Package;
   package PrimitiveLongSingleton_Package renames Standard.org.allbinary.logic.math.PrimitiveLongSingleton_Package;
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
   subtype HudTimer_Access is org.allbinary.game.ag.layer.hud.basic.time.HudTimer_Package_References.HudTimer_Access;
   function "=" (Left, Right : HudTimer_Access) return Boolean renames org.allbinary.game.ag.layer.hud.basic.time.HudTimer_Package_References."=";
   subtype HudTimer_Access_Array is org.allbinary.game.ag.layer.hud.basic.time.HudTimer_Package_References.HudTimer_Access_Array;
   function "=" (Left, Right : HudTimer_Access_Array) return Boolean renames org.allbinary.game.ag.layer.hud.basic.time.HudTimer_Package_References."=";
   subtype HudTimer_Access_Array_Access is org.allbinary.game.ag.layer.hud.basic.time.HudTimer_Package_References.HudTimer_Access_Array_Access;
   function "=" (Left, Right : HudTimer_Access_Array_Access) return Boolean renames org.allbinary.game.ag.layer.hud.basic.time.HudTimer_Package_References."=";
   subtype HudTimer_Access_Array_Access_Array is org.allbinary.game.ag.layer.hud.basic.time.HudTimer_Package_References.HudTimer_Access_Array_Access_Array;
   function "=" (Left, Right : HudTimer_Access_Array_Access_Array) return Boolean renames org.allbinary.game.ag.layer.hud.basic.time.HudTimer_Package_References."=";
   subtype HudTimer_Access_Array_Access_Array_Access is org.allbinary.game.ag.layer.hud.basic.time.HudTimer_Package_References.HudTimer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HudTimer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.ag.layer.hud.basic.time.HudTimer_Package_References."=";
   procedure Initialize_Fields (This : in out TimeHudWidget'Class) is
   begin
      null;
      This.TIME_STRING := To_Unbounded_String ("Time ");
      This.TIME_CHAR_ARRAY := new Character_Array'('T', 'i', 'm', 'e', ' ');
      This.offset := 0;
      This.string_Id := PrimitiveLongSingleton_Package.getInstance.ZERO;
      This.totalDigits := 1;
      
   end Initialize_Fields;


   --  throws Exception
   function getInstance (location : Integer; direction : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class; timer_Param : access HudTimer_Package.HudTimer'Class) return TimeHudWidget_Access is
      basicColor : constant BasicColor_Access := BasicColor_Access (basicColor_Param);
      timer : constant HudTimer_Access := HudTimer_Access (timer_Param);
   begin
        return TimeHudWidget_Package.Create (location, direction, 2, basicColor, timer);
   end getInstance;

   procedure Initialize (This : in out TimeHudWidget'Class; location : Integer; direction : Integer; bufferZone : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class; timer_Param : access HudTimer_Package.HudTimer'Class) is
      basicColor : constant BasicColor_Access := BasicColor_Access (basicColor_Param);
      timer : constant HudTimer_Access := HudTimer_Access (timer_Param);
   begin
        BasicHud_Package.Initialize (This, location, direction, bufferZone, basicColor);
        Initialize_Fields (This);
        This.timer := timer;
        TimeHudWidget'Class (This).set;
        This.updateMaxHeight := 14;
   end Initialize;

   function Create (location : Integer; direction : Integer; bufferZone : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class; timer_Param : access HudTimer_Package.HudTimer'Class) return TimeHudWidget_Access is
      This : constant TimeHudWidget_Access := new TimeHudWidget;
   begin
      TimeHudWidget_Package.Initialize (This.all, location, direction, bufferZone, basicColor_Param, timer_Param);
      return This;
   end Create;

   procedure updateMeasurement (This : in out TimeHudWidget; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
      font : Font_Access;
   begin
        font := graphics.getFont;
        This.updateMaxWidth := (font.getSize) * (5);
        This.offset := (font.stringWidth (This.TIME_STRING)) + (MyFontProcessor_Package.defaultStringWidth (font, 3));
        BasicHud_Package.BasicHud (This).updateMeasurement (graphics);
   end updateMeasurement;

   procedure update (This : in out TimeHudWidget) is
   begin
        This.timer.update;
        TimeHudWidget'Class (This).set;
   end update;

   procedure set (This : in out TimeHudWidget) is
   begin
        This.string_Id := This.timer.getTimeChars;
        This.totalDigits := This.timer.getCurrentTotalDigits;
   end set;

   function getTimer (This : in out TimeHudWidget) return HudTimer_Access is
   begin
        return This.timer;
   end getTimer;

   procedure paint (This : in out TimeHudWidget; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        BasicHud_Package.BasicHud (This).paintDX (graphics, This.TIME_CHAR_ARRAY, 0, This.TIME_CHAR_ARRAY'Length, This.string_Id, 0, This.totalDigits, This.offset);
   end paint;

   procedure getInstance (location : Integer; direction : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class; timer_Param : access HudTimer_Package.HudTimer'Class) is
      Java_Result : constant TimeHudWidget_Access := getInstance (location => location, direction => direction, basicColor_Param => basicColor_Param, timer_Param => timer_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.game.ag.layer.hud.basic.time.TimeHudWidget_Package;


