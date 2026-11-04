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

limited with org.allbinary.logic.system.security.licensing.SetLicenseInitInfo_Package;
package org.allbinary.logic.system.security.licensing.SetLicenseInitInfo_Package_References is
   type SetLicenseInitInfo_Access is access all org.allbinary.logic.system.security.licensing.SetLicenseInitInfo_Package.SetLicenseInitInfo'Class;
   type SetLicenseInitInfo_Access_Array is array (Natural range <>) of SetLicenseInitInfo_Access;
   type SetLicenseInitInfo_Access_Array_Access is access all SetLicenseInitInfo_Access_Array;
   type SetLicenseInitInfo_Access_Array_Access_Array is array (Natural range <>) of SetLicenseInitInfo_Access_Array_Access;
   type SetLicenseInitInfo_Access_Array_Access_Array_Access is access all SetLicenseInitInfo_Access_Array_Access_Array;
end org.allbinary.logic.system.security.licensing.SetLicenseInitInfo_Package_References;

with org.allbinary.logic.system.security.licensing.SetLicenseInitInfo_Package_References;
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
limited with org.allbinary.business.init.LicenseInitInfo_Package;
with org.allbinary.business.init.LicenseInitInfo_Package_References;
--  with java.io.FileReader_Package; use java.io.FileReader_Package;
--  with java.io.LineNumberReader_Package; use java.io.LineNumberReader_Package;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;

package org.allbinary.logic.system.security.licensing.SetLicenseInitInfo_Package is

   package LicenseInitInfo_Package renames Standard.org.allbinary.business.init.LicenseInitInfo_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Reference_Types is
   subtype LicenseInitInfo_Access is org.allbinary.business.init.LicenseInitInfo_Package_References.LicenseInitInfo_Access;
   use type LicenseInitInfo_Access;
   subtype LicenseInitInfo_Access_Array is org.allbinary.business.init.LicenseInitInfo_Package_References.LicenseInitInfo_Access_Array;
   use type LicenseInitInfo_Access_Array;
   subtype LicenseInitInfo_Access_Array_Access is org.allbinary.business.init.LicenseInitInfo_Package_References.LicenseInitInfo_Access_Array_Access;
   use type LicenseInitInfo_Access_Array_Access;
   subtype LicenseInitInfo_Access_Array_Access_Array is org.allbinary.business.init.LicenseInitInfo_Package_References.LicenseInitInfo_Access_Array_Access_Array;
   use type LicenseInitInfo_Access_Array_Access_Array;
   subtype LicenseInitInfo_Access_Array_Access_Array_Access is org.allbinary.business.init.LicenseInitInfo_Package_References.LicenseInitInfo_Access_Array_Access_Array_Access;
   use type LicenseInitInfo_Access_Array_Access_Array_Access;
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype SetLicenseInitInfo_Access is org.allbinary.logic.system.security.licensing.SetLicenseInitInfo_Package_References.SetLicenseInitInfo_Access;
   function "=" (Left, Right : SetLicenseInitInfo_Access) return Boolean renames org.allbinary.logic.system.security.licensing.SetLicenseInitInfo_Package_References."=";
   subtype SetLicenseInitInfo_Access_Array is org.allbinary.logic.system.security.licensing.SetLicenseInitInfo_Package_References.SetLicenseInitInfo_Access_Array;
   function "=" (Left, Right : SetLicenseInitInfo_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.SetLicenseInitInfo_Package_References."=";
   subtype SetLicenseInitInfo_Access_Array_Access is org.allbinary.logic.system.security.licensing.SetLicenseInitInfo_Package_References.SetLicenseInitInfo_Access_Array_Access;
   function "=" (Left, Right : SetLicenseInitInfo_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.SetLicenseInitInfo_Package_References."=";
   subtype SetLicenseInitInfo_Access_Array_Access_Array is org.allbinary.logic.system.security.licensing.SetLicenseInitInfo_Package_References.SetLicenseInitInfo_Access_Array_Access_Array;
   function "=" (Left, Right : SetLicenseInitInfo_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.SetLicenseInitInfo_Package_References."=";
   subtype SetLicenseInitInfo_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.licensing.SetLicenseInitInfo_Package_References.SetLicenseInitInfo_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SetLicenseInitInfo_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.SetLicenseInitInfo_Package_References."=";

   type SetLicenseInitInfo is new Java_Object with record
      vector : BasicArrayList_Access;
   end record;
   stdinput : BufferedReader_Access;

   procedure Initialize (This : in out SetLicenseInitInfo'Class; options : Unbounded_String_Array_Access);
   function Create (options : Unbounded_String_Array_Access) return SetLicenseInitInfo_Access;
   function getLicenseInitInfo (This : in out SetLicenseInitInfo) return LicenseInitInfo_Access;
   procedure createNewLicenseInitInfo (This : in out SetLicenseInitInfo; licenceServerVector_Param : access BasicArrayList_Package.BasicArrayList'Class);
   procedure main (args : Unbounded_String_Array_Access);

end org.allbinary.logic.system.security.licensing.SetLicenseInitInfo_Package;


