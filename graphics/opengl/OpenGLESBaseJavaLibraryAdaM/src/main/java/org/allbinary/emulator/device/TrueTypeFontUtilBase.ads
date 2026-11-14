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

with AllBinary_Java;
limited with org.allbinary.emulator.device.TrueTypeFontUtilBase_Package;
package org.allbinary.emulator.device.TrueTypeFontUtilBase_Package_References is
   type TrueTypeFontUtilBase_Access is access all org.allbinary.emulator.device.TrueTypeFontUtilBase_Package.TrueTypeFontUtilBase'Class;
   type TrueTypeFontUtilBase_Access_Array is array (Natural range <>) of TrueTypeFontUtilBase_Access;
   type TrueTypeFontUtilBase_Access_Array_Access is access all TrueTypeFontUtilBase_Access_Array;
   type TrueTypeFontUtilBase_Access_Array_Access_Array is array (Natural range <>) of TrueTypeFontUtilBase_Access_Array_Access;
   type TrueTypeFontUtilBase_Access_Array_Access_Array_Access is access all TrueTypeFontUtilBase_Access_Array_Access_Array;
   type TrueTypeFontUtilBase_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TrueTypeFontUtilBase_Access_Array_Access;
   end record;
   function Java_Box (Value : TrueTypeFontUtilBase_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TrueTypeFontUtilBase_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TrueTypeFontUtilBase_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TrueTypeFontUtilBase_Access_Array_Access is (if Value /= null and then Value.all in TrueTypeFontUtilBase_Access_Array_Object'Class then TrueTypeFontUtilBase_Access_Array_Object'Class (Value.all).Value else null);
   type TrueTypeFontUtilBase_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TrueTypeFontUtilBase_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : TrueTypeFontUtilBase_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TrueTypeFontUtilBase_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TrueTypeFontUtilBase_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TrueTypeFontUtilBase_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in TrueTypeFontUtilBase_Access_Array_Access_Array_Object'Class then TrueTypeFontUtilBase_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
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
limited with javax.microedition.lcdui.Font_Package;
with javax.microedition.lcdui.Font_Package_References;

package org.allbinary.emulator.device.TrueTypeFontUtilBase_Package is

   package Font_Package renames Standard.javax.microedition.lcdui.Font_Package;
   package Reference_Types is
   subtype Font_Access is javax.microedition.lcdui.Font_Package_References.Font_Access;
   use type Font_Access;
   subtype Font_Access_Array is javax.microedition.lcdui.Font_Package_References.Font_Access_Array;
   use type Font_Access_Array;
   subtype Font_Access_Array_Access is javax.microedition.lcdui.Font_Package_References.Font_Access_Array_Access;
   use type Font_Access_Array_Access;
   subtype Font_Access_Array_Access_Array is javax.microedition.lcdui.Font_Package_References.Font_Access_Array_Access_Array;
   use type Font_Access_Array_Access_Array;
   subtype Font_Access_Array_Access_Array_Access is javax.microedition.lcdui.Font_Package_References.Font_Access_Array_Access_Array_Access;
   use type Font_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype TrueTypeFontUtilBase_Access is org.allbinary.emulator.device.TrueTypeFontUtilBase_Package_References.TrueTypeFontUtilBase_Access;
   function "=" (Left, Right : TrueTypeFontUtilBase_Access) return Boolean renames org.allbinary.emulator.device.TrueTypeFontUtilBase_Package_References."=";
   subtype TrueTypeFontUtilBase_Access_Array is org.allbinary.emulator.device.TrueTypeFontUtilBase_Package_References.TrueTypeFontUtilBase_Access_Array;
   function "=" (Left, Right : TrueTypeFontUtilBase_Access_Array) return Boolean renames org.allbinary.emulator.device.TrueTypeFontUtilBase_Package_References."=";
   subtype TrueTypeFontUtilBase_Access_Array_Access is org.allbinary.emulator.device.TrueTypeFontUtilBase_Package_References.TrueTypeFontUtilBase_Access_Array_Access;
   function "=" (Left, Right : TrueTypeFontUtilBase_Access_Array_Access) return Boolean renames org.allbinary.emulator.device.TrueTypeFontUtilBase_Package_References."=";
   function Java_Box (Value : TrueTypeFontUtilBase_Access_Array_Access) return Java_Object_Access renames org.allbinary.emulator.device.TrueTypeFontUtilBase_Package_References.Java_Box;
   function Java_Unbox_TrueTypeFontUtilBase_Access_Array (Value : access Java_Object'Class) return TrueTypeFontUtilBase_Access_Array_Access renames org.allbinary.emulator.device.TrueTypeFontUtilBase_Package_References.Java_Unbox_TrueTypeFontUtilBase_Access_Array;
   subtype TrueTypeFontUtilBase_Access_Array_Access_Array is org.allbinary.emulator.device.TrueTypeFontUtilBase_Package_References.TrueTypeFontUtilBase_Access_Array_Access_Array;
   function "=" (Left, Right : TrueTypeFontUtilBase_Access_Array_Access_Array) return Boolean renames org.allbinary.emulator.device.TrueTypeFontUtilBase_Package_References."=";
   subtype TrueTypeFontUtilBase_Access_Array_Access_Array_Access is org.allbinary.emulator.device.TrueTypeFontUtilBase_Package_References.TrueTypeFontUtilBase_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TrueTypeFontUtilBase_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.emulator.device.TrueTypeFontUtilBase_Package_References."=";
   function Java_Box (Value : TrueTypeFontUtilBase_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.emulator.device.TrueTypeFontUtilBase_Package_References.Java_Box;
   function Java_Unbox_TrueTypeFontUtilBase_Access_Array_Access_Array (Value : access Java_Object'Class) return TrueTypeFontUtilBase_Access_Array_Access_Array_Access renames org.allbinary.emulator.device.TrueTypeFontUtilBase_Package_References.Java_Unbox_TrueTypeFontUtilBase_Access_Array_Access_Array;

   type TrueTypeFontUtilBase is new Java_Object with record
      shortPattern : Unbounded_String;
      patternAsBytes : Short_Short_Integer_Array_Access;
      pattern : Unbounded_String;
      charArray : Short_Integer_Array_Access;
      U_characterWidth : Integer_Array_Access;
      characterArray : Character_Array_Access;
      size : Integer;
      lastCapIndex : Integer;
      currentFont : Font_Access;
      scale : Integer;
      CELLS_PER_ROW : Integer;
      fontSize : Integer;
      baseCharWidth : Integer;
      cellSize : Integer;
      textureSize : Integer;
      actualCellsPerRow : Integer;
   end record;

   procedure Initialize (This : in out TrueTypeFontUtilBase'Class; scale : Integer);
   function Create (scale : Integer) return TrueTypeFontUtilBase_Access;
   function getAsTextureSize (This : in out TrueTypeFontUtilBase; textureSize_Param : Integer) return Integer;
   procedure getAsTextureSize (This : in out TrueTypeFontUtilBase; textureSize_Param : Integer);
   function getCellSize (This : in out TrueTypeFontUtilBase; cellSize_Param : Integer) return Integer;
   procedure getCellSize (This : in out TrueTypeFontUtilBase; cellSize_Param : Integer);
   function getYOffset (This : in out TrueTypeFontUtilBase) return Integer;

end org.allbinary.emulator.device.TrueTypeFontUtilBase_Package;


