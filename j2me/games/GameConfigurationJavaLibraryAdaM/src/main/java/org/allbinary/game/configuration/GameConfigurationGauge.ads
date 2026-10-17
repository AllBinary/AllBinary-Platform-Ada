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
--  with javax.microedition.lcdui.Gauge_Package; use javax.microedition.lcdui.Gauge_Package;

package org.allbinary.game.configuration.GameConfigurationGauge_Package is


   type GameConfigurationGauge is tagged;
   type GameConfigurationGauge_Access is access all GameConfigurationGauge'Class;
   type GameConfigurationGauge_Access_Array is array (Natural range <>) of GameConfigurationGauge_Access;
   type GameConfigurationGauge_Access_Array_Access is access all GameConfigurationGauge_Access_Array;

   type GameConfigurationGauge is new Gauge with null record;

   procedure Initialize (This : in out GameConfigurationGauge'Class; gameConfiguration : GameConfiguration_Access);
   function Create (gameConfiguration : GameConfiguration_Access) return GameConfigurationGauge_Access;

end org.allbinary.game.configuration.GameConfigurationGauge_Package;


