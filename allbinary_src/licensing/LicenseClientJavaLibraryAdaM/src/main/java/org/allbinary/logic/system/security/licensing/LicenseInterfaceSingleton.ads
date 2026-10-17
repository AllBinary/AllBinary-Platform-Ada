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
with org.allbinary.logic.system.security.licensing.AbeNoLicense_Package; use org.allbinary.logic.system.security.licensing.AbeNoLicense_Package;
with org.allbinary.logic.system.security.licensing.AbeLicenseInterface_Package; use org.allbinary.logic.system.security.licensing.AbeLicenseInterface_Package;

package org.allbinary.logic.system.security.licensing.LicenseInterfaceSingleton_Package is


   type LicenseInterfaceSingleton is tagged;
   type LicenseInterfaceSingleton_Access is access all LicenseInterfaceSingleton'Class;
   type LicenseInterfaceSingleton_Access_Array is array (Natural range <>) of LicenseInterfaceSingleton_Access;
   type LicenseInterfaceSingleton_Access_Array_Access is access all LicenseInterfaceSingleton_Access_Array;

   type LicenseInterfaceSingleton is new Java_Object with null record;
   licenseInterface : AbeLicenseInterface_Access;

   procedure Initialize (This : in out LicenseInterfaceSingleton'Class);
   function Create return LicenseInterfaceSingleton_Access;
   function getInstance return AbeLicenseInterface_Access;
   procedure init (licenseInterface_Param : access AbeLicenseInterface_Package.AbeLicenseInterface'Class);

end org.allbinary.logic.system.security.licensing.LicenseInterfaceSingleton_Package;


