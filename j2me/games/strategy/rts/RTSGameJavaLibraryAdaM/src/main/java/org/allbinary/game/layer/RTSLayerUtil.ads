-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2003 AllBinary 
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

limited with org.allbinary.game.layer.RTSLayerUtil_Package;
package org.allbinary.game.layer.RTSLayerUtil_Package_References is
   type RTSLayerUtil_Access is access all org.allbinary.game.layer.RTSLayerUtil_Package.RTSLayerUtil'Class;
   type RTSLayerUtil_Access_Array is array (Natural range <>) of RTSLayerUtil_Access;
   type RTSLayerUtil_Access_Array_Access is access all RTSLayerUtil_Access_Array;
   type RTSLayerUtil_Access_Array_Access_Array is array (Natural range <>) of RTSLayerUtil_Access_Array_Access;
   type RTSLayerUtil_Access_Array_Access_Array_Access is access all RTSLayerUtil_Access_Array_Access_Array;
end org.allbinary.game.layer.RTSLayerUtil_Package_References;

with org.allbinary.game.layer.RTSLayerUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.identification.GroupCommonFactory_Package;
with org.allbinary.game.identification.GroupCommonFactory_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.game.combat.weapon.WeaponProperties_Package;
with org.allbinary.game.combat.weapon.WeaponProperties_Package_References;
limited with org.allbinary.media.graphics.geography.map.racetrack.BaseRaceTrackGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.racetrack.BaseRaceTrackGeographicMap_Package_References;
limited with org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABHashtable_Package_References;
limited with org.allbinary.game.layer.RTSLayer_Package;
with org.allbinary.game.layer.RTSLayer_Package_References;

