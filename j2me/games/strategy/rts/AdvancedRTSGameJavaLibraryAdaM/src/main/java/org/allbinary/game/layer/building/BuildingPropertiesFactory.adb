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


package body org.allbinary.game.layer.building.BuildingPropertiesFactory_Package is

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
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return BuildingPropertiesFactory_Access is
   begin
        return BuildingPropertiesFactory_Package.instance;
   end getInstance;

   function getEfficiencyPerLevel (This : in out BuildingPropertiesFactory; buildingLayer : BuildingLayer_Access) return Integer is
   begin
        return ((10000) / (buildingLayer.getMaxLevel)) + ((10000) rem (buildingLayer.getMaxLevel));
   end getEfficiencyPerLevel;

   function getDamageFloaters (This : in out BuildingPropertiesFactory; buildingLayer : BuildingLayer_Access) return DamageFloaters_Access is
      damageFloaters : DamageFloaters_Access;
   begin
        damageFloaters := DamageFloaters_Package.getInstance;
        if Features_Package.getInstance.isFeature (GameFeatureFactory_Package.getInstance.DAMAGE_FLOATERS) then
            damageFloaters := PtsDamageFloaters_Package.Create (buildingLayer);
            This.damageFloatersPaintableInterface := damageFloaters;
        else
            damageFloaters := DamageFloaters_Package.Create;
        end if;
        return damageFloaters;
   end getDamageFloaters;

   --  throws Exception
   function getHealthBar (This : in out BuildingPropertiesFactory; buildingLayer : BuildingLayer_Access) return Paintable_Access is
      healthBar : Paintable_Access;
   begin
        healthBar := NullPaintable_Package.getInstance;
        if Features_Package.getInstance.isFeature (GameFeatureFactory_Package.getInstance.HEALTH_BARS) then
            healthBar := HealthBar_Package.Create (buildingLayer, buildingLayer.getHealthInterface, HealthBarTwodAnimation_Package.Create (AllBinaryLayer_Access (buildingLayer), BasicHudFactory_Package.getInstance.BOTTOMLEFT), -(1));
        end if;
        return healthBar;
   end getHealthBar;

   function getHashtable (This : in out BuildingPropertiesFactory) return ABHashtable_Access is
   begin
        return StdUtil_Package.getInstance.createHashtable;
   end getHashtable;

   function getTrackingEvent (This : in out BuildingPropertiesFactory; buildingLayer : BuildingLayer_Access) return TrackingEvent_Access is
   begin
        return TrackingEvent_Package.Create (buildingLayer);
   end getTrackingEvent;

   procedure getInstance is
      Java_Result : constant BuildingPropertiesFactory_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getEfficiencyPerLevel (This : in out BuildingPropertiesFactory; buildingLayer : BuildingLayer_Access) is
      Java_Result : constant Integer := BuildingPropertiesFactory'Class (This).getEfficiencyPerLevel (buildingLayer);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getEfficiencyPerLevel;

   procedure getDamageFloaters (This : in out BuildingPropertiesFactory; buildingLayer : BuildingLayer_Access) is
      Java_Result : constant DamageFloaters_Access := BuildingPropertiesFactory'Class (This).getDamageFloaters (buildingLayer);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getDamageFloaters;

   procedure getHealthBar (This : in out BuildingPropertiesFactory; buildingLayer : BuildingLayer_Access) is
      Java_Result : constant Paintable_Access := BuildingPropertiesFactory'Class (This).getHealthBar (buildingLayer);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getHealthBar;

   procedure getHashtable (This : in out BuildingPropertiesFactory) is
      Java_Result : constant ABHashtable_Access := BuildingPropertiesFactory'Class (This).getHashtable;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getHashtable;

   procedure getTrackingEvent (This : in out BuildingPropertiesFactory; buildingLayer : BuildingLayer_Access) is
      Java_Result : constant TrackingEvent_Access := BuildingPropertiesFactory'Class (This).getTrackingEvent (buildingLayer);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTrackingEvent;

begin
   null;
   instance := BuildingPropertiesFactory_Package.Create;

end org.allbinary.game.layer.building.BuildingPropertiesFactory_Package;


