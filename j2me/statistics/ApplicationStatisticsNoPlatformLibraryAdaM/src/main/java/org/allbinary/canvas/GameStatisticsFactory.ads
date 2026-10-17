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
with org.allbinary.canvas.BaseGameStatistics_Package; use org.allbinary.canvas.BaseGameStatistics_Package;

package org.allbinary.canvas.GameStatisticsFactory_Package is


   type GameStatisticsFactory is tagged;
   type GameStatisticsFactory_Access is access all GameStatisticsFactory'Class;
   type GameStatisticsFactory_Access_Array is array (Natural range <>) of GameStatisticsFactory_Access;
   type GameStatisticsFactory_Access_Array_Access is access all GameStatisticsFactory_Access_Array;

   type GameStatisticsFactory is new BaseGameStatistics with null record;
   instance : GameStatisticsFactory_Access;

   procedure Initialize (This : in out GameStatisticsFactory'Class);
   function Create return GameStatisticsFactory_Access;
   function getInstance return GameStatisticsFactory_Access;
   procedure add (This : in out GameStatisticsFactory; string_Id : Unbounded_String);
   function toString (This : in out GameStatisticsFactory) return Unbounded_String;

end org.allbinary.canvas.GameStatisticsFactory_Package;


