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


with org.allbinary.J2MEUtil_Package; use org.allbinary.J2MEUtil_Package;

package body org.allbinary.game.score.HighScoreCommandsBaseFactory_Package is

   package J2MEUtil_Package renames Standard.org.allbinary.J2MEUtil_Package;
   procedure Initialize_Fields (This : in out HighScoreCommandsBaseFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out HighScoreCommandsBaseFactory'Class; HIGH_SCORE_COMMANDS : Command_Access_Array_Access) is
   begin
      Initialize_Fields (This);
        This.HIGH_SCORE_COMMANDS := HIGH_SCORE_COMMANDS;
   end Initialize;

   function Create (HIGH_SCORE_COMMANDS : Command_Access_Array_Access) return HighScoreCommandsBaseFactory_Access is
      This : constant HighScoreCommandsBaseFactory_Access := new HighScoreCommandsBaseFactory;
   begin
      HighScoreCommandsBaseFactory_Package.Initialize (This.all, HIGH_SCORE_COMMANDS);
      return This;
   end Create;

   function isHighScoreCommand (This : in out HighScoreCommandsBaseFactory; command_Param : access Command_Package.Command'Class) return Boolean is
      command : constant Command_Access := Command_Access (command_Param);
      index : Integer;
   begin
        for index in reverse 0 .. (This.HIGH_SCORE_COMMANDS'Length) - (1) loop
            if (command) = (This.HIGH_SCORE_COMMANDS (index)) then
                return True;
            end if;
        end loop;
        return False;
   end isHighScoreCommand;

   --  throws Exception
   function getIndex (This : in out HighScoreCommandsBaseFactory; command_Param : access Command_Package.Command'Class) return Integer is
      command : constant Command_Access := Command_Access (command_Param);
      index : Integer;
   begin
        for index in reverse 0 .. (This.HIGH_SCORE_COMMANDS'Length) - (1) loop
            if (command) = (This.HIGH_SCORE_COMMANDS (index)) then
                return index;
            end if;
        end loop;
        Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("No Such Command")));
   end getIndex;

   procedure isHighScoreCommand (This : in out HighScoreCommandsBaseFactory; command_Param : access Command_Package.Command'Class) is
      Java_Result : constant Boolean := HighScoreCommandsBaseFactory'Class (This).isHighScoreCommand (command_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isHighScoreCommand;

   procedure getIndex (This : in out HighScoreCommandsBaseFactory; command_Param : access Command_Package.Command'Class) is
      Java_Result : constant Integer := HighScoreCommandsBaseFactory'Class (This).getIndex (command_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getIndex;

end org.allbinary.game.score.HighScoreCommandsBaseFactory_Package;


