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
--  with java.io.BufferedReader_Package; use java.io.BufferedReader_Package;
--  with java.io.InputStreamReader_Package; use java.io.InputStreamReader_Package;
with org.allbinary.business.init.LicenseInitInfo_Package; use org.allbinary.business.init.LicenseInitInfo_Package;
with org.allbinary.business.init.LicenseInitInfoUtil_Package; use org.allbinary.business.init.LicenseInitInfoUtil_Package;
with org.allbinary.logic.io.file.FileFactory_Package; use org.allbinary.logic.io.file.FileFactory_Package;
with org.allbinary.globals.PATH_GLOBALS_Package; use org.allbinary.globals.PATH_GLOBALS_Package;
--  with java.io.File_Package; use java.io.File_Package;
--  with java.io.FileReader_Package; use java.io.FileReader_Package;
--  with java.io.LineNumberReader_Package; use java.io.LineNumberReader_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;

package org.allbinary.logic.system.security.licensing.SetLicenseInitInfo_Package is

   package LicenseInitInfo_Package renames org.allbinary.business.init.LicenseInitInfo_Package;
   package LicenseInitInfoUtil_Package renames org.allbinary.business.init.LicenseInitInfoUtil_Package;
   package FileFactory_Package renames org.allbinary.logic.io.file.FileFactory_Package;
   package PATH_GLOBALS_Package renames org.allbinary.globals.PATH_GLOBALS_Package;
   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;

   type SetLicenseInitInfo is tagged;
   type SetLicenseInitInfo_Access is access all SetLicenseInitInfo'Class;
   type SetLicenseInitInfo_Access_Array is array (Natural range <>) of SetLicenseInitInfo_Access;
   type SetLicenseInitInfo_Access_Array_Access is access all SetLicenseInitInfo_Access_Array;

   type SetLicenseInitInfo is new Java_Object with record
      vector : BasicArrayList_Access;
   end record;
   stdinput : BufferedReader_Access;

   procedure Initialize (This : in out SetLicenseInitInfo'Class; options : Unbounded_String_Array_Access);
   function Create (options : Unbounded_String_Array_Access) return SetLicenseInitInfo_Access;
   function getLicenseInitInfo (This : in out SetLicenseInitInfo) return LicenseInitInfo_Access;
   procedure getLicenseInitInfo (This : in out SetLicenseInitInfo);
   procedure createNewLicenseInitInfo (This : in out SetLicenseInitInfo; licenceServerVector : BasicArrayList_Access);
   procedure main (args : Unbounded_String_Array_Access);

end org.allbinary.logic.system.security.licensing.SetLicenseInitInfo_Package;


