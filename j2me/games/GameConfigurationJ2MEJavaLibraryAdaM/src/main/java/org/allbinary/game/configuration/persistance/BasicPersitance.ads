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

limited with org.allbinary.game.configuration.persistance.BasicPersitance_Package;
package org.allbinary.game.configuration.persistance.BasicPersitance_Package_References is
   type BasicPersitance_Access is access all org.allbinary.game.configuration.persistance.BasicPersitance_Package.BasicPersitance'Class;
   type BasicPersitance_Access_Array is array (Natural range <>) of BasicPersitance_Access;
   type BasicPersitance_Access_Array_Access is access all BasicPersitance_Access_Array;
   type BasicPersitance_Access_Array_Access_Array is array (Natural range <>) of BasicPersitance_Access_Array_Access;
   type BasicPersitance_Access_Array_Access_Array_Access is access all BasicPersitance_Access_Array_Access_Array;
end org.allbinary.game.configuration.persistance.BasicPersitance_Package_References;

with org.allbinary.game.configuration.persistance.BasicPersitance_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
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
limited with org.allbinary.game.configuration.persistance.PersistanceStrings_Package;
with org.allbinary.game.configuration.persistance.PersistanceStrings_Package_References;

package org.allbinary.game.configuration.persistance.BasicPersitance_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package PlatformRecordIdUtil_Package renames Standard.org.allbinary.persistance.PlatformRecordIdUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Reference_Types is
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
   subtype PersistanceStrings_Access is org.allbinary.game.configuration.persistance.PersistanceStrings_Package_References.PersistanceStrings_Access;
   use type PersistanceStrings_Access;
   subtype PersistanceStrings_Access_Array is org.allbinary.game.configuration.persistance.PersistanceStrings_Package_References.PersistanceStrings_Access_Array;
   use type PersistanceStrings_Access_Array;
   subtype PersistanceStrings_Access_Array_Access is org.allbinary.game.configuration.persistance.PersistanceStrings_Package_References.PersistanceStrings_Access_Array_Access;
   use type PersistanceStrings_Access_Array_Access;
   subtype PersistanceStrings_Access_Array_Access_Array is org.allbinary.game.configuration.persistance.PersistanceStrings_Package_References.PersistanceStrings_Access_Array_Access_Array;
   use type PersistanceStrings_Access_Array_Access_Array;
   subtype PersistanceStrings_Access_Array_Access_Array_Access is org.allbinary.game.configuration.persistance.PersistanceStrings_Package_References.PersistanceStrings_Access_Array_Access_Array_Access;
   use type PersistanceStrings_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype BasicPersitance_Access is org.allbinary.game.configuration.persistance.BasicPersitance_Package_References.BasicPersitance_Access;
   function "=" (Left, Right : BasicPersitance_Access) return Boolean renames org.allbinary.game.configuration.persistance.BasicPersitance_Package_References."=";
   subtype BasicPersitance_Access_Array is org.allbinary.game.configuration.persistance.BasicPersitance_Package_References.BasicPersitance_Access_Array;
   function "=" (Left, Right : BasicPersitance_Access_Array) return Boolean renames org.allbinary.game.configuration.persistance.BasicPersitance_Package_References."=";
   subtype BasicPersitance_Access_Array_Access is org.allbinary.game.configuration.persistance.BasicPersitance_Package_References.BasicPersitance_Access_Array_Access;
   function "=" (Left, Right : BasicPersitance_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.persistance.BasicPersitance_Package_References."=";
   subtype BasicPersitance_Access_Array_Access_Array is org.allbinary.game.configuration.persistance.BasicPersitance_Package_References.BasicPersitance_Access_Array_Access_Array;
   function "=" (Left, Right : BasicPersitance_Access_Array_Access_Array) return Boolean renames org.allbinary.game.configuration.persistance.BasicPersitance_Package_References."=";
   subtype BasicPersitance_Access_Array_Access_Array_Access is org.allbinary.game.configuration.persistance.BasicPersitance_Package_References.BasicPersitance_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicPersitance_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.persistance.BasicPersitance_Package_References."=";

   type BasicPersitance is new Java_Object with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      persistanceStrings : PersistanceStrings_Access;
      platformRecordIdUtil : PlatformRecordIdUtil_Access;
      recordId : Unbounded_String;
      valueList : BasicArrayList_Access;
      idList : BasicArrayList_Access;
   end record;

   procedure Initialize (This : in out BasicPersitance'Class; recordId : Unbounded_String);
   function Create (recordId : Unbounded_String) return BasicPersitance_Access;
   procedure deleteRecoreStore (This : in out BasicPersitance; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class);
   procedure deleteAll (This : in out BasicPersitance; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class);
   procedure delete (This : in out BasicPersitance; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; deleteId : Integer);
   function getRecordId (This : in out BasicPersitance; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class) return Unbounded_String;
   procedure getRecordId (This : in out BasicPersitance; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class);
   function getList (This : in out BasicPersitance) return BasicArrayList_Access;
   function getIds (This : in out BasicPersitance) return BasicArrayList_Access;
   procedure clear (This : in out BasicPersitance);

end org.allbinary.game.configuration.persistance.BasicPersitance_Package;


