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



package body org.allbinary.game.score.remote.RemoteHighScoresData_Package is

   procedure Initialize_Fields (This : in out RemoteHighScoresData'Class) is
   begin
      null;
      This.HIGH_SCORES := To_Unbounded_String ("HIGH_SCORES");
      This.CUSTOMER_USER_NAME := To_Unbounded_String ("CUSTOMER_USER_NAME");
      This.DISPLAY_NAME := To_Unbounded_String ("DISPLAY_NAME");
      This.SCORE := To_Unbounded_String ("SCORE");
      This.GAME_INFO := To_Unbounded_String ("GAME_INFO");
      This.GAME_CONFIGURATION := To_Unbounded_String ("GAME_CONFIGURATION");
   end Initialize_Fields;

   procedure Initialize (This : in out RemoteHighScoresData'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return RemoteHighScoresData_Access is
      This : constant RemoteHighScoresData_Access := new RemoteHighScoresData;
   begin
      RemoteHighScoresData_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return RemoteHighScoresData_Access is
   begin
        return RemoteHighScoresData_Package.SINGLETON;
   end getInstance;

begin
   null;
   SINGLETON := RemoteHighScoresData_Package.Create;

end org.allbinary.game.score.remote.RemoteHighScoresData_Package;


