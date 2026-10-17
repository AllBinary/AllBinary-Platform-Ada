--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.GameInfo_Package; use org.allbinary.game.GameInfo_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.system.SoftwareInformation_Package; use org.allbinary.logic.system.SoftwareInformation_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.game.score.HighScoresBase_Package; use org.allbinary.game.score.HighScoresBase_Package;
with org.allbinary.game.score.HighScores_Package; use org.allbinary.game.score.HighScores_Package;
with org.allbinary.game.score.HighScoresResultsListener_Package; use org.allbinary.game.score.HighScoresResultsListener_Package;
with org.allbinary.game.score.RecordStoreHighScores_Package; use org.allbinary.game.score.RecordStoreHighScores_Package;
with org.allbinary.game.score.ScoreComparator_Package; use org.allbinary.game.score.ScoreComparator_Package;
with org.allbinary.game.score.HighScoresHelper2_Package; use org.allbinary.game.score.HighScoresHelper2_Package;
with org.allbinary.game.score.HighScoresHelperBaseInterface_Package; use org.allbinary.game.score.HighScoresHelperBaseInterface_Package;

package org.allbinary.game.score.BasicHighScoresFactory_Package is

   package GameInfo_Package renames Standard.org.allbinary.game.GameInfo_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package SoftwareInformation_Package renames Standard.org.allbinary.logic.system.SoftwareInformation_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;

   type BasicHighScoresFactory is tagged;
   type BasicHighScoresFactory_Access is access all BasicHighScoresFactory'Class;
   type BasicHighScoresFactory_Access_Array is array (Natural range <>) of BasicHighScoresFactory_Access;
   type BasicHighScoresFactory_Access_Array_Access is access all BasicHighScoresFactory_Access_Array;

   type BasicHighScoresFactory is new HighScoresBase with record
      logUtil : LogUtil_Access;
      abeClientInformation : AbeClientInformationInterface_Access;
      highScoresArray : HighScores_Access_Array_Access;
      TOP : Unbounded_String;
      SCORES : Unbounded_String;
      PERSONAL_HIGH_SCORES : Unbounded_String;
      FETCH : Unbounded_String;
   end record;

   procedure Initialize (This : in out BasicHighScoresFactory'Class; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; softwareInformation_Param : access SoftwareInformation_Package.SoftwareInformation'Class);
   function Create (abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; softwareInformation_Param : access SoftwareInformation_Package.SoftwareInformation'Class) return BasicHighScoresFactory_Access;
   procedure fetchHighScores (This : in out BasicHighScoresFactory; gameInfo_Param : access GameInfo_Package.GameInfo'Class; highScoresResultsListener_Param : access HighScoresResultsListener_Package.HighScoresResultsListener'Class);
   procedure fetchHighScoresPreload (This : in out BasicHighScoresFactory; gameInfo_Param : access GameInfo_Package.GameInfo'Class; highScoresResultsListener_Param : access HighScoresResultsListener_Package.HighScoresResultsListener'Class; preload : Boolean);
   function createHighScoresHelper (This : in out BasicHighScoresFactory) return HighScoresHelperBaseInterface_Access;
   function loaded (index2 : Integer) return Boolean;
   procedure loaded (index2 : Integer);

end org.allbinary.game.score.BasicHighScoresFactory_Package;


