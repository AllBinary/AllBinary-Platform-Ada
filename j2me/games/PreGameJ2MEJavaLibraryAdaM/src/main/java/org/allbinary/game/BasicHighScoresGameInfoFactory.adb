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


with org.allbinary.game.GameInfo_Package; use org.allbinary.game.GameInfo_Package;
with org.allbinary.game.GameInfo_Package_References;
with org.allbinary.game.GameTypeFactory_Package; use org.allbinary.game.GameTypeFactory_Package;
with org.allbinary.game.GameMode_Package; use org.allbinary.game.GameMode_Package;
with org.allbinary.game.PlayerTypesFactory_Package; use org.allbinary.game.PlayerTypesFactory_Package;
with org.allbinary.util.ABHashtable_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.game.GameInfo_Package;
with org.allbinary.game.GameInfoData_Package;
with org.allbinary.game.GameMode_Package;
with org.allbinary.game.GameType_Package;
with org.allbinary.game.GameTypeFactory_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.game.PlayerType_Package;
with org.allbinary.game.PlayerTypesFactory_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.game.BasicHighScoresGameInfoFactory_Package is

   subtype GameInfo_Access is org.allbinary.game.GameInfo_Package_References.GameInfo_Access;
   function "=" (Left, Right : GameInfo_Access) return Boolean renames org.allbinary.game.GameInfo_Package_References."=";
   subtype GameInfo_Access_Array is org.allbinary.game.GameInfo_Package_References.GameInfo_Access_Array;
   function "=" (Left, Right : GameInfo_Access_Array) return Boolean renames org.allbinary.game.GameInfo_Package_References."=";
   subtype GameInfo_Access_Array_Access is org.allbinary.game.GameInfo_Package_References.GameInfo_Access_Array_Access;
   function "=" (Left, Right : GameInfo_Access_Array_Access) return Boolean renames org.allbinary.game.GameInfo_Package_References."=";
   subtype GameInfo_Access_Array_Access_Array is org.allbinary.game.GameInfo_Package_References.GameInfo_Access_Array_Access_Array;
   function "=" (Left, Right : GameInfo_Access_Array_Access_Array) return Boolean renames org.allbinary.game.GameInfo_Package_References."=";
   subtype GameInfo_Access_Array_Access_Array_Access is org.allbinary.game.GameInfo_Package_References.GameInfo_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameInfo_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.GameInfo_Package_References."=";
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


