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


package body org.allbinary.game.GameInfoCopyFactory_Package is

   procedure Initialize_Fields (This : in out GameInfoCopyFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out GameInfoCopyFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return GameInfoCopyFactory_Access is
      This : constant GameInfoCopyFactory_Access := new GameInfoCopyFactory;
   begin
      GameInfoCopyFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstanceMaxLevel (gameInfo : GameInfo_Access; maxLevel : Integer) return GameInfo_Access is
   begin
        return GameInfo_Package.Create (gameInfo.getGameType, gameInfo.getGameMode, gameInfo.getPlayerType, maxLevel, gameInfo.getCurrentLevel);
   end getInstanceMaxLevel;

   function getInstance (gameInfo : GameInfo_Access) return GameInfo_Access is
   begin
        return GameInfo_Package.Create (gameInfo.getGameType, gameInfo.getGameMode, gameInfo.getPlayerType, gameInfo.getHighestLevel, gameInfo.getCurrentLevel);
   end getInstance;

   procedure getInstanceMaxLevel (gameInfo : GameInfo_Access; maxLevel : Integer) is
      Java_Result : constant GameInfo_Access := getInstanceMaxLevel (gameInfo, maxLevel);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstanceMaxLevel;

   procedure getInstance (gameInfo : GameInfo_Access) is
      Java_Result : constant GameInfo_Access := getInstance (gameInfo);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.game.GameInfoCopyFactory_Package;


