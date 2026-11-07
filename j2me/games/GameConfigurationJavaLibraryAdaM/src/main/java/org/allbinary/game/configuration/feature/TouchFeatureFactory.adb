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


with org.allbinary.game.configuration.feature.TouchFeature_Package; use org.allbinary.game.configuration.feature.TouchFeature_Package;
with org.allbinary.game.configuration.feature.TouchFeature_Package_References;
with org.allbinary.util.ABHashtable_Package;
with org.allbinary.game.configuration.feature.Feature_Package;
with org.allbinary.game.configuration.feature.TouchFeature_Package;

package body org.allbinary.game.configuration.feature.TouchFeatureFactory_Package is

   subtype TouchFeature_Access is org.allbinary.game.configuration.feature.TouchFeature_Package_References.TouchFeature_Access;
   function "=" (Left, Right : TouchFeature_Access) return Boolean renames org.allbinary.game.configuration.feature.TouchFeature_Package_References."=";
   subtype TouchFeature_Access_Array is org.allbinary.game.configuration.feature.TouchFeature_Package_References.TouchFeature_Access_Array;
   function "=" (Left, Right : TouchFeature_Access_Array) return Boolean renames org.allbinary.game.configuration.feature.TouchFeature_Package_References."=";
   subtype TouchFeature_Access_Array_Access is org.allbinary.game.configuration.feature.TouchFeature_Package_References.TouchFeature_Access_Array_Access;
   function "=" (Left, Right : TouchFeature_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.feature.TouchFeature_Package_References."=";
   subtype TouchFeature_Access_Array_Access_Array is org.allbinary.game.configuration.feature.TouchFeature_Package_References.TouchFeature_Access_Array_Access_Array;
   function "=" (Left, Right : TouchFeature_Access_Array_Access_Array) return Boolean renames org.allbinary.game.configuration.feature.TouchFeature_Package_References."=";
   subtype TouchFeature_Access_Array_Access_Array_Access is org.allbinary.game.configuration.feature.TouchFeature_Package_References.TouchFeature_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TouchFeature_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.feature.TouchFeature_Package_References."=";
   procedure Initialize_Fields (This : in out TouchFeatureFactory'Class) is
   begin
      null;
      This.TOUCH_ENABLED := TouchFeature_Package.Create (To_Unbounded_String ("Touch Enabled"));
      This.SHOW_SCREEN_BUTTONS := TouchFeature_Package.Create (To_Unbounded_String ("Show"));
      This.AUTO_HIDE_SHOW_SCREEN_BUTTONS := TouchFeature_Package.Create (To_Unbounded_String ("Auto Hide (One Level)"));
      This.HIDE_SCREEN_BUTTONS := TouchFeature_Package.Create (To_Unbounded_String ("Hide"));
   end Initialize_Fields;


   function getInstance return TouchFeatureFactory_Access is
   begin
        return TouchFeatureFactory_Access (TouchFeatureFactory_Package.instance);
   end getInstance;

   procedure Initialize (This : in out TouchFeatureFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return TouchFeatureFactory_Access is
      This : constant TouchFeatureFactory_Access := new TouchFeatureFactory;
   begin
      TouchFeatureFactory_Package.Initialize (This.all);
      return This;
   end Create;

begin
   null;
   instance := TouchFeatureFactory_Package.Create;

end org.allbinary.game.configuration.feature.TouchFeatureFactory_Package;


