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

with AllBinary_Java;
limited with org.allbinary.game.layer.building.SimulatedBuildingPropertiesFactory_Package;
package org.allbinary.game.layer.building.SimulatedBuildingPropertiesFactory_Package_References is
   type SimulatedBuildingPropertiesFactory_Access is access all org.allbinary.game.layer.building.SimulatedBuildingPropertiesFactory_Package.SimulatedBuildingPropertiesFactory'Class;
   type SimulatedBuildingPropertiesFactory_Access_Array is array (Natural range <>) of SimulatedBuildingPropertiesFactory_Access;
   type SimulatedBuildingPropertiesFactory_Access_Array_Access is access all SimulatedBuildingPropertiesFactory_Access_Array;
   type SimulatedBuildingPropertiesFactory_Access_Array_Access_Array is array (Natural range <>) of SimulatedBuildingPropertiesFactory_Access_Array_Access;
   type SimulatedBuildingPropertiesFactory_Access_Array_Access_Array_Access is access all SimulatedBuildingPropertiesFactory_Access_Array_Access_Array;
   type SimulatedBuildingPropertiesFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : SimulatedBuildingPropertiesFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : SimulatedBuildingPropertiesFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new SimulatedBuildingPropertiesFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_SimulatedBuildingPropertiesFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return SimulatedBuildingPropertiesFactory_Access_Array_Access is (if Value /= null and then Value.all in SimulatedBuildingPropertiesFactory_Access_Array_Object'Class then SimulatedBuildingPropertiesFactory_Access_Array_Object'Class (Value.all).Value else null);
   type SimulatedBuildingPropertiesFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : SimulatedBuildingPropertiesFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : SimulatedBuildingPropertiesFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new SimulatedBuildingPropertiesFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_SimulatedBuildingPropertiesFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return SimulatedBuildingPropertiesFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in SimulatedBuildingPropertiesFactory_Access_Array_Access_Array_Object'Class then SimulatedBuildingPropertiesFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.layer.building.SimulatedBuildingPropertiesFactory_Package_References;

with org.allbinary.game.layer.building.SimulatedBuildingPropertiesFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.combat.damage.DamageFloaters_Package;
with org.allbinary.game.combat.damage.DamageFloaters_Package_References;
limited with org.allbinary.game.tracking.TrackingEvent_Package;
with org.allbinary.game.tracking.TrackingEvent_Package_References;
limited with org.allbinary.graphics.paint.Paintable_Package;
with org.allbinary.graphics.paint.Paintable_Package_References;
limited with org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABHashtable_Package_References;
with org.allbinary.game.layer.building.BuildingPropertiesFactory_Package; use org.allbinary.game.layer.building.BuildingPropertiesFactory_Package;
limited with org.allbinary.game.layer.building.BuildingLayer_Package;
with org.allbinary.game.layer.building.BuildingLayer_Package_References;

