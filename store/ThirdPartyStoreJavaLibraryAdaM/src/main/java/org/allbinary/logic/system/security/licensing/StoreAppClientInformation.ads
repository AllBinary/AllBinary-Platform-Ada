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
with org.allbinary.thirdparty.store.LongArrayIdentifierInterface_Package; use org.allbinary.thirdparty.store.LongArrayIdentifierInterface_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformation_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformation_Package;

package org.allbinary.logic.system.security.licensing.StoreAppClientInformation_Package is

   package LongArrayIdentifierInterface_Package renames Standard.org.allbinary.thirdparty.store.LongArrayIdentifierInterface_Package;

   type StoreAppClientInformation is tagged;
   type StoreAppClientInformation_Access is access all StoreAppClientInformation'Class;
   type StoreAppClientInformation_Access_Array is array (Natural range <>) of StoreAppClientInformation_Access;
   type StoreAppClientInformation_Access_Array_Access is access all StoreAppClientInformation_Access_Array;
   type StoreAppClientInformation_Access_Array_Access_Array is array (Natural range <>) of StoreAppClientInformation_Access_Array_Access;
   type StoreAppClientInformation_Access_Array_Access_Array_Access is access all StoreAppClientInformation_Access_Array_Access_Array;

   type StoreAppClientInformation is new AbeClientInformation and LongArrayIdentifierInterface with record
      longArrayIdentifier : Long_Long_Integer_Array_Access;
   end record;

   procedure Initialize (This : in out StoreAppClientInformation'Class; name : Unbounded_String; version : Unbounded_String; specialName : Unbounded_String; shortName : Unbounded_String; longArrayIdentifier : Long_Long_Integer_Array_Access);
   function Create (name : Unbounded_String; version : Unbounded_String; specialName : Unbounded_String; shortName : Unbounded_String; longArrayIdentifier : Long_Long_Integer_Array_Access) return StoreAppClientInformation_Access;
   function getLongArrayIdentifier (This : in out StoreAppClientInformation) return Long_Long_Integer_Array_Access;

end org.allbinary.logic.system.security.licensing.StoreAppClientInformation_Package;


