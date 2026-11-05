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
with org.allbinary.game.GameInfoData_Package; use org.allbinary.game.GameInfoData_Package;
with org.allbinary.game.configuration.GameConfigurationCentral_Package; use org.allbinary.game.configuration.GameConfigurationCentral_Package;
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

package body org.allbinary.game.score.remote.RemoteHighScoresProcessor_Package is

   package GameInfoData_Package renames Standard.org.allbinary.game.GameInfoData_Package;
   package GameConfigurationCentral_Package renames Standard.org.allbinary.game.configuration.GameConfigurationCentral_Package;
   package DisplayInfoSingleton_Package renames Standard.org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
   package XmlRpcAbeClient_Package renames Standard.org.allbinary.logic.communication.xmlrpc.XmlRpcAbeClient_Package;
   package BooleanFactory_Package renames Standard.org.allbinary.logic.java.bool.BooleanFactory_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;
   package HashtableUtil_Package renames Standard.org.allbinary.util.HashtableUtil_Package;
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
      RemoteHighScoresProcessor_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   procedure process (This : in out RemoteHighScoresProcessor; remoteHighScores_Param : access RemoteHighScores_Package.RemoteHighScores'Class; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; gameInfo_Param : access GameInfo_Package.GameInfo'Class) is
      remoteHighScores : constant RemoteHighScores_Access := RemoteHighScores_Access (remoteHighScores_Param);
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
      gameInfo : constant GameInfo_Access := GameInfo_Access (gameInfo_Param);
      gameInfoData : GameInfoData_Access;
      hashtable : ABHashtable_Access;
      displayInfoSingleton : DisplayInfoSingleton_Access;
      resultHashtable : ABHashtable_Access;
   begin
        This.logUtil.putF (To_Unbounded_String ("Begin Remote HighScores Retrieval"), RemoteHighScoresProcessor_Access'(This'Unchecked_Access), This.commonStrings.PROCESS);
        gameInfoData := GameInfoData_Package.getInstance;
        hashtable := abeClientInformation.toHashtable;
        HashtableUtil_Package.getInstance.putAll (gameInfo.toHashtable, hashtable);
        hashtable.put (gameInfoData.SOFTWARE_INFORMATION, Java_Box (remoteHighScores.getSoftwareInformation.toString));
        hashtable.put (Java_Box (remoteHighScores.ASCENDING), Java_Box (remoteHighScores.getAscending.toString));
        displayInfoSingleton := DisplayInfoSingleton_Package.getInstance;
        hashtable.put (displayInfoSingleton.ORIENTATION, BooleanFactory_Package.getInstance.toStringb (displayInfoSingleton.isPortrait));
        hashtable.put (Java_Box (RemoteHighScoresData_Package.getInstance.GAME_CONFIGURATION), Java_Box (GameConfigurationCentral_Package.getInstance.toString));
        if XmlRpcAbeClient_Package.isOnline then
            resultHashtable := ABHashtable_Access (XmlRpcRemoteHighScoresClient_Package.Create (abeClientInformation, To_Unbounded_String ("highscoresservicessl.php"), To_Unbounded_String ("HighScoresService.process")).get (hashtable, This.noCrypt));
            remoteHighScores.update (resultHashtable);
        end if;
   end process;

end org.allbinary.game.score.remote.RemoteHighScoresProcessor_Package;


