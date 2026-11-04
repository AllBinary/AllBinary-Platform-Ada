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

limited with org.allbinary.game.configuration.feature.SensorFeatureFactory_Package;
package org.allbinary.game.configuration.feature.SensorFeatureFactory_Package_References is
   type SensorFeatureFactory_Access is access all org.allbinary.game.configuration.feature.SensorFeatureFactory_Package.SensorFeatureFactory'Class;
   type SensorFeatureFactory_Access_Array is array (Natural range <>) of SensorFeatureFactory_Access;
   type SensorFeatureFactory_Access_Array_Access is access all SensorFeatureFactory_Access_Array;
   type SensorFeatureFactory_Access_Array_Access_Array is array (Natural range <>) of SensorFeatureFactory_Access_Array_Access;
   type SensorFeatureFactory_Access_Array_Access_Array_Access is access all SensorFeatureFactory_Access_Array_Access_Array;
end org.allbinary.game.configuration.feature.SensorFeatureFactory_Package_References;

with org.allbinary.game.configuration.feature.SensorFeatureFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.configuration.feature.SensorFeature_Package;
with org.allbinary.game.configuration.feature.SensorFeature_Package_References;

package org.allbinary.game.configuration.feature.SensorFeatureFactory_Package is

   package Reference_Types is
   subtype SensorFeature_Access is org.allbinary.game.configuration.feature.SensorFeature_Package_References.SensorFeature_Access;
   use type SensorFeature_Access;
   subtype SensorFeature_Access_Array is org.allbinary.game.configuration.feature.SensorFeature_Package_References.SensorFeature_Access_Array;
   use type SensorFeature_Access_Array;
   subtype SensorFeature_Access_Array_Access is org.allbinary.game.configuration.feature.SensorFeature_Package_References.SensorFeature_Access_Array_Access;
   use type SensorFeature_Access_Array_Access;
   subtype SensorFeature_Access_Array_Access_Array is org.allbinary.game.configuration.feature.SensorFeature_Package_References.SensorFeature_Access_Array_Access_Array;
   use type SensorFeature_Access_Array_Access_Array;
   subtype SensorFeature_Access_Array_Access_Array_Access is org.allbinary.game.configuration.feature.SensorFeature_Package_References.SensorFeature_Access_Array_Access_Array_Access;
   use type SensorFeature_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype SensorFeatureFactory_Access is org.allbinary.game.configuration.feature.SensorFeatureFactory_Package_References.SensorFeatureFactory_Access;
   function "=" (Left, Right : SensorFeatureFactory_Access) return Boolean renames org.allbinary.game.configuration.feature.SensorFeatureFactory_Package_References."=";
   subtype SensorFeatureFactory_Access_Array is org.allbinary.game.configuration.feature.SensorFeatureFactory_Package_References.SensorFeatureFactory_Access_Array;
   function "=" (Left, Right : SensorFeatureFactory_Access_Array) return Boolean renames org.allbinary.game.configuration.feature.SensorFeatureFactory_Package_References."=";
   subtype SensorFeatureFactory_Access_Array_Access is org.allbinary.game.configuration.feature.SensorFeatureFactory_Package_References.SensorFeatureFactory_Access_Array_Access;
   function "=" (Left, Right : SensorFeatureFactory_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.feature.SensorFeatureFactory_Package_References."=";
   subtype SensorFeatureFactory_Access_Array_Access_Array is org.allbinary.game.configuration.feature.SensorFeatureFactory_Package_References.SensorFeatureFactory_Access_Array_Access_Array;
   function "=" (Left, Right : SensorFeatureFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.configuration.feature.SensorFeatureFactory_Package_References."=";
   subtype SensorFeatureFactory_Access_Array_Access_Array_Access is org.allbinary.game.configuration.feature.SensorFeatureFactory_Package_References.SensorFeatureFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SensorFeatureFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.feature.SensorFeatureFactory_Package_References."=";

   type SensorFeatureFactory is new Java_Object with record
      NO_ORIENTATION : SensorFeature_Access;
      ORIENTATION_SENSORS : SensorFeature_Access;
      SIMULATED_ORIENTATION_SENSORS : SensorFeature_Access;
      YAW : SensorFeature_Access;
      YAW_MINUS_RIGHT_PLUS_LEFT : SensorFeature_Access;
      YAW_MINUS_LEFT_PLUS_RIGHT : SensorFeature_Access;
      PITCH : SensorFeature_Access;
      ROLL : SensorFeature_Access;
   end record;
   instance : SensorFeatureFactory_Access;

   procedure Initialize (This : in out SensorFeatureFactory'Class);
   function Create return SensorFeatureFactory_Access;
   function getInstance return SensorFeatureFactory_Access;

end org.allbinary.game.configuration.feature.SensorFeatureFactory_Package;


