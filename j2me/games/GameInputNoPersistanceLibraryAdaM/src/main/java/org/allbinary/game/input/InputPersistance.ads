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
--  with javax.microedition.rms.RecordEnumeration_Package; use javax.microedition.rms.RecordEnumeration_Package;
--  with javax.microedition.rms.RecordStore_Package; use javax.microedition.rms.RecordStore_Package;
with org.allbinary.game.configuration.persistance.BasicPersitance_Package; use org.allbinary.game.configuration.persistance.BasicPersitance_Package;
with org.allbinary.game.configuration.persistance.NullRecordComparator_Package; use org.allbinary.game.configuration.persistance.NullRecordComparator_Package;
with org.allbinary.game.configuration.persistance.NullRecordFilter_Package; use org.allbinary.game.configuration.persistance.NullRecordFilter_Package;
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.logic.math.SmallIntegerSingletonFactory_Package; use org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.HashtableUtil_Package; use org.allbinary.util.HashtableUtil_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;

package org.allbinary.game.input.InputPersistance_Package is

   package BasicPersitance_Package renames Standard.org.allbinary.game.configuration.persistance.BasicPersitance_Package;
   package NullRecordComparator_Package renames Standard.org.allbinary.game.configuration.persistance.NullRecordComparator_Package;
   package NullRecordFilter_Package renames Standard.org.allbinary.game.configuration.persistance.NullRecordFilter_Package;
   package PreLogUtil_Package renames Standard.org.allbinary.logic.communication.log.PreLogUtil_Package;
   package SmallIntegerSingletonFactory_Package renames Standard.org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package HashtableUtil_Package renames Standard.org.allbinary.util.HashtableUtil_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;

   type InputPersistance is tagged;
   type InputPersistance_Access is access all InputPersistance'Class;
   type InputPersistance_Access_Array is array (Natural range <>) of InputPersistance_Access;
   type InputPersistance_Access_Array_Access is access all InputPersistance_Access_Array;

   type InputPersistance is new BasicPersitance with record
      hashtableUtil : HashtableUtil_Access;
   end record;

   procedure Initialize (This : in out InputPersistance'Class; name : Unbounded_String);
   function Create (name : Unbounded_String) return InputPersistance_Access;
   procedure loadAll (This : in out InputPersistance; abeClientInformation : AbeClientInformationInterface_Access);
   procedure save (This : in out InputPersistance; abeClientInformation : AbeClientInformationInterface_Access; hashtable : ABHashtable_Access);

end org.allbinary.game.input.InputPersistance_Package;


