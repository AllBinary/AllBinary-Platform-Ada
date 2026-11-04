-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2002 AllBinary 
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
with javax.microedition.lcdui.CommandListener_Package; use javax.microedition.lcdui.CommandListener_Package;
with javax.microedition.lcdui.CommandListener_Package_References;
with javax.microedition.lcdui.Form_Package; use javax.microedition.lcdui.Form_Package;
with javax.microedition.lcdui.NullCommandListener_Package; use javax.microedition.lcdui.NullCommandListener_Package;
with org.allbinary.canvas.Processor_Package; use org.allbinary.canvas.Processor_Package;
with org.allbinary.canvas.Processor_Package_References;
with org.allbinary.game.displayable.canvas.MenuListener_Package; use org.allbinary.game.displayable.canvas.MenuListener_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.graphics.displayable.command.MyCommandInterface_Package; use org.allbinary.graphics.displayable.command.MyCommandInterface_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.util.ABStack_Package; use org.allbinary.util.ABStack_Package;
with org.allbinary.util.ABStack_Package_References;
with org.allbinary.graphics.displayable.screen.ScreenRepaintProcessorFactory_Package; use org.allbinary.graphics.displayable.screen.ScreenRepaintProcessorFactory_Package;

package body org.allbinary.graphics.displayable.screen.CommandForm_Package is

   package NullCommandListener_Package renames Standard.javax.microedition.lcdui.NullCommandListener_Package;
   package BasicColorFactory_Package renames Standard.org.allbinary.graphics.color.BasicColorFactory_Package;
   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
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
   subtype Processor_Access is org.allbinary.canvas.Processor_Package_References.Processor_Access;
   function "=" (Left, Right : Processor_Access) return Boolean renames org.allbinary.canvas.Processor_Package_References."=";
   subtype Processor_Access_Array is org.allbinary.canvas.Processor_Package_References.Processor_Access_Array;
   function "=" (Left, Right : Processor_Access_Array) return Boolean renames org.allbinary.canvas.Processor_Package_References."=";
   subtype Processor_Access_Array_Access is org.allbinary.canvas.Processor_Package_References.Processor_Access_Array_Access;
   function "=" (Left, Right : Processor_Access_Array_Access) return Boolean renames org.allbinary.canvas.Processor_Package_References."=";
   subtype Processor_Access_Array_Access_Array is org.allbinary.canvas.Processor_Package_References.Processor_Access_Array_Access_Array;
   function "=" (Left, Right : Processor_Access_Array_Access_Array) return Boolean renames org.allbinary.canvas.Processor_Package_References."=";
   subtype Processor_Access_Array_Access_Array_Access is org.allbinary.canvas.Processor_Package_References.Processor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Processor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.canvas.Processor_Package_References."=";
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
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   function "=" (Left, Right : CommonStrings_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype ABStack_Access is org.allbinary.util.ABStack_Package_References.ABStack_Access;
   function "=" (Left, Right : ABStack_Access) return Boolean renames org.allbinary.util.ABStack_Package_References."=";
   subtype ABStack_Access_Array is org.allbinary.util.ABStack_Package_References.ABStack_Access_Array;
   function "=" (Left, Right : ABStack_Access_Array) return Boolean renames org.allbinary.util.ABStack_Package_References."=";
   subtype ABStack_Access_Array_Access is org.allbinary.util.ABStack_Package_References.ABStack_Access_Array_Access;
   function "=" (Left, Right : ABStack_Access_Array_Access) return Boolean renames org.allbinary.util.ABStack_Package_References."=";
   subtype ABStack_Access_Array_Access_Array is org.allbinary.util.ABStack_Package_References.ABStack_Access_Array_Access_Array;
   function "=" (Left, Right : ABStack_Access_Array_Access_Array) return Boolean renames org.allbinary.util.ABStack_Package_References."=";
   subtype ABStack_Access_Array_Access_Array_Access is org.allbinary.util.ABStack_Package_References.ABStack_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ABStack_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.ABStack_Package_References."=";
   procedure Initialize_Fields (This : in out CommandForm'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.repaintProcessor := ScreenRepaintProcessorFactory_Package.getInstance.create (CommandForm_Access'(This'Unchecked_Access));
      
   end Initialize_Fields;


   function getNullCommandForm return CommandForm_Access is
   begin
        if (CommandForm_Package.NULL_COMMAND_FORM) = (NullUtil_Package.getInstance.NULL_OBJECT) then
            CommandForm_Package.NULL_COMMAND_FORM := CommandForm_Package.Create (NullCommandListener_Package.NULL_COMMAND_LISTENER, StringUtil_Package.getInstance.EMPTY_STRING, BasicColorFactory_Package.getInstance.BLACK, BasicColorFactory_Package.getInstance.WHITE);
        end if;
        return CommandForm_Access (CommandForm_Package.NULL_COMMAND_FORM);
   end getNullCommandForm;

   procedure Initialize (This : in out CommandForm'Class; commandListener_Param : access CommandListener_Package.CommandListener'Class; formTitle : Unbounded_String; backgrounBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) is
      commandListener : constant CommandListener_Access := CommandListener_Access (commandListener_Param);
      backgrounBasicColor : constant BasicColor_Access := BasicColor_Access (backgrounBasicColor_Param);
      foregroundBasicColor : constant BasicColor_Access := BasicColor_Access (foregroundBasicColor_Param);
   begin
        Form_Package.Initialize (This, formTitle);
        Initialize_Fields (This);
        This.commandStack := StdUtil_Package.getInstance.createStack;
        begin
            This.repaintProcessor.process;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, CommandForm_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR, e);
                end;
        end;
   end Initialize;

   function Create (commandListener_Param : access CommandListener_Package.CommandListener'Class; formTitle : Unbounded_String; backgrounBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) return CommandForm_Access is
      This : constant CommandForm_Access := new CommandForm;
   begin
      CommandForm_Package.Initialize (This.all, commandListener_Param, formTitle, backgrounBasicColor_Param, foregroundBasicColor_Param);
      return This;
   end Create;

   procedure initCommands (This : in out CommandForm; cmdListener_Param : access CommandListener_Package.CommandListener'Class) is
      cmdListener : constant CommandListener_Access := CommandListener_Access (cmdListener_Param);
   begin
        null;
   end initCommands;

   procedure open (This : in out CommandForm) is
   begin
        This.logUtil.putF (This.commonStrings.START, CommandForm_Access'(This'Unchecked_Access), To_Unbounded_String ("open"));
   end open;

   --  throws Exception
   procedure close (This : in out CommandForm) is
   begin
        This.logUtil.putF (This.commonStrings.START, CommandForm_Access'(This'Unchecked_Access), This.commonStrings.CLOSE);
   end close;

   --  throws Exception
   procedure update (This : in out CommandForm) is
   begin
        This.repaintProcessor.process;
   end update;

   function getSourceId (This : in out CommandForm) return Integer is
   begin
        return 0;
   end getSourceId;

   procedure addCommand (This : in out CommandForm; command_Param : access Command_Package.Command'Class) is
      command : constant Command_Access := Command_Access (command_Param);
   begin
        This.commandStack.push (command);
        Form_Package.Form (This).addCommand (command);
   end addCommand;

   procedure removeAllCommands (This : in out CommandForm) is
      size : Integer;
      index : Integer;
   begin
        size := This.commandStack.size;
        for index in 0 .. (size) - 1 loop
            Form_Package.Form (This).removeCommand (Command_Access (This.commandStack.pop));
        end loop;
   end removeAllCommands;

begin
   null;
   NULL_COMMAND_FORM := NullUtil_Package.getInstance.NULL_OBJECT;

end org.allbinary.graphics.displayable.screen.CommandForm_Package;


