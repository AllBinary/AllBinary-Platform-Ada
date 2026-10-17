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
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.canvas.SpecialMessageUtil_Package; use org.allbinary.canvas.SpecialMessageUtil_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;

package org.allbinary.logic.system.security.licensing.registration.LicenseRegistrationUtil_Package is

   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package PreLogUtil_Package renames Standard.org.allbinary.logic.communication.log.PreLogUtil_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package SpecialMessageUtil_Package renames Standard.org.allbinary.canvas.SpecialMessageUtil_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;

   type LicenseRegistrationUtil is tagged;
   type LicenseRegistrationUtil_Access is access all LicenseRegistrationUtil'Class;
   type LicenseRegistrationUtil_Access_Array is array (Natural range <>) of LicenseRegistrationUtil_Access;
   type LicenseRegistrationUtil_Access_Array_Access is access all LicenseRegistrationUtil_Access_Array;

   type LicenseRegistrationUtil is new Java_Object with null record;

   procedure Initialize (This : in out LicenseRegistrationUtil'Class);
   function Create return LicenseRegistrationUtil_Access;
   procedure process (abeClientInformation : AbeClientInformationInterface_Access; registrationId : Unbounded_String);

end org.allbinary.logic.system.security.licensing.registration.LicenseRegistrationUtil_Package;


