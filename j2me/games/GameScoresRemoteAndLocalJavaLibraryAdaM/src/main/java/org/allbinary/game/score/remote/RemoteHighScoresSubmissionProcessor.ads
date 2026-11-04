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

limited with org.allbinary.game.score.remote.RemoteHighScoresSubmissionProcessor_Package;
package org.allbinary.game.score.remote.RemoteHighScoresSubmissionProcessor_Package_References is
   type RemoteHighScoresSubmissionProcessor_Access is access all org.allbinary.game.score.remote.RemoteHighScoresSubmissionProcessor_Package.RemoteHighScoresSubmissionProcessor'Class;
   type RemoteHighScoresSubmissionProcessor_Access_Array is array (Natural range <>) of RemoteHighScoresSubmissionProcessor_Access;
   type RemoteHighScoresSubmissionProcessor_Access_Array_Access is access all RemoteHighScoresSubmissionProcessor_Access_Array;
   type RemoteHighScoresSubmissionProcessor_Access_Array_Access_Array is array (Natural range <>) of RemoteHighScoresSubmissionProcessor_Access_Array_Access;
   type RemoteHighScoresSubmissionProcessor_Access_Array_Access_Array_Access is access all RemoteHighScoresSubmissionProcessor_Access_Array_Access_Array;
end org.allbinary.game.score.remote.RemoteHighScoresSubmissionProcessor_Package_References;

with org.allbinary.game.score.remote.RemoteHighScoresSubmissionProcessor_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.score.HighScore_Package;
with org.allbinary.game.score.HighScore_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.logic.system.security.crypt.jcehelper.NoCrypt_Package;
with org.allbinary.logic.system.security.crypt.jcehelper.NoCrypt_Package_References;
limited with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with org.allbinary.game.score.remote.RemoteHighScoresSubmissionProcessorInterface_Package; use org.allbinary.game.score.remote.RemoteHighScoresSubmissionProcessorInterface_Package;
limited with org.allbinary.game.score.remote.RemoteHighScores_Package;
with org.allbinary.game.score.remote.RemoteHighScores_Package_References;

