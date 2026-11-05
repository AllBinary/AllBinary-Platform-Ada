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


with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABHashtable_Package_References;
with org.allbinary.game.GameTypeFactory_Package; use org.allbinary.game.GameTypeFactory_Package;
with org.allbinary.game.GameMode_Package; use org.allbinary.game.GameMode_Package;
with org.allbinary.game.GameMode_Package_References;
with org.allbinary.game.PlayerTypesFactory_Package; use org.allbinary.game.PlayerTypesFactory_Package;
with org.allbinary.game.GameInfoData_Package; use org.allbinary.game.GameInfoData_Package;
with org.allbinary.game.GameInfoData_Package_References;
with org.allbinary.game.GameType_Package; use org.allbinary.game.GameType_Package;
with org.allbinary.game.GameType_Package_References;
with org.allbinary.game.PlayerType_Package; use org.allbinary.game.PlayerType_Package;
with org.allbinary.game.PlayerType_Package_References;
with org.allbinary.game.GameInfoData_Package;
with org.allbinary.game.GameMode_Package;
with org.allbinary.game.GameType_Package;
with org.allbinary.game.GameTypeFactory_Package;
with org.allbinary.game.PlayerType_Package;
with org.allbinary.game.PlayerTypesFactory_Package;

package body org.allbinary.game.GameInfo_Package is

   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
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
   subtype ABHashtable_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access;
   function "=" (Left, Right : ABHashtable_Access) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   subtype ABHashtable_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array;
   function "=" (Left, Right : ABHashtable_Access_Array) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   subtype ABHashtable_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access;
   function "=" (Left, Right : ABHashtable_Access_Array_Access) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   subtype ABHashtable_Access_Array_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array;
   function "=" (Left, Right : ABHashtable_Access_Array_Access_Array) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   subtype ABHashtable_Access_Array_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ABHashtable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   subtype GameMode_Access is org.allbinary.game.GameMode_Package_References.GameMode_Access;
   function "=" (Left, Right : GameMode_Access) return Boolean renames org.allbinary.game.GameMode_Package_References."=";
   subtype GameMode_Access_Array is org.allbinary.game.GameMode_Package_References.GameMode_Access_Array;
   function "=" (Left, Right : GameMode_Access_Array) return Boolean renames org.allbinary.game.GameMode_Package_References."=";
   subtype GameMode_Access_Array_Access is org.allbinary.game.GameMode_Package_References.GameMode_Access_Array_Access;
   function "=" (Left, Right : GameMode_Access_Array_Access) return Boolean renames org.allbinary.game.GameMode_Package_References."=";
   subtype GameMode_Access_Array_Access_Array is org.allbinary.game.GameMode_Package_References.GameMode_Access_Array_Access_Array;
   function "=" (Left, Right : GameMode_Access_Array_Access_Array) return Boolean renames org.allbinary.game.GameMode_Package_References."=";
   subtype GameMode_Access_Array_Access_Array_Access is org.allbinary.game.GameMode_Package_References.GameMode_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameMode_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.GameMode_Package_References."=";
   subtype GameInfoData_Access is org.allbinary.game.GameInfoData_Package_References.GameInfoData_Access;
   function "=" (Left, Right : GameInfoData_Access) return Boolean renames org.allbinary.game.GameInfoData_Package_References."=";
   subtype GameInfoData_Access_Array is org.allbinary.game.GameInfoData_Package_References.GameInfoData_Access_Array;
   function "=" (Left, Right : GameInfoData_Access_Array) return Boolean renames org.allbinary.game.GameInfoData_Package_References."=";
   subtype GameInfoData_Access_Array_Access is org.allbinary.game.GameInfoData_Package_References.GameInfoData_Access_Array_Access;
   function "=" (Left, Right : GameInfoData_Access_Array_Access) return Boolean renames org.allbinary.game.GameInfoData_Package_References."=";
   subtype GameInfoData_Access_Array_Access_Array is org.allbinary.game.GameInfoData_Package_References.GameInfoData_Access_Array_Access_Array;
   function "=" (Left, Right : GameInfoData_Access_Array_Access_Array) return Boolean renames org.allbinary.game.GameInfoData_Package_References."=";
   subtype GameInfoData_Access_Array_Access_Array_Access is org.allbinary.game.GameInfoData_Package_References.GameInfoData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameInfoData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.GameInfoData_Package_References."=";
   subtype GameType_Access is org.allbinary.game.GameType_Package_References.GameType_Access;
   function "=" (Left, Right : GameType_Access) return Boolean renames org.allbinary.game.GameType_Package_References."=";
   subtype GameType_Access_Array is org.allbinary.game.GameType_Package_References.GameType_Access_Array;
   function "=" (Left, Right : GameType_Access_Array) return Boolean renames org.allbinary.game.GameType_Package_References."=";
   subtype GameType_Access_Array_Access is org.allbinary.game.GameType_Package_References.GameType_Access_Array_Access;
   function "=" (Left, Right : GameType_Access_Array_Access) return Boolean renames org.allbinary.game.GameType_Package_References."=";
   subtype GameType_Access_Array_Access_Array is org.allbinary.game.GameType_Package_References.GameType_Access_Array_Access_Array;
   function "=" (Left, Right : GameType_Access_Array_Access_Array) return Boolean renames org.allbinary.game.GameType_Package_References."=";
   subtype GameType_Access_Array_Access_Array_Access is org.allbinary.game.GameType_Package_References.GameType_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameType_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.GameType_Package_References."=";
   subtype PlayerType_Access is org.allbinary.game.PlayerType_Package_References.PlayerType_Access;
   function "=" (Left, Right : PlayerType_Access) return Boolean renames org.allbinary.game.PlayerType_Package_References."=";
   subtype PlayerType_Access_Array is org.allbinary.game.PlayerType_Package_References.PlayerType_Access_Array;
   function "=" (Left, Right : PlayerType_Access_Array) return Boolean renames org.allbinary.game.PlayerType_Package_References."=";
   subtype PlayerType_Access_Array_Access is org.allbinary.game.PlayerType_Package_References.PlayerType_Access_Array_Access;
   function "=" (Left, Right : PlayerType_Access_Array_Access) return Boolean renames org.allbinary.game.PlayerType_Package_References."=";
   subtype PlayerType_Access_Array_Access_Array is org.allbinary.game.PlayerType_Package_References.PlayerType_Access_Array_Access_Array;
   function "=" (Left, Right : PlayerType_Access_Array_Access_Array) return Boolean renames org.allbinary.game.PlayerType_Package_References."=";
   subtype PlayerType_Access_Array_Access_Array_Access is org.allbinary.game.PlayerType_Package_References.PlayerType_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PlayerType_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.PlayerType_Package_References."=";
   procedure Initialize_Fields (This : in out GameInfo'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.gameInfoData := GameInfoData_Package.getInstance;
      
      
      
      This.highestLevel := 0;
      
      This.NEW_LEVEL := To_Unbounded_String ("New Level: ");
      This.SET_CURRENT_LEVEL := To_Unbounded_String ("setCurrentLevel");
      This.NEXT_GAME_LEVEL := To_Unbounded_String ("nextGameLevel");
   end Initialize_Fields;


   procedure Initialize (This : in out GameInfo'Class; gameType_Param : access GameType_Package.GameType'Class; gameMode_Param : access GameMode_Package.GameMode'Class; playerType_Param : access PlayerType_Package.PlayerType'Class; highestLevel : Integer; currentLevel : Integer) is
      gameType : constant GameType_Access := GameType_Access (gameType_Param);
      gameMode : constant GameMode_Access := GameMode_Access (gameMode_Param);
      playerType : constant PlayerType_Access := PlayerType_Access (playerType_Param);
   begin
      Initialize_Fields (This);
        This.gameType := gameType;
        This.gameMode := gameMode;
        GameInfo'Class (This).setHighestLevel (highestLevel);
        This.currentLevel := currentLevel;
        This.playerType := playerType;
   end Initialize;

   function Create (gameType_Param : access GameType_Package.GameType'Class; gameMode_Param : access GameMode_Package.GameMode'Class; playerType_Param : access PlayerType_Package.PlayerType'Class; highestLevel : Integer; currentLevel : Integer) return GameInfo_Access is
      This : constant GameInfo_Access := new GameInfo;
   begin
      GameInfo_Package.Initialize (This.all, gameType_Param, gameMode_Param, playerType_Param, highestLevel, currentLevel);
      return This;
   end Create;

   function getGameType (This : in out GameInfo) return GameType_Access is
   begin
        return This.gameType;
   end getGameType;

   function getGameMode (This : in out GameInfo) return GameMode_Access is
   begin
        return This.gameMode;
   end getGameMode;

   function getPlayerType (This : in out GameInfo) return PlayerType_Access is
   begin
        return This.playerType;
   end getPlayerType;

   function getHighestLevel (This : in out GameInfo) return Integer is
   begin
        return This.highestLevel;
   end getHighestLevel;

   procedure setHighestLevel (This : in out GameInfo; highestLevel : Integer) is
   begin
        This.highestLevel := highestLevel;
   end setHighestLevel;

   function getCurrentLevel (This : in out GameInfo) return Integer is
   begin
        return This.currentLevel;
   end getCurrentLevel;

   procedure setCurrentLevel (This : in out GameInfo; currentLevel : Integer) is
   begin
        This.currentLevel := currentLevel;
        This.logUtil.putF (StringMaker_Package.Create.append (This.NEW_LEVEL).appendint (GameInfo'Class (This).getCurrentLevel).toString, GameInfo_Access'(This'Unchecked_Access), This.SET_CURRENT_LEVEL);
   end setCurrentLevel;

   procedure nextGameLevel (This : in out GameInfo) is
   begin
        if (GameInfo'Class (This).getCurrentLevel) < (GameInfo'Class (This).getHighestLevel) then
            This.currentLevel := This.currentLevel + 1;
        end if;
        This.logUtil.putF (StringMaker_Package.Create.append (CommonLabels_Package.getInstance.NEXT).append (CommonSeps_Package.getInstance.SPACE).append (This.NEW_LEVEL).appendint (GameInfo'Class (This).getCurrentLevel).toString, GameInfo_Access'(This'Unchecked_Access), This.NEXT_GAME_LEVEL);
   end nextGameLevel;

   procedure previousGameLevel (This : in out GameInfo) is
   begin
        if (GameInfo'Class (This).getCurrentLevel) > (1) then
            This.currentLevel := This.currentLevel - 1;
        end if;
   end previousGameLevel;

   function isLastLevel (This : in out GameInfo) return Boolean is
   begin
        if (GameInfo'Class (This).getCurrentLevel) >= (GameInfo'Class (This).getHighestLevel) then
            return True;
        else
            return False;
        end if;
   end isLastLevel;

   function toHashtable (This : in out GameInfo) return ABHashtable_Access is
      hashtable : ABHashtable_Access;
   begin
        hashtable := StdUtil_Package.getInstance.createHashtable;
        hashtable.put (Java_Box (This.gameInfoData.GAME_TYPE), Java_Box (GameInfo'Class (This).getGameType.toString));
        hashtable.put (Java_Box (This.gameInfoData.GAME_MODE), Java_Box (This.gameMode.toString));
        hashtable.put (Java_Box (This.gameInfoData.PLAYER_TYPE), Java_Box (This.playerType.toString));
        hashtable.put (Java_Box (This.gameInfoData.HIGHEST_LEVEL), Java_Box (To_Unbounded_String (Java_Image (GameInfo'Class (This).getHighestLevel))));
        hashtable.put (Java_Box (This.gameInfoData.CURRENT_LEVEL), Java_Box (To_Unbounded_String (Java_Image (This.currentLevel))));
        return hashtable;
   end toHashtable;

   function toString (This : in out GameInfo) return Unbounded_String is
      stringBuffer : StringMaker_Access;
      commonSeps : CommonSeps_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        commonSeps := CommonSeps_Package.getInstance;
        stringBuffer.append (This.gameInfoData.GAME_TYPE);
        stringBuffer.append (commonSeps.EQUALS);
        stringBuffer.append (GameInfo'Class (This).getGameType.toString);
        stringBuffer.append (commonSeps.COMMA_SEP);
        stringBuffer.append (This.gameInfoData.GAME_MODE);
        stringBuffer.append (commonSeps.EQUALS);
        stringBuffer.append (This.gameMode.toString);
        stringBuffer.append (commonSeps.COMMA_SEP);
        stringBuffer.append (This.gameInfoData.PLAYER_TYPE);
        stringBuffer.append (commonSeps.EQUALS);
        stringBuffer.append (StringUtil_Package.getInstance.toString (This.playerType));
        stringBuffer.append (commonSeps.COMMA_SEP);
        stringBuffer.append (This.gameInfoData.HIGHEST_LEVEL);
        stringBuffer.append (commonSeps.EQUALS);
        stringBuffer.appendint (GameInfo'Class (This).getHighestLevel);
        stringBuffer.append (commonSeps.COMMA_SEP);
        stringBuffer.append (This.gameInfoData.CURRENT_LEVEL);
        stringBuffer.append (commonSeps.EQUALS);
        stringBuffer.appendint (This.currentLevel);
        return stringBuffer.toString;
   end toString;

begin
   null;
   NONE := GameInfo_Package.Create (GameTypeFactory_Package.getInstance.NONE, GameMode_Package.NONE, PlayerTypesFactory_Package.getInstance.PLAYER_TYPE_ONE, -(1), -(1));
   LEVEL_NAME := To_Unbounded_String ("LEVEL");

end org.allbinary.game.GameInfo_Package;


