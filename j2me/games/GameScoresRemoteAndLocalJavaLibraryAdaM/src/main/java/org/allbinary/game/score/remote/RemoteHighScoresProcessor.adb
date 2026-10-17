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


package body org.allbinary.game.score.remote.RemoteHighScoresProcessor_Package is

   procedure Initialize_Fields (This : in out RemoteHighScoresProcessor'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.noCrypt := NoCrypt_Package.Create;
   end Initialize_Fields;


   procedure Initialize (This : in out RemoteHighScoresProcessor'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return RemoteHighScoresProcessor_Access is
      This : constant RemoteHighScoresProcessor_Access := new RemoteHighScoresProcessor;
   begin
      Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   procedure process (This : in out RemoteHighScoresProcessor; remoteHighScores : RemoteHighScores_Access; abeClientInformation : AbeClientInformationInterface_Access; gameInfo : GameInfo_Access) is
      gameInfoData : GameInfoData_Access;
      hashtable : ABHashtable_Access;
      displayInfoSingleton : DisplayInfoSingleton_Access;
      resultHashtable : ABHashtable_Access;
   begin
        This.logUtil.putF (To_Unbounded_String ("Begin Remote HighScores Retrieval"), This'Unchecked_Access, This.commonStrings.PROCESS);
        gameInfoData := GameInfoData_Package.getInstance;
        hashtable := abeClientInformation.toHashtable;
        HashtableUtil_Package.getInstance.putAll (gameInfo.toHashtable, hashtable);
        hashtable.put (gameInfoData.SOFTWARE_INFORMATION, remoteHighScores.getSoftwareInformation.toString);
        hashtable.put (remoteHighScores.ASCENDING, remoteHighScores.getAscending.toString);
        displayInfoSingleton := DisplayInfoSingleton_Package.getInstance;
        hashtable.put (displayInfoSingleton.ORIENTATION, BooleanFactory_Package.getInstance.toStringb (displayInfoSingleton.isPortrait));
        hashtable.put (RemoteHighScoresData_Package.getInstance.GAME_CONFIGURATION, GameConfigurationCentral_Package.getInstance.toString);
        if XmlRpcAbeClient_Package.isOnline then
            resultHashtable := ABHashtable_Access (XmlRpcRemoteHighScoresClient_Package.Create (abeClientInformation, To_Unbounded_String ("highscoresservicessl.php"), To_Unbounded_String ("HighScoresService.process")).get (hashtable, This.noCrypt));
            remoteHighScores.update (resultHashtable);
        end if;
   end process;

end org.allbinary.game.score.remote.RemoteHighScoresProcessor_Package;


