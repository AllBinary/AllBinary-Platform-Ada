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
with org.allbinary.TsUtil_Package; use org.allbinary.TsUtil_Package;
with org.allbinary.game.GameInfo_Package; use org.allbinary.game.GameInfo_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.persistance.PlatformRecordIdUtil_Package; use org.allbinary.persistance.PlatformRecordIdUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;

package org.allbinary.game.score.HighScoreNamePersistanceSingleton_Package is

   package TsUtil_Package renames Standard.org.allbinary.TsUtil_Package;
   package GameInfo_Package renames Standard.org.allbinary.game.GameInfo_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package PlatformRecordIdUtil_Package renames Standard.org.allbinary.persistance.PlatformRecordIdUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;

   type HighScoreNamePersistanceSingleton is tagged;
   type HighScoreNamePersistanceSingleton_Access is access all HighScoreNamePersistanceSingleton'Class;
   type HighScoreNamePersistanceSingleton_Access_Array is array (Natural range <>) of HighScoreNamePersistanceSingleton_Access;
   type HighScoreNamePersistanceSingleton_Access_Array_Access is access all HighScoreNamePersistanceSingleton_Access_Array;
   type HighScoreNamePersistanceSingleton_Access_Array_Access_Array is array (Natural range <>) of HighScoreNamePersistanceSingleton_Access_Array_Access;
   type HighScoreNamePersistanceSingleton_Access_Array_Access_Array_Access is access all HighScoreNamePersistanceSingleton_Access_Array_Access_Array;

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
   procedure clear (This : in out HighScoreNamePersistanceSingleton);
   procedure deleteAll (This : in out HighScoreNamePersistanceSingleton; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; gameInfo_Param : access GameInfo_Package.GameInfo'Class);
   function getRecordId (This : in out HighScoreNamePersistanceSingleton; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class) return Unbounded_String;
   procedure getRecordId (This : in out HighScoreNamePersistanceSingleton; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class);
   procedure delete (This : in out HighScoreNamePersistanceSingleton; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; gameInfo_Param : access GameInfo_Package.GameInfo'Class; deleteId : Integer);
   function getIds (This : in out HighScoreNamePersistanceSingleton) return BasicArrayList_Access;
   function load (This : in out HighScoreNamePersistanceSingleton; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; gameInfo_Param : access GameInfo_Package.GameInfo'Class) return Unbounded_String;
   procedure load (This : in out HighScoreNamePersistanceSingleton; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; gameInfo_Param : access GameInfo_Package.GameInfo'Class);
   procedure save (This : in out HighScoreNamePersistanceSingleton; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; gameInfo_Param : access GameInfo_Package.GameInfo'Class; name : Unbounded_String);

end org.allbinary.game.score.HighScoreNamePersistanceSingleton_Package;


