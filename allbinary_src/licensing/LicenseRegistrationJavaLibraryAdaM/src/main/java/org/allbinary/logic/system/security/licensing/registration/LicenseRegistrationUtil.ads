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
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;

package org.allbinary.logic.system.security.licensing.registration.LicenseRegistrationUtil_Package is

   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;

   type LicenseRegistrationUtil is tagged;
   type LicenseRegistrationUtil_Access is access all LicenseRegistrationUtil'Class;
   type LicenseRegistrationUtil_Access_Array is array (Natural range <>) of LicenseRegistrationUtil_Access;
   type LicenseRegistrationUtil_Access_Array_Access is access all LicenseRegistrationUtil_Access_Array;
   type LicenseRegistrationUtil_Access_Array_Access_Array is array (Natural range <>) of LicenseRegistrationUtil_Access_Array_Access;
   type LicenseRegistrationUtil_Access_Array_Access_Array_Access is access all LicenseRegistrationUtil_Access_Array_Access_Array;

   type LicenseRegistrationUtil is new Java_Object with null record;

   procedure Initialize (This : in out LicenseRegistrationUtil'Class);
   function Create return LicenseRegistrationUtil_Access;
   procedure process (abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; registrationId : Unbounded_String);

end org.allbinary.logic.system.security.licensing.registration.LicenseRegistrationUtil_Package;


