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
with org.allbinary.game.GameInfoData_Package; use org.allbinary.game.GameInfoData_Package;
with org.allbinary.game.configuration.GameConfigurationCentral_Package; use org.allbinary.game.configuration.GameConfigurationCentral_Package;
with org.allbinary.game.score.HighScore_Package; use org.allbinary.game.score.HighScore_Package;
with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package; use org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.xmlrpc.XmlRpcAbeClient_Package; use org.allbinary.logic.communication.xmlrpc.XmlRpcAbeClient_Package;
with org.allbinary.logic.java.bool.BooleanFactory_Package; use org.allbinary.logic.java.bool.BooleanFactory_Package;
with org.allbinary.logic.system.security.crypt.jcehelper.NoCrypt_Package; use org.allbinary.logic.system.security.crypt.jcehelper.NoCrypt_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.HashtableUtil_Package; use org.allbinary.util.HashtableUtil_Package;
with org.allbinary.game.score.remote.RemoteHighScoresSubmissionProcessorInterface_Package; use org.allbinary.game.score.remote.RemoteHighScoresSubmissionProcessorInterface_Package;
with org.allbinary.game.score.remote.RemoteHighScoresData_Package; use org.allbinary.game.score.remote.RemoteHighScoresData_Package;
with org.allbinary.game.score.remote.XmlRpcRemoteHighScoresClient_Package; use org.allbinary.game.score.remote.XmlRpcRemoteHighScoresClient_Package;
with org.allbinary.game.score.remote.RemoteHighScores_Package; use org.allbinary.game.score.remote.RemoteHighScores_Package;

package org.allbinary.game.score.remote.RemoteHighScoresSubmissionProcessor_Package is

   package GameInfoData_Package renames Standard.org.allbinary.game.GameInfoData_Package;
   package GameConfigurationCentral_Package renames Standard.org.allbinary.game.configuration.GameConfigurationCentral_Package;
   package HighScore_Package renames Standard.org.allbinary.game.score.HighScore_Package;
   package DisplayInfoSingleton_Package renames Standard.org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package XmlRpcAbeClient_Package renames Standard.org.allbinary.logic.communication.xmlrpc.XmlRpcAbeClient_Package;
   package BooleanFactory_Package renames Standard.org.allbinary.logic.java.bool.BooleanFactory_Package;
   package NoCrypt_Package renames Standard.org.allbinary.logic.system.security.crypt.jcehelper.NoCrypt_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;
   package HashtableUtil_Package renames Standard.org.allbinary.util.HashtableUtil_Package;

   type RemoteHighScoresSubmissionProcessor is tagged;
   type RemoteHighScoresSubmissionProcessor_Access is access all RemoteHighScoresSubmissionProcessor'Class;
   type RemoteHighScoresSubmissionProcessor_Access_Array is array (Natural range <>) of RemoteHighScoresSubmissionProcessor_Access;
   type RemoteHighScoresSubmissionProcessor_Access_Array_Access is access all RemoteHighScoresSubmissionProcessor_Access_Array;

   type RemoteHighScoresSubmissionProcessor is new RemoteHighScoresSubmissionProcessorInterface with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      noCrypt : NoCrypt_Access;
   end record;

   procedure Initialize (This : in out RemoteHighScoresSubmissionProcessor'Class);
   function Create return RemoteHighScoresSubmissionProcessor_Access;
   procedure process (This : in out RemoteHighScoresSubmissionProcessor; remoteHighScores_Param : access RemoteHighScores'Class; abeClientInformation_Param : access AbeClientInformationInterface'Class; highScore_Param : access HighScore'Class);

end org.allbinary.game.score.remote.RemoteHighScoresSubmissionProcessor_Package;


