--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
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
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.math.SmallIntegerSingletonFactory_Package; use org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package; use org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapInterfaceFactoryInterface_Package; use org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapInterfaceFactoryInterface_Package;
with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackRoadsGeographicMapCellHistoryFactory_Package; use org.allbinary.media.graphics.geography.map.racetrack.RaceTrackRoadsGeographicMapCellHistoryFactory_Package;
with org.allbinary.media.graphics.geography.map.racetrack.RaceTracksPathPrinter_Package; use org.allbinary.media.graphics.geography.map.racetrack.RaceTracksPathPrinter_Package;
with org.allbinary.media.graphics.geography.pathfinding.PathFindingInfo_Package; use org.allbinary.media.graphics.geography.pathfinding.PathFindingInfo_Package;
with org.allbinary.media.graphics.geography.pathfinding.PathGenerator_Package; use org.allbinary.media.graphics.geography.pathfinding.PathGenerator_Package;

package org.allbinary.game.media.graphics.geography.map.racetrack.DynamicRaceTracksPathPrinter_Package is

   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;
   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package SmallIntegerSingletonFactory_Package renames org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
   package BasicGeographicMap_Package renames org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
   package RaceTrackGeographicMapInterfaceFactoryInterface_Package renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapInterfaceFactoryInterface_Package;
   package RaceTrackRoadsGeographicMapCellHistoryFactory_Package renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackRoadsGeographicMapCellHistoryFactory_Package;
   package RaceTracksPathPrinter_Package renames org.allbinary.media.graphics.geography.map.racetrack.RaceTracksPathPrinter_Package;
   package PathFindingInfo_Package renames org.allbinary.media.graphics.geography.pathfinding.PathFindingInfo_Package;
   package PathGenerator_Package renames org.allbinary.media.graphics.geography.pathfinding.PathGenerator_Package;

   type DynamicRaceTracksPathPrinter is tagged;
   type DynamicRaceTracksPathPrinter_Access is access all DynamicRaceTracksPathPrinter'Class;
   type DynamicRaceTracksPathPrinter_Access_Array is array (Natural range <>) of DynamicRaceTracksPathPrinter_Access;
   type DynamicRaceTracksPathPrinter_Access_Array_Access is access all DynamicRaceTracksPathPrinter_Access_Array;

   type DynamicRaceTracksPathPrinter is new RaceTracksPathPrinter with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out DynamicRaceTracksPathPrinter'Class);
   function Create return DynamicRaceTracksPathPrinter_Access;
   procedure printAllPaths (This : in out DynamicRaceTracksPathPrinter; raceTrackGeographicMapInterfaceFactoryInterface : RaceTrackGeographicMapInterfaceFactoryInterface_Access; pathFindingInfo : PathFindingInfo_Access; size : Integer);

end org.allbinary.game.media.graphics.geography.map.racetrack.DynamicRaceTracksPathPrinter_Package;


