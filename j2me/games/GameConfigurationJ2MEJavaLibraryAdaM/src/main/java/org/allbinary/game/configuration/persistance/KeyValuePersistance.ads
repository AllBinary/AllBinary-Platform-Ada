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
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;
with org.allbinary.game.configuration.persistance.BasicPersitance_Package; use org.allbinary.game.configuration.persistance.BasicPersitance_Package;

package org.allbinary.game.configuration.persistance.KeyValuePersistance_Package is

   package TsUtil_Package renames Standard.org.allbinary.TsUtil_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;

   type KeyValuePersistance is tagged;
   type KeyValuePersistance_Access is access all KeyValuePersistance'Class;
   type KeyValuePersistance_Access_Array is array (Natural range <>) of KeyValuePersistance_Access;
   type KeyValuePersistance_Access_Array_Access is access all KeyValuePersistance_Access_Array;
   type KeyValuePersistance_Access_Array_Access_Array is array (Natural range <>) of KeyValuePersistance_Access_Array_Access;
   type KeyValuePersistance_Access_Array_Access_Array_Access is access all KeyValuePersistance_Access_Array_Access_Array;

   type KeyValuePersistance is new BasicPersitance with record
      tsUtil : TsUtil_Access;
   end record;

   procedure Initialize (This : in out KeyValuePersistance'Class; recordId : Unbounded_String);
   function Create (recordId : Unbounded_String) return KeyValuePersistance_Access;
   procedure loadAll (This : in out KeyValuePersistance; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class);
   procedure loadAllSize (This : in out KeyValuePersistance; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; size : Integer);
   procedure save (This : in out KeyValuePersistance; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; hashtable_Param : access ABHashtable_Package.ABHashtable'Class);
   function get (This : in out KeyValuePersistance; index : Integer) return ABHashtable_Access;
   procedure get (This : in out KeyValuePersistance; index : Integer);

end org.allbinary.game.configuration.persistance.KeyValuePersistance_Package;


