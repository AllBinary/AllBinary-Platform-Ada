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
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.string_Id.StringValidationUtil_Package; use org.allbinary.logic.string_Id.StringValidationUtil_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.logic.system.security.licensing.AbeLicenseInterface_Package; use org.allbinary.logic.system.security.licensing.AbeLicenseInterface_Package;

package org.allbinary.logic.system.security.licensing.AbeClientLicense_Package is

   package StdUtil_Package renames org.allbinary.logic.StdUtil_Package;
   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames org.allbinary.logic.string_Id.StringUtil_Package;
   package StringValidationUtil_Package renames org.allbinary.logic.string_Id.StringValidationUtil_Package;
   package ABHashtable_Package renames org.allbinary.util.ABHashtable_Package;
   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames org.allbinary.util.BasicArrayListD_Package;

   type AbeClientLicense is tagged;
   type AbeClientLicense_Access is access all AbeClientLicense'Class;
   type AbeClientLicense_Access_Array is array (Natural range <>) of AbeClientLicense_Access;
   type AbeClientLicense_Access_Array_Access is access all AbeClientLicense_Access_Array;

   type AbeClientLicense is new AbeLicenseInterface with record
      hashtable : ABHashtable_Access;
      id : Unbounded_String;
      servers : BasicArrayList_Access;
      special : Unbounded_String;
      licenseType : LicenseType_Access;
   end record;

   procedure Initialize (This : in out AbeClientLicense'Class; hashtable : ABHashtable_Access);
   function Create (hashtable : ABHashtable_Access) return AbeClientLicense_Access;
   function hasRequiredKeys (resultHashtable : ABHashtable_Access) return Boolean;
   procedure hasRequiredKeys (resultHashtable : ABHashtable_Access);
   function hasKey (This : in out AbeClientLicense) return Boolean;
   procedure hasKey (This : in out AbeClientLicense);
   function getKey (This : in out AbeClientLicense; keyName : Unbounded_String) return Unbounded_String;
   procedure getKey (This : in out AbeClientLicense; keyName : Unbounded_String);
   function getLicenseId (This : in out AbeClientLicense) return Unbounded_String;
   procedure getLicenseId (This : in out AbeClientLicense);
   function getServers (This : in out AbeClientLicense) return BasicArrayList_Access;
   procedure getServers (This : in out AbeClientLicense);
   function isValid (This : in out AbeClientLicense) return Boolean;
   procedure isValid (This : in out AbeClientLicense);
   function toString (This : in out AbeClientLicense) return Unbounded_String;
   procedure toString (This : in out AbeClientLicense);
   procedure setSpecial (This : in out AbeClientLicense; special : Unbounded_String);
   function getSpecial (This : in out AbeClientLicense) return Unbounded_String;
   procedure getSpecial (This : in out AbeClientLicense);
   function getLicenseType (This : in out AbeClientLicense) return LicenseType_Access;
   procedure getLicenseType (This : in out AbeClientLicense);

end org.allbinary.logic.system.security.licensing.AbeClientLicense_Package;