package org.allbinary.game.layer.building.SimulatedBuildingPropertiesFactory_Package is

   package DamageFloaters_Package renames Standard.org.allbinary.game.combat.damage.DamageFloaters_Package;
   package TrackingEvent_Package renames Standard.org.allbinary.game.tracking.TrackingEvent_Package;
   package Paintable_Package renames Standard.org.allbinary.graphics.paint.Paintable_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;
   package Reference_Types is
   subtype DamageFloaters_Access is org.allbinary.game.combat.damage.DamageFloaters_Package_References.DamageFloaters_Access;
   use type DamageFloaters_Access;
   subtype DamageFloaters_Access_Array is org.allbinary.game.combat.damage.DamageFloaters_Package_References.DamageFloaters_Access_Array;
   use type DamageFloaters_Access_Array;
   subtype DamageFloaters_Access_Array_Access is org.allbinary.game.combat.damage.DamageFloaters_Package_References.DamageFloaters_Access_Array_Access;
   use type DamageFloaters_Access_Array_Access;
   subtype DamageFloaters_Access_Array_Access_Array is org.allbinary.game.combat.damage.DamageFloaters_Package_References.DamageFloaters_Access_Array_Access_Array;
   use type DamageFloaters_Access_Array_Access_Array;
   subtype DamageFloaters_Access_Array_Access_Array_Access is org.allbinary.game.combat.damage.DamageFloaters_Package_References.DamageFloaters_Access_Array_Access_Array_Access;
   use type DamageFloaters_Access_Array_Access_Array_Access;
   subtype TrackingEvent_Access is org.allbinary.game.tracking.TrackingEvent_Package_References.TrackingEvent_Access;
   use type TrackingEvent_Access;
   subtype TrackingEvent_Access_Array is org.allbinary.game.tracking.TrackingEvent_Package_References.TrackingEvent_Access_Array;
   use type TrackingEvent_Access_Array;
   subtype TrackingEvent_Access_Array_Access is org.allbinary.game.tracking.TrackingEvent_Package_References.TrackingEvent_Access_Array_Access;
   use type TrackingEvent_Access_Array_Access;
   subtype TrackingEvent_Access_Array_Access_Array is org.allbinary.game.tracking.TrackingEvent_Package_References.TrackingEvent_Access_Array_Access_Array;
   use type TrackingEvent_Access_Array_Access_Array;
   subtype TrackingEvent_Access_Array_Access_Array_Access is org.allbinary.game.tracking.TrackingEvent_Package_References.TrackingEvent_Access_Array_Access_Array_Access;
   use type TrackingEvent_Access_Array_Access_Array_Access;
   subtype Paintable_Access is org.allbinary.graphics.paint.Paintable_Package_References.Paintable_Access;
   use type Paintable_Access;
   subtype Paintable_Access_Array is org.allbinary.graphics.paint.Paintable_Package_References.Paintable_Access_Array;
   use type Paintable_Access_Array;
   subtype Paintable_Access_Array_Access is org.allbinary.graphics.paint.Paintable_Package_References.Paintable_Access_Array_Access;
   use type Paintable_Access_Array_Access;
   subtype Paintable_Access_Array_Access_Array is org.allbinary.graphics.paint.Paintable_Package_References.Paintable_Access_Array_Access_Array;
   use type Paintable_Access_Array_Access_Array;
   subtype Paintable_Access_Array_Access_Array_Access is org.allbinary.graphics.paint.Paintable_Package_References.Paintable_Access_Array_Access_Array_Access;
   use type Paintable_Access_Array_Access_Array_Access;
   subtype ABHashtable_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access;
   use type ABHashtable_Access;
   subtype ABHashtable_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array;
   use type ABHashtable_Access_Array;
   subtype ABHashtable_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access;
   use type ABHashtable_Access_Array_Access;
   subtype ABHashtable_Access_Array_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array;
   use type ABHashtable_Access_Array_Access_Array;
   subtype ABHashtable_Access_Array_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array_Access;
   use type ABHashtable_Access_Array_Access_Array_Access;
   subtype BuildingLayer_Access is org.allbinary.game.layer.building.BuildingLayer_Package_References.BuildingLayer_Access;
   use type BuildingLayer_Access;
   subtype BuildingLayer_Access_Array is org.allbinary.game.layer.building.BuildingLayer_Package_References.BuildingLayer_Access_Array;
   use type BuildingLayer_Access_Array;
   subtype BuildingLayer_Access_Array_Access is org.allbinary.game.layer.building.BuildingLayer_Package_References.BuildingLayer_Access_Array_Access;
   use type BuildingLayer_Access_Array_Access;
   subtype BuildingLayer_Access_Array_Access_Array is org.allbinary.game.layer.building.BuildingLayer_Package_References.BuildingLayer_Access_Array_Access_Array;
   use type BuildingLayer_Access_Array_Access_Array;
   subtype BuildingLayer_Access_Array_Access_Array_Access is org.allbinary.game.layer.building.BuildingLayer_Package_References.BuildingLayer_Access_Array_Access_Array_Access;
   use type BuildingLayer_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype SimulatedBuildingPropertiesFactory_Access is org.allbinary.game.layer.building.SimulatedBuildingPropertiesFactory_Package_References.SimulatedBuildingPropertiesFactory_Access;
   function "=" (Left, Right : SimulatedBuildingPropertiesFactory_Access) return Boolean renames org.allbinary.game.layer.building.SimulatedBuildingPropertiesFactory_Package_References."=";
   subtype SimulatedBuildingPropertiesFactory_Access_Array is org.allbinary.game.layer.building.SimulatedBuildingPropertiesFactory_Package_References.SimulatedBuildingPropertiesFactory_Access_Array;
   function "=" (Left, Right : SimulatedBuildingPropertiesFactory_Access_Array) return Boolean renames org.allbinary.game.layer.building.SimulatedBuildingPropertiesFactory_Package_References."=";
   subtype SimulatedBuildingPropertiesFactory_Access_Array_Access is org.allbinary.game.layer.building.SimulatedBuildingPropertiesFactory_Package_References.SimulatedBuildingPropertiesFactory_Access_Array_Access;
   function "=" (Left, Right : SimulatedBuildingPropertiesFactory_Access_Array_Access) return Boolean renames org.allbinary.game.layer.building.SimulatedBuildingPropertiesFactory_Package_References."=";
   function Java_Box (Value : SimulatedBuildingPropertiesFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.building.SimulatedBuildingPropertiesFactory_Package_References.Java_Box;
   function Java_Unbox_SimulatedBuildingPropertiesFactory_Access_Array (Value : access Java_Object'Class) return SimulatedBuildingPropertiesFactory_Access_Array_Access renames org.allbinary.game.layer.building.SimulatedBuildingPropertiesFactory_Package_References.Java_Unbox_SimulatedBuildingPropertiesFactory_Access_Array;
   subtype SimulatedBuildingPropertiesFactory_Access_Array_Access_Array is org.allbinary.game.layer.building.SimulatedBuildingPropertiesFactory_Package_References.SimulatedBuildingPropertiesFactory_Access_Array_Access_Array;
   function "=" (Left, Right : SimulatedBuildingPropertiesFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.building.SimulatedBuildingPropertiesFactory_Package_References."=";
   subtype SimulatedBuildingPropertiesFactory_Access_Array_Access_Array_Access is org.allbinary.game.layer.building.SimulatedBuildingPropertiesFactory_Package_References.SimulatedBuildingPropertiesFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SimulatedBuildingPropertiesFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.building.SimulatedBuildingPropertiesFactory_Package_References."=";
   function Java_Box (Value : SimulatedBuildingPropertiesFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.building.SimulatedBuildingPropertiesFactory_Package_References.Java_Box;
   function Java_Unbox_SimulatedBuildingPropertiesFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return SimulatedBuildingPropertiesFactory_Access_Array_Access_Array_Access renames org.allbinary.game.layer.building.SimulatedBuildingPropertiesFactory_Package_References.Java_Unbox_SimulatedBuildingPropertiesFactory_Access_Array_Access_Array;

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


