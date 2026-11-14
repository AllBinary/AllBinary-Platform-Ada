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
with org.allbinary.graphics.displayable.CanvasStrings_Package; use org.allbinary.graphics.displayable.CanvasStrings_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with javax.microedition.lcdui.Alert_Package;
with javax.microedition.lcdui.AlertType_Package;
with org.microemu.device.ui.AlertUI_Package;
with org.allbinary.util.ArrayUtil_Package;
with javax.microedition.lcdui.BaseDisplay_Package;
with org.allbinary.util.BasicArrayList_Package;
with javax.microedition.lcdui.Canvas_Package;
with org.microemu.device.ui.CanvasUI_Package;
with javax.microedition.lcdui.ChoiceGroup_Package;
with javax.microedition.lcdui.ChoiceItem_Package;
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
with org.allbinary.logic.math.MathUtil_Package;
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

package body org.allbinary.game.commands.GameCommandsFactory_Package is

   package CanvasStrings_Package renames Standard.org.allbinary.graphics.displayable.CanvasStrings_Package;
   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
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
   procedure Initialize_Fields (This : in out GameCommandsFactory'Class) is
   begin
      null;
      This.TOGGLE_FULLSCREEN := Command_Package.Create (To_Unbounded_String ("Toggle FullScreen"), StringUtil_Package.getInstance.EMPTY_STRING, Command_Package.SCREEN, 1);
      This.TOGGLE_KEYBOARD := Command_Package.Create (To_Unbounded_String ("Keyboard"), StringUtil_Package.getInstance.EMPTY_STRING, Command_Package.SCREEN, 1);
      This.SET_MENU_DISPLAYABLE := Command_Package.Create (To_Unbounded_String ("Set Menu Displayable"), StringUtil_Package.getInstance.EMPTY_STRING, Command_Package.SCREEN, 1);
      This.APPLICATION_UPDATE := Command_Package.Create (CommonStrings_Package.getInstance.UPDATE, StringUtil_Package.getInstance.EMPTY_STRING, Command_Package.SCREEN, 1);
      This.DISPLAY_ABOUT := Command_Package.Create (CanvasStrings_Package.getInstance.ABOUT, StringUtil_Package.getInstance.EMPTY_STRING, Command_Package.SCREEN, 2);
      This.OPEN_WEB_URL := Command_Package.Create (To_Unbounded_String ("Open Web URL"), StringUtil_Package.getInstance.EMPTY_STRING, Command_Package.SCREEN, 2);
      This.CLOSE_OPTIONS := Command_Package.Create (To_Unbounded_String ("Back"), StringUtil_Package.getInstance.EMPTY_STRING, Command_Package.SCREEN, 1);
      This.DISPLAY_OPTIONS := Command_Package.Create (CanvasStrings_Package.getInstance.OPTIONS, StringUtil_Package.getInstance.EMPTY_STRING, Command_Package.SCREEN, 2);
      This.START_TRACE := Command_Package.Create (To_Unbounded_String ("Start Trace"), StringUtil_Package.getInstance.EMPTY_STRING, Command_Package.SCREEN, 1);
      This.STOP_TRACE := Command_Package.Create (To_Unbounded_String ("Stop Trace"), StringUtil_Package.getInstance.EMPTY_STRING, Command_Package.SCREEN, 1);
      This.DEFAULT_OPTIONS := Command_Package.Create (To_Unbounded_String ("Default"), StringUtil_Package.getInstance.EMPTY_STRING, Command_Package.SCREEN, 1);
      This.SHOW_GAME_CANVAS := Command_Package.Create (To_Unbounded_String ("Back to Game"), StringUtil_Package.getInstance.EMPTY_STRING, Command_Package.SCREEN, 1);
      This.CLOSE_AND_SHOW_GAME_CANVAS := Command_Package.Create (To_Unbounded_String ("Back"), StringUtil_Package.getInstance.EMPTY_STRING, Command_Package.SCREEN, 1);
      This.QUIT_COMMAND := Command_Package.Create (To_Unbounded_String ("Quit"), StringUtil_Package.getInstance.EMPTY_STRING, Command_Package.STOP, 1);
      This.RESTART_COMMAND := Command_Package.Create (To_Unbounded_String ("Restart"), StringUtil_Package.getInstance.EMPTY_STRING, Command_Package.SCREEN, 0);
      This.DISPLAY_SAVE_FORM := Command_Package.Create (To_Unbounded_String ("Save To"), StringUtil_Package.getInstance.EMPTY_STRING, Command_Package.SCREEN, 3);
      This.SAVE := Command_Package.Create (To_Unbounded_String ("Save"), StringUtil_Package.getInstance.EMPTY_STRING, Command_Package.SCREEN, 3);
      This.DISPLAY_LOAD_FORM := Command_Package.Create (To_Unbounded_String ("Load"), StringUtil_Package.getInstance.EMPTY_STRING, Command_Package.SCREEN, 3);
      This.LOAD_FILE := Command_Package.Create (To_Unbounded_String ("Load File"), StringUtil_Package.getInstance.EMPTY_STRING, Command_Package.SCREEN, 3);
      This.DELETE_FILE := Command_Package.Create (To_Unbounded_String ("Delete File"), StringUtil_Package.getInstance.EMPTY_STRING, Command_Package.SCREEN, 1);
      This.EXIT_COMMAND := Command_Package.Create (To_Unbounded_String ("Exit"), StringUtil_Package.getInstance.EMPTY_STRING, Command_Package.EXIT_Id, 2);
      This.EXIT_WITHOUT_PROGRESS_COMMAND := Command_Package.Create (To_Unbounded_String ("Exit Without Progress"), StringUtil_Package.getInstance.EMPTY_STRING, Command_Package.EXIT_Id, 2);
      This.START_COMMAND := Command_Package.Create (CommonStrings_Package.getInstance.START, StringUtil_Package.getInstance.EMPTY_STRING, Command_Package.SCREEN, 1);
      This.CONTINUE_COMMAND := Command_Package.Create (To_Unbounded_String ("Continue"), StringUtil_Package.getInstance.EMPTY_STRING, Command_Package.SCREEN, 1);
      This.SELECT_COMMAND := Command_Package.Create (To_Unbounded_String ("Select"), StringUtil_Package.getInstance.EMPTY_STRING, Command_Package.SCREEN, 1);
      This.FEATURE_UPDATE := Command_Package.Create (To_Unbounded_String ("Feature Update"), StringUtil_Package.getInstance.EMPTY_STRING, Command_Package.SCREEN, 1);
      This.BUY_COMMAND := Command_Package.Create (To_Unbounded_String ("BUY"), StringUtil_Package.getInstance.EMPTY_STRING, Command_Package.SCREEN, 1);
   end Initialize_Fields;


   function getInstance return GameCommandsFactory_Access is
   begin
        if (Java_Object_Access (GameCommandsFactory_Package.instance)) = (Java_Object_Access (NullUtil_Package.getInstance.NULL_OBJECT)) then
            GameCommandsFactory_Package.instance := Java_Object_Access (GameCommandsFactory_Package.Create);
        end if;
        return GameCommandsFactory_Access (GameCommandsFactory_Package.instance);
   end getInstance;

   procedure Initialize (This : in out GameCommandsFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return GameCommandsFactory_Access is
      This : constant GameCommandsFactory_Access := new GameCommandsFactory;
   begin
      GameCommandsFactory_Package.Initialize (This.all);
      return This;
   end Create;

begin
   null;
   instance := NullUtil_Package.getInstance.NULL_OBJECT;

end org.allbinary.game.commands.GameCommandsFactory_Package;


