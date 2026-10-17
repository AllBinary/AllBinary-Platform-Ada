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
--  with javax.microedition.rms.RecordStore_Package; use javax.microedition.rms.RecordStore_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.persistance.PlatformRecordIdUtil_Package; use org.allbinary.persistance.PlatformRecordIdUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.game.configuration.persistance.PersistanceStrings_Package; use org.allbinary.game.configuration.persistance.PersistanceStrings_Package;
with org.allbinary.game.configuration.persistance.NullRecordStore_Package; use org.allbinary.game.configuration.persistance.NullRecordStore_Package;

package org.allbinary.game.configuration.persistance.BasicPersitance_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package PreLogUtil_Package renames Standard.org.allbinary.logic.communication.log.PreLogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package PlatformRecordIdUtil_Package renames Standard.org.allbinary.persistance.PlatformRecordIdUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;

   type BasicPersitance is tagged;
   type BasicPersitance_Access is access all BasicPersitance'Class;
   type BasicPersitance_Access_Array is array (Natural range <>) of BasicPersitance_Access;
   type BasicPersitance_Access_Array_Access is access all BasicPersitance_Access_Array;

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
   procedure deleteRecoreStore (This : in out BasicPersitance; abeClientInformation_Param : access AbeClientInformationInterface'Class);
   procedure deleteAll (This : in out BasicPersitance; abeClientInformation_Param : access AbeClientInformationInterface'Class);
   procedure delete (This : in out BasicPersitance; abeClientInformation_Param : access AbeClientInformationInterface'Class; deleteId : Integer);
   function getRecordId (This : in out BasicPersitance; abeClientInformation_Param : access AbeClientInformationInterface'Class) return Unbounded_String;
   procedure getRecordId (This : in out BasicPersitance; abeClientInformation_Param : access AbeClientInformationInterface'Class);
   function getList (This : in out BasicPersitance) return BasicArrayList_Access;
   function getIds (This : in out BasicPersitance) return BasicArrayList_Access;
   procedure clear (This : in out BasicPersitance);

end org.allbinary.game.configuration.persistance.BasicPersitance_Package;


