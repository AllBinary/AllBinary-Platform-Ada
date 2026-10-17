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

package org.allbinary.game.configuration.persistance.GamePersistanceStrings_Package is


   type GamePersistanceStrings is tagged;
   type GamePersistanceStrings_Access is access all GamePersistanceStrings'Class;
   type GamePersistanceStrings_Access_Array is array (Natural range <>) of GamePersistanceStrings_Access;
   type GamePersistanceStrings_Access_Array_Access is access all GamePersistanceStrings_Access_Array;

   type GamePersistanceStrings is new Java_Object with record
      SAVED_GAME_RECORD_ID : Unbounded_String;
      SAVED_GAME_CONFIGURATION_RECORD_ID : Unbounded_String;
      DEFAULT_INPUT_MAPPING_RECORD_ID : Unbounded_String;
      SAVED_INPUT_CONFIGURATION_RECORD_ID : Unbounded_String;
   end record;
   instance : GamePersistanceStrings_Access;

   procedure Initialize (This : in out GamePersistanceStrings'Class);
   function Create return GamePersistanceStrings_Access;
   function getInstance return GamePersistanceStrings_Access;
   procedure getInstance;

end org.allbinary.game.configuration.persistance.GamePersistanceStrings_Package;


