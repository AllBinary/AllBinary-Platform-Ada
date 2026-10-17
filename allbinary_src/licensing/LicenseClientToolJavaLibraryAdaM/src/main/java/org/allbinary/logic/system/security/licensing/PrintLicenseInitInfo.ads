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
with org.allbinary.business.init.LicenseInitInfoUtil_Package; use org.allbinary.business.init.LicenseInitInfoUtil_Package;
with org.allbinary.logic.io.file.FileFactory_Package; use org.allbinary.logic.io.file.FileFactory_Package;
with org.allbinary.globals.PATH_GLOBALS_Package; use org.allbinary.globals.PATH_GLOBALS_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;

package org.allbinary.logic.system.security.licensing.PrintLicenseInitInfo_Package is

   package LicenseInitInfo_Package renames Standard.org.allbinary.business.init.LicenseInitInfo_Package;
   package LicenseInitInfoUtil_Package renames Standard.org.allbinary.business.init.LicenseInitInfoUtil_Package;
   package FileFactory_Package renames Standard.org.allbinary.logic.io.file.FileFactory_Package;
   package PATH_GLOBALS_Package renames Standard.org.allbinary.globals.PATH_GLOBALS_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;

   type PrintLicenseInitInfo is tagged;
   type PrintLicenseInitInfo_Access is access all PrintLicenseInitInfo'Class;
   type PrintLicenseInitInfo_Access_Array is array (Natural range <>) of PrintLicenseInitInfo_Access;
   type PrintLicenseInitInfo_Access_Array_Access is access all PrintLicenseInitInfo_Access_Array;

   type PrintLicenseInitInfo is new Java_Object with null record;
   PATH : Unbounded_String;

   procedure Initialize (This : in out PrintLicenseInitInfo'Class; options : Unbounded_String_Array_Access);
   function Create (options : Unbounded_String_Array_Access) return PrintLicenseInitInfo_Access;
   function getLicenseInitInfo (This : in out PrintLicenseInitInfo) return LicenseInitInfo_Access;
   procedure getLicenseInitInfo (This : in out PrintLicenseInitInfo);
   procedure printInitInfo (This : in out PrintLicenseInitInfo);
   procedure main (args : Unbounded_String_Array_Access);

end org.allbinary.logic.system.security.licensing.PrintLicenseInitInfo_Package;


