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

package org.allbinary.game.configuration.persistance.PersistanceStrings_Package is


   type PersistanceStrings is tagged;
   type PersistanceStrings_Access is access all PersistanceStrings'Class;
   type PersistanceStrings_Access_Array is array (Natural range <>) of PersistanceStrings_Access;
   type PersistanceStrings_Access_Array_Access is access all PersistanceStrings_Access_Array;

   type PersistanceStrings is new Java_Object with record
      SAVING : Unbounded_String;
      NUMBER_OF_RECORDS : Unbounded_String;
      LOADING_ID : Unbounded_String;
      LOAD_ALL : Unbounded_String;
      DELETING_WITH_ID : Unbounded_String;
      CLOSING_RECORDSTORE : Unbounded_String;
      NOT_SAVING : Unbounded_String;
      ERROR_LOADING : Unbounded_String;
      ERROR_LOADING_ID : Unbounded_String;
      ID : Unbounded_String;
      GAME_ACTION_INPUT : Unbounded_String;
   end record;
   instance : PersistanceStrings_Access;

   procedure Initialize (This : in out PersistanceStrings'Class);
   function Create return PersistanceStrings_Access;
   function getInstance return PersistanceStrings_Access;
   procedure getInstance;

end org.allbinary.game.configuration.persistance.PersistanceStrings_Package;