package org.allbinary.game.score.remote.RemoteHighScoresSubmissionProcessor_Package is

   package HighScore_Package renames Standard.org.allbinary.game.score.HighScore_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package NoCrypt_Package renames Standard.org.allbinary.logic.system.security.crypt.jcehelper.NoCrypt_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Reference_Types is
   subtype HighScore_Access is org.allbinary.game.score.HighScore_Package_References.HighScore_Access;
   use type HighScore_Access;
   subtype HighScore_Access_Array is org.allbinary.game.score.HighScore_Package_References.HighScore_Access_Array;
   use type HighScore_Access_Array;
   subtype HighScore_Access_Array_Access is org.allbinary.game.score.HighScore_Package_References.HighScore_Access_Array_Access;
   use type HighScore_Access_Array_Access;
   subtype HighScore_Access_Array_Access_Array is org.allbinary.game.score.HighScore_Package_References.HighScore_Access_Array_Access_Array;
   use type HighScore_Access_Array_Access_Array;
   subtype HighScore_Access_Array_Access_Array_Access is org.allbinary.game.score.HighScore_Package_References.HighScore_Access_Array_Access_Array_Access;
   use type HighScore_Access_Array_Access_Array_Access;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype NoCrypt_Access is org.allbinary.logic.system.security.crypt.jcehelper.NoCrypt_Package_References.NoCrypt_Access;
   use type NoCrypt_Access;
   subtype NoCrypt_Access_Array is org.allbinary.logic.system.security.crypt.jcehelper.NoCrypt_Package_References.NoCrypt_Access_Array;
   use type NoCrypt_Access_Array;
   subtype NoCrypt_Access_Array_Access is org.allbinary.logic.system.security.crypt.jcehelper.NoCrypt_Package_References.NoCrypt_Access_Array_Access;
   use type NoCrypt_Access_Array_Access;
   subtype NoCrypt_Access_Array_Access_Array is org.allbinary.logic.system.security.crypt.jcehelper.NoCrypt_Package_References.NoCrypt_Access_Array_Access_Array;
   use type NoCrypt_Access_Array_Access_Array;
   subtype NoCrypt_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.crypt.jcehelper.NoCrypt_Package_References.NoCrypt_Access_Array_Access_Array_Access;
   use type NoCrypt_Access_Array_Access_Array_Access;
   subtype AbeClientInformationInterface_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access;
   use type AbeClientInformationInterface_Access;
   subtype AbeClientInformationInterface_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array;
   use type AbeClientInformationInterface_Access_Array;
   subtype AbeClientInformationInterface_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access;
   use type AbeClientInformationInterface_Access_Array_Access;
   subtype AbeClientInformationInterface_Access_Array_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access_Array;
   use type AbeClientInformationInterface_Access_Array_Access_Array;
   subtype AbeClientInformationInterface_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access_Array_Access;
   use type AbeClientInformationInterface_Access_Array_Access_Array_Access;
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
   subtype RemoteHighScores_Access is org.allbinary.game.score.remote.RemoteHighScores_Package_References.RemoteHighScores_Access;
   use type RemoteHighScores_Access;
   subtype RemoteHighScores_Access_Array is org.allbinary.game.score.remote.RemoteHighScores_Package_References.RemoteHighScores_Access_Array;
   use type RemoteHighScores_Access_Array;
   subtype RemoteHighScores_Access_Array_Access is org.allbinary.game.score.remote.RemoteHighScores_Package_References.RemoteHighScores_Access_Array_Access;
   use type RemoteHighScores_Access_Array_Access;
   subtype RemoteHighScores_Access_Array_Access_Array is org.allbinary.game.score.remote.RemoteHighScores_Package_References.RemoteHighScores_Access_Array_Access_Array;
   use type RemoteHighScores_Access_Array_Access_Array;
   subtype RemoteHighScores_Access_Array_Access_Array_Access is org.allbinary.game.score.remote.RemoteHighScores_Package_References.RemoteHighScores_Access_Array_Access_Array_Access;
   use type RemoteHighScores_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype RemoteHighScoresSubmissionProcessor_Access is org.allbinary.game.score.remote.RemoteHighScoresSubmissionProcessor_Package_References.RemoteHighScoresSubmissionProcessor_Access;
   function "=" (Left, Right : RemoteHighScoresSubmissionProcessor_Access) return Boolean renames org.allbinary.game.score.remote.RemoteHighScoresSubmissionProcessor_Package_References."=";
   subtype RemoteHighScoresSubmissionProcessor_Access_Array is org.allbinary.game.score.remote.RemoteHighScoresSubmissionProcessor_Package_References.RemoteHighScoresSubmissionProcessor_Access_Array;
   function "=" (Left, Right : RemoteHighScoresSubmissionProcessor_Access_Array) return Boolean renames org.allbinary.game.score.remote.RemoteHighScoresSubmissionProcessor_Package_References."=";
   subtype RemoteHighScoresSubmissionProcessor_Access_Array_Access is org.allbinary.game.score.remote.RemoteHighScoresSubmissionProcessor_Package_References.RemoteHighScoresSubmissionProcessor_Access_Array_Access;
   function "=" (Left, Right : RemoteHighScoresSubmissionProcessor_Access_Array_Access) return Boolean renames org.allbinary.game.score.remote.RemoteHighScoresSubmissionProcessor_Package_References."=";
   subtype RemoteHighScoresSubmissionProcessor_Access_Array_Access_Array is org.allbinary.game.score.remote.RemoteHighScoresSubmissionProcessor_Package_References.RemoteHighScoresSubmissionProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : RemoteHighScoresSubmissionProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.game.score.remote.RemoteHighScoresSubmissionProcessor_Package_References."=";
   subtype RemoteHighScoresSubmissionProcessor_Access_Array_Access_Array_Access is org.allbinary.game.score.remote.RemoteHighScoresSubmissionProcessor_Package_References.RemoteHighScoresSubmissionProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RemoteHighScoresSubmissionProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.score.remote.RemoteHighScoresSubmissionProcessor_Package_References."=";

   type RemoteHighScoresSubmissionProcessor is new Java_Object and RemoteHighScoresSubmissionProcessorInterface with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      noCrypt : NoCrypt_Access;
   end record;

   procedure Initialize (This : in out RemoteHighScoresSubmissionProcessor'Class);
   function Create return RemoteHighScoresSubmissionProcessor_Access;
   procedure process (This : in out RemoteHighScoresSubmissionProcessor; remoteHighScores_Param : access RemoteHighScores_Package.RemoteHighScores'Class; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; highScore_Param : access HighScore_Package.HighScore'Class);

end org.allbinary.game.score.remote.RemoteHighScoresSubmissionProcessor_Package;


