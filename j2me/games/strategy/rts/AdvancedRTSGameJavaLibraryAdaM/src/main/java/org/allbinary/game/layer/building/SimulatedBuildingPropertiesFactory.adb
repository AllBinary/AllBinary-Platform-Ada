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
with org.allbinary.game.tracking.TrackingEvent_Package; use org.allbinary.game.tracking.TrackingEvent_Package;
with org.allbinary.game.tracking.TrackingEvent_Package_References;
with org.allbinary.game.tracking.TrackingEventHandler_Package; use org.allbinary.game.tracking.TrackingEventHandler_Package;
with org.allbinary.graphics.paint.NullPaintable_Package; use org.allbinary.graphics.paint.NullPaintable_Package;
with org.allbinary.graphics.paint.Paintable_Package; use org.allbinary.graphics.paint.Paintable_Package;
with org.allbinary.graphics.paint.Paintable_Package_References;
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

package body org.allbinary.game.layer.building.SimulatedBuildingPropertiesFactory_Package is

   package TrackingEventHandler_Package renames Standard.org.allbinary.game.tracking.TrackingEventHandler_Package;
   package NullPaintable_Package renames Standard.org.allbinary.graphics.paint.NullPaintable_Package;
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
        return SimulatedBuildingPropertiesFactory_Access (SimulatedBuildingPropertiesFactory_Package.instanceC);
   end getInstance;

   function getEfficiencyPerLevel (This : in out SimulatedBuildingPropertiesFactory; buildingLayer_Param : access BuildingLayer_Package.BuildingLayer'Class) return Integer is
      buildingLayer : constant BuildingLayer_Access := BuildingLayer_Access (buildingLayer_Param);
   begin
        return 0;
   end getEfficiencyPerLevel;

   function getDamageFloaters (This : in out SimulatedBuildingPropertiesFactory; buildingLayer_Param : access BuildingLayer_Package.BuildingLayer'Class) return DamageFloaters_Access is
      buildingLayer : constant BuildingLayer_Access := BuildingLayer_Access (buildingLayer_Param);
      damageFloaters : DamageFloaters_Access;
   begin
        damageFloaters := DamageFloaters_Package.getInstance;
        This.damageFloatersPaintableInterface := damageFloaters;
        return damageFloaters;
   end getDamageFloaters;

   --  throws Exception
   function getHealthBar (This : in out SimulatedBuildingPropertiesFactory; buildingLayer_Param : access BuildingLayer_Package.BuildingLayer'Class) return Paintable_Access is
      buildingLayer : constant BuildingLayer_Access := BuildingLayer_Access (buildingLayer_Param);
   begin
        return NullPaintable_Package.getInstance;
   end getHealthBar;

   function getHashtable (This : in out SimulatedBuildingPropertiesFactory) return ABHashtable_Access is
   begin
        return ABHashtable_Access (StdUtil_Package.getInstance.NULL_TABLE);
   end getHashtable;

   function getTrackingEvent (This : in out SimulatedBuildingPropertiesFactory; buildingLayer_Param : access BuildingLayer_Package.BuildingLayer'Class) return TrackingEvent_Access is
      buildingLayer : constant BuildingLayer_Access := BuildingLayer_Access (buildingLayer_Param);
   begin
        return TrackingEvent_Package.Create (TrackingEventHandler_Package.getInstance);
   end getTrackingEvent;

   procedure getEfficiencyPerLevel (This : in out SimulatedBuildingPropertiesFactory; buildingLayer_Param : access BuildingLayer_Package.BuildingLayer'Class) is
      Java_Result : constant Integer := SimulatedBuildingPropertiesFactory'Class (This).getEfficiencyPerLevel (buildingLayer_Param => buildingLayer_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getEfficiencyPerLevel;

   procedure getDamageFloaters (This : in out SimulatedBuildingPropertiesFactory; buildingLayer_Param : access BuildingLayer_Package.BuildingLayer'Class) is
      Java_Result : constant DamageFloaters_Access := SimulatedBuildingPropertiesFactory'Class (This).getDamageFloaters (buildingLayer_Param => buildingLayer_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getDamageFloaters;

   procedure getHealthBar (This : in out SimulatedBuildingPropertiesFactory; buildingLayer_Param : access BuildingLayer_Package.BuildingLayer'Class) is
      Java_Result : constant Paintable_Access := SimulatedBuildingPropertiesFactory'Class (This).getHealthBar (buildingLayer_Param => buildingLayer_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getHealthBar;

   procedure getTrackingEvent (This : in out SimulatedBuildingPropertiesFactory; buildingLayer_Param : access BuildingLayer_Package.BuildingLayer'Class) is
      Java_Result : constant TrackingEvent_Access := SimulatedBuildingPropertiesFactory'Class (This).getTrackingEvent (buildingLayer_Param => buildingLayer_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTrackingEvent;

begin
   null;
   instanceC := SimulatedBuildingPropertiesFactory_Package.Create;

end org.allbinary.game.layer.building.SimulatedBuildingPropertiesFactory_Package;


