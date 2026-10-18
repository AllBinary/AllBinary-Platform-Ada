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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.emulator.device.TrueTypeFontUtilBase_Package is


   type TrueTypeFontUtilBase is tagged;
   type TrueTypeFontUtilBase_Access is access all TrueTypeFontUtilBase'Class;
   type TrueTypeFontUtilBase_Access_Array is array (Natural range <>) of TrueTypeFontUtilBase_Access;
   type TrueTypeFontUtilBase_Access_Array_Access is access all TrueTypeFontUtilBase_Access_Array;
   type TrueTypeFontUtilBase_Access_Array_Access_Array is array (Natural range <>) of TrueTypeFontUtilBase_Access_Array_Access;
   type TrueTypeFontUtilBase_Access_Array_Access_Array_Access is access all TrueTypeFontUtilBase_Access_Array_Access_Array;

   type TrueTypeFontUtilBase is new Java_Object with null record;

   procedure Initialize (This : in out TrueTypeFontUtilBase'Class; scale : Integer);
   function Create (scale : Integer) return TrueTypeFontUtilBase_Access;
   function getAsTextureSize (This : in out TrueTypeFontUtilBase; textureSize : Integer) return Integer;
   procedure getAsTextureSize (This : in out TrueTypeFontUtilBase; textureSize : Integer);
   function getCellSize (This : in out TrueTypeFontUtilBase; cellSize : Integer) return Integer;
   procedure getCellSize (This : in out TrueTypeFontUtilBase; cellSize : Integer);

end org.allbinary.emulator.device.TrueTypeFontUtilBase_Package;


