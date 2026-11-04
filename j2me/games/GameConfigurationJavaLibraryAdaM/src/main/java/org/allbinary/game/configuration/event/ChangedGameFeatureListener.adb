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


with org.allbinary.game.configuration.GameConfiguration_Package; use org.allbinary.game.configuration.GameConfiguration_Package;
with org.allbinary.game.configuration.GameConfiguration_Package_References;
with org.allbinary.game.configuration.feature.Feature_Package;
with org.allbinary.game.configuration.event.GameFeatureEvent_Package;
with org.allbinary.game.configuration.event.GameFeatureListenerInterface_Package;
with org.allbinary.game.configuration.feature.GameFeatureUtil_Package;

package body org.allbinary.game.configuration.event.ChangedGameFeatureListener_Package is

   subtype GameConfiguration_Access is org.allbinary.game.configuration.GameConfiguration_Package_References.GameConfiguration_Access;
   function "=" (Left, Right : GameConfiguration_Access) return Boolean renames org.allbinary.game.configuration.GameConfiguration_Package_References."=";
   subtype GameConfiguration_Access_Array is org.allbinary.game.configuration.GameConfiguration_Package_References.GameConfiguration_Access_Array;
   function "=" (Left, Right : GameConfiguration_Access_Array) return Boolean renames org.allbinary.game.configuration.GameConfiguration_Package_References."=";
   subtype GameConfiguration_Access_Array_Access is org.allbinary.game.configuration.GameConfiguration_Package_References.GameConfiguration_Access_Array_Access;
   function "=" (Left, Right : GameConfiguration_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.GameConfiguration_Package_References."=";
   subtype GameConfiguration_Access_Array_Access_Array is org.allbinary.game.configuration.GameConfiguration_Package_References.GameConfiguration_Access_Array_Access_Array;
   function "=" (Left, Right : GameConfiguration_Access_Array_Access_Array) return Boolean renames org.allbinary.game.configuration.GameConfiguration_Package_References."=";
   subtype GameConfiguration_Access_Array_Access_Array_Access is org.allbinary.game.configuration.GameConfiguration_Package_References.GameConfiguration_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameConfiguration_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.GameConfiguration_Package_References."=";
   procedure Initialize_Fields (This : in out ChangedGameFeatureListener'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out ChangedGameFeatureListener'Class) is
   begin
      BaseChangedGameFeatureListener_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return ChangedGameFeatureListener_Access is
      This : constant ChangedGameFeatureListener_Access := new ChangedGameFeatureListener;
   begin
      ChangedGameFeatureListener_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return ChangedGameFeatureListener_Access is
   begin
        return ChangedGameFeatureListener_Access (ChangedGameFeatureListener_Package.gameFeatureListener);
   end getInstance;

   function isChangedGameConfiguration (This : in out ChangedGameFeatureListener; gameConfiguration_Param : access GameConfiguration_Package.GameConfiguration'Class) return Boolean is
      gameConfiguration : constant GameConfiguration_Access := GameConfiguration_Access (gameConfiguration_Param);
   begin
        return This.list.contains (Java_Object_Access (gameConfiguration));
   end isChangedGameConfiguration;

   procedure isChangedGameConfiguration (This : in out ChangedGameFeatureListener; gameConfiguration_Param : access GameConfiguration_Package.GameConfiguration'Class) is
      Java_Result : constant Boolean := ChangedGameFeatureListener'Class (This).isChangedGameConfiguration (gameConfiguration_Param => gameConfiguration_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isChangedGameConfiguration;

begin
   null;
   gameFeatureListener := ChangedGameFeatureListener_Package.Create;

end org.allbinary.game.configuration.event.ChangedGameFeatureListener_Package;


