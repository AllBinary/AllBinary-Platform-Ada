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

limited with org.allbinary.game.score.HighScoreNamePersistanceSingleton_Package;
package org.allbinary.game.score.HighScoreNamePersistanceSingleton_Package_References is
   type HighScoreNamePersistanceSingleton_Access is access all org.allbinary.game.score.HighScoreNamePersistanceSingleton_Package.HighScoreNamePersistanceSingleton'Class;
   type HighScoreNamePersistanceSingleton_Access_Array is array (Natural range <>) of HighScoreNamePersistanceSingleton_Access;
   type HighScoreNamePersistanceSingleton_Access_Array_Access is access all HighScoreNamePersistanceSingleton_Access_Array;
   type HighScoreNamePersistanceSingleton_Access_Array_Access_Array is array (Natural range <>) of HighScoreNamePersistanceSingleton_Access_Array_Access;
   type HighScoreNamePersistanceSingleton_Access_Array_Access_Array_Access is access all HighScoreNamePersistanceSingleton_Access_Array_Access_Array;
end org.allbinary.game.score.HighScoreNamePersistanceSingleton_Package_References;

with org.allbinary.game.score.HighScoreNamePersistanceSingleton_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.io.ByteArrayInputStream_Package; use java.io.ByteArrayInputStream_Package;
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
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;

package org.allbinary.game.score.HighScoreNamePersistanceSingleton_Package is

   package TsUtil_Package renames Standard.org.allbinary.TsUtil_Package;
   package GameInfo_Package renames Standard.org.allbinary.game.GameInfo_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package PlatformRecordIdUtil_Package renames Standard.org.allbinary.persistance.PlatformRecordIdUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Reference_Types is
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
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype HighScoreNamePersistanceSingleton_Access is org.allbinary.game.score.HighScoreNamePersistanceSingleton_Package_References.HighScoreNamePersistanceSingleton_Access;
   function "=" (Left, Right : HighScoreNamePersistanceSingleton_Access) return Boolean renames org.allbinary.game.score.HighScoreNamePersistanceSingleton_Package_References."=";
   subtype HighScoreNamePersistanceSingleton_Access_Array is org.allbinary.game.score.HighScoreNamePersistanceSingleton_Package_References.HighScoreNamePersistanceSingleton_Access_Array;
   function "=" (Left, Right : HighScoreNamePersistanceSingleton_Access_Array) return Boolean renames org.allbinary.game.score.HighScoreNamePersistanceSingleton_Package_References."=";
   subtype HighScoreNamePersistanceSingleton_Access_Array_Access is org.allbinary.game.score.HighScoreNamePersistanceSingleton_Package_References.HighScoreNamePersistanceSingleton_Access_Array_Access;
   function "=" (Left, Right : HighScoreNamePersistanceSingleton_Access_Array_Access) return Boolean renames org.allbinary.game.score.HighScoreNamePersistanceSingleton_Package_References."=";
   subtype HighScoreNamePersistanceSingleton_Access_Array_Access_Array is org.allbinary.game.score.HighScoreNamePersistanceSingleton_Package_References.HighScoreNamePersistanceSingleton_Access_Array_Access_Array;
   function "=" (Left, Right : HighScoreNamePersistanceSingleton_Access_Array_Access_Array) return Boolean renames org.allbinary.game.score.HighScoreNamePersistanceSingleton_Package_References."=";
   subtype HighScoreNamePersistanceSingleton_Access_Array_Access_Array_Access is org.allbinary.game.score.HighScoreNamePersistanceSingleton_Package_References.HighScoreNamePersistanceSingleton_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HighScoreNamePersistanceSingleton_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.score.HighScoreNamePersistanceSingleton_Package_References."=";

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


