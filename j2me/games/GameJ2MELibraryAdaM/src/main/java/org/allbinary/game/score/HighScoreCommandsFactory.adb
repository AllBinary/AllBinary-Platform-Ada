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
with org.allbinary.game.score.HighScoreCommands_Package; use org.allbinary.game.score.HighScoreCommands_Package;

package body org.allbinary.game.score.HighScoreCommandsFactory_Package is

   package Command_Package renames Standard.javax.microedition.lcdui.Command_Package;
   procedure Initialize_Fields (This : in out HighScoreCommandsFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   function getInstance return HighScoreCommandsFactory_Access is
   begin
        return HighScoreCommandsFactory_Package.instance;
   end getInstance;

   procedure Initialize (This : in out HighScoreCommandsFactory'Class) is
   begin
        HighScoreCommandsBaseFactory_Package.Initialize (This, new Command_Access_Array'(HighScoreCommands_Package.getInstance.PERSONAL, HighScoreCommands_Package.getInstance.WORLD));
   end Initialize;

   function Create return HighScoreCommandsFactory_Access is
      This : constant HighScoreCommandsFactory_Access := new HighScoreCommandsFactory;
   begin
      HighScoreCommandsFactory_Package.Initialize (This.all);
      return This;
   end Create;

begin
   null;
   instance := HighScoreCommandsFactory_Package.Create;

end org.allbinary.game.score.HighScoreCommandsFactory_Package;


