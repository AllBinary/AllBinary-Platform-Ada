--  Generated Code Do Not Modify


with javax.microedition.lcdui.Canvas_Package; use javax.microedition.lcdui.Canvas_Package;
with android.view.KeyEvent_Package; use android.view.KeyEvent_Package;
with javax.microedition.lcdui.Alert_Package;
with javax.microedition.lcdui.AlertType_Package;
with org.microemu.device.ui.AlertUI_Package;
with javax.microedition.lcdui.BaseDisplay_Package;
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
with javax.microedition.lcdui.Graphics_Package;
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

package body org.allbinary.game.input.AndroidNumberKeyToJ2MECanvasNumberKey_Package is

   package Canvas_Package renames Standard.javax.microedition.lcdui.Canvas_Package;
   package KeyEvent_Package renames Standard.android.view.KeyEvent_Package;
   procedure Initialize_Fields (This : in out AndroidNumberKeyToJ2MECanvasNumberKey'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure init is
   begin
        AndroidNumberKeyToJ2MECanvasNumberKey_Package.androidtoJavaMicroEditionKeyMap (KeyEvent_Package.KEYCODE_0) := Canvas_Package.KEY_NUM0;
        AndroidNumberKeyToJ2MECanvasNumberKey_Package.androidtoJavaMicroEditionKeyMap (KeyEvent_Package.KEYCODE_1) := Canvas_Package.KEY_NUM1;
        AndroidNumberKeyToJ2MECanvasNumberKey_Package.androidtoJavaMicroEditionKeyMap (KeyEvent_Package.KEYCODE_2) := Canvas_Package.KEY_NUM2;
        AndroidNumberKeyToJ2MECanvasNumberKey_Package.androidtoJavaMicroEditionKeyMap (KeyEvent_Package.KEYCODE_3) := Canvas_Package.KEY_NUM3;
        AndroidNumberKeyToJ2MECanvasNumberKey_Package.androidtoJavaMicroEditionKeyMap (KeyEvent_Package.KEYCODE_4) := Canvas_Package.KEY_NUM4;
        AndroidNumberKeyToJ2MECanvasNumberKey_Package.androidtoJavaMicroEditionKeyMap (KeyEvent_Package.KEYCODE_5) := Canvas_Package.KEY_NUM5;
        AndroidNumberKeyToJ2MECanvasNumberKey_Package.androidtoJavaMicroEditionKeyMap (KeyEvent_Package.KEYCODE_6) := Canvas_Package.KEY_NUM6;
        AndroidNumberKeyToJ2MECanvasNumberKey_Package.androidtoJavaMicroEditionKeyMap (KeyEvent_Package.KEYCODE_7) := Canvas_Package.KEY_NUM7;
        AndroidNumberKeyToJ2MECanvasNumberKey_Package.androidtoJavaMicroEditionKeyMap (KeyEvent_Package.KEYCODE_8) := Canvas_Package.KEY_NUM8;
        AndroidNumberKeyToJ2MECanvasNumberKey_Package.androidtoJavaMicroEditionKeyMap (KeyEvent_Package.KEYCODE_9) := Canvas_Package.KEY_NUM9;
   end init;

   procedure Initialize (This : in out AndroidNumberKeyToJ2MECanvasNumberKey'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return AndroidNumberKeyToJ2MECanvasNumberKey_Access is
      This : constant AndroidNumberKeyToJ2MECanvasNumberKey_Access := new AndroidNumberKeyToJ2MECanvasNumberKey;
   begin
      AndroidNumberKeyToJ2MECanvasNumberKey_Package.Initialize (This.all);
      return This;
   end Create;

   function getKey (key : Integer) return Integer is
      value : Integer;
   begin
        if (key) < (AndroidNumberKeyToJ2MECanvasNumberKey_Package.androidtoJavaMicroEditionKeyMap'Length) then
            value := AndroidNumberKeyToJ2MECanvasNumberKey_Package.androidtoJavaMicroEditionKeyMap (key);
            if (value) /= (0) then
                return value;
            end if;
        end if;
        return key;
   end getKey;

   procedure getKey (key : Integer) is
      Java_Result : constant Integer := getKey (key => key);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getKey;

begin
   null;
   androidtoJavaMicroEditionKeyMap := new Integer_Array'(0 .. (17) - 1 => 0);

end org.allbinary.game.input.AndroidNumberKeyToJ2MECanvasNumberKey_Package;


