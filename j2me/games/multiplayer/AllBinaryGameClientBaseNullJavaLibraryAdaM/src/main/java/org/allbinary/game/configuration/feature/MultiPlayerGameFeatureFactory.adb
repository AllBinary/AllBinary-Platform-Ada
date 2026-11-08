--  Generated Code Do Not Modify


with javax.microedition.lcdui.Canvas_Package; use javax.microedition.lcdui.Canvas_Package;
with org.allbinary.game.commands.GameCommandsFactory_Package; use org.allbinary.game.commands.GameCommandsFactory_Package;
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

package body org.allbinary.game.configuration.feature.MultiPlayerGameFeatureFactory_Package is

   package Canvas_Package renames Standard.javax.microedition.lcdui.Canvas_Package;
   package GameCommandsFactory_Package renames Standard.org.allbinary.game.commands.GameCommandsFactory_Package;
   procedure Initialize_Fields (This : in out MultiPlayerGameFeatureFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   function getInstance return MultiPlayerGameFeatureFactory_Access is
   begin
        return MultiPlayerGameFeatureFactory_Access (MultiPlayerGameFeatureFactory_Package.instance);
   end getInstance;

   procedure Initialize (This : in out MultiPlayerGameFeatureFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return MultiPlayerGameFeatureFactory_Access is
      This : constant MultiPlayerGameFeatureFactory_Access := new MultiPlayerGameFeatureFactory;
   begin
      MultiPlayerGameFeatureFactory_Package.Initialize (This.all);
      return This;
   end Create;

   procedure addCommands (This : in out MultiPlayerGameFeatureFactory; anyType_Param : access Java_Object'Class) is
      anyType : constant Java_Object_Access := Java_Object_Access (anyType_Param);
      gameCommandsFactory : GameCommandsFactory_Access;
      canvas : Canvas_Access;
   begin
        gameCommandsFactory := GameCommandsFactory_Package.getInstance;
        canvas := Canvas_Access (anyType);
        canvas.addCommand (gameCommandsFactory.QUIT_COMMAND);
   end addCommands;

   procedure addCommands (This : in out MultiPlayerGameFeatureFactory; Value : Unbounded_String) is
   begin
      MultiPlayerGameFeatureFactory'Class (This).addCommands (Java_Box (Value));
   end addCommands;

begin
   null;
   instance := MultiPlayerGameFeatureFactory_Package.Create;

end org.allbinary.game.configuration.feature.MultiPlayerGameFeatureFactory_Package;


