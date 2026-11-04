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

limited with org.allbinary.game.configuration.feature.InputFeatureFactory_Package;
package org.allbinary.game.configuration.feature.InputFeatureFactory_Package_References is
   type InputFeatureFactory_Access is access all org.allbinary.game.configuration.feature.InputFeatureFactory_Package.InputFeatureFactory'Class;
   type InputFeatureFactory_Access_Array is array (Natural range <>) of InputFeatureFactory_Access;
   type InputFeatureFactory_Access_Array_Access is access all InputFeatureFactory_Access_Array;
   type InputFeatureFactory_Access_Array_Access_Array is array (Natural range <>) of InputFeatureFactory_Access_Array_Access;
   type InputFeatureFactory_Access_Array_Access_Array_Access is access all InputFeatureFactory_Access_Array_Access_Array;
end org.allbinary.game.configuration.feature.InputFeatureFactory_Package_References;

with org.allbinary.game.configuration.feature.InputFeatureFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.configuration.feature.InputFeature_Package;
with org.allbinary.game.configuration.feature.InputFeature_Package_References;

package org.allbinary.game.configuration.feature.InputFeatureFactory_Package is

   package Reference_Types is
   subtype InputFeature_Access is org.allbinary.game.configuration.feature.InputFeature_Package_References.InputFeature_Access;
   use type InputFeature_Access;
   subtype InputFeature_Access_Array is org.allbinary.game.configuration.feature.InputFeature_Package_References.InputFeature_Access_Array;
   use type InputFeature_Access_Array;
   subtype InputFeature_Access_Array_Access is org.allbinary.game.configuration.feature.InputFeature_Package_References.InputFeature_Access_Array_Access;
   use type InputFeature_Access_Array_Access;
   subtype InputFeature_Access_Array_Access_Array is org.allbinary.game.configuration.feature.InputFeature_Package_References.InputFeature_Access_Array_Access_Array;
   use type InputFeature_Access_Array_Access_Array;
   subtype InputFeature_Access_Array_Access_Array_Access is org.allbinary.game.configuration.feature.InputFeature_Package_References.InputFeature_Access_Array_Access_Array_Access;
   use type InputFeature_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype InputFeatureFactory_Access is org.allbinary.game.configuration.feature.InputFeatureFactory_Package_References.InputFeatureFactory_Access;
   function "=" (Left, Right : InputFeatureFactory_Access) return Boolean renames org.allbinary.game.configuration.feature.InputFeatureFactory_Package_References."=";
   subtype InputFeatureFactory_Access_Array is org.allbinary.game.configuration.feature.InputFeatureFactory_Package_References.InputFeatureFactory_Access_Array;
   function "=" (Left, Right : InputFeatureFactory_Access_Array) return Boolean renames org.allbinary.game.configuration.feature.InputFeatureFactory_Package_References."=";
   subtype InputFeatureFactory_Access_Array_Access is org.allbinary.game.configuration.feature.InputFeatureFactory_Package_References.InputFeatureFactory_Access_Array_Access;
   function "=" (Left, Right : InputFeatureFactory_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.feature.InputFeatureFactory_Package_References."=";
   subtype InputFeatureFactory_Access_Array_Access_Array is org.allbinary.game.configuration.feature.InputFeatureFactory_Package_References.InputFeatureFactory_Access_Array_Access_Array;
   function "=" (Left, Right : InputFeatureFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.configuration.feature.InputFeatureFactory_Package_References."=";
   subtype InputFeatureFactory_Access_Array_Access_Array_Access is org.allbinary.game.configuration.feature.InputFeatureFactory_Package_References.InputFeatureFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InputFeatureFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.feature.InputFeatureFactory_Package_References."=";

   type InputFeatureFactory is new Java_Object with record
      REMOVE_DUPLICATE_KEY_PRESSES : InputFeature_Access;
      INPUT_MAPPING : InputFeature_Access;
      MULTI_KEY_PRESS : InputFeature_Access;
      SINGLE_KEY_REPEAT_PRESS : InputFeature_Access;
      SINGLE_KEY_PRESS : InputFeature_Access;
   end record;
   instance : InputFeatureFactory_Access;

   procedure Initialize (This : in out InputFeatureFactory'Class);
   function Create return InputFeatureFactory_Access;
   function getInstance return InputFeatureFactory_Access;
   function isSingleKeyProcessing (This : in out InputFeatureFactory) return Boolean;

end org.allbinary.game.configuration.feature.InputFeatureFactory_Package;


