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


package body org.allbinary.game.displayable.canvas.CommandRunnable_Package is

   procedure Initialize_Fields (This : in out CommandRunnable'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out CommandRunnable'Class; commandFormInputProcessor : CommandFormInputProcessor_Access; command : Command_Access) is
   begin
      Initialize_Fields (This);
        This.commandFormInputProcessor := commandFormInputProcessor;
        This.command := command;
   end Initialize;

   function Create (commandFormInputProcessor : CommandFormInputProcessor_Access; command : Command_Access) return CommandRunnable_Access is
      This : constant CommandRunnable_Access := new CommandRunnable;
   begin
      Initialize (This.all, commandFormInputProcessor, command);
      return This;
   end Create;

   procedure run (This : in out CommandRunnable) is
      canvas : MyCanvas_Access;
      commandListener : CommandListener_Access;
   begin
        begin
            This.logUtil.putF (This.commonStrings.START_RUNNABLE, This'Unchecked_Access, This.commonStrings.RUN);
            canvas := This.commandFormInputProcessor.getCanvas;
            commandListener := canvas.getCustomCommandListener;
            commandListener.commandAction (This.command, canvas);
            This.logUtil.putF (This.commonStrings.END_RUNNABLE, This'Unchecked_Access, This.commonStrings.RUN);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, This.commonStrings.RUN, e);
                end;
        end;
   end run;

end org.allbinary.game.displayable.canvas.CommandRunnable_Package;


