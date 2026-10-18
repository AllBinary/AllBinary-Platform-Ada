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


with org.allbinary.game.GameTypeFactory_Package; use org.allbinary.game.GameTypeFactory_Package;
with org.allbinary.game.GameMode_Package; use org.allbinary.game.GameMode_Package;
with org.allbinary.game.PlayerTypesFactory_Package; use org.allbinary.game.PlayerTypesFactory_Package;

package body org.allbinary.game.BasicHighScoresGameInfoFactory_Package is

   procedure Initialize_Fields (This : in out BasicHighScoresGameInfoFactory'Class) is
   begin
      null;
      This.MULTI_PLAYER_SERVER := GameInfo_Package.Create (GameTypeFactory_Package.getInstance.MULTI_PLAYER, GameMode_Package.SERVER, PlayerTypesFactory_Package.getInstance.PLAYER_TYPE_ONE, 0, 0);
      This.SINGLE_PLAYER_SERVER := GameInfo_Package.Create (GameTypeFactory_Package.getInstance.SINGLE_PLAYER, GameMode_Package.SERVER, PlayerTypesFactory_Package.getInstance.PLAYER_TYPE_ONE, 0, 0);
   end Initialize_Fields;

   procedure Initialize (This : in out BasicHighScoresGameInfoFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return BasicHighScoresGameInfoFactory_Access is
      This : constant BasicHighScoresGameInfoFactory_Access := new BasicHighScoresGameInfoFactory;
   begin
      BasicHighScoresGameInfoFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return BasicHighScoresGameInfoFactory_Access is
   begin
        return BasicHighScoresGameInfoFactory_Package.SINGLETON;
   end getInstance;

begin
   null;
   SINGLETON := BasicHighScoresGameInfoFactory_Package.Create;

end org.allbinary.game.BasicHighScoresGameInfoFactory_Package;


