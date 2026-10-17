-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;

package org.allbinary.media.graphics.geography.map.racetrack.CustomMapGeneratorBase_Package is

   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;

   type CustomMapGeneratorBase is tagged;
   type CustomMapGeneratorBase_Access is access all CustomMapGeneratorBase'Class;
   type CustomMapGeneratorBase_Access_Array is array (Natural range <>) of CustomMapGeneratorBase_Access;
   type CustomMapGeneratorBase_Access_Array_Access is access all CustomMapGeneratorBase_Access_Array;

   type CustomMapGeneratorBase is new Java_Object with null record;

   procedure Initialize (This : in out CustomMapGeneratorBase'Class);
   function Create return CustomMapGeneratorBase_Access;
   procedure copyMapIntoCustomMap (This : in out CustomMapGeneratorBase);
   function getCustomMapArray (This : in out CustomMapGeneratorBase) return Integer_Array_Access_Array_Access;
   procedure getCustomMapArray (This : in out CustomMapGeneratorBase);
   function getCustomType (This : in out CustomMapGeneratorBase; column : Integer; row : Integer; currentType : Integer) return Integer;
   procedure getCustomType (This : in out CustomMapGeneratorBase; column : Integer; row : Integer; currentType : Integer);

end org.allbinary.media.graphics.geography.map.racetrack.CustomMapGeneratorBase_Package;


