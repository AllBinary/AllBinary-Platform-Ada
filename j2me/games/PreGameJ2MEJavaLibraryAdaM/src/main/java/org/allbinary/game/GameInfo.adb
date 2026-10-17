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


package body org.allbinary.game.GameInfo_Package is

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


   procedure Initialize (This : in out GameInfo'Class; gameType : GameType_Access; gameMode : GameMode_Access; playerType : PlayerType_Access; highestLevel : Integer; currentLevel : Integer) is
   begin
      Initialize_Fields (This);
        This.gameType := gameType;
        This.gameMode := gameMode;
        This.setHighestLevel (highestLevel);
        This.currentLevel := currentLevel;
        This.playerType := playerType;
   end Initialize;

   function Create (gameType : GameType_Access; gameMode : GameMode_Access; playerType : PlayerType_Access; highestLevel : Integer; currentLevel : Integer) return GameInfo_Access is
      This : constant GameInfo_Access := new GameInfo;
   begin
      Initialize (This.all, gameType, gameMode, playerType, highestLevel, currentLevel);
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
        This.logUtil.putF (StringMaker_Package.Create.append (This.NEW_LEVEL).appendint (This.getCurrentLevel).toString, This'Unchecked_Access, This.SET_CURRENT_LEVEL);
   end setCurrentLevel;

   procedure nextGameLevel (This : in out GameInfo) is
   begin
        if (This.getCurrentLevel) < (This.getHighestLevel) then
            This.currentLevel := This.currentLevel + 1;
        end if;
        This.logUtil.putF (StringMaker_Package.Create.append (CommonLabels_Package.getInstance.NEXT).append (CommonSeps_Package.getInstance.SPACE).append (This.NEW_LEVEL).appendint (This.getCurrentLevel).toString, This'Unchecked_Access, This.NEXT_GAME_LEVEL);
   end nextGameLevel;

   procedure previousGameLevel (This : in out GameInfo) is
   begin
        if (This.getCurrentLevel) > (1) then
            This.currentLevel := This.currentLevel - 1;
        end if;
   end previousGameLevel;

   function isLastLevel (This : in out GameInfo) return Boolean is
   begin
        if (This.getCurrentLevel) >= (This.getHighestLevel) then
            return True;
        else
            return False;
        end if;
   end isLastLevel;

   function toHashtable (This : in out GameInfo) return ABHashtable_Access is
      hashtable : ABHashtable_Access;
   begin
        hashtable := StdUtil_Package.getInstance.createHashtable;
        hashtable.put (This.gameInfoData.GAME_TYPE, This.getGameType.toString);
        hashtable.put (This.gameInfoData.GAME_MODE, This.gameMode.toString);
        hashtable.put (This.gameInfoData.PLAYER_TYPE, This.playerType.toString);
        hashtable.put (This.gameInfoData.HIGHEST_LEVEL, To_Unbounded_String (Java_Image (This.getHighestLevel)));
        hashtable.put (This.gameInfoData.CURRENT_LEVEL, To_Unbounded_String (Java_Image (This.currentLevel)));
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
        stringBuffer.append (This.getGameType.toString);
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
        stringBuffer.appendint (This.getHighestLevel);
        stringBuffer.append (commonSeps.COMMA_SEP);
        stringBuffer.append (This.gameInfoData.CURRENT_LEVEL);
        stringBuffer.append (commonSeps.EQUALS);
        stringBuffer.appendint (This.currentLevel);
        return stringBuffer.toString;
   end toString;

   procedure getGameType (This : in out GameInfo) is
      Java_Result : constant GameType_Access := GameInfo'Class (This).getGameType;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getGameType;

   procedure getGameMode (This : in out GameInfo) is
      Java_Result : constant GameMode_Access := GameInfo'Class (This).getGameMode;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getGameMode;

   procedure getPlayerType (This : in out GameInfo) is
      Java_Result : constant PlayerType_Access := GameInfo'Class (This).getPlayerType;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getPlayerType;

   procedure getHighestLevel (This : in out GameInfo) is
      Java_Result : constant Integer := GameInfo'Class (This).getHighestLevel;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getHighestLevel;

   procedure getCurrentLevel (This : in out GameInfo) is
      Java_Result : constant Integer := GameInfo'Class (This).getCurrentLevel;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCurrentLevel;

   procedure isLastLevel (This : in out GameInfo) is
      Java_Result : constant Boolean := GameInfo'Class (This).isLastLevel;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isLastLevel;

   procedure toHashtable (This : in out GameInfo) is
      Java_Result : constant ABHashtable_Access := GameInfo'Class (This).toHashtable;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toHashtable;

   procedure toString (This : in out GameInfo) is
      Java_Result : constant Unbounded_String := GameInfo'Class (This).toString;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toString;

begin
   null;
   NONE := GameInfo_Package.Create (GameTypeFactory_Package.getInstance.NONE, GameMode_Package.NONE, PlayerTypesFactory_Package.getInstance.PLAYER_TYPE_ONE, -(1), -(1));
   LEVEL_NAME := To_Unbounded_String ("LEVEL");

end org.allbinary.game.GameInfo_Package;


