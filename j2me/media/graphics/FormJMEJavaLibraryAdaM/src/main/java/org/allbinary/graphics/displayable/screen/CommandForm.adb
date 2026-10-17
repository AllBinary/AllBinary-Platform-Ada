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


package body org.allbinary.graphics.displayable.screen.CommandForm_Package is

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

   procedure Initialize (This : in out CommandForm'Class; commandListener_Param : access CommandListener'Class; formTitle : Unbounded_String; backgrounBasicColor_Param : access BasicColor'Class; foregroundBasicColor_Param : access BasicColor'Class) is
      commandListener : CommandListener_Access := CommandListener_Access (commandListener_Param);
      backgrounBasicColor : BasicColor_Access := BasicColor_Access (backgrounBasicColor_Param);
      foregroundBasicColor : BasicColor_Access := BasicColor_Access (foregroundBasicColor_Param);
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

   function Create (commandListener_Param : access CommandListener'Class; formTitle : Unbounded_String; backgrounBasicColor_Param : access BasicColor'Class; foregroundBasicColor_Param : access BasicColor'Class) return CommandForm_Access is
      This : constant CommandForm_Access := new CommandForm;
   begin
      CommandForm_Package.Initialize (This.all, commandListener_Param, formTitle, backgrounBasicColor_Param, foregroundBasicColor_Param);
      return This;
   end Create;

   procedure initCommands (This : in out CommandForm; cmdListener_Param : access CommandListener'Class) is
      cmdListener : CommandListener_Access := CommandListener_Access (cmdListener_Param);
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

   procedure addCommand (This : in out CommandForm; command_Param : access Command'Class) is
      command : Command_Access := Command_Access (command_Param);
   begin
        This.commandStack.push (command);
        Form (This).addCommand (command);
   end addCommand;

   procedure removeAllCommands (This : in out CommandForm) is
      size : Integer;
      index : Integer;
   begin
        size := This.commandStack.size;
        for index in 0 .. (size) - 1 loop
            Form (This).removeCommand (Command_Access (This.commandStack.pop));
        end loop;
   end removeAllCommands;

begin
   null;
   NULL_COMMAND_FORM := NullUtil_Package.getInstance.NULL_OBJECT;

end org.allbinary.graphics.displayable.screen.CommandForm_Package;


