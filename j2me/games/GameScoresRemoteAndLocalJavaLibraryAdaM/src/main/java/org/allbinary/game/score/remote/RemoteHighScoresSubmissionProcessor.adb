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


with org.allbinary.game.GameInfoData_Package; use org.allbinary.game.GameInfoData_Package;
with org.allbinary.game.configuration.GameConfigurationCentral_Package; use org.allbinary.game.configuration.GameConfigurationCentral_Package;
with org.allbinary.game.score.HighScore_Package; use org.allbinary.game.score.HighScore_Package;
with org.allbinary.game.score.HighScore_Package_References;
with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package; use org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.communication.xmlrpc.XmlRpcAbeClient_Package; use org.allbinary.logic.communication.xmlrpc.XmlRpcAbeClient_Package;
with org.allbinary.logic.java.bool.BooleanFactory_Package; use org.allbinary.logic.java.bool.BooleanFactory_Package;
with org.allbinary.logic.system.security.crypt.jcehelper.NoCrypt_Package; use org.allbinary.logic.system.security.crypt.jcehelper.NoCrypt_Package;
with org.allbinary.logic.system.security.crypt.jcehelper.NoCrypt_Package_References;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.HashtableUtil_Package; use org.allbinary.util.HashtableUtil_Package;
with org.allbinary.game.score.remote.RemoteHighScoresData_Package; use org.allbinary.game.score.remote.RemoteHighScoresData_Package;
with org.allbinary.game.score.remote.XmlRpcRemoteHighScoresClient_Package; use org.allbinary.game.score.remote.XmlRpcRemoteHighScoresClient_Package;
with org.allbinary.game.score.remote.RemoteHighScores_Package; use org.allbinary.game.score.remote.RemoteHighScores_Package;
with org.allbinary.game.score.remote.RemoteHighScores_Package_References;
with org.allbinary.game.score.remote.RemoteHighScores_Package;
with org.allbinary.game.score.remote.RemoteHighScoresData_Package;
with org.allbinary.game.score.remote.XmlRpcRemoteHighScoresClient_Package;

