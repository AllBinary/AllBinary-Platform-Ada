--  Generated Code Do Not Modify

limited with org.allbinary.game.score.BasicHighScoresFactory_Package;
package org.allbinary.game.score.BasicHighScoresFactory_Package_References is
   type BasicHighScoresFactory_Access is access all org.allbinary.game.score.BasicHighScoresFactory_Package.BasicHighScoresFactory'Class;
   type BasicHighScoresFactory_Access_Array is array (Natural range <>) of BasicHighScoresFactory_Access;
   type BasicHighScoresFactory_Access_Array_Access is access all BasicHighScoresFactory_Access_Array;
   type BasicHighScoresFactory_Access_Array_Access_Array is array (Natural range <>) of BasicHighScoresFactory_Access_Array_Access;
   type BasicHighScoresFactory_Access_Array_Access_Array_Access is access all BasicHighScoresFactory_Access_Array_Access_Array;
end org.allbinary.game.score.BasicHighScoresFactory_Package_References;

with org.allbinary.game.score.BasicHighScoresFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.GameInfo_Package;
with org.allbinary.game.GameInfo_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.logic.system.SoftwareInformation_Package;
with org.allbinary.logic.system.SoftwareInformation_Package_References;
limited with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References;
with org.allbinary.game.score.HighScoresBase_Package; use org.allbinary.game.score.HighScoresBase_Package;
limited with org.allbinary.game.score.HighScores_Package;
with org.allbinary.game.score.HighScores_Package_References;
limited with org.allbinary.game.score.HighScoresResultsListener_Package;
with org.allbinary.game.score.HighScoresResultsListener_Package_References;
limited with org.allbinary.game.score.HighScoresHelperBaseInterface_Package;
with org.allbinary.game.score.HighScoresHelperBaseInterface_Package_References;

