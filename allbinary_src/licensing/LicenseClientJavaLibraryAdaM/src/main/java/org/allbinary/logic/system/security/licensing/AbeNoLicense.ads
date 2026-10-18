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
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.logic.system.security.licensing.AbeLicenseInterface_Package; use org.allbinary.logic.system.security.licensing.AbeLicenseInterface_Package;
with org.allbinary.logic.system.security.licensing.LicenseType_Package; use org.allbinary.logic.system.security.licensing.LicenseType_Package;

package org.allbinary.logic.system.security.licensing.AbeNoLicense_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;

   type AbeNoLicense is tagged;
   type AbeNoLicense_Access is access all AbeNoLicense'Class;
   type AbeNoLicense_Access_Array is array (Natural range <>) of AbeNoLicense_Access;
   type AbeNoLicense_Access_Array_Access is access all AbeNoLicense_Access_Array;
   type AbeNoLicense_Access_Array_Access_Array is array (Natural range <>) of AbeNoLicense_Access_Array_Access;
   type AbeNoLicense_Access_Array_Access_Array_Access is access all AbeNoLicense_Access_Array_Access_Array;

   type AbeNoLicense is new Java_Object and AbeLicenseInterface with record
      serverVector : BasicArrayList_Access;
   end record;
   abeNoLicense : AbeNoLicense_Access;

   procedure Initialize (This : in out AbeNoLicense'Class);
   function Create return AbeNoLicense_Access;
   function getInstance return AbeNoLicense_Access;
   function hasKey (This : in out AbeNoLicense) return Boolean;
   function getKey (This : in out AbeNoLicense; keyName : Unbounded_String) return Unbounded_String;
   procedure getKey (This : in out AbeNoLicense; keyName : Unbounded_String);
   function getLicenseId (This : in out AbeNoLicense) return Unbounded_String;
   function getSpecial (This : in out AbeNoLicense) return Unbounded_String;
   function getServers (This : in out AbeNoLicense) return BasicArrayList_Access;
   function isValid (This : in out AbeNoLicense) return Boolean;
   function getLicenseType (This : in out AbeNoLicense) return LicenseType_Access;

end org.allbinary.logic.system.security.licensing.AbeNoLicense_Package;