package body org.allbinary.game.score.remote.RemoteHighScoresSubmissionProcessor_Package is

   package GameInfoData_Package renames Standard.org.allbinary.game.GameInfoData_Package;
   package GameConfigurationCentral_Package renames Standard.org.allbinary.game.configuration.GameConfigurationCentral_Package;
   package DisplayInfoSingleton_Package renames Standard.org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
   package XmlRpcAbeClient_Package renames Standard.org.allbinary.logic.communication.xmlrpc.XmlRpcAbeClient_Package;
   package BooleanFactory_Package renames Standard.org.allbinary.logic.java.bool.BooleanFactory_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;
   package HashtableUtil_Package renames Standard.org.allbinary.util.HashtableUtil_Package;
   subtype HighScore_Access is org.allbinary.game.score.HighScore_Package_References.HighScore_Access;
   function "=" (Left, Right : HighScore_Access) return Boolean renames org.allbinary.game.score.HighScore_Package_References."=";
   subtype HighScore_Access_Array is org.allbinary.game.score.HighScore_Package_References.HighScore_Access_Array;
   function "=" (Left, Right : HighScore_Access_Array) return Boolean renames org.allbinary.game.score.HighScore_Package_References."=";
   subtype HighScore_Access_Array_Access is org.allbinary.game.score.HighScore_Package_References.HighScore_Access_Array_Access;
   function "=" (Left, Right : HighScore_Access_Array_Access) return Boolean renames org.allbinary.game.score.HighScore_Package_References."=";
   subtype HighScore_Access_Array_Access_Array is org.allbinary.game.score.HighScore_Package_References.HighScore_Access_Array_Access_Array;
   function "=" (Left, Right : HighScore_Access_Array_Access_Array) return Boolean renames org.allbinary.game.score.HighScore_Package_References."=";
   subtype HighScore_Access_Array_Access_Array_Access is org.allbinary.game.score.HighScore_Package_References.HighScore_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HighScore_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.score.HighScore_Package_References."=";
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
   subtype NoCrypt_Access is org.allbinary.logic.system.security.crypt.jcehelper.NoCrypt_Package_References.NoCrypt_Access;
   function "=" (Left, Right : NoCrypt_Access) return Boolean renames org.allbinary.logic.system.security.crypt.jcehelper.NoCrypt_Package_References."=";
   subtype NoCrypt_Access_Array is org.allbinary.logic.system.security.crypt.jcehelper.NoCrypt_Package_References.NoCrypt_Access_Array;
   function "=" (Left, Right : NoCrypt_Access_Array) return Boolean renames org.allbinary.logic.system.security.crypt.jcehelper.NoCrypt_Package_References."=";
   subtype NoCrypt_Access_Array_Access is org.allbinary.logic.system.security.crypt.jcehelper.NoCrypt_Package_References.NoCrypt_Access_Array_Access;
   function "=" (Left, Right : NoCrypt_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.crypt.jcehelper.NoCrypt_Package_References."=";
   subtype NoCrypt_Access_Array_Access_Array is org.allbinary.logic.system.security.crypt.jcehelper.NoCrypt_Package_References.NoCrypt_Access_Array_Access_Array;
   function "=" (Left, Right : NoCrypt_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.security.crypt.jcehelper.NoCrypt_Package_References."=";
   subtype NoCrypt_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.crypt.jcehelper.NoCrypt_Package_References.NoCrypt_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NoCrypt_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.crypt.jcehelper.NoCrypt_Package_References."=";
   subtype AbeClientInformationInterface_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access;
   function "=" (Left, Right : AbeClientInformationInterface_Access) return Boolean renames org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References."=";
   subtype AbeClientInformationInterface_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array;
   function "=" (Left, Right : AbeClientInformationInterface_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References."=";
   subtype AbeClientInformationInterface_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access;
   function "=" (Left, Right : AbeClientInformationInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References."=";
   subtype AbeClientInformationInterface_Access_Array_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access_Array;
   function "=" (Left, Right : AbeClientInformationInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References."=";
   subtype AbeClientInformationInterface_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AbeClientInformationInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References."=";
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   function "=" (Left, Right : CommonStrings_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype RemoteHighScores_Access is org.allbinary.game.score.remote.RemoteHighScores_Package_References.RemoteHighScores_Access;
   function "=" (Left, Right : RemoteHighScores_Access) return Boolean renames org.allbinary.game.score.remote.RemoteHighScores_Package_References."=";
   subtype RemoteHighScores_Access_Array is org.allbinary.game.score.remote.RemoteHighScores_Package_References.RemoteHighScores_Access_Array;
   function "=" (Left, Right : RemoteHighScores_Access_Array) return Boolean renames org.allbinary.game.score.remote.RemoteHighScores_Package_References."=";
   subtype RemoteHighScores_Access_Array_Access is org.allbinary.game.score.remote.RemoteHighScores_Package_References.RemoteHighScores_Access_Array_Access;
   function "=" (Left, Right : RemoteHighScores_Access_Array_Access) return Boolean renames org.allbinary.game.score.remote.RemoteHighScores_Package_References."=";
   subtype RemoteHighScores_Access_Array_Access_Array is org.allbinary.game.score.remote.RemoteHighScores_Package_References.RemoteHighScores_Access_Array_Access_Array;
   function "=" (Left, Right : RemoteHighScores_Access_Array_Access_Array) return Boolean renames org.allbinary.game.score.remote.RemoteHighScores_Package_References."=";
   subtype RemoteHighScores_Access_Array_Access_Array_Access is org.allbinary.game.score.remote.RemoteHighScores_Package_References.RemoteHighScores_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RemoteHighScores_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.score.remote.RemoteHighScores_Package_References."=";
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
      RemoteHighScoresSubmissionProcessor_Package.Initialize (This.all);
      return This;
   end Create;

   procedure process (This : in out RemoteHighScoresSubmissionProcessor; remoteHighScores_Param : access RemoteHighScores_Package.RemoteHighScores'Class; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; highScore_Param : access HighScore_Package.HighScore'Class) is
      remoteHighScores : constant RemoteHighScores_Access := RemoteHighScores_Access (remoteHighScores_Param);
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
      highScore : constant HighScore_Access := HighScore_Access (highScore_Param);
      gameInfoData : GameInfoData_Access;
      hashtable : ABHashtable_Access;
      displayInfoSingleton : DisplayInfoSingleton_Access;
      resultHashtable : ABHashtable_Access;
   begin
        begin
            This.logUtil.putF (To_Unbounded_String ("Begin Remote HighScores Submission"), RemoteHighScoresSubmissionProcessor_Access'(This'Unchecked_Access), This.commonStrings.PROCESS);
            gameInfoData := GameInfoData_Package.getInstance;
            hashtable := abeClientInformation.toHashtable;
            HashtableUtil_Package.getInstance.putAll (highScore.getGameInfo.toHashtable, hashtable);
            hashtable.put (RemoteHighScoresData_Package.getInstance.CUSTOMER_USER_NAME, Java_Box (To_Unbounded_String ("None")));
            hashtable.put (RemoteHighScoresData_Package.getInstance.DISPLAY_NAME, Java_Box (highScore.getName));
            hashtable.put (gameInfoData.SOFTWARE_INFORMATION, Java_Box (remoteHighScores.getSoftwareInformation.toString));
            hashtable.put (remoteHighScores.ASCENDING, Java_Box (remoteHighScores.getAscending.toString));
            displayInfoSingleton := DisplayInfoSingleton_Package.getInstance;
            hashtable.put (displayInfoSingleton.ORIENTATION, BooleanFactory_Package.getInstance.toStringb (displayInfoSingleton.isPortrait));
            hashtable.put (RemoteHighScoresData_Package.getInstance.GAME_CONFIGURATION, Java_Box (GameConfigurationCentral_Package.getInstance.toString));
            hashtable.put (RemoteHighScoresData_Package.getInstance.SCORE, Java_Box (To_Unbounded_String (Java_Image (highScore.getScore))));
            if XmlRpcAbeClient_Package.isOnline then
                resultHashtable := ABHashtable_Access (XmlRpcRemoteHighScoresClient_Package.Create (abeClientInformation, To_Unbounded_String ("highscoresubmissionservicessl.php"), To_Unbounded_String ("HighScoreSubmissionService.process")).get (hashtable, This.noCrypt));
                remoteHighScores.update (resultHashtable);
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, RemoteHighScoresSubmissionProcessor_Access'(This'Unchecked_Access), This.commonStrings.PROCESS, e);
                end;
        end;
   end process;

end org.allbinary.game.score.remote.RemoteHighScoresSubmissionProcessor_Package;


