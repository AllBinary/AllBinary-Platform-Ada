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
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.logic.system.security.licensing.AbeLicenseInterface_Package; use org.allbinary.logic.system.security.licensing.AbeLicenseInterface_Package;
with org.allbinary.logic.system.security.licensing.LicenseType_Package; use org.allbinary.logic.system.security.licensing.LicenseType_Package;

package org.allbinary.logic.system.security.licensing.AbeClientLicense_Package is

   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;

   type AbeClientLicense is tagged;
   type AbeClientLicense_Access is access all AbeClientLicense'Class;
   type AbeClientLicense_Access_Array is array (Natural range <>) of AbeClientLicense_Access;
   type AbeClientLicense_Access_Array_Access is access all AbeClientLicense_Access_Array;
   type AbeClientLicense_Access_Array_Access_Array is array (Natural range <>) of AbeClientLicense_Access_Array_Access;
   type AbeClientLicense_Access_Array_Access_Array_Access is access all AbeClientLicense_Access_Array_Access_Array;

   type AbeClientLicense is new Java_Object and AbeLicenseInterface with record
      hashtable : ABHashtable_Access;
      id : Unbounded_String;
      servers : BasicArrayList_Access;
      special : Unbounded_String;
      licenseType : LicenseType_Access;
   end record;

   procedure Initialize (This : in out AbeClientLicense'Class; hashtable_Param : access ABHashtable_Package.ABHashtable'Class);
   function Create (hashtable_Param : access ABHashtable_Package.ABHashtable'Class) return AbeClientLicense_Access;
   function hasRequiredKeys (resultHashtable_Param : access ABHashtable_Package.ABHashtable'Class) return Boolean;
   procedure hasRequiredKeys (resultHashtable_Param : access ABHashtable_Package.ABHashtable'Class);
   function hasKey (This : in out AbeClientLicense) return Boolean;
   function getKey (This : in out AbeClientLicense; keyName : Unbounded_String) return Unbounded_String;
   procedure getKey (This : in out AbeClientLicense; keyName : Unbounded_String);
   function getLicenseId (This : in out AbeClientLicense) return Unbounded_String;
   function getServers (This : in out AbeClientLicense) return BasicArrayList_Access;
   function isValid (This : in out AbeClientLicense) return Boolean;
   function toString (This : in out AbeClientLicense) return Unbounded_String;
   procedure setSpecial (This : in out AbeClientLicense; special : Unbounded_String);
   function getSpecial (This : in out AbeClientLicense) return Unbounded_String;
   function getLicenseType (This : in out AbeClientLicense) return LicenseType_Access;

end org.allbinary.logic.system.security.licensing.AbeClientLicense_Package;


