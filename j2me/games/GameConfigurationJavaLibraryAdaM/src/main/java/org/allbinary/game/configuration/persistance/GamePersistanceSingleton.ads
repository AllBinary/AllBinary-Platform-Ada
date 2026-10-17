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

package org.allbinary.game.configuration.persistance.GamePersistanceSingleton_Package is


   type GamePersistanceSingleton is tagged;
   type GamePersistanceSingleton_Access is access all GamePersistanceSingleton'Class;
   type GamePersistanceSingleton_Access_Array is array (Natural range <>) of GamePersistanceSingleton_Access;
   type GamePersistanceSingleton_Access_Array_Access is access all GamePersistanceSingleton_Access_Array;

   type GamePersistanceSingleton is new KeyValuePersistance with null record;
   GAME_PERSISTANCE : GamePersistanceSingleton_Access;

   procedure Initialize (This : in out GamePersistanceSingleton'Class);
   function Create return GamePersistanceSingleton_Access;
   function getInstance return GamePersistanceSingleton_Access;
   procedure getInstance;

end org.allbinary.game.configuration.persistance.GamePersistanceSingleton_Package;


