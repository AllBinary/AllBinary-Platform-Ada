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

limited with org.allbinary.game.midlet.LicenseLoadingType_Package;
package org.allbinary.game.midlet.LicenseLoadingType_Package_References is
   type LicenseLoadingType_Access is access all org.allbinary.game.midlet.LicenseLoadingType_Package.LicenseLoadingType'Class;
   type LicenseLoadingType_Access_Array is array (Natural range <>) of LicenseLoadingType_Access;
   type LicenseLoadingType_Access_Array_Access is access all LicenseLoadingType_Access_Array;
   type LicenseLoadingType_Access_Array_Access_Array is array (Natural range <>) of LicenseLoadingType_Access_Array_Access;
   type LicenseLoadingType_Access_Array_Access_Array_Access is access all LicenseLoadingType_Access_Array_Access_Array;
end org.allbinary.game.midlet.LicenseLoadingType_Package_References;

with org.allbinary.game.midlet.LicenseLoadingType_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.game.midlet.LicenseLoadingType_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype LicenseLoadingType_Access is org.allbinary.game.midlet.LicenseLoadingType_Package_References.LicenseLoadingType_Access;
   function "=" (Left, Right : LicenseLoadingType_Access) return Boolean renames org.allbinary.game.midlet.LicenseLoadingType_Package_References."=";
   subtype LicenseLoadingType_Access_Array is org.allbinary.game.midlet.LicenseLoadingType_Package_References.LicenseLoadingType_Access_Array;
   function "=" (Left, Right : LicenseLoadingType_Access_Array) return Boolean renames org.allbinary.game.midlet.LicenseLoadingType_Package_References."=";
   subtype LicenseLoadingType_Access_Array_Access is org.allbinary.game.midlet.LicenseLoadingType_Package_References.LicenseLoadingType_Access_Array_Access;
   function "=" (Left, Right : LicenseLoadingType_Access_Array_Access) return Boolean renames org.allbinary.game.midlet.LicenseLoadingType_Package_References."=";
   subtype LicenseLoadingType_Access_Array_Access_Array is org.allbinary.game.midlet.LicenseLoadingType_Package_References.LicenseLoadingType_Access_Array_Access_Array;
   function "=" (Left, Right : LicenseLoadingType_Access_Array_Access_Array) return Boolean renames org.allbinary.game.midlet.LicenseLoadingType_Package_References."=";
   subtype LicenseLoadingType_Access_Array_Access_Array_Access is org.allbinary.game.midlet.LicenseLoadingType_Package_References.LicenseLoadingType_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LicenseLoadingType_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.midlet.LicenseLoadingType_Package_References."=";

   type LicenseLoadingType is new Java_Object with null record;

   procedure Initialize (This : in out LicenseLoadingType'Class; name : Unbounded_String);
   function Create (name : Unbounded_String) return LicenseLoadingType_Access;

end org.allbinary.game.midlet.LicenseLoadingType_Package;


