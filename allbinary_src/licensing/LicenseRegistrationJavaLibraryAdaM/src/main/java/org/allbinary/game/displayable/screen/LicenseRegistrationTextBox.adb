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
with javax.microedition.lcdui.CommandListener_Package; use javax.microedition.lcdui.CommandListener_Package;
with javax.microedition.lcdui.Font_Package; use javax.microedition.lcdui.Font_Package;
with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.TextField_Package; use javax.microedition.lcdui.TextField_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.game.commands.GameCommandsFactory_Package; use org.allbinary.game.commands.GameCommandsFactory_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.graphics.form.item.CustomTextBox_Package; use org.allbinary.graphics.form.item.CustomTextBox_Package;
with org.allbinary.graphics.paint.NullPaintable_Package; use org.allbinary.graphics.paint.NullPaintable_Package;
with org.allbinary.graphics.paint.Paintable_Package; use org.allbinary.graphics.paint.Paintable_Package;
with org.allbinary.graphics.paint.SimpleTextPaintable_Package; use org.allbinary.graphics.paint.SimpleTextPaintable_Package;
with org.allbinary.input.event.VirtualKeyboardEventHandler_Package; use org.allbinary.input.event.VirtualKeyboardEventHandler_Package;

package body org.allbinary.game.displayable.screen.LicenseRegistrationTextBox_Package is

   package Font_Package renames Standard.javax.microedition.lcdui.Font_Package;
   package TextField_Package renames Standard.javax.microedition.lcdui.TextField_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package GameCommandsFactory_Package renames Standard.org.allbinary.game.commands.GameCommandsFactory_Package;
   package BasicColorFactory_Package renames Standard.org.allbinary.graphics.color.BasicColorFactory_Package;
   package NullPaintable_Package renames Standard.org.allbinary.graphics.paint.NullPaintable_Package;
   package SimpleTextPaintable_Package renames Standard.org.allbinary.graphics.paint.SimpleTextPaintable_Package;
   package VirtualKeyboardEventHandler_Package renames Standard.org.allbinary.input.event.VirtualKeyboardEventHandler_Package;
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
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   function "=" (Left, Right : LogUtil_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
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
   procedure Initialize_Fields (This : in out LicenseRegistrationTextBox'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.pleaseWaitPaintable := Paintable_Access (SimpleTextPaintable_Package.Create (This.commonStrings.PLEASE_WAIT, BasicColorFactory_Package.getInstance.WHITE));
      This.paintable := NullPaintable_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out LicenseRegistrationTextBox'Class; cmdListener_Param : access CommandListener_Package.CommandListener'Class; backgrounBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) is
      cmdListener : constant CommandListener_Access := CommandListener_Access (cmdListener_Param);
      backgrounBasicColor : constant BasicColor_Access := BasicColor_Access (backgrounBasicColor_Param);
      foregroundBasicColor : constant BasicColor_Access := BasicColor_Access (foregroundBasicColor_Param);
   begin
        CustomTextBox_Package.Initialize (This, cmdListener, To_Unbounded_String ("Enter Registration Code:"), StringUtil_Package.getInstance.EMPTY_STRING, 60, TextField_Package.ANY, Font_Package.getDefaultFont, backgrounBasicColor, foregroundBasicColor);
        Initialize_Fields (This);
   end Initialize;

   function Create (cmdListener_Param : access CommandListener_Package.CommandListener'Class; backgrounBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) return LicenseRegistrationTextBox_Access is
      This : constant LicenseRegistrationTextBox_Access := new LicenseRegistrationTextBox;
   begin
      LicenseRegistrationTextBox_Package.Initialize (This.all, cmdListener_Param, backgrounBasicColor_Param, foregroundBasicColor_Param);
      return This;
   end Create;

   procedure initCommands (This : in out LicenseRegistrationTextBox; cmdListener_Param : access CommandListener_Package.CommandListener'Class) is
      cmdListener : constant CommandListener_Access := CommandListener_Access (cmdListener_Param);
   begin
        LicenseRegistrationTextBox'Class (This).removeAllCommands;
        LicenseRegistrationTextBox'Class (This).addCommand (GameCommandsFactory_Package.getInstance.CLOSE_AND_SHOW_GAME_CANVAS);
        LicenseRegistrationTextBox'Class (This).addCommand (GameCommandsFactory_Package.getInstance.TOGGLE_KEYBOARD);
        LicenseRegistrationTextBox'Class (This).addCommand (SUBMIT_COMMAND);
        LicenseRegistrationTextBox'Class (This).setCommandListener (cmdListener);
   end initCommands;

   procedure open (This : in out LicenseRegistrationTextBox) is
      virtualKeyboardEventHandler : VirtualKeyboardEventHandler_Access;
   begin
        begin
            virtualKeyboardEventHandler := VirtualKeyboardEventHandler_Package.getInstance;
            virtualKeyboardEventHandler.fireEvent (virtualKeyboardEventHandler.SHOW_EVENT);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, LicenseRegistrationTextBox_Access'(This'Unchecked_Access), To_Unbounded_String ("open"), e);
                end;
        end;
        CustomTextBox (This).open;
        This.paintable := NullPaintable_Package.getInstance;
        LicenseRegistrationTextBox'Class (This).repaint;
   end open;

   --  throws Exception
   procedure close (This : in out LicenseRegistrationTextBox) is
      virtualKeyboardEventHandler : VirtualKeyboardEventHandler_Access;
   begin
        begin
            virtualKeyboardEventHandler := VirtualKeyboardEventHandler_Package.getInstance;
            virtualKeyboardEventHandler.fireEvent (virtualKeyboardEventHandler.HIDE_EVENT);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, LicenseRegistrationTextBox_Access'(This'Unchecked_Access), To_Unbounded_String ("open"), e);
                end;
        end;
        This.paintable := This.pleaseWaitPaintable;
        LicenseRegistrationTextBox'Class (This).repaint;
        CustomTextBox (This).close;
   end close;

   procedure paint (This : in out LicenseRegistrationTextBox; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        CustomTextBox (This).paint (graphics);
        This.paintable.paint (graphics);
   end paint;

   procedure submit (This : in out LicenseRegistrationTextBox) is
      commandListener : CommandListener_Access;
   begin
        commandListener := LicenseRegistrationTextBox'Class (This).getCustomCommandListener;
        commandListener.commandAction (SUBMIT_COMMAND, LicenseRegistrationTextBox_Access'(This'Unchecked_Access));
   end submit;

begin
   null;
   DISPLAY_COMMAND := Command_Package.Create (To_Unbounded_String ("Register"), StringUtil_Package.getInstance.EMPTY_STRING, Command_Package.SCREEN, 3);
   SUBMIT_COMMAND := Command_Package.Create (To_Unbounded_String ("Submit"), StringUtil_Package.getInstance.EMPTY_STRING, Command_Package.SCREEN, 3);

end org.allbinary.game.displayable.screen.LicenseRegistrationTextBox_Package;


