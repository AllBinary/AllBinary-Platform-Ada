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

package org.allbinary.game.layer.hud.LapInfo_Package is


   type LapInfo is tagged;
   type LapInfo_Access is access all LapInfo'Class;
   type LapInfo_Access_Array is array (Natural range <>) of LapInfo_Access;
   type LapInfo_Access_Array_Access is access all LapInfo_Access_Array;
   type LapInfo_Access_Array_Access_Array is array (Natural range <>) of LapInfo_Access_Array_Access;
   type LapInfo_Access_Array_Access_Array_Access is access all LapInfo_Access_Array_Access_Array;

   type LapInfo is new Java_Object with record
      numberOfLaps : Integer;
      totalLaps : Integer;
   end record;
   NULL_LAP_INFO : LapInfo_Access;

   procedure Initialize (This : in out LapInfo'Class; totalLaps : Integer);
   function Create (totalLaps : Integer) return LapInfo_Access;
   procedure add (This : in out LapInfo);
   function getCurrentLap (This : in out LapInfo) return Integer;
   function getTotalLaps (This : in out LapInfo) return Integer;
   function isDone (This : in out LapInfo) return Boolean;
   function toString (This : in out LapInfo) return Unbounded_String;

end org.allbinary.game.layer.hud.LapInfo_Package;


