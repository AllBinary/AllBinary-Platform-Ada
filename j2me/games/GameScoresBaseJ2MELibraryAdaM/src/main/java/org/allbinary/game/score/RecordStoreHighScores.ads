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
--  with java.io.ByteArrayInputStream_Package; use java.io.ByteArrayInputStream_Package;
--  with java.io.DataInputStream_Package; use java.io.DataInputStream_Package;
--  with java.io.EOFException_Package; use java.io.EOFException_Package;
--  with java.io.IOException_Package; use java.io.IOException_Package;
--  with javax.microedition.rms.RecordComparator_Package; use javax.microedition.rms.RecordComparator_Package;
--  with javax.microedition.rms.RecordEnumeration_Package; use javax.microedition.rms.RecordEnumeration_Package;
--  with javax.microedition.rms.RecordStore_Package; use javax.microedition.rms.RecordStore_Package;
--  with javax.microedition.rms.RecordStoreException_Package; use javax.microedition.rms.RecordStoreException_Package;
--  with javax.microedition.rms.RecordStoreNotFoundException_Package; use javax.microedition.rms.RecordStoreNotFoundException_Package;
with org.allbinary.TsUtil_Package; use org.allbinary.TsUtil_Package;
with org.allbinary.game.GameInfo_Package; use org.allbinary.game.GameInfo_Package;
with org.allbinary.game.configuration.persistance.NullRecordComparator_Package; use org.allbinary.game.configuration.persistance.NullRecordComparator_Package;
with org.allbinary.game.configuration.persistance.NullRecordFilter_Package; use org.allbinary.game.configuration.persistance.NullRecordFilter_Package;
with org.allbinary.game.configuration.persistance.NullRecordStore_Package; use org.allbinary.game.configuration.persistance.NullRecordStore_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.persistance.PlatformRecordIdUtil_Package; use org.allbinary.persistance.PlatformRecordIdUtil_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.game.score.HighScores_Package; use org.allbinary.game.score.HighScores_Package;

package org.allbinary.game.score.RecordStoreHighScores_Package is

   package TsUtil_Package renames org.allbinary.TsUtil_Package;
   package GameInfo_Package renames org.allbinary.game.GameInfo_Package;
   package NullRecordComparator_Package renames org.allbinary.game.configuration.persistance.NullRecordComparator_Package;
   package NullRecordFilter_Package renames org.allbinary.game.configuration.persistance.NullRecordFilter_Package;
   package NullRecordStore_Package renames org.allbinary.game.configuration.persistance.NullRecordStore_Package;
   package StdUtil_Package renames org.allbinary.logic.StdUtil_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package PreLogUtil_Package renames org.allbinary.logic.communication.log.PreLogUtil_Package;
   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package AbeClientInformationInterface_Package renames org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package PlatformRecordIdUtil_Package renames org.allbinary.persistance.PlatformRecordIdUtil_Package;
   package CommonSeps_Package renames org.allbinary.string_Id.CommonSeps_Package;
   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;
   package ABHashtable_Package renames org.allbinary.util.ABHashtable_Package;
   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames org.allbinary.util.BasicArrayListD_Package;

   type RecordStoreHighScores is tagged;
   type RecordStoreHighScores_Access is access all RecordStoreHighScores'Class;
   type RecordStoreHighScores_Access_Array is array (Natural range <>) of RecordStoreHighScores_Access;
   type RecordStoreHighScores_Access_Array_Access is access all RecordStoreHighScores_Access_Array;

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

   procedure Initialize (This : in out RecordStoreHighScores'Class; abeClientInformation : AbeClientInformationInterface_Access; gameInfo : GameInfo_Access; name : Unbounded_String; heading : Unbounded_String; columnTwoHeading : Unbounded_String; recordComparatorInterface : RecordComparator_Access);
   function Create (abeClientInformation : AbeClientInformationInterface_Access; gameInfo : GameInfo_Access; name : Unbounded_String; heading : Unbounded_String; columnTwoHeading : Unbounded_String; recordComparatorInterface : RecordComparator_Access) return RecordStoreHighScores_Access;
   function getInstance (abeClientInformation : AbeClientInformationInterface_Access; gameInfo : GameInfo_Access; highScoreName : Unbounded_String; heading : Unbounded_String; columnTwoHeading : Unbounded_String; recordComparatorInterface : RecordComparator_Access) return HighScores_Access;
   procedure getInstance (abeClientInformation : AbeClientInformationInterface_Access; gameInfo : GameInfo_Access; highScoreName : Unbounded_String; heading : Unbounded_String; columnTwoHeading : Unbounded_String; recordComparatorInterface : RecordComparator_Access);
   function getRecordId (This : in out RecordStoreHighScores; abeClientInformation : AbeClientInformationInterface_Access) return Unbounded_String;
   procedure getRecordId (This : in out RecordStoreHighScores; abeClientInformation : AbeClientInformationInterface_Access);
   procedure addHighScore (This : in out RecordStoreHighScores; newHighScore : HighScore_Access);
   procedure removeLowestHighScore (This : in out RecordStoreHighScores);
   procedure load (This : in out RecordStoreHighScores);
   function isTooManyHighScores (This : in out RecordStoreHighScores) return Boolean;
   procedure isTooManyHighScores (This : in out RecordStoreHighScores);
   function isBestScore (This : in out RecordStoreHighScores; newHighScore : HighScore_Access) return Boolean;
   procedure isBestScore (This : in out RecordStoreHighScores; newHighScore : HighScore_Access);
   function toString (This : in out RecordStoreHighScores) return Unbounded_String;
   procedure toString (This : in out RecordStoreHighScores);

end org.allbinary.game.score.RecordStoreHighScores_Package;


