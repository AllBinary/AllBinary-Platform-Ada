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

limited with org.allbinary.game.configuration.GameConfigurationGauge_Package;
package org.allbinary.game.configuration.GameConfigurationGauge_Package_References is
   type GameConfigurationGauge_Access is access all org.allbinary.game.configuration.GameConfigurationGauge_Package.GameConfigurationGauge'Class;
   type GameConfigurationGauge_Access_Array is array (Natural range <>) of GameConfigurationGauge_Access;
   type GameConfigurationGauge_Access_Array_Access is access all GameConfigurationGauge_Access_Array;
   type GameConfigurationGauge_Access_Array_Access_Array is array (Natural range <>) of GameConfigurationGauge_Access_Array_Access;
   type GameConfigurationGauge_Access_Array_Access_Array_Access is access all GameConfigurationGauge_Access_Array_Access_Array;
end org.allbinary.game.configuration.GameConfigurationGauge_Package_References;

with org.allbinary.game.configuration.GameConfigurationGauge_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with javax.microedition.lcdui.Gauge_Package; use javax.microedition.lcdui.Gauge_Package;
limited with org.allbinary.game.configuration.GameConfiguration_Package;
with org.allbinary.game.configuration.GameConfiguration_Package_References;

package org.allbinary.game.configuration.GameConfigurationGauge_Package is

   package Gauge_Package renames Standard.javax.microedition.lcdui.Gauge_Package;
   package Reference_Types is
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


   subtype GameConfigurationGauge_Access is org.allbinary.game.configuration.GameConfigurationGauge_Package_References.GameConfigurationGauge_Access;
   function "=" (Left, Right : GameConfigurationGauge_Access) return Boolean renames org.allbinary.game.configuration.GameConfigurationGauge_Package_References."=";
   subtype GameConfigurationGauge_Access_Array is org.allbinary.game.configuration.GameConfigurationGauge_Package_References.GameConfigurationGauge_Access_Array;
   function "=" (Left, Right : GameConfigurationGauge_Access_Array) return Boolean renames org.allbinary.game.configuration.GameConfigurationGauge_Package_References."=";
   subtype GameConfigurationGauge_Access_Array_Access is org.allbinary.game.configuration.GameConfigurationGauge_Package_References.GameConfigurationGauge_Access_Array_Access;
   function "=" (Left, Right : GameConfigurationGauge_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.GameConfigurationGauge_Package_References."=";
   subtype GameConfigurationGauge_Access_Array_Access_Array is org.allbinary.game.configuration.GameConfigurationGauge_Package_References.GameConfigurationGauge_Access_Array_Access_Array;
   function "=" (Left, Right : GameConfigurationGauge_Access_Array_Access_Array) return Boolean renames org.allbinary.game.configuration.GameConfigurationGauge_Package_References."=";
   subtype GameConfigurationGauge_Access_Array_Access_Array_Access is org.allbinary.game.configuration.GameConfigurationGauge_Package_References.GameConfigurationGauge_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameConfigurationGauge_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.GameConfigurationGauge_Package_References."=";

   type GameConfigurationGauge is new Gauge with null record;

   procedure Initialize (This : in out GameConfigurationGauge'Class; gameConfiguration_Param : access GameConfiguration_Package.GameConfiguration'Class);
   function Create (gameConfiguration_Param : access GameConfiguration_Package.GameConfiguration'Class) return GameConfigurationGauge_Access;

end org.allbinary.game.configuration.GameConfigurationGauge_Package;


