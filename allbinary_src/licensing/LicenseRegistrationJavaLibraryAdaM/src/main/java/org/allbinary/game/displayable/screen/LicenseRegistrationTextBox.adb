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


package body org.allbinary.game.displayable.screen.LicenseRegistrationTextBox_Package is

   procedure Initialize_Fields (This : in out LicenseRegistrationTextBox'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.pleaseWaitPaintable := SimpleTextPaintable_Package.Create (This.commonStrings.PLEASE_WAIT, BasicColorFactory_Package.getInstance.WHITE);
      This.paintable := NullPaintable_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out LicenseRegistrationTextBox'Class; cmdListener : CommandListener_Access; backgrounBasicColor : BasicColor_Access; foregroundBasicColor : BasicColor_Access) is
   begin
        CustomTextBox_Package.Initialize (This, cmdListener, To_Unbounded_String ("Enter Registration Code:"), StringUtil_Package.getInstance.EMPTY_STRING, 60, TextField_Package.ANY, Font_Package.getDefaultFont, backgrounBasicColor, foregroundBasicColor);
        Initialize_Fields (This);
   end Initialize;

   function Create (cmdListener : CommandListener_Access; backgrounBasicColor : BasicColor_Access; foregroundBasicColor : BasicColor_Access) return LicenseRegistrationTextBox_Access is
      This : constant LicenseRegistrationTextBox_Access := new LicenseRegistrationTextBox;
   begin
      LicenseRegistrationTextBox_Package.Initialize (This.all, cmdListener, backgrounBasicColor, foregroundBasicColor);
      return This;
   end Create;

   procedure initCommands (This : in out LicenseRegistrationTextBox; cmdListener : CommandListener_Access) is
   begin
        This.removeAllCommands;
        This.addCommand (GameCommandsFactory_Package.getInstance.CLOSE_AND_SHOW_GAME_CANVAS);
        This.addCommand (GameCommandsFactory_Package.getInstance.TOGGLE_KEYBOARD);
        This.addCommand (SUBMIT_COMMAND);
        This.setCommandListener (cmdListener);
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
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("open"), e);
                end;
        end;
        CustomTextBox (This).open;
        This.paintable := NullPaintable_Package.getInstance;
        This.repaint;
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
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("open"), e);
                end;
        end;
        This.paintable := This.pleaseWaitPaintable;
        This.repaint;
        CustomTextBox (This).close;
   end close;

   procedure paint (This : in out LicenseRegistrationTextBox; graphics : Graphics_Access) is
   begin
        CustomTextBox (This).paint (graphics);
        This.paintable.paint (graphics);
   end paint;

   procedure submit (This : in out LicenseRegistrationTextBox) is
      commandListener : CommandListener_Access;
   begin
        commandListener := This.getCustomCommandListener;
        commandListener.commandAction (SUBMIT_COMMAND, This'Unchecked_Access);
   end submit;

begin
   null;
   DISPLAY_COMMAND := Command_Package.Create (To_Unbounded_String ("Register"), StringUtil_Package.getInstance.EMPTY_STRING, Command_Package.SCREEN, 3);
   SUBMIT_COMMAND := Command_Package.Create (To_Unbounded_String ("Submit"), StringUtil_Package.getInstance.EMPTY_STRING, Command_Package.SCREEN, 3);

end org.allbinary.game.displayable.screen.LicenseRegistrationTextBox_Package;


