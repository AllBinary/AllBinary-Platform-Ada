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

with AllBinary_Java;
limited with org.allbinary.game.configuration.GameConfigurationUtil_Package;
package org.allbinary.game.configuration.GameConfigurationUtil_Package_References is
   type GameConfigurationUtil_Access is access all org.allbinary.game.configuration.GameConfigurationUtil_Package.GameConfigurationUtil'Class;
   type GameConfigurationUtil_Access_Array is array (Natural range <>) of GameConfigurationUtil_Access;
   type GameConfigurationUtil_Access_Array_Access is access all GameConfigurationUtil_Access_Array;
   type GameConfigurationUtil_Access_Array_Access_Array is array (Natural range <>) of GameConfigurationUtil_Access_Array_Access;
   type GameConfigurationUtil_Access_Array_Access_Array_Access is access all GameConfigurationUtil_Access_Array_Access_Array;
   type GameConfigurationUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameConfigurationUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : GameConfigurationUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameConfigurationUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameConfigurationUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameConfigurationUtil_Access_Array_Access is (if Value /= null and then Value.all in GameConfigurationUtil_Access_Array_Object'Class then GameConfigurationUtil_Access_Array_Object'Class (Value.all).Value else null);
   type GameConfigurationUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameConfigurationUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : GameConfigurationUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameConfigurationUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameConfigurationUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameConfigurationUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in GameConfigurationUtil_Access_Array_Access_Array_Object'Class then GameConfigurationUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.configuration.GameConfigurationUtil_Package_References;

with org.allbinary.game.configuration.GameConfigurationUtil_Package_References;
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
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
limited with org.allbinary.game.configuration.GameConfiguration_Package;
with org.allbinary.game.configuration.GameConfiguration_Package_References;
limited with org.allbinary.game.configuration.GameOptionsForm_Package;
with org.allbinary.game.configuration.GameOptionsForm_Package_References;
limited with org.allbinary.game.configuration.GameConfigurationGauge_Package;
with org.allbinary.game.configuration.GameConfigurationGauge_Package_References;

package org.allbinary.game.configuration.GameConfigurationUtil_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
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
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
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
   subtype GameOptionsForm_Access is org.allbinary.game.configuration.GameOptionsForm_Package_References.GameOptionsForm_Access;
   use type GameOptionsForm_Access;
   subtype GameOptionsForm_Access_Array is org.allbinary.game.configuration.GameOptionsForm_Package_References.GameOptionsForm_Access_Array;
   use type GameOptionsForm_Access_Array;
   subtype GameOptionsForm_Access_Array_Access is org.allbinary.game.configuration.GameOptionsForm_Package_References.GameOptionsForm_Access_Array_Access;
   use type GameOptionsForm_Access_Array_Access;
   subtype GameOptionsForm_Access_Array_Access_Array is org.allbinary.game.configuration.GameOptionsForm_Package_References.GameOptionsForm_Access_Array_Access_Array;
   use type GameOptionsForm_Access_Array_Access_Array;
   subtype GameOptionsForm_Access_Array_Access_Array_Access is org.allbinary.game.configuration.GameOptionsForm_Package_References.GameOptionsForm_Access_Array_Access_Array_Access;
   use type GameOptionsForm_Access_Array_Access_Array_Access;
   subtype GameConfigurationGauge_Access is org.allbinary.game.configuration.GameConfigurationGauge_Package_References.GameConfigurationGauge_Access;
   use type GameConfigurationGauge_Access;
   subtype GameConfigurationGauge_Access_Array is org.allbinary.game.configuration.GameConfigurationGauge_Package_References.GameConfigurationGauge_Access_Array;
   use type GameConfigurationGauge_Access_Array;
   subtype GameConfigurationGauge_Access_Array_Access is org.allbinary.game.configuration.GameConfigurationGauge_Package_References.GameConfigurationGauge_Access_Array_Access;
   use type GameConfigurationGauge_Access_Array_Access;
   subtype GameConfigurationGauge_Access_Array_Access_Array is org.allbinary.game.configuration.GameConfigurationGauge_Package_References.GameConfigurationGauge_Access_Array_Access_Array;
   use type GameConfigurationGauge_Access_Array_Access_Array;
   subtype GameConfigurationGauge_Access_Array_Access_Array_Access is org.allbinary.game.configuration.GameConfigurationGauge_Package_References.GameConfigurationGauge_Access_Array_Access_Array_Access;
   use type GameConfigurationGauge_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype GameConfigurationUtil_Access is org.allbinary.game.configuration.GameConfigurationUtil_Package_References.GameConfigurationUtil_Access;
   function "=" (Left, Right : GameConfigurationUtil_Access) return Boolean renames org.allbinary.game.configuration.GameConfigurationUtil_Package_References."=";
   subtype GameConfigurationUtil_Access_Array is org.allbinary.game.configuration.GameConfigurationUtil_Package_References.GameConfigurationUtil_Access_Array;
   function "=" (Left, Right : GameConfigurationUtil_Access_Array) return Boolean renames org.allbinary.game.configuration.GameConfigurationUtil_Package_References."=";
   subtype GameConfigurationUtil_Access_Array_Access is org.allbinary.game.configuration.GameConfigurationUtil_Package_References.GameConfigurationUtil_Access_Array_Access;
   function "=" (Left, Right : GameConfigurationUtil_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.GameConfigurationUtil_Package_References."=";
   function Java_Box (Value : GameConfigurationUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.configuration.GameConfigurationUtil_Package_References.Java_Box;
   function Java_Unbox_GameConfigurationUtil_Access_Array (Value : access Java_Object'Class) return GameConfigurationUtil_Access_Array_Access renames org.allbinary.game.configuration.GameConfigurationUtil_Package_References.Java_Unbox_GameConfigurationUtil_Access_Array;
   subtype GameConfigurationUtil_Access_Array_Access_Array is org.allbinary.game.configuration.GameConfigurationUtil_Package_References.GameConfigurationUtil_Access_Array_Access_Array;
   function "=" (Left, Right : GameConfigurationUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.game.configuration.GameConfigurationUtil_Package_References."=";
   subtype GameConfigurationUtil_Access_Array_Access_Array_Access is org.allbinary.game.configuration.GameConfigurationUtil_Package_References.GameConfigurationUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameConfigurationUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.GameConfigurationUtil_Package_References."=";
   function Java_Box (Value : GameConfigurationUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.configuration.GameConfigurationUtil_Package_References.Java_Box;
   function Java_Unbox_GameConfigurationUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return GameConfigurationUtil_Access_Array_Access_Array_Access renames org.allbinary.game.configuration.GameConfigurationUtil_Package_References.Java_Unbox_GameConfigurationUtil_Access_Array_Access_Array;

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


