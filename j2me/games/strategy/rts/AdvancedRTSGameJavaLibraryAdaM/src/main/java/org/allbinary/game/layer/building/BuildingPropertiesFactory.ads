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

limited with org.allbinary.game.layer.building.BuildingPropertiesFactory_Package;
package org.allbinary.game.layer.building.BuildingPropertiesFactory_Package_References is
   type BuildingPropertiesFactory_Access is access all org.allbinary.game.layer.building.BuildingPropertiesFactory_Package.BuildingPropertiesFactory'Class;
   type BuildingPropertiesFactory_Access_Array is array (Natural range <>) of BuildingPropertiesFactory_Access;
   type BuildingPropertiesFactory_Access_Array_Access is access all BuildingPropertiesFactory_Access_Array;
   type BuildingPropertiesFactory_Access_Array_Access_Array is array (Natural range <>) of BuildingPropertiesFactory_Access_Array_Access;
   type BuildingPropertiesFactory_Access_Array_Access_Array_Access is access all BuildingPropertiesFactory_Access_Array_Access_Array;
end org.allbinary.game.layer.building.BuildingPropertiesFactory_Package_References;

with org.allbinary.game.layer.building.BuildingPropertiesFactory_Package_References;
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
limited with org.allbinary.game.layer.building.BuildingLayer_Package;
with org.allbinary.game.layer.building.BuildingLayer_Package_References;

package org.allbinary.game.layer.building.BuildingPropertiesFactory_Package is

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


   subtype BuildingPropertiesFactory_Access is org.allbinary.game.layer.building.BuildingPropertiesFactory_Package_References.BuildingPropertiesFactory_Access;
   function "=" (Left, Right : BuildingPropertiesFactory_Access) return Boolean renames org.allbinary.game.layer.building.BuildingPropertiesFactory_Package_References."=";
   subtype BuildingPropertiesFactory_Access_Array is org.allbinary.game.layer.building.BuildingPropertiesFactory_Package_References.BuildingPropertiesFactory_Access_Array;
   function "=" (Left, Right : BuildingPropertiesFactory_Access_Array) return Boolean renames org.allbinary.game.layer.building.BuildingPropertiesFactory_Package_References."=";
   subtype BuildingPropertiesFactory_Access_Array_Access is org.allbinary.game.layer.building.BuildingPropertiesFactory_Package_References.BuildingPropertiesFactory_Access_Array_Access;
   function "=" (Left, Right : BuildingPropertiesFactory_Access_Array_Access) return Boolean renames org.allbinary.game.layer.building.BuildingPropertiesFactory_Package_References."=";
   subtype BuildingPropertiesFactory_Access_Array_Access_Array is org.allbinary.game.layer.building.BuildingPropertiesFactory_Package_References.BuildingPropertiesFactory_Access_Array_Access_Array;
   function "=" (Left, Right : BuildingPropertiesFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.building.BuildingPropertiesFactory_Package_References."=";
   subtype BuildingPropertiesFactory_Access_Array_Access_Array_Access is org.allbinary.game.layer.building.BuildingPropertiesFactory_Package_References.BuildingPropertiesFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BuildingPropertiesFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.building.BuildingPropertiesFactory_Package_References."=";

   type BuildingPropertiesFactory is new Java_Object with record
      damageFloatersPaintableInterface : Paintable_Access;
   end record;
   instance : BuildingPropertiesFactory_Access;

   procedure Initialize (This : in out BuildingPropertiesFactory'Class);
   function Create return BuildingPropertiesFactory_Access;
   function getInstance return BuildingPropertiesFactory_Access;
   function getEfficiencyPerLevel (This : in out BuildingPropertiesFactory; buildingLayer_Param : access BuildingLayer_Package.BuildingLayer'Class) return Integer;
   procedure getEfficiencyPerLevel (This : in out BuildingPropertiesFactory; buildingLayer_Param : access BuildingLayer_Package.BuildingLayer'Class);
   function getDamageFloaters (This : in out BuildingPropertiesFactory; buildingLayer_Param : access BuildingLayer_Package.BuildingLayer'Class) return DamageFloaters_Access;
   procedure getDamageFloaters (This : in out BuildingPropertiesFactory; buildingLayer_Param : access BuildingLayer_Package.BuildingLayer'Class);
   function getHealthBar (This : in out BuildingPropertiesFactory; buildingLayer_Param : access BuildingLayer_Package.BuildingLayer'Class) return Paintable_Access;
   procedure getHealthBar (This : in out BuildingPropertiesFactory; buildingLayer_Param : access BuildingLayer_Package.BuildingLayer'Class);
   function getHashtable (This : in out BuildingPropertiesFactory) return ABHashtable_Access;
   function getTrackingEvent (This : in out BuildingPropertiesFactory; buildingLayer_Param : access BuildingLayer_Package.BuildingLayer'Class) return TrackingEvent_Access;
   procedure getTrackingEvent (This : in out BuildingPropertiesFactory; buildingLayer_Param : access BuildingLayer_Package.BuildingLayer'Class);

end org.allbinary.game.layer.building.BuildingPropertiesFactory_Package;


