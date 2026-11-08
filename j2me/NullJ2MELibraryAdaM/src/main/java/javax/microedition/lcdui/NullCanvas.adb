--  Generated Code Do Not Modify


with java.util.Stack_Package; use java.util.Stack_Package;
with javax.microedition.lcdui.Command_Package; use javax.microedition.lcdui.Command_Package;
with javax.microedition.lcdui.Command_Package_References;
with javax.microedition.lcdui.CommandListener_Package; use javax.microedition.lcdui.CommandListener_Package;
with javax.microedition.lcdui.CommandListener_Package_References;
with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
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

package body javax.microedition.lcdui.NullCanvas_Package is

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
   procedure Initialize_Fields (This : in out NullCanvas'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out NullCanvas'Class) is
   begin
      Canvas_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return NullCanvas_Access is
      This : constant NullCanvas_Access := new NullCanvas;
   begin
      NullCanvas_Package.Initialize (This.all);
      return This;
   end Create;

   procedure setFullScreenMode (This : in out NullCanvas; mode : Boolean) is
   begin
        null;
   end setFullScreenMode;

   procedure sizeChanged (This : in out NullCanvas; w : Integer; h : Integer) is
   begin
        null;
   end sizeChanged;

   function getCommandStack (This : in out NullCanvas) return Stack_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getCommandStack;

   function isCommand (This : in out NullCanvas; command_Param : access Command_Package.Command'Class) return Boolean is
      command : constant Command_Access := Command_Access (command_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return False;
   end isCommand;

   procedure addCommand (This : in out NullCanvas; command_Param : access Command_Package.Command'Class) is
      command : constant Command_Access := Command_Access (command_Param);
   begin
        null;
   end addCommand;

   procedure removeCommand (This : in out NullCanvas; command_Param : access Command_Package.Command'Class) is
      command : constant Command_Access := Command_Access (command_Param);
   begin
        null;
   end removeCommand;

   procedure removeAllCommands (This : in out NullCanvas) is
   begin
        null;
   end removeAllCommands;

   procedure setCommandListener (This : in out NullCanvas; l_Param : access CommandListener_Package.CommandListener'Class) is
      l : constant CommandListener_Access := CommandListener_Access (l_Param);
   begin
        null;
   end setCommandListener;

   function getCustomCommandListener (This : in out NullCanvas) return CommandListener_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getCustomCommandListener;

   function isPaused (This : in out NullCanvas) return Boolean is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return False;
   end isPaused;

   procedure removePauseCommand (This : in out NullCanvas) is
   begin
        null;
   end removePauseCommand;

   procedure pause (This : in out NullCanvas) is
   begin
        null;
   end pause;

   procedure unPause (This : in out NullCanvas) is
   begin
        null;
   end unPause;

   --  throws Exception
   procedure process (This : in out NullCanvas) is
   begin
        null;
   end process;

   procedure paint (This : in out NullCanvas; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        null;
   end paint;

   procedure destroy (This : in out NullCanvas) is
   begin
        null;
   end destroy;

   procedure setPaused (This : in out NullCanvas; isPaused : Boolean) is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end setPaused;

   procedure pointerDragged (This : in out NullCanvas; x : Integer; y : Integer) is
   begin
        null;
   end pointerDragged;

   procedure pointerPressed (This : in out NullCanvas; x : Integer; y : Integer) is
   begin
        null;
   end pointerPressed;

   procedure pointerReleased (This : in out NullCanvas; x : Integer; y : Integer) is
   begin
        null;
   end pointerReleased;

   procedure isCommand (This : in out NullCanvas; command_Param : access Command_Package.Command'Class) is
      Java_Result : constant Boolean := NullCanvas'Class (This).isCommand (command_Param => command_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isCommand;

begin
   null;
   NULL_CANVAS := NullCanvas_Package.Create;

end javax.microedition.lcdui.NullCanvas_Package;


