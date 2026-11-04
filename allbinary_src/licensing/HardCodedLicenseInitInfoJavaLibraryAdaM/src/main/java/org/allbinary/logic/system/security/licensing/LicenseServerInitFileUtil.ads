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

limited with org.allbinary.logic.system.security.licensing.LicenseServerInitFileUtil_Package;
package org.allbinary.logic.system.security.licensing.LicenseServerInitFileUtil_Package_References is
   type LicenseServerInitFileUtil_Access is access all org.allbinary.logic.system.security.licensing.LicenseServerInitFileUtil_Package.LicenseServerInitFileUtil'Class;
   type LicenseServerInitFileUtil_Access_Array is array (Natural range <>) of LicenseServerInitFileUtil_Access;
   type LicenseServerInitFileUtil_Access_Array_Access is access all LicenseServerInitFileUtil_Access_Array;
   type LicenseServerInitFileUtil_Access_Array_Access_Array is array (Natural range <>) of LicenseServerInitFileUtil_Access_Array_Access;
   type LicenseServerInitFileUtil_Access_Array_Access_Array_Access is access all LicenseServerInitFileUtil_Access_Array_Access_Array;
end org.allbinary.logic.system.security.licensing.LicenseServerInitFileUtil_Package_References;

with org.allbinary.logic.system.security.licensing.LicenseServerInitFileUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.system.security.licensing.LicenseServerInitFileUtil_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype LicenseServerInitFileUtil_Access is org.allbinary.logic.system.security.licensing.LicenseServerInitFileUtil_Package_References.LicenseServerInitFileUtil_Access;
   function "=" (Left, Right : LicenseServerInitFileUtil_Access) return Boolean renames org.allbinary.logic.system.security.licensing.LicenseServerInitFileUtil_Package_References."=";
   subtype LicenseServerInitFileUtil_Access_Array is org.allbinary.logic.system.security.licensing.LicenseServerInitFileUtil_Package_References.LicenseServerInitFileUtil_Access_Array;
   function "=" (Left, Right : LicenseServerInitFileUtil_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.LicenseServerInitFileUtil_Package_References."=";
   subtype LicenseServerInitFileUtil_Access_Array_Access is org.allbinary.logic.system.security.licensing.LicenseServerInitFileUtil_Package_References.LicenseServerInitFileUtil_Access_Array_Access;
   function "=" (Left, Right : LicenseServerInitFileUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.LicenseServerInitFileUtil_Package_References."=";
   subtype LicenseServerInitFileUtil_Access_Array_Access_Array is org.allbinary.logic.system.security.licensing.LicenseServerInitFileUtil_Package_References.LicenseServerInitFileUtil_Access_Array_Access_Array;
   function "=" (Left, Right : LicenseServerInitFileUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.LicenseServerInitFileUtil_Package_References."=";
   subtype LicenseServerInitFileUtil_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.licensing.LicenseServerInitFileUtil_Package_References.LicenseServerInitFileUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LicenseServerInitFileUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.LicenseServerInitFileUtil_Package_References."=";

   type LicenseServerInitFileUtil is new Java_Object with null record;

   procedure Initialize (This : in out LicenseServerInitFileUtil'Class);
   function Create return LicenseServerInitFileUtil_Access;
   procedure init (This : in out LicenseServerInitFileUtil);
   procedure write (This : in out LicenseServerInitFileUtil);

end org.allbinary.logic.system.security.licensing.LicenseServerInitFileUtil_Package;


