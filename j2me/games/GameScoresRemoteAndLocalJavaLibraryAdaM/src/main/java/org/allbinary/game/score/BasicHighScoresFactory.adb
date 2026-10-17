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


package body org.allbinary.game.score.BasicHighScoresFactory_Package is

   procedure Initialize_Fields (This : in out BasicHighScoresFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
      
      This.highScoresArray := new HighScores_Access_Array'(0 .. (2) - 1 => null);
      This.TOP := To_Unbounded_String ("Top");
      This.SCORES := To_Unbounded_String ("Scores");
      This.PERSONAL_HIGH_SCORES := To_Unbounded_String ("Personal Top Scores");
      This.WORLD_TOP_SCORES := To_Unbounded_String ("World Top Scores");
      This.FETCH := To_Unbounded_String ("fetchHighScores");
   end Initialize_Fields;


   procedure Initialize (This : in out BasicHighScoresFactory'Class; abeClientInformation_Param : access AbeClientInformationInterface'Class; softwareInformation_Param : access SoftwareInformation'Class) is
      abeClientInformation : AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
      softwareInformation : SoftwareInformation_Access := SoftwareInformation_Access (softwareInformation_Param);
   begin
      HighScoresBase_Package.Initialize (This);
      Initialize_Fields (This);
        This.abeClientInformation := abeClientInformation;
        This.softwareInformation := softwareInformation;
   end Initialize;

   function Create (abeClientInformation_Param : access AbeClientInformationInterface'Class; softwareInformation_Param : access SoftwareInformation'Class) return BasicHighScoresFactory_Access is
      This : constant BasicHighScoresFactory_Access := new BasicHighScoresFactory;
   begin
      BasicHighScoresFactory_Package.Initialize (This.all, abeClientInformation_Param, softwareInformation_Param);
      return This;
   end Create;

   procedure fetchHighScores (This : in out BasicHighScoresFactory; gameInfo_Param : access GameInfo'Class; highScoresResultsListener_Param : access HighScoresResultsListener'Class) is
      gameInfo : GameInfo_Access := GameInfo_Access (gameInfo_Param);
      highScoresResultsListener : HighScoresResultsListener_Access := HighScoresResultsListener_Access (highScoresResultsListener_Param);
   begin
        This.logUtil.putF (To_Unbounded_String ("Getting Remote/Local HighScores"), BasicHighScoresFactory_Access'(This'Unchecked_Access), This.FETCH);
        This.fetchHighScoresPreload (gameInfo, highScoresResultsListener, True);
   end fetchHighScores;

   procedure fetchHighScoresPreload (This : in out BasicHighScoresFactory; gameInfo_Param : access GameInfo'Class; highScoresResultsListener_Param : access HighScoresResultsListener'Class; preload : Boolean) is
      gameInfo : GameInfo_Access := GameInfo_Access (gameInfo_Param);
      highScoresResultsListener : HighScoresResultsListener_Access := HighScoresResultsListener_Access (highScoresResultsListener_Param);
   begin
        SecondaryThreadPool_Package.getInstance.runTask (ARunnable_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure run (This : in out ) is
--        logUtil : LogUtil_Access;
--        gameType : GameType_Access;
--        gameTypeFactory : GameTypeFactory_Access;
--        gameInfo2 : GameInfo_Access;
--     begin
--                  logUtil := LogUtil_Package.getInstance;
--                  begin
--                      logUtil.putF (This.commonStrings.START, BasicHighScoresFactory_Access'(This'Unchecked_Access), This.FETCH);
--                      This.highScoresArray (0) := RecordStoreHighScores_Package.getInstance (This.abeClientInformation, gameInfo, This.TOP, This.PERSONAL_HIGH_SCORES, This.SCORES, ScoreComparator_Package.Create (True));
--                      gameType := gameInfo.getGameType;
--                      gameTypeFactory := GameTypeFactory_Package.getInstance;
--                      gameInfo2 := gameInfo;
--                      if ((gameType) = (gameTypeFactory.SINGLE_PLAYER)) or else ((gameType) = (gameTypeFactory.BOT)) then
--                          gameInfo2 := BasicHighScoresGameInfoFactory_Package.getInstance.SINGLE_PLAYER_SERVER;
--                      elsif (gameType) = (gameTypeFactory.MULTI_PLAYER) then
--                          gameInfo2 := BasicHighScoresGameInfoFactory_Package.getInstance.MULTI_PLAYER_SERVER;
--                      end if;
--                      This.highScoresArray (1) := RemoteHighScores_Package.getInstancePreload (This.abeClientInformation, This.softwareInformation, gameInfo2, This.WORLD_TOP_SCORES, This.SCORES, BooleanFactory_Package.getInstance.FALSE, preload);
--                      logUtil.putF (This.commonStrings.END_Id, BasicHighScoresFactory_Access'(This'Unchecked_Access), This.FETCH);
--                      LastFetchHighScoresFactory_Package.getInstance.highScoresArray := This.highScoresArray;
--                      highScoresResultsListener.setHighScoresArray (This.highScoresArray);
--                  exception
--                      when Java_Occurrence : others =>
--                          declare
--                              e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
--                          begin
--                      logUtil.put (This.commonStrings.EXCEPTION_Id, BasicHighScoresFactory_Access'(This'Unchecked_Access), This.FETCH, e);
--                          end;
--                  end;
--     end run;
);
   end fetchHighScoresPreload;

   function createHighScoresHelper (This : in out BasicHighScoresFactory) return HighScoresHelperBaseInterface_Access is
   begin
        return HighScoresHelper2_Package.Create;
   end createHighScoresHelper;

   function loaded (index2 : Integer) return Boolean is
   begin
        if (index2) >= (0) then
            return True;
        end if;
        return False;
   end loaded;

   procedure loaded (index2 : Integer) is
      Java_Result : constant Boolean := loaded (index2);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end loaded;

end org.allbinary.game.score.BasicHighScoresFactory_Package;