package org.allbinary.game.layer.RTSLayerUtil_Package is

   package GroupCommonFactory_Package renames Standard.org.allbinary.game.identification.GroupCommonFactory_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package WeaponProperties_Package renames Standard.org.allbinary.game.combat.weapon.WeaponProperties_Package;
   package BaseRaceTrackGeographicMap_Package renames Standard.org.allbinary.media.graphics.geography.map.racetrack.BaseRaceTrackGeographicMap_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;
   package Reference_Types is
   subtype GroupCommonFactory_Access is org.allbinary.game.identification.GroupCommonFactory_Package_References.GroupCommonFactory_Access;
   use type GroupCommonFactory_Access;
   subtype GroupCommonFactory_Access_Array is org.allbinary.game.identification.GroupCommonFactory_Package_References.GroupCommonFactory_Access_Array;
   use type GroupCommonFactory_Access_Array;
   subtype GroupCommonFactory_Access_Array_Access is org.allbinary.game.identification.GroupCommonFactory_Package_References.GroupCommonFactory_Access_Array_Access;
   use type GroupCommonFactory_Access_Array_Access;
   subtype GroupCommonFactory_Access_Array_Access_Array is org.allbinary.game.identification.GroupCommonFactory_Package_References.GroupCommonFactory_Access_Array_Access_Array;
   use type GroupCommonFactory_Access_Array_Access_Array;
   subtype GroupCommonFactory_Access_Array_Access_Array_Access is org.allbinary.game.identification.GroupCommonFactory_Package_References.GroupCommonFactory_Access_Array_Access_Array_Access;
   use type GroupCommonFactory_Access_Array_Access_Array_Access;
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype WeaponProperties_Access is org.allbinary.game.combat.weapon.WeaponProperties_Package_References.WeaponProperties_Access;
   use type WeaponProperties_Access;
   subtype WeaponProperties_Access_Array is org.allbinary.game.combat.weapon.WeaponProperties_Package_References.WeaponProperties_Access_Array;
   use type WeaponProperties_Access_Array;
   subtype WeaponProperties_Access_Array_Access is org.allbinary.game.combat.weapon.WeaponProperties_Package_References.WeaponProperties_Access_Array_Access;
   use type WeaponProperties_Access_Array_Access;
   subtype WeaponProperties_Access_Array_Access_Array is org.allbinary.game.combat.weapon.WeaponProperties_Package_References.WeaponProperties_Access_Array_Access_Array;
   use type WeaponProperties_Access_Array_Access_Array;
   subtype WeaponProperties_Access_Array_Access_Array_Access is org.allbinary.game.combat.weapon.WeaponProperties_Package_References.WeaponProperties_Access_Array_Access_Array_Access;
   use type WeaponProperties_Access_Array_Access_Array_Access;
   subtype BaseRaceTrackGeographicMap_Access is org.allbinary.media.graphics.geography.map.racetrack.BaseRaceTrackGeographicMap_Package_References.BaseRaceTrackGeographicMap_Access;
   use type BaseRaceTrackGeographicMap_Access;
   subtype BaseRaceTrackGeographicMap_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.BaseRaceTrackGeographicMap_Package_References.BaseRaceTrackGeographicMap_Access_Array;
   use type BaseRaceTrackGeographicMap_Access_Array;
   subtype BaseRaceTrackGeographicMap_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.BaseRaceTrackGeographicMap_Package_References.BaseRaceTrackGeographicMap_Access_Array_Access;
   use type BaseRaceTrackGeographicMap_Access_Array_Access;
   subtype BaseRaceTrackGeographicMap_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.BaseRaceTrackGeographicMap_Package_References.BaseRaceTrackGeographicMap_Access_Array_Access_Array;
   use type BaseRaceTrackGeographicMap_Access_Array_Access_Array;
   subtype BaseRaceTrackGeographicMap_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.BaseRaceTrackGeographicMap_Package_References.BaseRaceTrackGeographicMap_Access_Array_Access_Array_Access;
   use type BaseRaceTrackGeographicMap_Access_Array_Access_Array_Access;
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
   subtype RTSLayer_Access is org.allbinary.game.layer.RTSLayer_Package_References.RTSLayer_Access;
   use type RTSLayer_Access;
   subtype RTSLayer_Access_Array is org.allbinary.game.layer.RTSLayer_Package_References.RTSLayer_Access_Array;
   use type RTSLayer_Access_Array;
   subtype RTSLayer_Access_Array_Access is org.allbinary.game.layer.RTSLayer_Package_References.RTSLayer_Access_Array_Access;
   use type RTSLayer_Access_Array_Access;
   subtype RTSLayer_Access_Array_Access_Array is org.allbinary.game.layer.RTSLayer_Package_References.RTSLayer_Access_Array_Access_Array;
   use type RTSLayer_Access_Array_Access_Array;
   subtype RTSLayer_Access_Array_Access_Array_Access is org.allbinary.game.layer.RTSLayer_Package_References.RTSLayer_Access_Array_Access_Array_Access;
   use type RTSLayer_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype RTSLayerUtil_Access is org.allbinary.game.layer.RTSLayerUtil_Package_References.RTSLayerUtil_Access;
   function "=" (Left, Right : RTSLayerUtil_Access) return Boolean renames org.allbinary.game.layer.RTSLayerUtil_Package_References."=";
   subtype RTSLayerUtil_Access_Array is org.allbinary.game.layer.RTSLayerUtil_Package_References.RTSLayerUtil_Access_Array;
   function "=" (Left, Right : RTSLayerUtil_Access_Array) return Boolean renames org.allbinary.game.layer.RTSLayerUtil_Package_References."=";
   subtype RTSLayerUtil_Access_Array_Access is org.allbinary.game.layer.RTSLayerUtil_Package_References.RTSLayerUtil_Access_Array_Access;
   function "=" (Left, Right : RTSLayerUtil_Access_Array_Access) return Boolean renames org.allbinary.game.layer.RTSLayerUtil_Package_References."=";
   subtype RTSLayerUtil_Access_Array_Access_Array is org.allbinary.game.layer.RTSLayerUtil_Package_References.RTSLayerUtil_Access_Array_Access_Array;
   function "=" (Left, Right : RTSLayerUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.RTSLayerUtil_Package_References."=";
   subtype RTSLayerUtil_Access_Array_Access_Array_Access is org.allbinary.game.layer.RTSLayerUtil_Package_References.RTSLayerUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RTSLayerUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.RTSLayerUtil_Package_References."=";

   type RTSLayerUtil is new Java_Object with record
      logUtil : LogUtil_Access;
      groupCommonFactory : GroupCommonFactory_Access;
      MAX_RELOAD_TIME : Long_Long_Integer;
   end record;
   instance : RTSLayerUtil_Access;

   procedure Initialize (This : in out RTSLayerUtil'Class);
   function Create return RTSLayerUtil_Access;
   function getInstance return RTSLayerUtil_Access;
   function createWeaponProperties (This : in out RTSLayerUtil; weaponProperties_Param : access WeaponProperties_Package.WeaponProperties'Class; currentLevel : Integer; lastLevel : Integer) return WeaponProperties_Access;
   procedure createWeaponProperties (This : in out RTSLayerUtil; weaponProperties_Param : access WeaponProperties_Package.WeaponProperties'Class; currentLevel : Integer; lastLevel : Integer);
   procedure downgrade (This : in out RTSLayerUtil; rtsLayer_Param : access RTSLayer_Package.RTSLayer'Class);
   procedure upgrade (This : in out RTSLayerUtil; rtsLayer_Param : access RTSLayer_Package.RTSLayer'Class);
   function getCostExponential (This : in out RTSLayerUtil; cost : Long_Long_Integer) return Long_Long_Integer;
   procedure getCostExponential (This : in out RTSLayerUtil; cost : Long_Long_Integer);
   function getWeaponPropertiesCost (This : in out RTSLayerUtil; weaponProperties_Param : access WeaponProperties_Package.WeaponProperties'Class) return Integer;
   procedure getWeaponPropertiesCost (This : in out RTSLayerUtil; weaponProperties_Param : access WeaponProperties_Package.WeaponProperties'Class);
   function getCost (This : in out RTSLayerUtil; rtsLayer_Param : access RTSLayer_Package.RTSLayer'Class) return Integer;
   procedure getCost (This : in out RTSLayerUtil; rtsLayer_Param : access RTSLayer_Package.RTSLayer'Class);
   function getDowngradeCost (This : in out RTSLayerUtil; rtsLayer_Param : access RTSLayer_Package.RTSLayer'Class) return Integer;
   procedure getDowngradeCost (This : in out RTSLayerUtil; rtsLayer_Param : access RTSLayer_Package.RTSLayer'Class);
   function getUpgradeCost (This : in out RTSLayerUtil; rtsLayer_Param : access RTSLayer_Package.RTSLayer'Class) return Integer;
   procedure getUpgradeCost (This : in out RTSLayerUtil; rtsLayer_Param : access RTSLayer_Package.RTSLayer'Class);
   procedure destroyAndClear (This : in out RTSLayerUtil; list_Param : access BasicArrayList_Package.BasicArrayList'Class);
   function createFakeRTSLayerHashtable (This : in out RTSLayerUtil; baseRaceTrackGeographicMap_Param : access BaseRaceTrackGeographicMap_Package.BaseRaceTrackGeographicMap'Class) return ABHashtable_Access;
   procedure createFakeRTSLayerHashtable (This : in out RTSLayerUtil; baseRaceTrackGeographicMap_Param : access BaseRaceTrackGeographicMap_Package.BaseRaceTrackGeographicMap'Class);

end org.allbinary.game.layer.RTSLayerUtil_Package;


