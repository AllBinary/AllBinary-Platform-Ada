-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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


with org.allbinary.game.combat.damage.DamageFloaters_Package; use org.allbinary.game.combat.damage.DamageFloaters_Package;
with org.allbinary.game.combat.damage.DamageFloaters_Package_References;
with org.allbinary.game.combat.damage.PtsDamageFloaters_Package; use org.allbinary.game.combat.damage.PtsDamageFloaters_Package;
with org.allbinary.game.configuration.feature.Features_Package; use org.allbinary.game.configuration.feature.Features_Package;
with org.allbinary.game.configuration.feature.GameFeatureFactory_Package; use org.allbinary.game.configuration.feature.GameFeatureFactory_Package;
with org.allbinary.game.graphics.hud.BasicHudFactory_Package; use org.allbinary.game.graphics.hud.BasicHudFactory_Package;
with org.allbinary.game.health.HealthBar_Package; use org.allbinary.game.health.HealthBar_Package;
with org.allbinary.game.health.HealthBarTwodAnimation_Package; use org.allbinary.game.health.HealthBarTwodAnimation_Package;
with org.allbinary.game.tracking.TrackingEvent_Package; use org.allbinary.game.tracking.TrackingEvent_Package;
with org.allbinary.game.tracking.TrackingEvent_Package_References;
with org.allbinary.graphics.paint.NullPaintable_Package; use org.allbinary.graphics.paint.NullPaintable_Package;
with org.allbinary.graphics.paint.Paintable_Package; use org.allbinary.graphics.paint.Paintable_Package;
with org.allbinary.graphics.paint.Paintable_Package_References;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABHashtable_Package_References;
with org.allbinary.game.layer.building.BuildingLayer_Package; use org.allbinary.game.layer.building.BuildingLayer_Package;
with org.allbinary.game.layer.building.BuildingLayer_Package_References;
with org.allbinary.util.ABHashMap_Package;
with org.allbinary.util.ABStack_Package;
with org.allbinary.util.ABVector_Package;
with org.allbinary.game.layer.AdvancedRTSGameLayer_Package;
with org.allbinary.game.layer.AdvancedRTSProperties_Package;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.game.layer.building.BuildingLayer_Package;
with org.allbinary.graphics.GPoint_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.graphics.Rectangle_Package;
with org.allbinary.time.TimeDelayHelper_Package;

