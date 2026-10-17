--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.microedition.lcdui.Font_Package; use javax.microedition.lcdui.Font_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;

package org.allbinary.graphics.font.FontDebugBase_Package is

   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;

   type FontDebugBase is tagged;
   type FontDebugBase_Access is access all FontDebugBase'Class;
   type FontDebugBase_Access_Array is array (Natural range <>) of FontDebugBase_Access;
   type FontDebugBase_Access_Array_Access is access all FontDebugBase_Access_Array;

   type FontDebugBase is new Java_Object with record
      SET_FONT : Unbounded_String;
   end record;
   instanceBase : FontDebugBase_Access;

   procedure Initialize (This : in out FontDebugBase'Class);
   function Create return FontDebugBase_Access;
   function getInstance return FontDebugBase_Access;
   procedure debugMetrics (This : in out FontDebugBase; currentFont_Param : access Font_Package.Font'Class; convertedTextSize : Float; displayMetrics_Param : access Java_Object'Class; stringBuffer_Param : access StringMaker_Package.StringMaker'Class);
   procedure debugDpi (This : in out FontDebugBase; densityDpi : Integer; stringBuffer_Param : access StringMaker_Package.StringMaker'Class);
   procedure debugDimension (This : in out FontDebugBase; currentFont_Param : access Font_Package.Font'Class; convertedTextSize : Float; longestDimensionTotalPixels : Integer; stringBuffer_Param : access StringMaker_Package.StringMaker'Class);

end org.allbinary.graphics.font.FontDebugBase_Package;