package org.allbinary.game.score.BasicHighScoresFactory_Package is

   package GameInfo_Package renames Standard.org.allbinary.game.GameInfo_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package SoftwareInformation_Package renames Standard.org.allbinary.logic.system.SoftwareInformation_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package Reference_Types is
   subtype GameInfo_Access is org.allbinary.game.GameInfo_Package_References.GameInfo_Access;
   use type GameInfo_Access;
   subtype GameInfo_Access_Array is org.allbinary.game.GameInfo_Package_References.GameInfo_Access_Array;
   use type GameInfo_Access_Array;
   subtype GameInfo_Access_Array_Access is org.allbinary.game.GameInfo_Package_References.GameInfo_Access_Array_Access;
   use type GameInfo_Access_Array_Access;
   subtype GameInfo_Access_Array_Access_Array is org.allbinary.game.GameInfo_Package_References.GameInfo_Access_Array_Access_Array;
   use type GameInfo_Access_Array_Access_Array;
   subtype GameInfo_Access_Array_Access_Array_Access is org.allbinary.game.GameInfo_Package_References.GameInfo_Access_Array_Access_Array_Access;
   use type GameInfo_Access_Array_Access_Array_Access;
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
   subtype SoftwareInformation_Access is org.allbinary.logic.system.SoftwareInformation_Package_References.SoftwareInformation_Access;
   use type SoftwareInformation_Access;
   subtype SoftwareInformation_Access_Array is org.allbinary.logic.system.SoftwareInformation_Package_References.SoftwareInformation_Access_Array;
   use type SoftwareInformation_Access_Array;
   subtype SoftwareInformation_Access_Array_Access is org.allbinary.logic.system.SoftwareInformation_Package_References.SoftwareInformation_Access_Array_Access;
   use type SoftwareInformation_Access_Array_Access;
   subtype SoftwareInformation_Access_Array_Access_Array is org.allbinary.logic.system.SoftwareInformation_Package_References.SoftwareInformation_Access_Array_Access_Array;
   use type SoftwareInformation_Access_Array_Access_Array;
   subtype SoftwareInformation_Access_Array_Access_Array_Access is org.allbinary.logic.system.SoftwareInformation_Package_References.SoftwareInformation_Access_Array_Access_Array_Access;
   use type SoftwareInformation_Access_Array_Access_Array_Access;
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
   subtype HighScores_Access is org.allbinary.game.score.HighScores_Package_References.HighScores_Access;
   use type HighScores_Access;
   subtype HighScores_Access_Array is org.allbinary.game.score.HighScores_Package_References.HighScores_Access_Array;
   use type HighScores_Access_Array;
   subtype HighScores_Access_Array_Access is org.allbinary.game.score.HighScores_Package_References.HighScores_Access_Array_Access;
   use type HighScores_Access_Array_Access;
   subtype HighScores_Access_Array_Access_Array is org.allbinary.game.score.HighScores_Package_References.HighScores_Access_Array_Access_Array;
   use type HighScores_Access_Array_Access_Array;
   subtype HighScores_Access_Array_Access_Array_Access is org.allbinary.game.score.HighScores_Package_References.HighScores_Access_Array_Access_Array_Access;
   use type HighScores_Access_Array_Access_Array_Access;
   subtype HighScoresResultsListener_Access is org.allbinary.game.score.HighScoresResultsListener_Package_References.HighScoresResultsListener_Access;
   use type HighScoresResultsListener_Access;
   subtype HighScoresResultsListener_Access_Array is org.allbinary.game.score.HighScoresResultsListener_Package_References.HighScoresResultsListener_Access_Array;
   use type HighScoresResultsListener_Access_Array;
   subtype HighScoresResultsListener_Access_Array_Access is org.allbinary.game.score.HighScoresResultsListener_Package_References.HighScoresResultsListener_Access_Array_Access;
   use type HighScoresResultsListener_Access_Array_Access;
   subtype HighScoresResultsListener_Access_Array_Access_Array is org.allbinary.game.score.HighScoresResultsListener_Package_References.HighScoresResultsListener_Access_Array_Access_Array;
   use type HighScoresResultsListener_Access_Array_Access_Array;
   subtype HighScoresResultsListener_Access_Array_Access_Array_Access is org.allbinary.game.score.HighScoresResultsListener_Package_References.HighScoresResultsListener_Access_Array_Access_Array_Access;
   use type HighScoresResultsListener_Access_Array_Access_Array_Access;
   subtype HighScoresHelperBaseInterface_Access is org.allbinary.game.score.HighScoresHelperBaseInterface_Package_References.HighScoresHelperBaseInterface_Access;
   use type HighScoresHelperBaseInterface_Access;
   subtype HighScoresHelperBaseInterface_Access_Array is org.allbinary.game.score.HighScoresHelperBaseInterface_Package_References.HighScoresHelperBaseInterface_Access_Array;
   use type HighScoresHelperBaseInterface_Access_Array;
   subtype HighScoresHelperBaseInterface_Access_Array_Access is org.allbinary.game.score.HighScoresHelperBaseInterface_Package_References.HighScoresHelperBaseInterface_Access_Array_Access;
   use type HighScoresHelperBaseInterface_Access_Array_Access;
   subtype HighScoresHelperBaseInterface_Access_Array_Access_Array is org.allbinary.game.score.HighScoresHelperBaseInterface_Package_References.HighScoresHelperBaseInterface_Access_Array_Access_Array;
   use type HighScoresHelperBaseInterface_Access_Array_Access_Array;
   subtype HighScoresHelperBaseInterface_Access_Array_Access_Array_Access is org.allbinary.game.score.HighScoresHelperBaseInterface_Package_References.HighScoresHelperBaseInterface_Access_Array_Access_Array_Access;
   use type HighScoresHelperBaseInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype BasicHighScoresFactory_Access is org.allbinary.game.score.BasicHighScoresFactory_Package_References.BasicHighScoresFactory_Access;
   function "=" (Left, Right : BasicHighScoresFactory_Access) return Boolean renames org.allbinary.game.score.BasicHighScoresFactory_Package_References."=";
   subtype BasicHighScoresFactory_Access_Array is org.allbinary.game.score.BasicHighScoresFactory_Package_References.BasicHighScoresFactory_Access_Array;
   function "=" (Left, Right : BasicHighScoresFactory_Access_Array) return Boolean renames org.allbinary.game.score.BasicHighScoresFactory_Package_References."=";
   subtype BasicHighScoresFactory_Access_Array_Access is org.allbinary.game.score.BasicHighScoresFactory_Package_References.BasicHighScoresFactory_Access_Array_Access;
   function "=" (Left, Right : BasicHighScoresFactory_Access_Array_Access) return Boolean renames org.allbinary.game.score.BasicHighScoresFactory_Package_References."=";
   subtype BasicHighScoresFactory_Access_Array_Access_Array is org.allbinary.game.score.BasicHighScoresFactory_Package_References.BasicHighScoresFactory_Access_Array_Access_Array;
   function "=" (Left, Right : BasicHighScoresFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.score.BasicHighScoresFactory_Package_References."=";
   subtype BasicHighScoresFactory_Access_Array_Access_Array_Access is org.allbinary.game.score.BasicHighScoresFactory_Package_References.BasicHighScoresFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicHighScoresFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.score.BasicHighScoresFactory_Package_References."=";

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


