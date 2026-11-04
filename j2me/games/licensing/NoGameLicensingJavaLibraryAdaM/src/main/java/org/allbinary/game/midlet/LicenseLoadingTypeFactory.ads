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

limited with org.allbinary.game.midlet.LicenseLoadingTypeFactory_Package;
package org.allbinary.game.midlet.LicenseLoadingTypeFactory_Package_References is
   type LicenseLoadingTypeFactory_Access is access all org.allbinary.game.midlet.LicenseLoadingTypeFactory_Package.LicenseLoadingTypeFactory'Class;
   type LicenseLoadingTypeFactory_Access_Array is array (Natural range <>) of LicenseLoadingTypeFactory_Access;
   type LicenseLoadingTypeFactory_Access_Array_Access is access all LicenseLoadingTypeFactory_Access_Array;
   type LicenseLoadingTypeFactory_Access_Array_Access_Array is array (Natural range <>) of LicenseLoadingTypeFactory_Access_Array_Access;
   type LicenseLoadingTypeFactory_Access_Array_Access_Array_Access is access all LicenseLoadingTypeFactory_Access_Array_Access_Array;
end org.allbinary.game.midlet.LicenseLoadingTypeFactory_Package_References;

with org.allbinary.game.midlet.LicenseLoadingTypeFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.midlet.LicenseLoadingType_Package;
with org.allbinary.game.midlet.LicenseLoadingType_Package_References;

package org.allbinary.game.midlet.LicenseLoadingTypeFactory_Package is

   package Reference_Types is
   subtype LicenseLoadingType_Access is org.allbinary.game.midlet.LicenseLoadingType_Package_References.LicenseLoadingType_Access;
   use type LicenseLoadingType_Access;
   subtype LicenseLoadingType_Access_Array is org.allbinary.game.midlet.LicenseLoadingType_Package_References.LicenseLoadingType_Access_Array;
   use type LicenseLoadingType_Access_Array;
   subtype LicenseLoadingType_Access_Array_Access is org.allbinary.game.midlet.LicenseLoadingType_Package_References.LicenseLoadingType_Access_Array_Access;
   use type LicenseLoadingType_Access_Array_Access;
   subtype LicenseLoadingType_Access_Array_Access_Array is org.allbinary.game.midlet.LicenseLoadingType_Package_References.LicenseLoadingType_Access_Array_Access_Array;
   use type LicenseLoadingType_Access_Array_Access_Array;
   subtype LicenseLoadingType_Access_Array_Access_Array_Access is org.allbinary.game.midlet.LicenseLoadingType_Package_References.LicenseLoadingType_Access_Array_Access_Array_Access;
   use type LicenseLoadingType_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype LicenseLoadingTypeFactory_Access is org.allbinary.game.midlet.LicenseLoadingTypeFactory_Package_References.LicenseLoadingTypeFactory_Access;
   function "=" (Left, Right : LicenseLoadingTypeFactory_Access) return Boolean renames org.allbinary.game.midlet.LicenseLoadingTypeFactory_Package_References."=";
   subtype LicenseLoadingTypeFactory_Access_Array is org.allbinary.game.midlet.LicenseLoadingTypeFactory_Package_References.LicenseLoadingTypeFactory_Access_Array;
   function "=" (Left, Right : LicenseLoadingTypeFactory_Access_Array) return Boolean renames org.allbinary.game.midlet.LicenseLoadingTypeFactory_Package_References."=";
   subtype LicenseLoadingTypeFactory_Access_Array_Access is org.allbinary.game.midlet.LicenseLoadingTypeFactory_Package_References.LicenseLoadingTypeFactory_Access_Array_Access;
   function "=" (Left, Right : LicenseLoadingTypeFactory_Access_Array_Access) return Boolean renames org.allbinary.game.midlet.LicenseLoadingTypeFactory_Package_References."=";
   subtype LicenseLoadingTypeFactory_Access_Array_Access_Array is org.allbinary.game.midlet.LicenseLoadingTypeFactory_Package_References.LicenseLoadingTypeFactory_Access_Array_Access_Array;
   function "=" (Left, Right : LicenseLoadingTypeFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.midlet.LicenseLoadingTypeFactory_Package_References."=";
   subtype LicenseLoadingTypeFactory_Access_Array_Access_Array_Access is org.allbinary.game.midlet.LicenseLoadingTypeFactory_Package_References.LicenseLoadingTypeFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LicenseLoadingTypeFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.midlet.LicenseLoadingTypeFactory_Package_References."=";

   type LicenseLoadingTypeFactory is new Java_Object with record
      INITIAL_LOADING : LicenseLoadingType_Access;
      GAME_START : LicenseLoadingType_Access;
      LOGIN : LicenseLoadingType_Access;
      OTHER : LicenseLoadingType_Access;
   end record;
   instance : LicenseLoadingTypeFactory_Access;

   procedure Initialize (This : in out LicenseLoadingTypeFactory'Class);
   function Create return LicenseLoadingTypeFactory_Access;
   function getIntance return LicenseLoadingTypeFactory_Access;

end org.allbinary.game.midlet.LicenseLoadingTypeFactory_Package;


