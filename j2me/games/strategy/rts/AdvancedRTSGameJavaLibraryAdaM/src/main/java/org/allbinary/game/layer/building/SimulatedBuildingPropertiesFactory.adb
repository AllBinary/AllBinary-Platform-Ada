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


package body org.allbinary.game.layer.building.SimulatedBuildingPropertiesFactory_Package is

   procedure Initialize_Fields (This : in out SimulatedBuildingPropertiesFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out SimulatedBuildingPropertiesFactory'Class) is
   begin
      BuildingPropertiesFactory_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return SimulatedBuildingPropertiesFactory_Access is
      This : constant SimulatedBuildingPropertiesFactory_Access := new SimulatedBuildingPropertiesFactory;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return SimulatedBuildingPropertiesFactory_Access is
   begin
        return SimulatedBuildingPropertiesFactory_Package.instanceC;
   end getInstance;

   function getEfficiencyPerLevel (This : in out SimulatedBuildingPropertiesFactory; buildingLayer : BuildingLayer_Access) return Integer is
   begin
        return 0;
   end getEfficiencyPerLevel;

   function getDamageFloaters (This : in out SimulatedBuildingPropertiesFactory; buildingLayer : BuildingLayer_Access) return DamageFloaters_Access is
      damageFloaters : DamageFloaters_Access;
   begin
        damageFloaters := DamageFloaters_Package.getInstance;
        This.damageFloatersPaintableInterface := damageFloaters;
        return damageFloaters;
   end getDamageFloaters;

   --  throws Exception
   function getHealthBar (This : in out SimulatedBuildingPropertiesFactory; buildingLayer : BuildingLayer_Access) return Paintable_Access is
   begin
        return NullPaintable_Package.getInstance;
   end getHealthBar;

   function getHashtable (This : in out SimulatedBuildingPropertiesFactory) return ABHashtable_Access is
   begin
        return StdUtil_Package.getInstance.NULL_TABLE;
   end getHashtable;

   function getTrackingEvent (This : in out SimulatedBuildingPropertiesFactory; buildingLayer : BuildingLayer_Access) return TrackingEvent_Access is
   begin
        return TrackingEvent_Package.Create (TrackingEventHandler_Package.getInstance);
   end getTrackingEvent;

   procedure getInstance is
      Java_Result : constant SimulatedBuildingPropertiesFactory_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getEfficiencyPerLevel (This : in out SimulatedBuildingPropertiesFactory; buildingLayer : BuildingLayer_Access) is
      Java_Result : constant Integer := SimulatedBuildingPropertiesFactory'Class (This).getEfficiencyPerLevel (buildingLayer);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getEfficiencyPerLevel;

   procedure getDamageFloaters (This : in out SimulatedBuildingPropertiesFactory; buildingLayer : BuildingLayer_Access) is
      Java_Result : constant DamageFloaters_Access := SimulatedBuildingPropertiesFactory'Class (This).getDamageFloaters (buildingLayer);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getDamageFloaters;

   procedure getHealthBar (This : in out SimulatedBuildingPropertiesFactory; buildingLayer : BuildingLayer_Access) is
      Java_Result : constant Paintable_Access := SimulatedBuildingPropertiesFactory'Class (This).getHealthBar (buildingLayer);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getHealthBar;

   procedure getHashtable (This : in out SimulatedBuildingPropertiesFactory) is
      Java_Result : constant ABHashtable_Access := SimulatedBuildingPropertiesFactory'Class (This).getHashtable;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getHashtable;

   procedure getTrackingEvent (This : in out SimulatedBuildingPropertiesFactory; buildingLayer : BuildingLayer_Access) is
      Java_Result : constant TrackingEvent_Access := SimulatedBuildingPropertiesFactory'Class (This).getTrackingEvent (buildingLayer);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTrackingEvent;

begin
   null;
   instanceC := SimulatedBuildingPropertiesFactory_Package.Create;

end org.allbinary.game.layer.building.SimulatedBuildingPropertiesFactory_Package;


