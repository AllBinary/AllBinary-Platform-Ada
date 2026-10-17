-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2002 AllBinary 
--  
-- By agreeing to this license you and any business entity you represent are 
-- legally bound to the AllBinary Open License Version 1 legal agreement. 
--  
-- You may obtain the AllBinary Open License Version 1 legal agreement from 
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
--  
-- Created By: Travis Berthelot  
--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.layer.waypoint.WorkWaypoint_Package; use org.allbinary.game.layer.waypoint.WorkWaypoint_Package;
with org.allbinary.logic.math.SmallIntegerSingletonFactory_Package; use org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
with org.allbinary.media.graphics.geography.map.racetrack.BaseRaceTrackGeographicMap_Package; use org.allbinary.media.graphics.geography.map.racetrack.BaseRaceTrackGeographicMap_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;
with org.allbinary.game.layer.RTSLayerUtil_Package; use org.allbinary.game.layer.RTSLayerUtil_Package;

package org.allbinary.game.layer.AdvancedRTSLayerUtil_Package is

   package WorkWaypoint_Package renames Standard.org.allbinary.game.layer.waypoint.WorkWaypoint_Package;
   package SmallIntegerSingletonFactory_Package renames Standard.org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
   package BaseRaceTrackGeographicMap_Package renames Standard.org.allbinary.media.graphics.geography.map.racetrack.BaseRaceTrackGeographicMap_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;

   type AdvancedRTSLayerUtil is tagged;
   type AdvancedRTSLayerUtil_Access is access all AdvancedRTSLayerUtil'Class;
   type AdvancedRTSLayerUtil_Access_Array is array (Natural range <>) of AdvancedRTSLayerUtil_Access;
   type AdvancedRTSLayerUtil_Access_Array_Access is access all AdvancedRTSLayerUtil_Access_Array;

   type AdvancedRTSLayerUtil is new Java_Object with null record;
   instance : AdvancedRTSLayerUtil_Access;

   procedure Initialize (This : in out AdvancedRTSLayerUtil'Class);
   function Create return AdvancedRTSLayerUtil_Access;
   function getInstance return AdvancedRTSLayerUtil_Access;
   function createFakeRTSLayerHashtable (This : in out AdvancedRTSLayerUtil; baseRaceTrackGeographicMap_Param : access BaseRaceTrackGeographicMap_Package.BaseRaceTrackGeographicMap'Class) return ABHashtable_Access;
   procedure createFakeRTSLayerHashtable (This : in out AdvancedRTSLayerUtil; baseRaceTrackGeographicMap_Param : access BaseRaceTrackGeographicMap_Package.BaseRaceTrackGeographicMap'Class);

end org.allbinary.game.layer.AdvancedRTSLayerUtil_Package;


