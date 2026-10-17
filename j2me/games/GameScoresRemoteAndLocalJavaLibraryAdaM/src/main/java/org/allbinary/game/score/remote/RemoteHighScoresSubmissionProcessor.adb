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


package body org.allbinary.game.score.remote.RemoteHighScoresSubmissionProcessor_Package is

   procedure Initialize_Fields (This : in out RemoteHighScoresSubmissionProcessor'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.noCrypt := NoCrypt_Package.Create;
   end Initialize_Fields;


   procedure Initialize (This : in out RemoteHighScoresSubmissionProcessor'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return RemoteHighScoresSubmissionProcessor_Access is
      This : constant RemoteHighScoresSubmissionProcessor_Access := new RemoteHighScoresSubmissionProcessor;
   begin
      Initialize (This.all);
      return This;
   end Create;

   procedure process (This : in out RemoteHighScoresSubmissionProcessor; remoteHighScores : RemoteHighScores_Access; abeClientInformation : AbeClientInformationInterface_Access; highScore : HighScore_Access) is
      gameInfoData : GameInfoData_Access;
      hashtable : ABHashtable_Access;
      displayInfoSingleton : DisplayInfoSingleton_Access;
      resultHashtable : ABHashtable_Access;
   begin
        begin
            This.logUtil.putF (To_Unbounded_String ("Begin Remote HighScores Submission"), This'Unchecked_Access, This.commonStrings.PROCESS);
            gameInfoData := GameInfoData_Package.getInstance;
            hashtable := abeClientInformation.toHashtable;
            HashtableUtil_Package.getInstance.putAll (highScore.getGameInfo.toHashtable, hashtable);
            hashtable.put (RemoteHighScoresData_Package.getInstance.CUSTOMER_USER_NAME, To_Unbounded_String ("None"));
            hashtable.put (RemoteHighScoresData_Package.getInstance.DISPLAY_NAME, highScore.getName);
            hashtable.put (gameInfoData.SOFTWARE_INFORMATION, remoteHighScores.getSoftwareInformation.toString);
            hashtable.put (remoteHighScores.ASCENDING, remoteHighScores.getAscending.toString);
            displayInfoSingleton := DisplayInfoSingleton_Package.getInstance;
            hashtable.put (displayInfoSingleton.ORIENTATION, BooleanFactory_Package.getInstance.toStringb (displayInfoSingleton.isPortrait));
            hashtable.put (RemoteHighScoresData_Package.getInstance.GAME_CONFIGURATION, GameConfigurationCentral_Package.getInstance.toString);
            hashtable.put (RemoteHighScoresData_Package.getInstance.SCORE, To_Unbounded_String (Java_Image (highScore.getScore)));
            if XmlRpcAbeClient_Package.isOnline then
                resultHashtable := ABHashtable_Access (XmlRpcRemoteHighScoresClient_Package.Create (abeClientInformation, To_Unbounded_String ("highscoresubmissionservicessl.php"), To_Unbounded_String ("HighScoreSubmissionService.process")).get (hashtable, This.noCrypt));
                remoteHighScores.update (resultHashtable);
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, This.commonStrings.PROCESS, e);
                end;
        end;
   end process;

end org.allbinary.game.score.remote.RemoteHighScoresSubmissionProcessor_Package;


