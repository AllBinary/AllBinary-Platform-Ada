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
with org.allbinary.business.init.LicenseInitInfo_Package; use org.allbinary.business.init.LicenseInitInfo_Package;

package org.allbinary.business.init.LicenseInitInfoUtil_Package is


   type LicenseInitInfoUtil is tagged;
   type LicenseInitInfoUtil_Access is access all LicenseInitInfoUtil'Class;
   type LicenseInitInfoUtil_Access_Array is array (Natural range <>) of LicenseInitInfoUtil_Access;
   type LicenseInitInfoUtil_Access_Array_Access is access all LicenseInitInfoUtil_Access_Array;

   type LicenseInitInfoUtil is new Java_Object with record
      INITFILENAME : Unbounded_String;
      ABOUT : Unbounded_String;
      PRIVACY_POLICY : Unbounded_String;
      OFFICIAL_ALLBINARY_SERVICES_SERVER : Unbounded_String;
   end record;
   instance : LicenseInitInfoUtil_Access;

   procedure Initialize (This : in out LicenseInitInfoUtil'Class);
   function Create return LicenseInitInfoUtil_Access;
   function getInstance return LicenseInitInfoUtil_Access;
   procedure setFilePath (This : in out LicenseInitInfoUtil; filePath : Unbounded_String);
   procedure write (This : in out LicenseInitInfoUtil; initData_Param : access LicenseInitInfo_Package.LicenseInitInfo'Class);
   function read (This : in out LicenseInitInfoUtil) return LicenseInitInfo_Access;
   function readAgain (This : in out LicenseInitInfoUtil; initializeCounter : Integer) return LicenseInitInfo_Access;
   procedure readAgain (This : in out LicenseInitInfoUtil; initializeCounter : Integer);

end org.allbinary.business.init.LicenseInitInfoUtil_Package;


