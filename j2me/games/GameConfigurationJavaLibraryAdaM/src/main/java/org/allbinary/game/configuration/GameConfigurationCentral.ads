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
with org.allbinary.game.configuration.persistance.GameConfigurationPersistanceSingleton_Package; use org.allbinary.game.configuration.persistance.GameConfigurationPersistanceSingleton_Package;
with org.allbinary.game.configuration.persistance.KeyValuePersistance_Package; use org.allbinary.game.configuration.persistance.KeyValuePersistance_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.math.SmallIntegerSingletonFactory_Package; use org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.game.configuration.GameConfiguration_Package; use org.allbinary.game.configuration.GameConfiguration_Package;

package org.allbinary.game.configuration.GameConfigurationCentral_Package is

   package GameConfigurationPersistanceSingleton_Package renames Standard.org.allbinary.game.configuration.persistance.GameConfigurationPersistanceSingleton_Package;
   package KeyValuePersistance_Package renames Standard.org.allbinary.game.configuration.persistance.KeyValuePersistance_Package;
   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package SmallIntegerSingletonFactory_Package renames Standard.org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;

   type GameConfigurationCentral is tagged;
   type GameConfigurationCentral_Access is access all GameConfigurationCentral'Class;
   type GameConfigurationCentral_Access_Array is array (Natural range <>) of GameConfigurationCentral_Access;
   type GameConfigurationCentral_Access_Array_Access is access all GameConfigurationCentral_Access_Array;

   type GameConfigurationCentral is new Java_Object with record
      logUtil : LogUtil_Access;
      SCALE : GameConfiguration_Access;
      ORIENTATION : GameConfiguration_Access;
      SENSOR_UPDATE_RATE : GameConfiguration_Access;
      VIBRATION : GameConfiguration_Access;
      CHALLENGE_LEVEL : GameConfiguration_Access;
      COLLIDE_DAMAGE : GameConfiguration_Access;
      DURABILITY_CHALLENGE_LEVEL : GameConfiguration_Access;
      SPEED_CHALLENGE_LEVEL : GameConfiguration_Access;
      ATTACK_CHALLENGE_LEVEL : GameConfiguration_Access;
      CONTROL_LEVEL : GameConfiguration_Access;
      PLAYER_INPUT_WAIT : GameConfiguration_Access;
      SPEED : GameConfiguration_Access;
      SOUND_VOLUME : GameConfiguration_Access;
      MAX_GAME_OBJECTS : GameConfiguration_Access;
      MAX_LAYERS : GameConfiguration_Access;
      gameControlFidelity : Integer;
   end record;
   SINGLETON : Java_Object_Access;

   procedure Initialize (This : in out GameConfigurationCentral'Class);
   function Create return GameConfigurationCentral_Access;
   function getInstance return GameConfigurationCentral_Access;
   procedure load (This : in out GameConfigurationCentral; abeClientInformation : AbeClientInformationInterface_Access);
   procedure setGameControlFidelity (This : in out GameConfigurationCentral; gameControlFidelity : Integer);
   function getGameControlFidelity (This : in out GameConfigurationCentral) return Integer;
   function toString (This : in out GameConfigurationCentral) return Unbounded_String;

end org.allbinary.game.configuration.GameConfigurationCentral_Package;


