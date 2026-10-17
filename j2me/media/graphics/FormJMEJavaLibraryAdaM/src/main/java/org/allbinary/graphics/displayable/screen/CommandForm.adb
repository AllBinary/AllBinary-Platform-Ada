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
      This.repaintProcessor := ScreenRepaintProcessorFactory_Package.getInstance.create (This'Unchecked_Access);
      
   end Initialize_Fields;


   function getNullCommandForm return CommandForm_Access is
   begin
        if (CommandForm_Package.NULL_COMMAND_FORM) = (NullUtil_Package.getInstance.NULL_OBJECT) then
            CommandForm_Package.NULL_COMMAND_FORM := CommandForm_Package.Create (NullCommandListener_Package.NULL_COMMAND_LISTENER, StringUtil_Package.getInstance.EMPTY_STRING, BasicColorFactory_Package.getInstance.BLACK, BasicColorFactory_Package.getInstance.WHITE);
        end if;
        return CommandForm_Access (CommandForm_Package.NULL_COMMAND_FORM);
   end getNullCommandForm;

   procedure Initialize (This : in out CommandForm'Class; commandListener : CommandListener_Access; formTitle : Unbounded_String; backgrounBasicColor : BasicColor_Access; foregroundBasicColor : BasicColor_Access) is
   begin
        Form_Package.Initialize (This, formTitle);
        Initialize_Fields (This);
        This.commandStack := StdUtil_Package.getInstance.createStack;
        begin
            This.repaintProcessor.process;
        exception
            when e : others =>
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, This.commonStrings.CONSTRUCTOR, e);
        end;
   end Initialize;

   function Create (commandListener : CommandListener_Access; formTitle : Unbounded_String; backgrounBasicColor : BasicColor_Access; foregroundBasicColor : BasicColor_Access) return CommandForm_Access is
      This : constant CommandForm_Access := new CommandForm;
   begin
      Initialize (This.all, commandListener, formTitle, backgrounBasicColor, foregroundBasicColor);
      return This;
   end Create;

   procedure initCommands (This : in out CommandForm; cmdListener : CommandListener_Access) is
   begin
        null;
   end initCommands;

   procedure open (This : in out CommandForm) is
   begin
        This.logUtil.putF (This.commonStrings.START, This'Unchecked_Access, To_Unbounded_String ("open"));
   end open;

   --  throws Exception
   procedure close (This : in out CommandForm) is
   begin
        This.logUtil.putF (This.commonStrings.START, This'Unchecked_Access, This.commonStrings.CLOSE);
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

   procedure addCommand (This : in out CommandForm; command : Command_Access) is
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

   procedure getNullCommandForm is
      Java_Result : constant CommandForm_Access := getNullCommandForm;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getNullCommandForm;

   procedure getSourceId (This : in out CommandForm) is
      Java_Result : constant Integer := CommandForm'Class (This).getSourceId;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getSourceId;

begin
   null;
   NULL_COMMAND_FORM := NullUtil_Package.getInstance.NULL_OBJECT;

end org.allbinary.graphics.displayable.screen.CommandForm_Package;


