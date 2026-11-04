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

limited with org.allbinary.logic.system.security.licensing.registration.LicenseRegistrationUtil_Package;
package org.allbinary.logic.system.security.licensing.registration.LicenseRegistrationUtil_Package_References is
   type LicenseRegistrationUtil_Access is access all org.allbinary.logic.system.security.licensing.registration.LicenseRegistrationUtil_Package.LicenseRegistrationUtil'Class;
   type LicenseRegistrationUtil_Access_Array is array (Natural range <>) of LicenseRegistrationUtil_Access;
   type LicenseRegistrationUtil_Access_Array_Access is access all LicenseRegistrationUtil_Access_Array;
   type LicenseRegistrationUtil_Access_Array_Access_Array is array (Natural range <>) of LicenseRegistrationUtil_Access_Array_Access;
   type LicenseRegistrationUtil_Access_Array_Access_Array_Access is access all LicenseRegistrationUtil_Access_Array_Access_Array;
end org.allbinary.logic.system.security.licensing.registration.LicenseRegistrationUtil_Package_References;

with org.allbinary.logic.system.security.licensing.registration.LicenseRegistrationUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References;

package org.allbinary.logic.system.security.licensing.registration.LicenseRegistrationUtil_Package is

   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package Reference_Types is
   subtype AbeClientInformationInterface_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access;
   use type AbeClientInformationInterface_Access;
   subtype AbeClientInformationInterface_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array;
   use type AbeClientInformationInterface_Access_Array;
   subtype AbeClientInformationInterface_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access;
   use type AbeClientInformationInterface_Access_Array_Access;
   subtype AbeClientInformationInterface_Access_Array_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access_Array;
   use type AbeClientInformationInterface_Access_Array_Access_Array;
   subtype AbeClientInformationInterface_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access_Array_Access;
   use type AbeClientInformationInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype LicenseRegistrationUtil_Access is org.allbinary.logic.system.security.licensing.registration.LicenseRegistrationUtil_Package_References.LicenseRegistrationUtil_Access;
   function "=" (Left, Right : LicenseRegistrationUtil_Access) return Boolean renames org.allbinary.logic.system.security.licensing.registration.LicenseRegistrationUtil_Package_References."=";
   subtype LicenseRegistrationUtil_Access_Array is org.allbinary.logic.system.security.licensing.registration.LicenseRegistrationUtil_Package_References.LicenseRegistrationUtil_Access_Array;
   function "=" (Left, Right : LicenseRegistrationUtil_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.registration.LicenseRegistrationUtil_Package_References."=";
   subtype LicenseRegistrationUtil_Access_Array_Access is org.allbinary.logic.system.security.licensing.registration.LicenseRegistrationUtil_Package_References.LicenseRegistrationUtil_Access_Array_Access;
   function "=" (Left, Right : LicenseRegistrationUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.registration.LicenseRegistrationUtil_Package_References."=";
   subtype LicenseRegistrationUtil_Access_Array_Access_Array is org.allbinary.logic.system.security.licensing.registration.LicenseRegistrationUtil_Package_References.LicenseRegistrationUtil_Access_Array_Access_Array;
   function "=" (Left, Right : LicenseRegistrationUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.registration.LicenseRegistrationUtil_Package_References."=";
   subtype LicenseRegistrationUtil_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.licensing.registration.LicenseRegistrationUtil_Package_References.LicenseRegistrationUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LicenseRegistrationUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.registration.LicenseRegistrationUtil_Package_References."=";

   type LicenseRegistrationUtil is new Java_Object with null record;

   procedure Initialize (This : in out LicenseRegistrationUtil'Class);
   function Create return LicenseRegistrationUtil_Access;
   procedure process (abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; registrationId : Unbounded_String);

end org.allbinary.logic.system.security.licensing.registration.LicenseRegistrationUtil_Package;


