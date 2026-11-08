--  Generated Code Do Not Modify


with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
with org.allbinary.graphics.form.item.ABStringComponent_Package; use org.allbinary.graphics.form.item.ABStringComponent_Package;
with org.allbinary.graphics.form.item.ABStringComponent_Package_References;
with org.allbinary.graphics.form.item.ABCustomItem_Package;
with org.allbinary.graphics.form.item.ABStringComponent_Package;
with javax.microedition.lcdui.Alert_Package;
with javax.microedition.lcdui.AlertType_Package;
with org.microemu.device.ui.AlertUI_Package;
with javax.microedition.lcdui.BaseDisplay_Package;
with javax.microedition.lcdui.Canvas_Package;
with org.microemu.device.ui.CanvasUI_Package;
with javax.microedition.lcdui.ChoiceGroup_Package;
with javax.microedition.lcdui.ChoiceItem_Package;
with javax.microedition.lcdui.Command_Package;
with javax.microedition.lcdui.CommandListener_Package;
with org.microemu.device.ui.CommandUI_Package;
with org.microemu.device.Device_Package;
with org.microemu.device.DeviceDisplay_Package;
with javax.microedition.lcdui.Display_Package;
with javax.microedition.lcdui.DisplayAccessor_Package;
with javax.microedition.lcdui.Displayable_Package;
with org.microemu.device.ui.DisplayableUI_Package;
with javax.microedition.lcdui.Event_Package;
with org.microemu.device.ui.EventDispatcher_Package;
with javax.microedition.lcdui.Font_Package;
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
with org.microemu.device.MutableImage_Package;
with org.allbinary.graphics.font.MyFontProcessor_Package;
with org.microemu.device.ui.PaintEvent_Package;
with org.microemu.device.ui.PointerEvent_Package;
with javax.microedition.lcdui.Screen_Package;
with javax.microedition.lcdui.StringComponent_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.thread.SynchObject_Package;
with javax.microedition.lcdui.TextBox_Package;
with org.microemu.device.ui.TextBoxUI_Package;
with javax.microedition.lcdui.TextField_Package;
with javax.microedition.lcdui.Ticker_Package;
with org.microemu.device.ui.UIFactory_Package;
with org.allbinary.graphics.font.UpdateMyFontInterface_Package;

package body org.allbinary.graphics.form.item.ABTextItem_Package is

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
   subtype ABStringComponent_Access is org.allbinary.graphics.form.item.ABStringComponent_Package_References.ABStringComponent_Access;
   function "=" (Left, Right : ABStringComponent_Access) return Boolean renames org.allbinary.graphics.form.item.ABStringComponent_Package_References."=";
   subtype ABStringComponent_Access_Array is org.allbinary.graphics.form.item.ABStringComponent_Package_References.ABStringComponent_Access_Array;
   function "=" (Left, Right : ABStringComponent_Access_Array) return Boolean renames org.allbinary.graphics.form.item.ABStringComponent_Package_References."=";
   subtype ABStringComponent_Access_Array_Access is org.allbinary.graphics.form.item.ABStringComponent_Package_References.ABStringComponent_Access_Array_Access;
   function "=" (Left, Right : ABStringComponent_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.item.ABStringComponent_Package_References."=";
   subtype ABStringComponent_Access_Array_Access_Array is org.allbinary.graphics.form.item.ABStringComponent_Package_References.ABStringComponent_Access_Array_Access_Array;
   function "=" (Left, Right : ABStringComponent_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.form.item.ABStringComponent_Package_References."=";
   subtype ABStringComponent_Access_Array_Access_Array_Access is org.allbinary.graphics.form.item.ABStringComponent_Package_References.ABStringComponent_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ABStringComponent_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.item.ABStringComponent_Package_References."=";
   procedure Initialize_Fields (This : in out ABTextItem'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out ABTextItem'Class; label : Unbounded_String; layout : Integer; altText : Unbounded_String; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) is
      backgroundBasicColor : constant BasicColor_Access := BasicColor_Access (backgroundBasicColor_Param);
      foregroundBasicColor : constant BasicColor_Access := BasicColor_Access (foregroundBasicColor_Param);
   begin
        CustomCustomItem_Package.Initialize (This, label, backgroundBasicColor, foregroundBasicColor);
   end Initialize;

   function Create (label : Unbounded_String; layout : Integer; altText : Unbounded_String; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) return ABTextItem_Access is
      This : constant ABTextItem_Access := new ABTextItem;
   begin
      ABTextItem_Package.Initialize (This.all, label, layout, altText, backgroundBasicColor_Param, foregroundBasicColor_Param);
      return This;
   end Create;

   procedure keyPressed (This : in out ABTextItem; keyCode : Integer) is
   begin
        null;
   end keyPressed;

   procedure paintUnselected (This : in out ABTextItem; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        null;
   end paintUnselected;

   function getLabelStringComponent (This : in out ABTextItem) return ABStringComponent_Access is
   begin
        return ABStringComponent_Access (ABStringComponent_Package.NULL_STRING_COMPONENT);
   end getLabelStringComponent;

   function getMinimumWidth (This : in out ABTextItem) return Integer is
   begin
        return CustomCustomItem_Package.CustomCustomItem (This).getMinimumWidth;
   end getMinimumWidth;

   function getMinimumHeight (This : in out ABTextItem) return Integer is
   begin
        return CustomCustomItem_Package.CustomCustomItem (This).getMinimumHeight;
   end getMinimumHeight;

   function getLabel (This : in out ABTextItem) return Unbounded_String is
   begin
        return CustomCustomItem_Package.CustomCustomItem (This).getLabel;
   end getLabel;

   procedure paintXY (This : in out ABTextItem; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        CustomCustomItem_Package.CustomCustomItem (This).paintXY (graphics, x, y);
   end paintXY;

end org.allbinary.graphics.form.item.ABTextItem_Package;


