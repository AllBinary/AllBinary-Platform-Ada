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
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.logic.system.security.licensing.AbeLicenseInterface_Package; use org.allbinary.logic.system.security.licensing.AbeLicenseInterface_Package;

package org.allbinary.logic.system.security.licensing.AbeNoLicense_Package is

   package StringUtil_Package renames org.allbinary.logic.string_Id.StringUtil_Package;
   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames org.allbinary.util.BasicArrayListD_Package;

   type AbeNoLicense is tagged;
   type AbeNoLicense_Access is access all AbeNoLicense'Class;
   type AbeNoLicense_Access_Array is array (Natural range <>) of AbeNoLicense_Access;
   type AbeNoLicense_Access_Array_Access is access all AbeNoLicense_Access_Array;

   type AbeNoLicense is new AbeLicenseInterface with record
      serverVector : BasicArrayList_Access;
   end record;
   abeNoLicense : AbeNoLicense_Access;

   procedure Initialize (This : in out AbeNoLicense'Class);
   function Create return AbeNoLicense_Access;
   function getInstance return AbeNoLicense_Access;
   procedure getInstance;
   function hasKey (This : in out AbeNoLicense) return Boolean;
   procedure hasKey (This : in out AbeNoLicense);
   function getKey (This : in out AbeNoLicense; keyName : Unbounded_String) return Unbounded_String;
   procedure getKey (This : in out AbeNoLicense; keyName : Unbounded_String);
   function getLicenseId (This : in out AbeNoLicense) return Unbounded_String;
   procedure getLicenseId (This : in out AbeNoLicense);
   function getSpecial (This : in out AbeNoLicense) return Unbounded_String;
   procedure getSpecial (This : in out AbeNoLicense);
   function getServers (This : in out AbeNoLicense) return BasicArrayList_Access;
   procedure getServers (This : in out AbeNoLicense);
   function isValid (This : in out AbeNoLicense) return Boolean;
   procedure isValid (This : in out AbeNoLicense);
   function getLicenseType (This : in out AbeNoLicense) return LicenseType_Access;
   procedure getLicenseType (This : in out AbeNoLicense);

end org.allbinary.logic.system.security.licensing.AbeNoLicense_Package;