package body org.allbinary.game.layer.building.BuildingPropertiesFactory_Package is

   package PtsDamageFloaters_Package renames Standard.org.allbinary.game.combat.damage.PtsDamageFloaters_Package;
   package Features_Package renames Standard.org.allbinary.game.configuration.feature.Features_Package;
   package GameFeatureFactory_Package renames Standard.org.allbinary.game.configuration.feature.GameFeatureFactory_Package;
   package BasicHudFactory_Package renames Standard.org.allbinary.game.graphics.hud.BasicHudFactory_Package;
   package HealthBar_Package renames Standard.org.allbinary.game.health.HealthBar_Package;
   package HealthBarTwodAnimation_Package renames Standard.org.allbinary.game.health.HealthBarTwodAnimation_Package;
   package NullPaintable_Package renames Standard.org.allbinary.graphics.paint.NullPaintable_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   subtype DamageFloaters_Access is org.allbinary.game.combat.damage.DamageFloaters_Package_References.DamageFloaters_Access;
   function "=" (Left, Right : DamageFloaters_Access) return Boolean renames org.allbinary.game.combat.damage.DamageFloaters_Package_References."=";
   subtype DamageFloaters_Access_Array is org.allbinary.game.combat.damage.DamageFloaters_Package_References.DamageFloaters_Access_Array;
   function "=" (Left, Right : DamageFloaters_Access_Array) return Boolean renames org.allbinary.game.combat.damage.DamageFloaters_Package_References."=";
   subtype DamageFloaters_Access_Array_Access is org.allbinary.game.combat.damage.DamageFloaters_Package_References.DamageFloaters_Access_Array_Access;
   function "=" (Left, Right : DamageFloaters_Access_Array_Access) return Boolean renames org.allbinary.game.combat.damage.DamageFloaters_Package_References."=";
   subtype DamageFloaters_Access_Array_Access_Array is org.allbinary.game.combat.damage.DamageFloaters_Package_References.DamageFloaters_Access_Array_Access_Array;
   function "=" (Left, Right : DamageFloaters_Access_Array_Access_Array) return Boolean renames org.allbinary.game.combat.damage.DamageFloaters_Package_References."=";
   subtype DamageFloaters_Access_Array_Access_Array_Access is org.allbinary.game.combat.damage.DamageFloaters_Package_References.DamageFloaters_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DamageFloaters_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.combat.damage.DamageFloaters_Package_References."=";
   subtype TrackingEvent_Access is org.allbinary.game.tracking.TrackingEvent_Package_References.TrackingEvent_Access;
   function "=" (Left, Right : TrackingEvent_Access) return Boolean renames org.allbinary.game.tracking.TrackingEvent_Package_References."=";
   subtype TrackingEvent_Access_Array is org.allbinary.game.tracking.TrackingEvent_Package_References.TrackingEvent_Access_Array;
   function "=" (Left, Right : TrackingEvent_Access_Array) return Boolean renames org.allbinary.game.tracking.TrackingEvent_Package_References."=";
   subtype TrackingEvent_Access_Array_Access is org.allbinary.game.tracking.TrackingEvent_Package_References.TrackingEvent_Access_Array_Access;
   function "=" (Left, Right : TrackingEvent_Access_Array_Access) return Boolean renames org.allbinary.game.tracking.TrackingEvent_Package_References."=";
   subtype TrackingEvent_Access_Array_Access_Array is org.allbinary.game.tracking.TrackingEvent_Package_References.TrackingEvent_Access_Array_Access_Array;
   function "=" (Left, Right : TrackingEvent_Access_Array_Access_Array) return Boolean renames org.allbinary.game.tracking.TrackingEvent_Package_References."=";
   subtype TrackingEvent_Access_Array_Access_Array_Access is org.allbinary.game.tracking.TrackingEvent_Package_References.TrackingEvent_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TrackingEvent_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.tracking.TrackingEvent_Package_References."=";
   subtype Paintable_Access is org.allbinary.graphics.paint.Paintable_Package_References.Paintable_Access;
   function "=" (Left, Right : Paintable_Access) return Boolean renames org.allbinary.graphics.paint.Paintable_Package_References."=";
   subtype Paintable_Access_Array is org.allbinary.graphics.paint.Paintable_Package_References.Paintable_Access_Array;
   function "=" (Left, Right : Paintable_Access_Array) return Boolean renames org.allbinary.graphics.paint.Paintable_Package_References."=";
   subtype Paintable_Access_Array_Access is org.allbinary.graphics.paint.Paintable_Package_References.Paintable_Access_Array_Access;
   function "=" (Left, Right : Paintable_Access_Array_Access) return Boolean renames org.allbinary.graphics.paint.Paintable_Package_References."=";
   subtype Paintable_Access_Array_Access_Array is org.allbinary.graphics.paint.Paintable_Package_References.Paintable_Access_Array_Access_Array;
   function "=" (Left, Right : Paintable_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.paint.Paintable_Package_References."=";
   subtype Paintable_Access_Array_Access_Array_Access is org.allbinary.graphics.paint.Paintable_Package_References.Paintable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Paintable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.paint.Paintable_Package_References."=";
   subtype ABHashtable_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access;
   function "=" (Left, Right : ABHashtable_Access) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   subtype ABHashtable_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array;
   function "=" (Left, Right : ABHashtable_Access_Array) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   subtype ABHashtable_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access;
   function "=" (Left, Right : ABHashtable_Access_Array_Access) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   subtype ABHashtable_Access_Array_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array;
   function "=" (Left, Right : ABHashtable_Access_Array_Access_Array) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   subtype ABHashtable_Access_Array_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ABHashtable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   subtype BuildingLayer_Access is org.allbinary.game.layer.building.BuildingLayer_Package_References.BuildingLayer_Access;
   function "=" (Left, Right : BuildingLayer_Access) return Boolean renames org.allbinary.game.layer.building.BuildingLayer_Package_References."=";
   subtype BuildingLayer_Access_Array is org.allbinary.game.layer.building.BuildingLayer_Package_References.BuildingLayer_Access_Array;
   function "=" (Left, Right : BuildingLayer_Access_Array) return Boolean renames org.allbinary.game.layer.building.BuildingLayer_Package_References."=";
   subtype BuildingLayer_Access_Array_Access is org.allbinary.game.layer.building.BuildingLayer_Package_References.BuildingLayer_Access_Array_Access;
   function "=" (Left, Right : BuildingLayer_Access_Array_Access) return Boolean renames org.allbinary.game.layer.building.BuildingLayer_Package_References."=";
   subtype BuildingLayer_Access_Array_Access_Array is org.allbinary.game.layer.building.BuildingLayer_Package_References.BuildingLayer_Access_Array_Access_Array;
   function "=" (Left, Right : BuildingLayer_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.building.BuildingLayer_Package_References."=";
   subtype BuildingLayer_Access_Array_Access_Array_Access is org.allbinary.game.layer.building.BuildingLayer_Package_References.BuildingLayer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BuildingLayer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.building.BuildingLayer_Package_References."=";
   procedure Initialize_Fields (This : in out BuildingPropertiesFactory'Class) is
   begin
      null;
      This.damageFloatersPaintableInterface := NullPaintable_Package.getInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out BuildingPropertiesFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return BuildingPropertiesFactory_Access is
      This : constant BuildingPropertiesFactory_Access := new BuildingPropertiesFactory;
   begin
      BuildingPropertiesFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return BuildingPropertiesFactory_Access is
   begin
        return BuildingPropertiesFactory_Access (BuildingPropertiesFactory_Package.instance);
   end getInstance;

   function getEfficiencyPerLevel (This : in out BuildingPropertiesFactory; buildingLayer_Param : access BuildingLayer_Package.BuildingLayer'Class) return Integer is
      buildingLayer : constant BuildingLayer_Access := BuildingLayer_Access (buildingLayer_Param);
   begin
        return ((10000) / (buildingLayer.getMaxLevel)) + ((10000) rem (buildingLayer.getMaxLevel));
   end getEfficiencyPerLevel;

   function getDamageFloaters (This : in out BuildingPropertiesFactory; buildingLayer_Param : access BuildingLayer_Package.BuildingLayer'Class) return DamageFloaters_Access is
      buildingLayer : constant BuildingLayer_Access := BuildingLayer_Access (buildingLayer_Param);
      damageFloaters : DamageFloaters_Access;
   begin
        damageFloaters := DamageFloaters_Package.getInstance;
        if Features_Package.getInstance.isFeature (GameFeatureFactory_Package.getInstance.DAMAGE_FLOATERS) then
            damageFloaters := DamageFloaters_Access (PtsDamageFloaters_Package.Create (buildingLayer));
            This.damageFloatersPaintableInterface := Paintable_Access (damageFloaters);
        else
            damageFloaters := DamageFloaters_Package.Create;
        end if;
        return damageFloaters;
   end getDamageFloaters;

   --  throws Exception
   function getHealthBar (This : in out BuildingPropertiesFactory; buildingLayer_Param : access BuildingLayer_Package.BuildingLayer'Class) return Paintable_Access is
      buildingLayer : constant BuildingLayer_Access := BuildingLayer_Access (buildingLayer_Param);
      healthBar : Paintable_Access;
   begin
        healthBar := NullPaintable_Package.getInstance;
        if Features_Package.getInstance.isFeature (GameFeatureFactory_Package.getInstance.HEALTH_BARS) then
            healthBar := Paintable_Access (HealthBar_Package.Create (buildingLayer, buildingLayer.getHealthInterface, HealthBarTwodAnimation_Package.Create (AllBinaryLayer_Access (buildingLayer), BasicHudFactory_Package.getInstance.BOTTOMLEFT), -(1)));
        end if;
        return healthBar;
   end getHealthBar;

   function getHashtable (This : in out BuildingPropertiesFactory) return ABHashtable_Access is
   begin
        return StdUtil_Package.getInstance.createHashtable;
   end getHashtable;

   function getTrackingEvent (This : in out BuildingPropertiesFactory; buildingLayer_Param : access BuildingLayer_Package.BuildingLayer'Class) return TrackingEvent_Access is
      buildingLayer : constant BuildingLayer_Access := BuildingLayer_Access (buildingLayer_Param);
   begin
        return TrackingEvent_Package.Create (buildingLayer);
   end getTrackingEvent;

   procedure getEfficiencyPerLevel (This : in out BuildingPropertiesFactory; buildingLayer_Param : access BuildingLayer_Package.BuildingLayer'Class) is
      Java_Result : constant Integer := BuildingPropertiesFactory'Class (This).getEfficiencyPerLevel (buildingLayer_Param => buildingLayer_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getEfficiencyPerLevel;

   procedure getDamageFloaters (This : in out BuildingPropertiesFactory; buildingLayer_Param : access BuildingLayer_Package.BuildingLayer'Class) is
      Java_Result : constant DamageFloaters_Access := BuildingPropertiesFactory'Class (This).getDamageFloaters (buildingLayer_Param => buildingLayer_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getDamageFloaters;

   procedure getHealthBar (This : in out BuildingPropertiesFactory; buildingLayer_Param : access BuildingLayer_Package.BuildingLayer'Class) is
      Java_Result : constant Paintable_Access := BuildingPropertiesFactory'Class (This).getHealthBar (buildingLayer_Param => buildingLayer_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getHealthBar;

   procedure getTrackingEvent (This : in out BuildingPropertiesFactory; buildingLayer_Param : access BuildingLayer_Package.BuildingLayer'Class) is
      Java_Result : constant TrackingEvent_Access := BuildingPropertiesFactory'Class (This).getTrackingEvent (buildingLayer_Param => buildingLayer_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTrackingEvent;

begin
   null;
   instance := BuildingPropertiesFactory_Package.Create;

end org.allbinary.game.layer.building.BuildingPropertiesFactory_Package;


