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
      SimulatedBuildingPropertiesFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return SimulatedBuildingPropertiesFactory_Access is
   begin
        return SimulatedBuildingPropertiesFactory_Package.instanceC;
   end getInstance;

   function getEfficiencyPerLevel (This : in out SimulatedBuildingPropertiesFactory; buildingLayer_Param : access BuildingLayer'Class) return Integer is
      buildingLayer : BuildingLayer_Access := BuildingLayer_Access (buildingLayer_Param);
   begin
        return 0;
   end getEfficiencyPerLevel;

   function getDamageFloaters (This : in out SimulatedBuildingPropertiesFactory; buildingLayer_Param : access BuildingLayer'Class) return DamageFloaters_Access is
      buildingLayer : BuildingLayer_Access := BuildingLayer_Access (buildingLayer_Param);
      damageFloaters : DamageFloaters_Access;
   begin
        damageFloaters := DamageFloaters_Package.getInstance;
        This.damageFloatersPaintableInterface := damageFloaters;
        return damageFloaters;
   end getDamageFloaters;

   --  throws Exception
   function getHealthBar (This : in out SimulatedBuildingPropertiesFactory; buildingLayer_Param : access BuildingLayer'Class) return Paintable_Access is
      buildingLayer : BuildingLayer_Access := BuildingLayer_Access (buildingLayer_Param);
   begin
        return NullPaintable_Package.getInstance;
   end getHealthBar;

   function getHashtable (This : in out SimulatedBuildingPropertiesFactory) return ABHashtable_Access is
   begin
        return StdUtil_Package.getInstance.NULL_TABLE;
   end getHashtable;

   function getTrackingEvent (This : in out SimulatedBuildingPropertiesFactory; buildingLayer_Param : access BuildingLayer'Class) return TrackingEvent_Access is
      buildingLayer : BuildingLayer_Access := BuildingLayer_Access (buildingLayer_Param);
   begin
        return TrackingEvent_Package.Create (TrackingEventHandler_Package.getInstance);
   end getTrackingEvent;

   procedure getEfficiencyPerLevel (This : in out SimulatedBuildingPropertiesFactory; buildingLayer_Param : access BuildingLayer'Class) is
      Java_Result : constant Integer := SimulatedBuildingPropertiesFactory'Class (This).getEfficiencyPerLevel (buildingLayer_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getEfficiencyPerLevel;

   procedure getDamageFloaters (This : in out SimulatedBuildingPropertiesFactory; buildingLayer_Param : access BuildingLayer'Class) is
      Java_Result : constant DamageFloaters_Access := SimulatedBuildingPropertiesFactory'Class (This).getDamageFloaters (buildingLayer_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getDamageFloaters;

   procedure getHealthBar (This : in out SimulatedBuildingPropertiesFactory; buildingLayer_Param : access BuildingLayer'Class) is
      Java_Result : constant Paintable_Access := SimulatedBuildingPropertiesFactory'Class (This).getHealthBar (buildingLayer_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getHealthBar;

   procedure getTrackingEvent (This : in out SimulatedBuildingPropertiesFactory; buildingLayer_Param : access BuildingLayer'Class) is
      Java_Result : constant TrackingEvent_Access := SimulatedBuildingPropertiesFactory'Class (This).getTrackingEvent (buildingLayer_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTrackingEvent;

begin
   null;
   instanceC := SimulatedBuildingPropertiesFactory_Package.Create;

end org.allbinary.game.layer.building.SimulatedBuildingPropertiesFactory_Package;


