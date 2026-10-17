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

package org.allbinary.logic.system.security.licensing.LicenseType_Package is


   type LicenseType is tagged;
   type LicenseType_Access is access all LicenseType'Class;
   type LicenseType_Access_Array is array (Natural range <>) of LicenseType_Access;
   type LicenseType_Access_Array_Access is access all LicenseType_Access_Array;

   type LicenseType is new Java_Object with record
      name : Unbounded_String;
   end record;

   procedure Initialize (This : in out LicenseType'Class; name : Unbounded_String);
   function Create (name : Unbounded_String) return LicenseType_Access;
   procedure setName (This : in out LicenseType; name : Unbounded_String);
   function getName (This : in out LicenseType) return Unbounded_String;
   procedure getName (This : in out LicenseType);

end org.allbinary.logic.system.security.licensing.LicenseType_Package;


