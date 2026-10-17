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
with org.allbinary.game.configuration.persistance.KeyValuePersistance_Package; use org.allbinary.game.configuration.persistance.KeyValuePersistance_Package;
with org.allbinary.game.configuration.persistance.GamePersistanceStrings_Package; use org.allbinary.game.configuration.persistance.GamePersistanceStrings_Package;

package org.allbinary.game.configuration.persistance.GameConfigurationPersistanceSingleton_Package is


   type GameConfigurationPersistanceSingleton is tagged;
   type GameConfigurationPersistanceSingleton_Access is access all GameConfigurationPersistanceSingleton'Class;
   type GameConfigurationPersistanceSingleton_Access_Array is array (Natural range <>) of GameConfigurationPersistanceSingleton_Access;
   type GameConfigurationPersistanceSingleton_Access_Array_Access is access all GameConfigurationPersistanceSingleton_Access_Array;

   type GameConfigurationPersistanceSingleton is new KeyValuePersistance with null record;
   GAME_PERSISTANCE : GameConfigurationPersistanceSingleton_Access;

   procedure Initialize (This : in out GameConfigurationPersistanceSingleton'Class);
   function Create return GameConfigurationPersistanceSingleton_Access;
   function getInstance return GameConfigurationPersistanceSingleton_Access;

end org.allbinary.game.configuration.persistance.GameConfigurationPersistanceSingleton_Package;


