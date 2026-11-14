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
limited with org.allbinary.game.configuration.feature.GameFeatureFactory_Package;
package org.allbinary.game.configuration.feature.GameFeatureFactory_Package_References is
   type GameFeatureFactory_Access is access all org.allbinary.game.configuration.feature.GameFeatureFactory_Package.GameFeatureFactory'Class;
   type GameFeatureFactory_Access_Array is array (Natural range <>) of GameFeatureFactory_Access;
   type GameFeatureFactory_Access_Array_Access is access all GameFeatureFactory_Access_Array;
   type GameFeatureFactory_Access_Array_Access_Array is array (Natural range <>) of GameFeatureFactory_Access_Array_Access;
   type GameFeatureFactory_Access_Array_Access_Array_Access is access all GameFeatureFactory_Access_Array_Access_Array;
   type GameFeatureFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameFeatureFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : GameFeatureFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameFeatureFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameFeatureFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameFeatureFactory_Access_Array_Access is (if Value /= null and then Value.all in GameFeatureFactory_Access_Array_Object'Class then GameFeatureFactory_Access_Array_Object'Class (Value.all).Value else null);
   type GameFeatureFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameFeatureFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : GameFeatureFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameFeatureFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameFeatureFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameFeatureFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in GameFeatureFactory_Access_Array_Access_Array_Object'Class then GameFeatureFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.configuration.feature.GameFeatureFactory_Package_References;

with org.allbinary.game.configuration.feature.GameFeatureFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.configuration.feature.GameFeature_Package;
with org.allbinary.game.configuration.feature.GameFeature_Package_References;
limited with org.allbinary.game.configuration.feature.Feature_Package;
with org.allbinary.game.configuration.feature.Feature_Package_References;

package org.allbinary.game.configuration.feature.GameFeatureFactory_Package is

   package Reference_Types is
   subtype GameFeature_Access is org.allbinary.game.configuration.feature.GameFeature_Package_References.GameFeature_Access;
   use type GameFeature_Access;
   subtype GameFeature_Access_Array is org.allbinary.game.configuration.feature.GameFeature_Package_References.GameFeature_Access_Array;
   use type GameFeature_Access_Array;
   subtype GameFeature_Access_Array_Access is org.allbinary.game.configuration.feature.GameFeature_Package_References.GameFeature_Access_Array_Access;
   use type GameFeature_Access_Array_Access;
   subtype GameFeature_Access_Array_Access_Array is org.allbinary.game.configuration.feature.GameFeature_Package_References.GameFeature_Access_Array_Access_Array;
   use type GameFeature_Access_Array_Access_Array;
   subtype GameFeature_Access_Array_Access_Array_Access is org.allbinary.game.configuration.feature.GameFeature_Package_References.GameFeature_Access_Array_Access_Array_Access;
   use type GameFeature_Access_Array_Access_Array_Access;
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


   subtype GameFeatureFactory_Access is org.allbinary.game.configuration.feature.GameFeatureFactory_Package_References.GameFeatureFactory_Access;
   function "=" (Left, Right : GameFeatureFactory_Access) return Boolean renames org.allbinary.game.configuration.feature.GameFeatureFactory_Package_References."=";
   subtype GameFeatureFactory_Access_Array is org.allbinary.game.configuration.feature.GameFeatureFactory_Package_References.GameFeatureFactory_Access_Array;
   function "=" (Left, Right : GameFeatureFactory_Access_Array) return Boolean renames org.allbinary.game.configuration.feature.GameFeatureFactory_Package_References."=";
   subtype GameFeatureFactory_Access_Array_Access is org.allbinary.game.configuration.feature.GameFeatureFactory_Package_References.GameFeatureFactory_Access_Array_Access;
   function "=" (Left, Right : GameFeatureFactory_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.feature.GameFeatureFactory_Package_References."=";
   function Java_Box (Value : GameFeatureFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.configuration.feature.GameFeatureFactory_Package_References.Java_Box;
   function Java_Unbox_GameFeatureFactory_Access_Array (Value : access Java_Object'Class) return GameFeatureFactory_Access_Array_Access renames org.allbinary.game.configuration.feature.GameFeatureFactory_Package_References.Java_Unbox_GameFeatureFactory_Access_Array;
   subtype GameFeatureFactory_Access_Array_Access_Array is org.allbinary.game.configuration.feature.GameFeatureFactory_Package_References.GameFeatureFactory_Access_Array_Access_Array;
   function "=" (Left, Right : GameFeatureFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.configuration.feature.GameFeatureFactory_Package_References."=";
   subtype GameFeatureFactory_Access_Array_Access_Array_Access is org.allbinary.game.configuration.feature.GameFeatureFactory_Package_References.GameFeatureFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameFeatureFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.feature.GameFeatureFactory_Package_References."=";
   function Java_Box (Value : GameFeatureFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.configuration.feature.GameFeatureFactory_Package_References.Java_Box;
   function Java_Unbox_GameFeatureFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return GameFeatureFactory_Access_Array_Access_Array_Access renames org.allbinary.game.configuration.feature.GameFeatureFactory_Package_References.Java_Unbox_GameFeatureFactory_Access_Array_Access_Array;

   type GameFeatureFactory is new Java_Object with record
      SOUND : GameFeature_Access;
      MUSIC : GameFeature_Access;
      SCREEN_SHAKE : Feature_Access;
      POST_IMAGE_LOADING_MODIFICATION : Feature_Access;
      HEALTH_BARS : GameFeature_Access;
      DAMAGE_FLOATERS : GameFeature_Access;
      GAME_INPUT_LAYER_PROCESSOR : GameFeature_Access;
      ARTIFICIAL_INTELLEGENCE_PROCESSOR : GameFeature_Access;
      COLLIDABLE_INTERFACE_LAYER_PROCESSOR : GameFeature_Access;
      TICKABLE_LAYER_PROCESSOR : GameFeature_Access;
      CHEATING : GameFeature_Access;
      DROPPED_ITEMS : GameFeature_Access;
      DROPPED_ITEMS_FROM_DEATH : GameFeature_Access;
      TEST_DESTROYED_LAYER_PROCESSOR : GameFeature_Access;
      COLLISIONS_WITH_SOURCE : GameFeature_Access;
      COLLISIONS_FORCED_TWO_DIMENSIONAL : GameFeature_Access;
   end record;
   instance : GameFeatureFactory_Access;

   procedure Initialize (This : in out GameFeatureFactory'Class);
   function Create return GameFeatureFactory_Access;
   function getInstance return GameFeatureFactory_Access;

end org.allbinary.game.configuration.feature.GameFeatureFactory_Package;


