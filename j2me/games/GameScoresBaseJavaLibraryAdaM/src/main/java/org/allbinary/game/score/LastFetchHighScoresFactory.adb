-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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


with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.game.score.NoHighScoresFactory_Package; use org.allbinary.game.score.NoHighScoresFactory_Package;
with org.allbinary.game.score.HighScores_Package; use org.allbinary.game.score.HighScores_Package;
with org.allbinary.game.score.HighScores_Package_References;
with org.allbinary.util.ABHashtable_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.game.GameInfo_Package;
with org.allbinary.game.GameInfoData_Package;
with org.allbinary.game.GameMode_Package;
with org.allbinary.game.GameType_Package;
with org.allbinary.game.score.HighScoresBase_Package;
with org.allbinary.game.score.HighScoresFactoryInterface_Package;
with org.allbinary.game.score.HighScoresHelperBaseInterface_Package;
with org.allbinary.game.score.HighScoresResultsListener_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.game.score.NoHighScoresFactory_Package;
with org.allbinary.game.PlayerType_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.game.score.LastFetchHighScoresFactory_Package is

   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   subtype HighScores_Access is org.allbinary.game.score.HighScores_Package_References.HighScores_Access;
   function "=" (Left, Right : HighScores_Access) return Boolean renames org.allbinary.game.score.HighScores_Package_References."=";
   subtype HighScores_Access_Array is org.allbinary.game.score.HighScores_Package_References.HighScores_Access_Array;
   function "=" (Left, Right : HighScores_Access_Array) return Boolean renames org.allbinary.game.score.HighScores_Package_References."=";
   subtype HighScores_Access_Array_Access is org.allbinary.game.score.HighScores_Package_References.HighScores_Access_Array_Access;
   function "=" (Left, Right : HighScores_Access_Array_Access) return Boolean renames org.allbinary.game.score.HighScores_Package_References."=";
   subtype HighScores_Access_Array_Access_Array is org.allbinary.game.score.HighScores_Package_References.HighScores_Access_Array_Access_Array;
   function "=" (Left, Right : HighScores_Access_Array_Access_Array) return Boolean renames org.allbinary.game.score.HighScores_Package_References."=";
   subtype HighScores_Access_Array_Access_Array_Access is org.allbinary.game.score.HighScores_Package_References.HighScores_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HighScores_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.score.HighScores_Package_References."=";
   procedure Initialize_Fields (This : in out LastFetchHighScoresFactory'Class) is
   begin
      null;
      This.highScoresArray := NoHighScoresFactory_Package.getInstance.NO_HIGH_SCORES;
   end Initialize_Fields;

   procedure Initialize (This : in out LastFetchHighScoresFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return LastFetchHighScoresFactory_Access is
      This : constant LastFetchHighScoresFactory_Access := new LastFetchHighScoresFactory;
   begin
      LastFetchHighScoresFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return LastFetchHighScoresFactory_Access is
   begin
        if (LastFetchHighScoresFactory_Package.instance) = (NullUtil_Package.getInstance.NULL_OBJECT) then
            LastFetchHighScoresFactory_Package.instance := Java_Object_Access (LastFetchHighScoresFactory_Package.Create);
        end if;
        return LastFetchHighScoresFactory_Access (LastFetchHighScoresFactory_Package.instance);
   end getInstance;

begin
   null;
   instance := NullUtil_Package.getInstance.NULL_OBJECT;

end org.allbinary.game.score.LastFetchHighScoresFactory_Package;


