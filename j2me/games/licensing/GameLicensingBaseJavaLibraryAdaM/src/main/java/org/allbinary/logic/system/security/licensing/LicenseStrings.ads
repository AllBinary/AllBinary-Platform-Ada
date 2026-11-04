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

limited with org.allbinary.logic.system.security.licensing.LicenseStrings_Package;
package org.allbinary.logic.system.security.licensing.LicenseStrings_Package_References is
   type LicenseStrings_Access is access all org.allbinary.logic.system.security.licensing.LicenseStrings_Package.LicenseStrings'Class;
   type LicenseStrings_Access_Array is array (Natural range <>) of LicenseStrings_Access;
   type LicenseStrings_Access_Array_Access is access all LicenseStrings_Access_Array;
   type LicenseStrings_Access_Array_Access_Array is array (Natural range <>) of LicenseStrings_Access_Array_Access;
   type LicenseStrings_Access_Array_Access_Array_Access is access all LicenseStrings_Access_Array_Access_Array;
end org.allbinary.logic.system.security.licensing.LicenseStrings_Package_References;

with org.allbinary.logic.system.security.licensing.LicenseStrings_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.system.security.licensing.LicenseStrings_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype LicenseStrings_Access is org.allbinary.logic.system.security.licensing.LicenseStrings_Package_References.LicenseStrings_Access;
   function "=" (Left, Right : LicenseStrings_Access) return Boolean renames org.allbinary.logic.system.security.licensing.LicenseStrings_Package_References."=";
   subtype LicenseStrings_Access_Array is org.allbinary.logic.system.security.licensing.LicenseStrings_Package_References.LicenseStrings_Access_Array;
   function "=" (Left, Right : LicenseStrings_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.LicenseStrings_Package_References."=";
   subtype LicenseStrings_Access_Array_Access is org.allbinary.logic.system.security.licensing.LicenseStrings_Package_References.LicenseStrings_Access_Array_Access;
   function "=" (Left, Right : LicenseStrings_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.LicenseStrings_Package_References."=";
   subtype LicenseStrings_Access_Array_Access_Array is org.allbinary.logic.system.security.licensing.LicenseStrings_Package_References.LicenseStrings_Access_Array_Access_Array;
   function "=" (Left, Right : LicenseStrings_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.LicenseStrings_Package_References."=";
   subtype LicenseStrings_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.licensing.LicenseStrings_Package_References.LicenseStrings_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LicenseStrings_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.LicenseStrings_Package_References."=";

   type LicenseStrings is new Java_Object with record
      LOCKED : Unbounded_String;
   end record;
   instance : LicenseStrings_Access;

   procedure Initialize (This : in out LicenseStrings'Class);
   function Create return LicenseStrings_Access;
   function getInstance return LicenseStrings_Access;

end org.allbinary.logic.system.security.licensing.LicenseStrings_Package;


