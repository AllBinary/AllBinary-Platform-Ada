-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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

limited with org.allbinary.emulator.device.TrueTypeFontUtilBase_Package;
package org.allbinary.emulator.device.TrueTypeFontUtilBase_Package_References is
   type TrueTypeFontUtilBase_Access is access all org.allbinary.emulator.device.TrueTypeFontUtilBase_Package.TrueTypeFontUtilBase'Class;
   type TrueTypeFontUtilBase_Access_Array is array (Natural range <>) of TrueTypeFontUtilBase_Access;
   type TrueTypeFontUtilBase_Access_Array_Access is access all TrueTypeFontUtilBase_Access_Array;
   type TrueTypeFontUtilBase_Access_Array_Access_Array is array (Natural range <>) of TrueTypeFontUtilBase_Access_Array_Access;
   type TrueTypeFontUtilBase_Access_Array_Access_Array_Access is access all TrueTypeFontUtilBase_Access_Array_Access_Array;
end org.allbinary.emulator.device.TrueTypeFontUtilBase_Package_References;

with org.allbinary.emulator.device.TrueTypeFontUtilBase_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.emulator.device.TrueTypeFontUtilBase_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype TrueTypeFontUtilBase_Access is org.allbinary.emulator.device.TrueTypeFontUtilBase_Package_References.TrueTypeFontUtilBase_Access;
   function "=" (Left, Right : TrueTypeFontUtilBase_Access) return Boolean renames org.allbinary.emulator.device.TrueTypeFontUtilBase_Package_References."=";
   subtype TrueTypeFontUtilBase_Access_Array is org.allbinary.emulator.device.TrueTypeFontUtilBase_Package_References.TrueTypeFontUtilBase_Access_Array;
   function "=" (Left, Right : TrueTypeFontUtilBase_Access_Array) return Boolean renames org.allbinary.emulator.device.TrueTypeFontUtilBase_Package_References."=";
   subtype TrueTypeFontUtilBase_Access_Array_Access is org.allbinary.emulator.device.TrueTypeFontUtilBase_Package_References.TrueTypeFontUtilBase_Access_Array_Access;
   function "=" (Left, Right : TrueTypeFontUtilBase_Access_Array_Access) return Boolean renames org.allbinary.emulator.device.TrueTypeFontUtilBase_Package_References."=";
   subtype TrueTypeFontUtilBase_Access_Array_Access_Array is org.allbinary.emulator.device.TrueTypeFontUtilBase_Package_References.TrueTypeFontUtilBase_Access_Array_Access_Array;
   function "=" (Left, Right : TrueTypeFontUtilBase_Access_Array_Access_Array) return Boolean renames org.allbinary.emulator.device.TrueTypeFontUtilBase_Package_References."=";
   subtype TrueTypeFontUtilBase_Access_Array_Access_Array_Access is org.allbinary.emulator.device.TrueTypeFontUtilBase_Package_References.TrueTypeFontUtilBase_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TrueTypeFontUtilBase_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.emulator.device.TrueTypeFontUtilBase_Package_References."=";

   type TrueTypeFontUtilBase is new Java_Object with null record;

   procedure Initialize (This : in out TrueTypeFontUtilBase'Class; scale : Integer);
   function Create (scale : Integer) return TrueTypeFontUtilBase_Access;
   function getAsTextureSize (This : in out TrueTypeFontUtilBase; textureSize : Integer) return Integer;
   procedure getAsTextureSize (This : in out TrueTypeFontUtilBase; textureSize : Integer);
   function getCellSize (This : in out TrueTypeFontUtilBase; cellSize : Integer) return Integer;
   procedure getCellSize (This : in out TrueTypeFontUtilBase; cellSize : Integer);

end org.allbinary.emulator.device.TrueTypeFontUtilBase_Package;


