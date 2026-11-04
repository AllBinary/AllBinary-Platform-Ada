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
with org.allbinary.graphics.displayable.MyCanvas_Package; use org.allbinary.graphics.displayable.MyCanvas_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.game.displayable.canvas.CommandFormInputProcessor_Package; use org.allbinary.game.displayable.canvas.CommandFormInputProcessor_Package;
with org.allbinary.game.displayable.canvas.BasicMenuInputProcessor_Package;
with org.allbinary.game.displayable.canvas.CommandFormInputProcessor_Package;

package body org.allbinary.game.displayable.canvas.CommandRunnable_Package is

   package CommandListener_Package renames Standard.javax.microedition.lcdui.CommandListener_Package;
   package MyCanvas_Package renames Standard.org.allbinary.graphics.displayable.MyCanvas_Package;
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
   subtype CommandFormInputProcessor_Access is org.allbinary.game.displayable.canvas.CommandFormInputProcessor_Package_References.CommandFormInputProcessor_Access;
   function "=" (Left, Right : CommandFormInputProcessor_Access) return Boolean renames org.allbinary.game.displayable.canvas.CommandFormInputProcessor_Package_References."=";
   subtype CommandFormInputProcessor_Access_Array is org.allbinary.game.displayable.canvas.CommandFormInputProcessor_Package_References.CommandFormInputProcessor_Access_Array;
   function "=" (Left, Right : CommandFormInputProcessor_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.CommandFormInputProcessor_Package_References."=";
   subtype CommandFormInputProcessor_Access_Array_Access is org.allbinary.game.displayable.canvas.CommandFormInputProcessor_Package_References.CommandFormInputProcessor_Access_Array_Access;
   function "=" (Left, Right : CommandFormInputProcessor_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.CommandFormInputProcessor_Package_References."=";
   subtype CommandFormInputProcessor_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.CommandFormInputProcessor_Package_References.CommandFormInputProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : CommandFormInputProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.CommandFormInputProcessor_Package_References."=";
   subtype CommandFormInputProcessor_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.CommandFormInputProcessor_Package_References.CommandFormInputProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CommandFormInputProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.CommandFormInputProcessor_Package_References."=";
   procedure Initialize_Fields (This : in out CommandRunnable'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out CommandRunnable'Class; commandFormInputProcessor_Param : access CommandFormInputProcessor_Package.CommandFormInputProcessor'Class; command_Param : access Command_Package.Command'Class) is
      commandFormInputProcessor : constant CommandFormInputProcessor_Access := CommandFormInputProcessor_Access (commandFormInputProcessor_Param);
      command : constant Command_Access := Command_Access (command_Param);
   begin
      Initialize_Fields (This);
        This.commandFormInputProcessor := commandFormInputProcessor;
        This.command := command;
   end Initialize;

   function Create (commandFormInputProcessor_Param : access CommandFormInputProcessor_Package.CommandFormInputProcessor'Class; command_Param : access Command_Package.Command'Class) return CommandRunnable_Access is
      This : constant CommandRunnable_Access := new CommandRunnable;
   begin
      CommandRunnable_Package.Initialize (This.all, commandFormInputProcessor_Param, command_Param);
      return This;
   end Create;

   procedure run (This : in out CommandRunnable) is
      canvas : MyCanvas_Access;
      commandListener : CommandListener_Access;
   begin
        begin
            This.logUtil.putF (This.commonStrings.START_RUNNABLE, CommandRunnable_Access'(This'Unchecked_Access), This.commonStrings.RUN);
            canvas := This.commandFormInputProcessor.getCanvas;
            commandListener := canvas.getCustomCommandListener;
            commandListener.commandAction (This.command, canvas);
            This.logUtil.putF (This.commonStrings.END_RUNNABLE, CommandRunnable_Access'(This'Unchecked_Access), This.commonStrings.RUN);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, CommandRunnable_Access'(This'Unchecked_Access), This.commonStrings.RUN, e);
                end;
        end;
   end run;

end org.allbinary.game.displayable.canvas.CommandRunnable_Package;


