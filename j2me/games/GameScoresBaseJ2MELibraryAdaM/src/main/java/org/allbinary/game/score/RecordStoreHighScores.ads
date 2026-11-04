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

limited with org.allbinary.game.score.RecordStoreHighScores_Package;
package org.allbinary.game.score.RecordStoreHighScores_Package_References is
   type RecordStoreHighScores_Access is access all org.allbinary.game.score.RecordStoreHighScores_Package.RecordStoreHighScores'Class;
   type RecordStoreHighScores_Access_Array is array (Natural range <>) of RecordStoreHighScores_Access;
   type RecordStoreHighScores_Access_Array_Access is access all RecordStoreHighScores_Access_Array;
   type RecordStoreHighScores_Access_Array_Access_Array is array (Natural range <>) of RecordStoreHighScores_Access_Array_Access;
   type RecordStoreHighScores_Access_Array_Access_Array_Access is access all RecordStoreHighScores_Access_Array_Access_Array;
end org.allbinary.game.score.RecordStoreHighScores_Package_References;

with org.allbinary.game.score.RecordStoreHighScores_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.io.ByteArrayInputStream_Package; use java.io.ByteArrayInputStream_Package;
--  with java.io.EOFException_Package; use java.io.EOFException_Package;
--  with java.io.IOException_Package; use java.io.IOException_Package;
limited with javax.microedition.rms.RecordComparator_Package;
with javax.microedition.rms.RecordComparator_Package_References;
limited with org.allbinary.TsUtil_Package;
with org.allbinary.TsUtil_Package_References;
limited with org.allbinary.game.GameInfo_Package;
with org.allbinary.game.GameInfo_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References;
limited with org.allbinary.persistance.PlatformRecordIdUtil_Package;
with org.allbinary.persistance.PlatformRecordIdUtil_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
limited with org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABHashtable_Package_References;
with org.allbinary.game.score.HighScores_Package; use org.allbinary.game.score.HighScores_Package;
limited with org.allbinary.game.score.HighScore_Package;
with org.allbinary.game.score.HighScore_Package_References;

