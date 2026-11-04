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

limited with org.allbinary.game.score.remote.RemoteHighScores_Package;
package org.allbinary.game.score.remote.RemoteHighScores_Package_References is
   type RemoteHighScores_Access is access all org.allbinary.game.score.remote.RemoteHighScores_Package.RemoteHighScores'Class;
   type RemoteHighScores_Access_Array is array (Natural range <>) of RemoteHighScores_Access;
   type RemoteHighScores_Access_Array_Access is access all RemoteHighScores_Access_Array;
   type RemoteHighScores_Access_Array_Access_Array is array (Natural range <>) of RemoteHighScores_Access_Array_Access;
   type RemoteHighScores_Access_Array_Access_Array_Access is access all RemoteHighScores_Access_Array_Access_Array;
end org.allbinary.game.score.remote.RemoteHighScores_Package_References;

with org.allbinary.game.score.remote.RemoteHighScores_Package_References;
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
limited with org.allbinary.game.score.HighScore_Package;
with org.allbinary.game.score.HighScore_Package_References;
with org.allbinary.game.score.HighScores_Package; use org.allbinary.game.score.HighScores_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.logic.system.SoftwareInformation_Package;
with org.allbinary.logic.system.SoftwareInformation_Package_References;
limited with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References;
limited with org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABHashtable_Package_References;
limited with org.allbinary.util.EnumerationUtil_Package;
with org.allbinary.util.EnumerationUtil_Package_References;

package org.allbinary.game.score.remote.RemoteHighScores_Package is

   package GameInfo_Package renames Standard.org.allbinary.game.GameInfo_Package;
   package HighScore_Package renames Standard.org.allbinary.game.score.HighScore_Package;
   package HighScores_Package renames Standard.org.allbinary.game.score.HighScores_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package SoftwareInformation_Package renames Standard.org.allbinary.logic.system.SoftwareInformation_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;
   package EnumerationUtil_Package renames Standard.org.allbinary.util.EnumerationUtil_Package;
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
   subtype EnumerationUtil_Access is org.allbinary.util.EnumerationUtil_Package_References.EnumerationUtil_Access;
   use type EnumerationUtil_Access;
   subtype EnumerationUtil_Access_Array is org.allbinary.util.EnumerationUtil_Package_References.EnumerationUtil_Access_Array;
   use type EnumerationUtil_Access_Array;
   subtype EnumerationUtil_Access_Array_Access is org.allbinary.util.EnumerationUtil_Package_References.EnumerationUtil_Access_Array_Access;
   use type EnumerationUtil_Access_Array_Access;
   subtype EnumerationUtil_Access_Array_Access_Array is org.allbinary.util.EnumerationUtil_Package_References.EnumerationUtil_Access_Array_Access_Array;
   use type EnumerationUtil_Access_Array_Access_Array;
   subtype EnumerationUtil_Access_Array_Access_Array_Access is org.allbinary.util.EnumerationUtil_Package_References.EnumerationUtil_Access_Array_Access_Array_Access;
   use type EnumerationUtil_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


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

   type RemoteHighScores is new HighScores with record
      logUtil : LogUtil_Access;
      enumerationUtil : EnumerationUtil_Access;
      abeClientInformation : AbeClientInformationInterface_Access;
      softwareInformation : SoftwareInformation_Access;
      ascending_Case : Boolean;
      ASCENDING : Unbounded_String;
   end record;
   hashTable : ABHashtable_Access;

   procedure Initialize (This : in out RemoteHighScores'Class; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; softwareInformation_Param : access SoftwareInformation_Package.SoftwareInformation'Class; gameInfo_Param : access GameInfo_Package.GameInfo'Class; heading : Unbounded_String; columnTwoHeading : Unbounded_String; ascending : Boolean; preload : Boolean);
   function Create (abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; softwareInformation_Param : access SoftwareInformation_Package.SoftwareInformation'Class; gameInfo_Param : access GameInfo_Package.GameInfo'Class; heading : Unbounded_String; columnTwoHeading : Unbounded_String; ascending : Boolean; preload : Boolean) return RemoteHighScores_Access;
   function getInstance (abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; softwareInformation_Param : access SoftwareInformation_Package.SoftwareInformation'Class; gameInfo_Param : access GameInfo_Package.GameInfo'Class; heading : Unbounded_String; columnTwoHeading : Unbounded_String; isAscending : Boolean) return HighScores_Access;
   procedure getInstance (abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; softwareInformation_Param : access SoftwareInformation_Package.SoftwareInformation'Class; gameInfo_Param : access GameInfo_Package.GameInfo'Class; heading : Unbounded_String; columnTwoHeading : Unbounded_String; isAscending : Boolean);
   function getInstancePreload (abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; softwareInformation_Param : access SoftwareInformation_Package.SoftwareInformation'Class; gameInfo_Param : access GameInfo_Package.GameInfo'Class; heading : Unbounded_String; columnTwoHeading : Unbounded_String; isAscending : Boolean; preload : Boolean) return HighScores_Access;
   procedure getInstancePreload (abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; softwareInformation_Param : access SoftwareInformation_Package.SoftwareInformation'Class; gameInfo_Param : access GameInfo_Package.GameInfo'Class; heading : Unbounded_String; columnTwoHeading : Unbounded_String; isAscending : Boolean; preload : Boolean);
   procedure addHighScore (This : in out RemoteHighScores; newHighScore_Param : access HighScore_Package.HighScore'Class);
   procedure update (This : in out RemoteHighScores; hashtable_Param : access ABHashtable_Package.ABHashtable'Class);
   procedure setAscending (This : in out RemoteHighScores; ascending : Boolean);
   function getAscending (This : in out RemoteHighScores) return Boolean;
   function getSoftwareInformation (This : in out RemoteHighScores) return SoftwareInformation_Access;

end org.allbinary.game.score.remote.RemoteHighScores_Package;


