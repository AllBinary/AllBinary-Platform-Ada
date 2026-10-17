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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;
with org.allbinary.game.GameTypeFactory_Package; use org.allbinary.game.GameTypeFactory_Package;
with org.allbinary.game.GameMode_Package; use org.allbinary.game.GameMode_Package;
with org.allbinary.game.PlayerTypesFactory_Package; use org.allbinary.game.PlayerTypesFactory_Package;
with org.allbinary.game.GameInfoData_Package; use org.allbinary.game.GameInfoData_Package;
with org.allbinary.game.GameType_Package; use org.allbinary.game.GameType_Package;
with org.allbinary.game.PlayerType_Package; use org.allbinary.game.PlayerType_Package;

package org.allbinary.game.GameInfo_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;

   type GameInfo is tagged;
   type GameInfo_Access is access all GameInfo'Class;
   type GameInfo_Access_Array is array (Natural range <>) of GameInfo_Access;
   type GameInfo_Access_Array_Access is access all GameInfo_Access_Array;

   type GameInfo is new Java_Object with record
      logUtil : LogUtil_Access;
      gameInfoData : GameInfoData_Access;
      gameType : GameType_Access;
      gameMode : GameMode_Access;
      playerType : PlayerType_Access;
      highestLevel : Integer;
      currentLevel : Integer;
      NEW_LEVEL : Unbounded_String;
      SET_CURRENT_LEVEL : Unbounded_String;
      NEXT_GAME_LEVEL : Unbounded_String;
   end record;
   NONE : GameInfo_Access;
   LEVEL_NAME : Unbounded_String;

   procedure Initialize (This : in out GameInfo'Class; gameType_Param : access GameType_Package.GameType'Class; gameMode_Param : access GameMode_Package.GameMode'Class; playerType_Param : access PlayerType_Package.PlayerType'Class; highestLevel : Integer; currentLevel : Integer);
   function Create (gameType_Param : access GameType_Package.GameType'Class; gameMode_Param : access GameMode_Package.GameMode'Class; playerType_Param : access PlayerType_Package.PlayerType'Class; highestLevel : Integer; currentLevel : Integer) return GameInfo_Access;
   function getGameType (This : in out GameInfo) return GameType_Access;
   function getGameMode (This : in out GameInfo) return GameMode_Access;
   function getPlayerType (This : in out GameInfo) return PlayerType_Access;
   function getHighestLevel (This : in out GameInfo) return Integer;
   procedure setHighestLevel (This : in out GameInfo; highestLevel : Integer);
   function getCurrentLevel (This : in out GameInfo) return Integer;
   procedure setCurrentLevel (This : in out GameInfo; currentLevel : Integer);
   procedure nextGameLevel (This : in out GameInfo);
   procedure previousGameLevel (This : in out GameInfo);
   function isLastLevel (This : in out GameInfo) return Boolean;
   function toHashtable (This : in out GameInfo) return ABHashtable_Access;
   function toString (This : in out GameInfo) return Unbounded_String;

end org.allbinary.game.GameInfo_Package;


