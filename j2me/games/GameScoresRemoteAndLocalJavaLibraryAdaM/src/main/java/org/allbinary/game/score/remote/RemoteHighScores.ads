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
--  with java.util.Enumeration_Package; use java.util.Enumeration_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.game.GameInfo_Package; use org.allbinary.game.GameInfo_Package;
with org.allbinary.game.score.HighScore_Package; use org.allbinary.game.score.HighScore_Package;
with org.allbinary.game.score.HighScores_Package; use org.allbinary.game.score.HighScores_Package;
with org.allbinary.game.score.RemoteErrorHighScoresSingletonFactory_Package; use org.allbinary.game.score.RemoteErrorHighScoresSingletonFactory_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.system.SoftwareInformation_Package; use org.allbinary.logic.system.SoftwareInformation_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.EnumerationUtil_Package; use org.allbinary.util.EnumerationUtil_Package;

package org.allbinary.game.score.remote.RemoteHighScores_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package GameInfo_Package renames Standard.org.allbinary.game.GameInfo_Package;
   package HighScore_Package renames Standard.org.allbinary.game.score.HighScore_Package;
   package HighScores_Package renames Standard.org.allbinary.game.score.HighScores_Package;
   package RemoteErrorHighScoresSingletonFactory_Package renames Standard.org.allbinary.game.score.RemoteErrorHighScoresSingletonFactory_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package SoftwareInformation_Package renames Standard.org.allbinary.logic.system.SoftwareInformation_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;
   package EnumerationUtil_Package renames Standard.org.allbinary.util.EnumerationUtil_Package;

   type RemoteHighScores is tagged;
   type RemoteHighScores_Access is access all RemoteHighScores'Class;
   type RemoteHighScores_Access_Array is array (Natural range <>) of RemoteHighScores_Access;
   type RemoteHighScores_Access_Array_Access is access all RemoteHighScores_Access_Array;

   type RemoteHighScores is new HighScores with record
      logUtil : LogUtil_Access;
      enumerationUtil : EnumerationUtil_Access;
      abeClientInformation : AbeClientInformationInterface_Access;
      softwareInformation : SoftwareInformation_Access;
      ascending_Case : Boolean;
      ASCENDING : Unbounded_String;
   end record;
   hashTable : ABHashtable_Access;

   procedure Initialize (This : in out RemoteHighScores'Class; abeClientInformation : AbeClientInformationInterface_Access; softwareInformation : SoftwareInformation_Access; gameInfo : GameInfo_Access; heading : Unbounded_String; columnTwoHeading : Unbounded_String; ascending_Case : Boolean; preload : Boolean);
   function Create (abeClientInformation : AbeClientInformationInterface_Access; softwareInformation : SoftwareInformation_Access; gameInfo : GameInfo_Access; heading : Unbounded_String; columnTwoHeading : Unbounded_String; ascending_Case : Boolean; preload : Boolean) return RemoteHighScores_Access;
   function getInstance (abeClientInformation : AbeClientInformationInterface_Access; softwareInformation : SoftwareInformation_Access; gameInfo : GameInfo_Access; heading : Unbounded_String; columnTwoHeading : Unbounded_String; isAscending : Boolean) return HighScores_Access;
   procedure getInstance (abeClientInformation : AbeClientInformationInterface_Access; softwareInformation : SoftwareInformation_Access; gameInfo : GameInfo_Access; heading : Unbounded_String; columnTwoHeading : Unbounded_String; isAscending : Boolean);
   function getInstancePreload (abeClientInformation : AbeClientInformationInterface_Access; softwareInformation : SoftwareInformation_Access; gameInfo : GameInfo_Access; heading : Unbounded_String; columnTwoHeading : Unbounded_String; isAscending : Boolean; preload : Boolean) return HighScores_Access;
   procedure getInstancePreload (abeClientInformation : AbeClientInformationInterface_Access; softwareInformation : SoftwareInformation_Access; gameInfo : GameInfo_Access; heading : Unbounded_String; columnTwoHeading : Unbounded_String; isAscending : Boolean; preload : Boolean);
   procedure addHighScore (This : in out RemoteHighScores; newHighScore : HighScore_Access);
   procedure update (This : in out RemoteHighScores; hashtable : ABHashtable_Access);
   procedure setAscending (This : in out RemoteHighScores; ascending_Case : Boolean);
   function getAscending (This : in out RemoteHighScores) return Boolean;
   procedure getAscending (This : in out RemoteHighScores);
   function getSoftwareInformation (This : in out RemoteHighScores) return SoftwareInformation_Access;
   procedure getSoftwareInformation (This : in out RemoteHighScores);

end org.allbinary.game.score.remote.RemoteHighScores_Package;


