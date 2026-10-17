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
with org.allbinary.business.init.LicenseInitInfoUtil_Package; use org.allbinary.business.init.LicenseInitInfoUtil_Package;
with org.allbinary.data.resource.ResourceUtil_Package; use org.allbinary.data.resource.ResourceUtil_Package;
with org.allbinary.logic.system.security.licensing.PartnerIdentifierFileUtil_Package; use org.allbinary.logic.system.security.licensing.PartnerIdentifierFileUtil_Package;
with org.allbinary.AndroidResources_Package; use org.allbinary.AndroidResources_Package;

package org.allbinary.AllBinaryAndroidGameInitializationUtil_Package is

   package LicenseInitInfoUtil_Package renames Standard.org.allbinary.business.init.LicenseInitInfoUtil_Package;
   package ResourceUtil_Package renames Standard.org.allbinary.data.resource.ResourceUtil_Package;
   package PartnerIdentifierFileUtil_Package renames Standard.org.allbinary.logic.system.security.licensing.PartnerIdentifierFileUtil_Package;

   type AllBinaryAndroidGameInitializationUtil is tagged;
   type AllBinaryAndroidGameInitializationUtil_Access is access all AllBinaryAndroidGameInitializationUtil'Class;
   type AllBinaryAndroidGameInitializationUtil_Access_Array is array (Natural range <>) of AllBinaryAndroidGameInitializationUtil_Access;
   type AllBinaryAndroidGameInitializationUtil_Access_Array_Access is access all AllBinaryAndroidGameInitializationUtil_Access_Array;

   type AllBinaryAndroidGameInitializationUtil is new Java_Object with null record;

   procedure Initialize (This : in out AllBinaryAndroidGameInitializationUtil'Class);
   function Create return AllBinaryAndroidGameInitializationUtil_Access;
   procedure init;

end org.allbinary.AllBinaryAndroidGameInitializationUtil_Package;


