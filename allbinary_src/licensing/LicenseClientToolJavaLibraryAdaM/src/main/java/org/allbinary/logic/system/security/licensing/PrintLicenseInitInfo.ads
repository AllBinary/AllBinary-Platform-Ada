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

limited with org.allbinary.logic.system.security.licensing.PrintLicenseInitInfo_Package;
package org.allbinary.logic.system.security.licensing.PrintLicenseInitInfo_Package_References is
   type PrintLicenseInitInfo_Access is access all org.allbinary.logic.system.security.licensing.PrintLicenseInitInfo_Package.PrintLicenseInitInfo'Class;
   type PrintLicenseInitInfo_Access_Array is array (Natural range <>) of PrintLicenseInitInfo_Access;
   type PrintLicenseInitInfo_Access_Array_Access is access all PrintLicenseInitInfo_Access_Array;
   type PrintLicenseInitInfo_Access_Array_Access_Array is array (Natural range <>) of PrintLicenseInitInfo_Access_Array_Access;
   type PrintLicenseInitInfo_Access_Array_Access_Array_Access is access all PrintLicenseInitInfo_Access_Array_Access_Array;
end org.allbinary.logic.system.security.licensing.PrintLicenseInitInfo_Package_References;

with org.allbinary.logic.system.security.licensing.PrintLicenseInitInfo_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.business.init.LicenseInitInfo_Package;
with org.allbinary.business.init.LicenseInitInfo_Package_References;

package org.allbinary.logic.system.security.licensing.PrintLicenseInitInfo_Package is

   package LicenseInitInfo_Package renames Standard.org.allbinary.business.init.LicenseInitInfo_Package;
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
   end Reference_Types;
   use Reference_Types;


   subtype PrintLicenseInitInfo_Access is org.allbinary.logic.system.security.licensing.PrintLicenseInitInfo_Package_References.PrintLicenseInitInfo_Access;
   function "=" (Left, Right : PrintLicenseInitInfo_Access) return Boolean renames org.allbinary.logic.system.security.licensing.PrintLicenseInitInfo_Package_References."=";
   subtype PrintLicenseInitInfo_Access_Array is org.allbinary.logic.system.security.licensing.PrintLicenseInitInfo_Package_References.PrintLicenseInitInfo_Access_Array;
   function "=" (Left, Right : PrintLicenseInitInfo_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.PrintLicenseInitInfo_Package_References."=";
   subtype PrintLicenseInitInfo_Access_Array_Access is org.allbinary.logic.system.security.licensing.PrintLicenseInitInfo_Package_References.PrintLicenseInitInfo_Access_Array_Access;
   function "=" (Left, Right : PrintLicenseInitInfo_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.PrintLicenseInitInfo_Package_References."=";
   subtype PrintLicenseInitInfo_Access_Array_Access_Array is org.allbinary.logic.system.security.licensing.PrintLicenseInitInfo_Package_References.PrintLicenseInitInfo_Access_Array_Access_Array;
   function "=" (Left, Right : PrintLicenseInitInfo_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.PrintLicenseInitInfo_Package_References."=";
   subtype PrintLicenseInitInfo_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.licensing.PrintLicenseInitInfo_Package_References.PrintLicenseInitInfo_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PrintLicenseInitInfo_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.PrintLicenseInitInfo_Package_References."=";

   type PrintLicenseInitInfo is new Java_Object with null record;
   PATH : Unbounded_String;

   procedure Initialize (This : in out PrintLicenseInitInfo'Class; options : Unbounded_String_Array_Access);
   function Create (options : Unbounded_String_Array_Access) return PrintLicenseInitInfo_Access;
   function getLicenseInitInfo (This : in out PrintLicenseInitInfo) return LicenseInitInfo_Access;
   procedure printInitInfo (This : in out PrintLicenseInitInfo);
   procedure main (args : Unbounded_String_Array_Access);

end org.allbinary.logic.system.security.licensing.PrintLicenseInitInfo_Package;


