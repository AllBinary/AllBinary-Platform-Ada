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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.combat.damage.DamageFloaters_Package; use org.allbinary.game.combat.damage.DamageFloaters_Package;
with org.allbinary.game.tracking.TrackingEvent_Package; use org.allbinary.game.tracking.TrackingEvent_Package;
with org.allbinary.game.tracking.TrackingEventHandler_Package; use org.allbinary.game.tracking.TrackingEventHandler_Package;
with org.allbinary.graphics.paint.NullPaintable_Package; use org.allbinary.graphics.paint.NullPaintable_Package;
with org.allbinary.graphics.paint.Paintable_Package; use org.allbinary.graphics.paint.Paintable_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;
with org.allbinary.game.layer.building.BuildingPropertiesFactory_Package; use org.allbinary.game.layer.building.BuildingPropertiesFactory_Package;
with org.allbinary.game.layer.building.BuildingLayer_Package; use org.allbinary.game.layer.building.BuildingLayer_Package;

package org.allbinary.game.layer.building.SimulatedBuildingPropertiesFactory_Package is

   package DamageFloaters_Package renames Standard.org.allbinary.game.combat.damage.DamageFloaters_Package;
   package TrackingEvent_Package renames Standard.org.allbinary.game.tracking.TrackingEvent_Package;
   package TrackingEventHandler_Package renames Standard.org.allbinary.game.tracking.TrackingEventHandler_Package;
   package NullPaintable_Package renames Standard.org.allbinary.graphics.paint.NullPaintable_Package;
   package Paintable_Package renames Standard.org.allbinary.graphics.paint.Paintable_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;

   type SimulatedBuildingPropertiesFactory is tagged;
   type SimulatedBuildingPropertiesFactory_Access is access all SimulatedBuildingPropertiesFactory'Class;
   type SimulatedBuildingPropertiesFactory_Access_Array is array (Natural range <>) of SimulatedBuildingPropertiesFactory_Access;
   type SimulatedBuildingPropertiesFactory_Access_Array_Access is access all SimulatedBuildingPropertiesFactory_Access_Array;

   type SimulatedBuildingPropertiesFactory is new BuildingPropertiesFactory with null record;
   instanceC : SimulatedBuildingPropertiesFactory_Access;

   procedure Initialize (This : in out SimulatedBuildingPropertiesFactory'Class);
   function Create return SimulatedBuildingPropertiesFactory_Access;
   function getInstance return SimulatedBuildingPropertiesFactory_Access;
   function getEfficiencyPerLevel (This : in out SimulatedBuildingPropertiesFactory; buildingLayer_Param : access BuildingLayer_Package.BuildingLayer'Class) return Integer;
   procedure getEfficiencyPerLevel (This : in out SimulatedBuildingPropertiesFactory; buildingLayer_Param : access BuildingLayer_Package.BuildingLayer'Class);
   function getDamageFloaters (This : in out SimulatedBuildingPropertiesFactory; buildingLayer_Param : access BuildingLayer_Package.BuildingLayer'Class) return DamageFloaters_Access;
   procedure getDamageFloaters (This : in out SimulatedBuildingPropertiesFactory; buildingLayer_Param : access BuildingLayer_Package.BuildingLayer'Class);
   function getHealthBar (This : in out SimulatedBuildingPropertiesFactory; buildingLayer_Param : access BuildingLayer_Package.BuildingLayer'Class) return Paintable_Access;
   procedure getHealthBar (This : in out SimulatedBuildingPropertiesFactory; buildingLayer_Param : access BuildingLayer_Package.BuildingLayer'Class);
   function getHashtable (This : in out SimulatedBuildingPropertiesFactory) return ABHashtable_Access;
   function getTrackingEvent (This : in out SimulatedBuildingPropertiesFactory; buildingLayer_Param : access BuildingLayer_Package.BuildingLayer'Class) return TrackingEvent_Access;
   procedure getTrackingEvent (This : in out SimulatedBuildingPropertiesFactory; buildingLayer_Param : access BuildingLayer_Package.BuildingLayer'Class);

end org.allbinary.game.layer.building.SimulatedBuildingPropertiesFactory_Package;


