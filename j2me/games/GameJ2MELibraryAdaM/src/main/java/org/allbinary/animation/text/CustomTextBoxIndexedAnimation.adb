-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
with org.allbinary.animation.AnimationBehavior_Package; use org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.animation.IndexedAnimation_Package; use org.allbinary.animation.IndexedAnimation_Package;
with org.allbinary.game.input.event.RawKeyEventListener_Package; use org.allbinary.game.input.event.RawKeyEventListener_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
with org.allbinary.graphics.font.UpdateMyFontInterface_Package; use org.allbinary.graphics.font.UpdateMyFontInterface_Package;
with org.allbinary.graphics.form.item.CustomTextBox_Package; use org.allbinary.graphics.form.item.CustomTextBox_Package;
with org.allbinary.graphics.form.item.CustomTextBox_Package_References;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.animation.text.TextChangeListener_Package; use org.allbinary.animation.text.TextChangeListener_Package;
with org.allbinary.animation.text.TextChangeListener_Package_References;
with javax.microedition.lcdui.Alert_Package;
with javax.microedition.lcdui.AlertType_Package;
with org.microemu.device.ui.AlertUI_Package;
with javax.microedition.lcdui.BaseDisplay_Package;
with javax.microedition.lcdui.Canvas_Package;
with org.microemu.device.ui.CanvasUI_Package;
with javax.microedition.lcdui.Choice_Package;
with javax.microedition.lcdui.ChoiceGroup_Package;
with javax.microedition.lcdui.ChoiceItem_Package;
with javax.microedition.lcdui.Command_Package;
with javax.microedition.lcdui.CommandListener_Package;
with org.microemu.device.ui.CommandUI_Package;
with org.microemu.device.Device_Package;
with org.microemu.device.DeviceDisplay_Package;
with javax.microedition.lcdui.Display_Package;
with org.microemu.DisplayAccess_Package;
with javax.microedition.lcdui.DisplayAccessor_Package;
with javax.microedition.lcdui.Displayable_Package;
with org.microemu.device.ui.DisplayableUI_Package;
with javax.microedition.lcdui.Event_Package;
with org.microemu.device.ui.EventDispatcher_Package;
with org.microemu.device.FontManager_Package;
with javax.microedition.lcdui.Form_Package;
with org.microemu.device.ui.FormUI_Package;
with javax.microedition.lcdui.Gauge_Package;
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
with javax.microedition.midlet.MIDlet_Package;
with org.microemu.MIDletAccess_Package;
with org.microemu.device.MutableImage_Package;
with org.microemu.device.ui.PaintEvent_Package;
with org.microemu.device.ui.PointerEvent_Package;
with javax.microedition.lcdui.Screen_Package;
with javax.microedition.lcdui.StringComponent_Package;
with org.allbinary.thread.SynchObject_Package;
with javax.microedition.lcdui.TextBox_Package;
with org.microemu.device.ui.TextBoxUI_Package;
with javax.microedition.lcdui.TextField_Package;
with javax.microedition.lcdui.Ticker_Package;
with org.microemu.device.ui.UIFactory_Package;

