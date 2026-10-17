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


package body org.allbinary.game.score.HighScoreCommands_Package is

   procedure Initialize_Fields (This : in out HighScoreCommands'Class) is
   begin
      null;
      This.DISPLAY := Command_Package.Create (To_Unbounded_String ("Scores"), StringUtil_Package.getInstance.EMPTY_STRING, Command_Package.SCREEN, 1);
      This.PERSONAL := Command_Package.Create (To_Unbounded_String ("Personal"), StringUtil_Package.getInstance.EMPTY_STRING, Command_Package.SCREEN, 1);
      This.WORLD := Command_Package.Create (To_Unbounded_String ("World"), StringUtil_Package.getInstance.EMPTY_STRING, Command_Package.SCREEN, 1);
   end Initialize_Fields;

   procedure Initialize (This : in out HighScoreCommands'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return HighScoreCommands_Access is
      This : constant HighScoreCommands_Access := new HighScoreCommands;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return HighScoreCommands_Access is
   begin
        return HighScoreCommands_Package.instance;
   end getInstance;

   procedure getInstance is
      Java_Result : constant HighScoreCommands_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := HighScoreCommands_Package.Create;

end org.allbinary.game.score.HighScoreCommands_Package;


