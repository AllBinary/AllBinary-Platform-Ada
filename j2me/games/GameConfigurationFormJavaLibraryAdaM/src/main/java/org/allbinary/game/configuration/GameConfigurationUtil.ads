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
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.game.configuration.GameConfiguration_Package; use org.allbinary.game.configuration.GameConfiguration_Package;
with org.allbinary.game.configuration.GameOptionsForm_Package; use org.allbinary.game.configuration.GameOptionsForm_Package;
with org.allbinary.game.configuration.GameConfigurationGauge_Package; use org.allbinary.game.configuration.GameConfigurationGauge_Package;

package org.allbinary.game.configuration.GameConfigurationUtil_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type GameConfigurationUtil is tagged;
   type GameConfigurationUtil_Access is access all GameConfigurationUtil'Class;
   type GameConfigurationUtil_Access_Array is array (Natural range <>) of GameConfigurationUtil_Access;
   type GameConfigurationUtil_Access_Array_Access is access all GameConfigurationUtil_Access_Array;
   type GameConfigurationUtil_Access_Array_Access_Array is array (Natural range <>) of GameConfigurationUtil_Access_Array_Access;
   type GameConfigurationUtil_Access_Array_Access_Array_Access is access all GameConfigurationUtil_Access_Array_Access_Array;

   type GameConfigurationUtil is new Java_Object with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      GAUGE_UPDATE : Unbounded_String;
      FROM : Unbounded_String;
      TO : Unbounded_String;
      COMPETITION_VALUE : Integer;
   end record;
   instance : GameConfigurationUtil_Access;

   procedure Initialize (This : in out GameConfigurationUtil'Class);
   function Create return GameConfigurationUtil_Access;
   function getInstance return GameConfigurationUtil_Access;
   procedure change (This : in out GameConfigurationUtil; gameOptionsForm_Param : access GameOptionsForm_Package.GameOptionsForm'Class; gauge_Param : access GameConfigurationGauge_Package.GameConfigurationGauge'Class);
   procedure update (This : in out GameConfigurationUtil; gauge_Param : access GameConfigurationGauge_Package.GameConfigurationGauge'Class);
   procedure setDefault (This : in out GameConfigurationUtil; gauge_Param : access GameConfigurationGauge_Package.GameConfigurationGauge'Class);
   procedure updateChallange (This : in out GameConfigurationUtil; gameOptionsForm_Param : access GameOptionsForm_Package.GameOptionsForm'Class; gameConfiguration_Param : access GameConfiguration_Package.GameConfiguration'Class);
   procedure updateCompetitionValue (This : in out GameConfigurationUtil);
   function getCompetitionValue (This : in out GameConfigurationUtil) return Integer;

end org.allbinary.game.configuration.GameConfigurationUtil_Package;


