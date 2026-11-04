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

limited with org.allbinary.game.configuration.GameConfigurationCentral_Package;
package org.allbinary.game.configuration.GameConfigurationCentral_Package_References is
   type GameConfigurationCentral_Access is access all org.allbinary.game.configuration.GameConfigurationCentral_Package.GameConfigurationCentral'Class;
   type GameConfigurationCentral_Access_Array is array (Natural range <>) of GameConfigurationCentral_Access;
   type GameConfigurationCentral_Access_Array_Access is access all GameConfigurationCentral_Access_Array;
   type GameConfigurationCentral_Access_Array_Access_Array is array (Natural range <>) of GameConfigurationCentral_Access_Array_Access;
   type GameConfigurationCentral_Access_Array_Access_Array_Access is access all GameConfigurationCentral_Access_Array_Access_Array;
end org.allbinary.game.configuration.GameConfigurationCentral_Package_References;

with org.allbinary.game.configuration.GameConfigurationCentral_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References;
limited with org.allbinary.game.configuration.GameConfiguration_Package;
with org.allbinary.game.configuration.GameConfiguration_Package_References;

package org.allbinary.game.configuration.GameConfigurationCentral_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package Reference_Types is
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype AbeClientInformationInterface_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access;
   use type AbeClientInformationInterface_Access;
   subtype AbeClientInformationInterface_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array;
   use type AbeClientInformationInterface_Access_Array;
   subtype AbeClientInformationInterface_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access;
   use type AbeClientInformationInterface_Access_Array_Access;
   subtype AbeClientInformationInterface_Access_Array_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access_Array;
   use type AbeClientInformationInterface_Access_Array_Access_Array;
   subtype AbeClientInformationInterface_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access_Array_Access;
   use type AbeClientInformationInterface_Access_Array_Access_Array_Access;
   subtype GameConfiguration_Access is org.allbinary.game.configuration.GameConfiguration_Package_References.GameConfiguration_Access;
   use type GameConfiguration_Access;
   subtype GameConfiguration_Access_Array is org.allbinary.game.configuration.GameConfiguration_Package_References.GameConfiguration_Access_Array;
   use type GameConfiguration_Access_Array;
   subtype GameConfiguration_Access_Array_Access is org.allbinary.game.configuration.GameConfiguration_Package_References.GameConfiguration_Access_Array_Access;
   use type GameConfiguration_Access_Array_Access;
   subtype GameConfiguration_Access_Array_Access_Array is org.allbinary.game.configuration.GameConfiguration_Package_References.GameConfiguration_Access_Array_Access_Array;
   use type GameConfiguration_Access_Array_Access_Array;
   subtype GameConfiguration_Access_Array_Access_Array_Access is org.allbinary.game.configuration.GameConfiguration_Package_References.GameConfiguration_Access_Array_Access_Array_Access;
   use type GameConfiguration_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype GameConfigurationCentral_Access is org.allbinary.game.configuration.GameConfigurationCentral_Package_References.GameConfigurationCentral_Access;
   function "=" (Left, Right : GameConfigurationCentral_Access) return Boolean renames org.allbinary.game.configuration.GameConfigurationCentral_Package_References."=";
   subtype GameConfigurationCentral_Access_Array is org.allbinary.game.configuration.GameConfigurationCentral_Package_References.GameConfigurationCentral_Access_Array;
   function "=" (Left, Right : GameConfigurationCentral_Access_Array) return Boolean renames org.allbinary.game.configuration.GameConfigurationCentral_Package_References."=";
   subtype GameConfigurationCentral_Access_Array_Access is org.allbinary.game.configuration.GameConfigurationCentral_Package_References.GameConfigurationCentral_Access_Array_Access;
   function "=" (Left, Right : GameConfigurationCentral_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.GameConfigurationCentral_Package_References."=";
   subtype GameConfigurationCentral_Access_Array_Access_Array is org.allbinary.game.configuration.GameConfigurationCentral_Package_References.GameConfigurationCentral_Access_Array_Access_Array;
   function "=" (Left, Right : GameConfigurationCentral_Access_Array_Access_Array) return Boolean renames org.allbinary.game.configuration.GameConfigurationCentral_Package_References."=";
   subtype GameConfigurationCentral_Access_Array_Access_Array_Access is org.allbinary.game.configuration.GameConfigurationCentral_Package_References.GameConfigurationCentral_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameConfigurationCentral_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.GameConfigurationCentral_Package_References."=";

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
   procedure load (This : in out GameConfigurationCentral; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class);
   procedure setGameControlFidelity (This : in out GameConfigurationCentral; gameControlFidelity : Integer);
   function getGameControlFidelity (This : in out GameConfigurationCentral) return Integer;
   function toString (This : in out GameConfigurationCentral) return Unbounded_String;

end org.allbinary.game.configuration.GameConfigurationCentral_Package;