package org.allbinary.game.score.RecordStoreHighScores_Package is

   package RecordComparator_Package renames Standard.javax.microedition.rms.RecordComparator_Package;
   package TsUtil_Package renames Standard.org.allbinary.TsUtil_Package;
   package GameInfo_Package renames Standard.org.allbinary.game.GameInfo_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package PlatformRecordIdUtil_Package renames Standard.org.allbinary.persistance.PlatformRecordIdUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;
   package Reference_Types is
   subtype RecordComparator_Access is javax.microedition.rms.RecordComparator_Package_References.RecordComparator_Access;
   use type RecordComparator_Access;
   subtype RecordComparator_Access_Array is javax.microedition.rms.RecordComparator_Package_References.RecordComparator_Access_Array;
   use type RecordComparator_Access_Array;
   subtype RecordComparator_Access_Array_Access is javax.microedition.rms.RecordComparator_Package_References.RecordComparator_Access_Array_Access;
   use type RecordComparator_Access_Array_Access;
   subtype RecordComparator_Access_Array_Access_Array is javax.microedition.rms.RecordComparator_Package_References.RecordComparator_Access_Array_Access_Array;
   use type RecordComparator_Access_Array_Access_Array;
   subtype RecordComparator_Access_Array_Access_Array_Access is javax.microedition.rms.RecordComparator_Package_References.RecordComparator_Access_Array_Access_Array_Access;
   use type RecordComparator_Access_Array_Access_Array_Access;
   subtype TsUtil_Access is org.allbinary.TsUtil_Package_References.TsUtil_Access;
   use type TsUtil_Access;
   subtype TsUtil_Access_Array is org.allbinary.TsUtil_Package_References.TsUtil_Access_Array;
   use type TsUtil_Access_Array;
   subtype TsUtil_Access_Array_Access is org.allbinary.TsUtil_Package_References.TsUtil_Access_Array_Access;
   use type TsUtil_Access_Array_Access;
   subtype TsUtil_Access_Array_Access_Array is org.allbinary.TsUtil_Package_References.TsUtil_Access_Array_Access_Array;
   use type TsUtil_Access_Array_Access_Array;
   subtype TsUtil_Access_Array_Access_Array_Access is org.allbinary.TsUtil_Package_References.TsUtil_Access_Array_Access_Array_Access;
   use type TsUtil_Access_Array_Access_Array_Access;
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
   subtype PlatformRecordIdUtil_Access is org.allbinary.persistance.PlatformRecordIdUtil_Package_References.PlatformRecordIdUtil_Access;
   use type PlatformRecordIdUtil_Access;
   subtype PlatformRecordIdUtil_Access_Array is org.allbinary.persistance.PlatformRecordIdUtil_Package_References.PlatformRecordIdUtil_Access_Array;
   use type PlatformRecordIdUtil_Access_Array;
   subtype PlatformRecordIdUtil_Access_Array_Access is org.allbinary.persistance.PlatformRecordIdUtil_Package_References.PlatformRecordIdUtil_Access_Array_Access;
   use type PlatformRecordIdUtil_Access_Array_Access;
   subtype PlatformRecordIdUtil_Access_Array_Access_Array is org.allbinary.persistance.PlatformRecordIdUtil_Package_References.PlatformRecordIdUtil_Access_Array_Access_Array;
   use type PlatformRecordIdUtil_Access_Array_Access_Array;
   subtype PlatformRecordIdUtil_Access_Array_Access_Array_Access is org.allbinary.persistance.PlatformRecordIdUtil_Package_References.PlatformRecordIdUtil_Access_Array_Access_Array_Access;
   use type PlatformRecordIdUtil_Access_Array_Access_Array_Access;
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
   subtype ABHashtable_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access;
   use type ABHashtable_Access;
   subtype ABHashtable_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array;
   use type ABHashtable_Access_Array;
   subtype ABHashtable_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access;
   use type ABHashtable_Access_Array_Access;
   subtype ABHashtable_Access_Array_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array;
   use type ABHashtable_Access_Array_Access_Array;
   subtype ABHashtable_Access_Array_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array_Access;
   use type ABHashtable_Access_Array_Access_Array_Access;
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
   end Reference_Types;
   use Reference_Types;


   subtype RecordStoreHighScores_Access is org.allbinary.game.score.RecordStoreHighScores_Package_References.RecordStoreHighScores_Access;
   function "=" (Left, Right : RecordStoreHighScores_Access) return Boolean renames org.allbinary.game.score.RecordStoreHighScores_Package_References."=";
   subtype RecordStoreHighScores_Access_Array is org.allbinary.game.score.RecordStoreHighScores_Package_References.RecordStoreHighScores_Access_Array;
   function "=" (Left, Right : RecordStoreHighScores_Access_Array) return Boolean renames org.allbinary.game.score.RecordStoreHighScores_Package_References."=";
   subtype RecordStoreHighScores_Access_Array_Access is org.allbinary.game.score.RecordStoreHighScores_Package_References.RecordStoreHighScores_Access_Array_Access;
   function "=" (Left, Right : RecordStoreHighScores_Access_Array_Access) return Boolean renames org.allbinary.game.score.RecordStoreHighScores_Package_References."=";
   subtype RecordStoreHighScores_Access_Array_Access_Array is org.allbinary.game.score.RecordStoreHighScores_Package_References.RecordStoreHighScores_Access_Array_Access_Array;
   function "=" (Left, Right : RecordStoreHighScores_Access_Array_Access_Array) return Boolean renames org.allbinary.game.score.RecordStoreHighScores_Package_References."=";
   subtype RecordStoreHighScores_Access_Array_Access_Array_Access is org.allbinary.game.score.RecordStoreHighScores_Package_References.RecordStoreHighScores_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RecordStoreHighScores_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.score.RecordStoreHighScores_Package_References."=";

   type RecordStoreHighScores is new HighScores with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      platformRecordIdUtil : PlatformRecordIdUtil_Access;
      tsUtil : TsUtil_Access;
      RECORD_ID : Unbounded_String;
      MAXHIGHSCORES : Integer;
      gameInfo : GameInfo_Access;
      abeClientInformation : AbeClientInformationInterface_Access;
      recordComparatorInterface : RecordComparator_Access;
   end record;
   hashTable : ABHashtable_Access;

   procedure Initialize (This : in out RecordStoreHighScores'Class; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; gameInfo_Param : access GameInfo_Package.GameInfo'Class; name : Unbounded_String; heading : Unbounded_String; columnTwoHeading : Unbounded_String; recordComparatorInterface_Param : access RecordComparator_Package.RecordComparator'Class);
   function Create (abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; gameInfo_Param : access GameInfo_Package.GameInfo'Class; name : Unbounded_String; heading : Unbounded_String; columnTwoHeading : Unbounded_String; recordComparatorInterface_Param : access RecordComparator_Package.RecordComparator'Class) return RecordStoreHighScores_Access;
   function getInstance (abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; gameInfo_Param : access GameInfo_Package.GameInfo'Class; highScoreName : Unbounded_String; heading : Unbounded_String; columnTwoHeading : Unbounded_String; recordComparatorInterface_Param : access RecordComparator_Package.RecordComparator'Class) return HighScores_Access;
   procedure getInstance (abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; gameInfo_Param : access GameInfo_Package.GameInfo'Class; highScoreName : Unbounded_String; heading : Unbounded_String; columnTwoHeading : Unbounded_String; recordComparatorInterface_Param : access RecordComparator_Package.RecordComparator'Class);
   function getRecordId (This : in out RecordStoreHighScores; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class) return Unbounded_String;
   procedure getRecordId (This : in out RecordStoreHighScores; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class);
   procedure addHighScore (This : in out RecordStoreHighScores; newHighScore_Param : access HighScore_Package.HighScore'Class);
   procedure removeLowestHighScore (This : in out RecordStoreHighScores);
   procedure load (This : in out RecordStoreHighScores);
   function isTooManyHighScores (This : in out RecordStoreHighScores) return Boolean;
   function isBestScore (This : in out RecordStoreHighScores; newHighScore_Param : access HighScore_Package.HighScore'Class) return Boolean;
   procedure isBestScore (This : in out RecordStoreHighScores; newHighScore_Param : access HighScore_Package.HighScore'Class);
   function toString (This : in out RecordStoreHighScores) return Unbounded_String;

end org.allbinary.game.score.RecordStoreHighScores_Package;


