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
--  with java.io.ByteArrayOutputStream_Package; use java.io.ByteArrayOutputStream_Package;
--  with java.io.DataInputStream_Package; use java.io.DataInputStream_Package;
--  with java.io.DataOutputStream_Package; use java.io.DataOutputStream_Package;
--  with javax.microedition.rms.RecordEnumeration_Package; use javax.microedition.rms.RecordEnumeration_Package;
--  with javax.microedition.rms.RecordStore_Package; use javax.microedition.rms.RecordStore_Package;
--  with javax.microedition.rms.RecordStoreException_Package; use javax.microedition.rms.RecordStoreException_Package;
with org.allbinary.TsUtil_Package; use org.allbinary.TsUtil_Package;
with org.allbinary.game.GameInfo_Package; use org.allbinary.game.GameInfo_Package;
with org.allbinary.game.configuration.persistance.NullRecordComparator_Package; use org.allbinary.game.configuration.persistance.NullRecordComparator_Package;
with org.allbinary.game.configuration.persistance.NullRecordFilter_Package; use org.allbinary.game.configuration.persistance.NullRecordFilter_Package;
with org.allbinary.game.configuration.persistance.NullRecordStore_Package; use org.allbinary.game.configuration.persistance.NullRecordStore_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package; use org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.logic.math.SmallIntegerSingletonFactory_Package; use org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.persistance.PlatformRecordIdUtil_Package; use org.allbinary.persistance.PlatformRecordIdUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;

package org.allbinary.game.score.HighScoreNamePersistanceSingleton_Package is

   package TsUtil_Package renames org.allbinary.TsUtil_Package;
   package GameInfo_Package renames org.allbinary.game.GameInfo_Package;
   package NullRecordComparator_Package renames org.allbinary.game.configuration.persistance.NullRecordComparator_Package;
   package NullRecordFilter_Package renames org.allbinary.game.configuration.persistance.NullRecordFilter_Package;
   package NullRecordStore_Package renames org.allbinary.game.configuration.persistance.NullRecordStore_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package PreLogUtil_Package renames org.allbinary.logic.communication.log.PreLogUtil_Package;
   package ExceptionUtil_Package renames org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
   package SmallIntegerSingletonFactory_Package renames org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames org.allbinary.logic.string_Id.StringUtil_Package;
   package AbeClientInformationInterface_Package renames org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package PlatformRecordIdUtil_Package renames org.allbinary.persistance.PlatformRecordIdUtil_Package;
   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;
   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames org.allbinary.util.BasicArrayListD_Package;

   type HighScoreNamePersistanceSingleton is tagged;
   type HighScoreNamePersistanceSingleton_Access is access all HighScoreNamePersistanceSingleton'Class;
   type HighScoreNamePersistanceSingleton_Access_Array is array (Natural range <>) of HighScoreNamePersistanceSingleton_Access;
   type HighScoreNamePersistanceSingleton_Access_Array_Access is access all HighScoreNamePersistanceSingleton_Access_Array;

   type HighScoreNamePersistanceSingleton is new Java_Object with record
      logUtil : LogUtil_Access;
      tsUtil : TsUtil_Access;
      commonStrings : CommonStrings_Access;
      platformRecordIdUtil : PlatformRecordIdUtil_Access;
      RECORD_ID : Unbounded_String;
      name : Unbounded_String;
      nameBasicArrayList : BasicArrayList_Access;
   end record;
   SINGLETON : HighScoreNamePersistanceSingleton_Access;

   procedure Initialize (This : in out HighScoreNamePersistanceSingleton'Class);
   function Create return HighScoreNamePersistanceSingleton_Access;
   function getInstance return HighScoreNamePersistanceSingleton_Access;
   procedure getInstance;
   procedure clear (This : in out HighScoreNamePersistanceSingleton);
   procedure deleteAll (This : in out HighScoreNamePersistanceSingleton; abeClientInformation : AbeClientInformationInterface_Access; gameInfo : GameInfo_Access);
   function getRecordId (This : in out HighScoreNamePersistanceSingleton; abeClientInformation : AbeClientInformationInterface_Access) return Unbounded_String;
   procedure getRecordId (This : in out HighScoreNamePersistanceSingleton; abeClientInformation : AbeClientInformationInterface_Access);
   procedure delete (This : in out HighScoreNamePersistanceSingleton; abeClientInformation : AbeClientInformationInterface_Access; gameInfo : GameInfo_Access; deleteId : Integer);
   function getIds (This : in out HighScoreNamePersistanceSingleton) return BasicArrayList_Access;
   procedure getIds (This : in out HighScoreNamePersistanceSingleton);
   function load (This : in out HighScoreNamePersistanceSingleton; abeClientInformation : AbeClientInformationInterface_Access; gameInfo : GameInfo_Access) return Unbounded_String;
   procedure load (This : in out HighScoreNamePersistanceSingleton; abeClientInformation : AbeClientInformationInterface_Access; gameInfo : GameInfo_Access);
   procedure save (This : in out HighScoreNamePersistanceSingleton; abeClientInformation : AbeClientInformationInterface_Access; gameInfo : GameInfo_Access; name : Unbounded_String);

end org.allbinary.game.score.HighScoreNamePersistanceSingleton_Package;


