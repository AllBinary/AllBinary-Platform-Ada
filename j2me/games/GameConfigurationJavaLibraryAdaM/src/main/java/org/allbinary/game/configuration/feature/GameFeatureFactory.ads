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

package org.allbinary.game.configuration.feature.GameFeatureFactory_Package is


   type GameFeatureFactory is tagged;
   type GameFeatureFactory_Access is access all GameFeatureFactory'Class;
   type GameFeatureFactory_Access_Array is array (Natural range <>) of GameFeatureFactory_Access;
   type GameFeatureFactory_Access_Array_Access is access all GameFeatureFactory_Access_Array;

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
   procedure getInstance;

end org.allbinary.game.configuration.feature.GameFeatureFactory_Package;


