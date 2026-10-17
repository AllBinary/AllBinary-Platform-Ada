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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.game.midlet.LicenseLevelUtil_Package is


   type LicenseLevelUtil is tagged;
   type LicenseLevelUtil_Access is access all LicenseLevelUtil'Class;
   type LicenseLevelUtil_Access_Array is array (Natural range <>) of LicenseLevelUtil_Access;
   type LicenseLevelUtil_Access_Array_Access is access all LicenseLevelUtil_Access_Array;

   type LicenseLevelUtil is new Java_Object with null record;
   instance : LicenseLevelUtil_Access;

   procedure Initialize (This : in out LicenseLevelUtil'Class);
   function Create return LicenseLevelUtil_Access;
   function getInstance return LicenseLevelUtil_Access;
   procedure getInstance;
   function getMaxLevel (This : in out LicenseLevelUtil; maxLevel : Integer; demoLevel : Integer) return Integer;
   procedure getMaxLevel (This : in out LicenseLevelUtil; maxLevel : Integer; demoLevel : Integer);

end org.allbinary.game.midlet.LicenseLevelUtil_Package;