package body org.allbinary.animation.text.CustomTextBoxIndexedAnimation_Package is

   package Font_Package renames Standard.javax.microedition.lcdui.Font_Package;
   package AnimationBehavior_Package renames Standard.org.allbinary.animation.AnimationBehavior_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
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
   subtype CustomTextBox_Access is org.allbinary.graphics.form.item.CustomTextBox_Package_References.CustomTextBox_Access;
   function "=" (Left, Right : CustomTextBox_Access) return Boolean renames org.allbinary.graphics.form.item.CustomTextBox_Package_References."=";
   subtype CustomTextBox_Access_Array is org.allbinary.graphics.form.item.CustomTextBox_Package_References.CustomTextBox_Access_Array;
   function "=" (Left, Right : CustomTextBox_Access_Array) return Boolean renames org.allbinary.graphics.form.item.CustomTextBox_Package_References."=";
   subtype CustomTextBox_Access_Array_Access is org.allbinary.graphics.form.item.CustomTextBox_Package_References.CustomTextBox_Access_Array_Access;
   function "=" (Left, Right : CustomTextBox_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.item.CustomTextBox_Package_References."=";
   subtype CustomTextBox_Access_Array_Access_Array is org.allbinary.graphics.form.item.CustomTextBox_Package_References.CustomTextBox_Access_Array_Access_Array;
   function "=" (Left, Right : CustomTextBox_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.form.item.CustomTextBox_Package_References."=";
   subtype CustomTextBox_Access_Array_Access_Array_Access is org.allbinary.graphics.form.item.CustomTextBox_Package_References.CustomTextBox_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CustomTextBox_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.item.CustomTextBox_Package_References."=";
   subtype TextChangeListener_Access is org.allbinary.animation.text.TextChangeListener_Package_References.TextChangeListener_Access;
   function "=" (Left, Right : TextChangeListener_Access) return Boolean renames org.allbinary.animation.text.TextChangeListener_Package_References."=";
   subtype TextChangeListener_Access_Array is org.allbinary.animation.text.TextChangeListener_Package_References.TextChangeListener_Access_Array;
   function "=" (Left, Right : TextChangeListener_Access_Array) return Boolean renames org.allbinary.animation.text.TextChangeListener_Package_References."=";
   subtype TextChangeListener_Access_Array_Access is org.allbinary.animation.text.TextChangeListener_Package_References.TextChangeListener_Access_Array_Access;
   function "=" (Left, Right : TextChangeListener_Access_Array_Access) return Boolean renames org.allbinary.animation.text.TextChangeListener_Package_References."=";
   subtype TextChangeListener_Access_Array_Access_Array is org.allbinary.animation.text.TextChangeListener_Package_References.TextChangeListener_Access_Array_Access_Array;
   function "=" (Left, Right : TextChangeListener_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.text.TextChangeListener_Package_References."=";
   subtype TextChangeListener_Access_Array_Access_Array_Access is org.allbinary.animation.text.TextChangeListener_Package_References.TextChangeListener_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TextChangeListener_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.text.TextChangeListener_Package_References."=";
   procedure Initialize_Fields (This : in out CustomTextBoxIndexedAnimation'Class) is
   begin
      null;
      
      This.lastText := StringUtil_Package.getInstance.INIT_STRING;
      This.hasChanged := True;
      This.textChangeListener := TextChangeListener_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out CustomTextBoxIndexedAnimation'Class; customTextBox_Param : access CustomTextBox_Package.CustomTextBox'Class) is
      customTextBox : constant CustomTextBox_Access := CustomTextBox_Access (customTextBox_Param);
   begin
        IndexedAnimation_Package.Initialize (This, AnimationBehavior_Package.getInstance);
        Initialize_Fields (This);
        This.customTextBox := customTextBox;
   end Initialize;

   function Create (customTextBox_Param : access CustomTextBox_Package.CustomTextBox'Class) return CustomTextBoxIndexedAnimation_Access is
      This : constant CustomTextBoxIndexedAnimation_Access := new CustomTextBoxIndexedAnimation;
   begin
      CustomTextBoxIndexedAnimation_Package.Initialize (This.all, customTextBox_Param);
      return This;
   end Create;

   procedure setBasicColorP (This : in out CustomTextBoxIndexedAnimation; basicColor_Param : access BasicColor_Package.BasicColor'Class) is
      basicColor : constant BasicColor_Access := BasicColor_Access (basicColor_Param);
   begin
        This.customTextBox.getTextFieldItem.setForegroundBasicColorP (basicColor);
   end setBasicColorP;

   procedure setBackgroundBasicColorP (This : in out CustomTextBoxIndexedAnimation; basicColor_Param : access BasicColor_Package.BasicColor'Class) is
      basicColor : constant BasicColor_Access := BasicColor_Access (basicColor_Param);
   begin
        This.customTextBox.getTextFieldItem.setBackgroundBasicColorP (basicColor);
   end setBackgroundBasicColorP;

   procedure setTextWithOnMeasure (This : in out CustomTextBoxIndexedAnimation; text : Unbounded_String; textChangeListener_Param : access TextChangeListener_Package.TextChangeListener'Class) is
      textChangeListener : constant TextChangeListener_Access := TextChangeListener_Access (textChangeListener_Param);
   begin
        CustomTextBoxIndexedAnimation'Class (This).setText (text);
        This.textChangeListener := textChangeListener;
   end setTextWithOnMeasure;

   procedure updateMeasurement (This : in out CustomTextBoxIndexedAnimation; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
      font : Font_Access;
   begin
        font := graphics.getFont;
        This.textChangeListener.onMeasure;
        This.textChangeListener := TextChangeListener_Package.getInstance;
   end updateMeasurement;

   procedure setText (This : in out CustomTextBoxIndexedAnimation; text : Unbounded_String) is
   begin
        if (This.lastText) /= (text) then
            This.hasChanged := True;
            This.lastText := text;
            This.customTextBox.getTextFieldItem.setString (text);
        end if;
   end setText;

   function getText (This : in out CustomTextBoxIndexedAnimation) return Unbounded_String is
   begin
        return This.customTextBox.getTextFieldItem.getString;
   end getText;

   procedure onEventRaw (This : in out CustomTextBoxIndexedAnimation; keyCode : Integer; deviceId : Integer; repeated : Boolean) is
   begin
        This.customTextBox.onEventRaw (keyCode, deviceId, repeated);
   end onEventRaw;

   function getFontHeight (This : in out CustomTextBoxIndexedAnimation) return Integer is
   begin
        return This.customTextBox.getTextFieldItem.getFontHeight;
   end getFontHeight;

   procedure paintXY (This : in out CustomTextBoxIndexedAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        This.customTextBox.paintXY (graphics, x, y);
   end paintXY;

   procedure paintThreedXYZ (This : in out CustomTextBoxIndexedAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer; z : Integer) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        null;
   end paintThreedXYZ;

   function getWidth (This : in out CustomTextBoxIndexedAnimation) return Integer is
   begin
        return IndexedAnimation_Package.IndexedAnimation (This).getWidth;
   end getWidth;

end org.allbinary.animation.text.CustomTextBoxIndexedAnimation_Package;


