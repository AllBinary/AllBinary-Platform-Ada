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

limited with org.allbinary.game.configuration.feature.MainFeatureFactory_Package;
package org.allbinary.game.configuration.feature.MainFeatureFactory_Package_References is
   type MainFeatureFactory_Access is access all org.allbinary.game.configuration.feature.MainFeatureFactory_Package.MainFeatureFactory'Class;
   type MainFeatureFactory_Access_Array is array (Natural range <>) of MainFeatureFactory_Access;
   type MainFeatureFactory_Access_Array_Access is access all MainFeatureFactory_Access_Array;
   type MainFeatureFactory_Access_Array_Access_Array is array (Natural range <>) of MainFeatureFactory_Access_Array_Access;
   type MainFeatureFactory_Access_Array_Access_Array_Access is access all MainFeatureFactory_Access_Array_Access_Array;
end org.allbinary.game.configuration.feature.MainFeatureFactory_Package_References;

with org.allbinary.game.configuration.feature.MainFeatureFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.configuration.feature.Feature_Package;
with org.allbinary.game.configuration.feature.Feature_Package_References;

package org.allbinary.game.configuration.feature.MainFeatureFactory_Package is

   package Reference_Types is
   subtype Feature_Access is org.allbinary.game.configuration.feature.Feature_Package_References.Feature_Access;
   use type Feature_Access;
   subtype Feature_Access_Array is org.allbinary.game.configuration.feature.Feature_Package_References.Feature_Access_Array;
   use type Feature_Access_Array;
   subtype Feature_Access_Array_Access is org.allbinary.game.configuration.feature.Feature_Package_References.Feature_Access_Array_Access;
   use type Feature_Access_Array_Access;
   subtype Feature_Access_Array_Access_Array is org.allbinary.game.configuration.feature.Feature_Package_References.Feature_Access_Array_Access_Array;
   use type Feature_Access_Array_Access_Array;
   subtype Feature_Access_Array_Access_Array_Access is org.allbinary.game.configuration.feature.Feature_Package_References.Feature_Access_Array_Access_Array_Access;
   use type Feature_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype MainFeatureFactory_Access is org.allbinary.game.configuration.feature.MainFeatureFactory_Package_References.MainFeatureFactory_Access;
   function "=" (Left, Right : MainFeatureFactory_Access) return Boolean renames org.allbinary.game.configuration.feature.MainFeatureFactory_Package_References."=";
   subtype MainFeatureFactory_Access_Array is org.allbinary.game.configuration.feature.MainFeatureFactory_Package_References.MainFeatureFactory_Access_Array;
   function "=" (Left, Right : MainFeatureFactory_Access_Array) return Boolean renames org.allbinary.game.configuration.feature.MainFeatureFactory_Package_References."=";
   subtype MainFeatureFactory_Access_Array_Access is org.allbinary.game.configuration.feature.MainFeatureFactory_Package_References.MainFeatureFactory_Access_Array_Access;
   function "=" (Left, Right : MainFeatureFactory_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.feature.MainFeatureFactory_Package_References."=";
   subtype MainFeatureFactory_Access_Array_Access_Array is org.allbinary.game.configuration.feature.MainFeatureFactory_Package_References.MainFeatureFactory_Access_Array_Access_Array;
   function "=" (Left, Right : MainFeatureFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.configuration.feature.MainFeatureFactory_Package_References."=";
   subtype MainFeatureFactory_Access_Array_Access_Array_Access is org.allbinary.game.configuration.feature.MainFeatureFactory_Package_References.MainFeatureFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MainFeatureFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.feature.MainFeatureFactory_Package_References."=";

   type MainFeatureFactory is new Java_Object with record
      FULL_SCREEN : Feature_Access;
      TITLE_BAR : Feature_Access;
      STATIC : Feature_Access;
      LOAD_ONDEMAND : Feature_Access;
      LOAD_ALL : Feature_Access;
   end record;
   instance : MainFeatureFactory_Access;

   procedure Initialize (This : in out MainFeatureFactory'Class);
   function Create return MainFeatureFactory_Access;
   function getInstance return MainFeatureFactory_Access;

end org.allbinary.game.configuration.feature.MainFeatureFactory_Package;


