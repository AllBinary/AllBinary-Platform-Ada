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


package body org.allbinary.game.configuration.feature.GameFeatureFactory_Package is

   procedure Initialize_Fields (This : in out GameFeatureFactory'Class) is
   begin
      null;
      This.SOUND := GameFeature_Package.Create (To_Unbounded_String ("Sound"));
      This.MUSIC := GameFeature_Package.Create (To_Unbounded_String ("Music"));
      This.SCREEN_SHAKE := Feature_Package.Create (To_Unbounded_String ("Screen Shake"));
      This.POST_IMAGE_LOADING_MODIFICATION := Feature_Package.Create (To_Unbounded_String ("Post Image Loading Modification (Scaling, Rotation, or Other)"));
      This.HEALTH_BARS := GameFeature_Package.Create (To_Unbounded_String ("Health Bars"));
      This.DAMAGE_FLOATERS := GameFeature_Package.Create (To_Unbounded_String ("Damage Floaters"));
      This.GAME_INPUT_LAYER_PROCESSOR := GameFeature_Package.Create (To_Unbounded_String ("Game Input Layer Processor"));
      This.ARTIFICIAL_INTELLEGENCE_PROCESSOR := GameFeature_Package.Create (To_Unbounded_String ("Artificial Intelligence Layer Processor"));
      This.COLLIDABLE_INTERFACE_LAYER_PROCESSOR := GameFeature_Package.Create (To_Unbounded_String ("Collidable Interface Layer Processor"));
      This.TICKABLE_LAYER_PROCESSOR := GameFeature_Package.Create (To_Unbounded_String ("Tickable Layer Processor"));
      This.CHEATING := GameFeature_Package.Create (To_Unbounded_String ("Cheating"));
      This.DROPPED_ITEMS := GameFeature_Package.Create (To_Unbounded_String ("Drops"));
      This.DROPPED_ITEMS_FROM_DEATH := GameFeature_Package.Create (To_Unbounded_String ("Drops from Dead"));
      This.TEST_DESTROYED_LAYER_PROCESSOR := GameFeature_Package.Create (To_Unbounded_String ("Destroyed Layer Processor"));
      This.COLLISIONS_WITH_SOURCE := GameFeature_Package.Create (To_Unbounded_String ("Allow Collisions With Source"));
      This.COLLISIONS_FORCED_TWO_DIMENSIONAL := GameFeature_Package.Create (To_Unbounded_String ("Collisions Forced Two Dimensional"));
   end Initialize_Fields;


   function getInstance return GameFeatureFactory_Access is
   begin
        return GameFeatureFactory_Package.instance;
   end getInstance;

   procedure Initialize (This : in out GameFeatureFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return GameFeatureFactory_Access is
      This : constant GameFeatureFactory_Access := new GameFeatureFactory;
   begin
      GameFeatureFactory_Package.Initialize (This.all);
      return This;
   end Create;

begin
   null;
   instance := GameFeatureFactory_Package.Create;

end org.allbinary.game.configuration.feature.GameFeatureFactory_Package;


