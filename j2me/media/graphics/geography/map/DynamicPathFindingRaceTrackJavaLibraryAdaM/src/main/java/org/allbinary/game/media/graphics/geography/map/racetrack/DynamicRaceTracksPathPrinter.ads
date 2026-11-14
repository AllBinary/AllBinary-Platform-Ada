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

with AllBinary_Java;
limited with org.allbinary.game.media.graphics.geography.map.racetrack.DynamicRaceTracksPathPrinter_Package;
package org.allbinary.game.media.graphics.geography.map.racetrack.DynamicRaceTracksPathPrinter_Package_References is
   type DynamicRaceTracksPathPrinter_Access is access all org.allbinary.game.media.graphics.geography.map.racetrack.DynamicRaceTracksPathPrinter_Package.DynamicRaceTracksPathPrinter'Class;
   type DynamicRaceTracksPathPrinter_Access_Array is array (Natural range <>) of DynamicRaceTracksPathPrinter_Access;
   type DynamicRaceTracksPathPrinter_Access_Array_Access is access all DynamicRaceTracksPathPrinter_Access_Array;
   type DynamicRaceTracksPathPrinter_Access_Array_Access_Array is array (Natural range <>) of DynamicRaceTracksPathPrinter_Access_Array_Access;
   type DynamicRaceTracksPathPrinter_Access_Array_Access_Array_Access is access all DynamicRaceTracksPathPrinter_Access_Array_Access_Array;
   type DynamicRaceTracksPathPrinter_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : DynamicRaceTracksPathPrinter_Access_Array_Access;
   end record;
   function Java_Box (Value : DynamicRaceTracksPathPrinter_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new DynamicRaceTracksPathPrinter_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_DynamicRaceTracksPathPrinter_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return DynamicRaceTracksPathPrinter_Access_Array_Access is (if Value /= null and then Value.all in DynamicRaceTracksPathPrinter_Access_Array_Object'Class then DynamicRaceTracksPathPrinter_Access_Array_Object'Class (Value.all).Value else null);
   type DynamicRaceTracksPathPrinter_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : DynamicRaceTracksPathPrinter_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : DynamicRaceTracksPathPrinter_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new DynamicRaceTracksPathPrinter_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_DynamicRaceTracksPathPrinter_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return DynamicRaceTracksPathPrinter_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in DynamicRaceTracksPathPrinter_Access_Array_Access_Array_Object'Class then DynamicRaceTracksPathPrinter_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.media.graphics.geography.map.racetrack.DynamicRaceTracksPathPrinter_Package_References;

with org.allbinary.game.media.graphics.geography.map.racetrack.DynamicRaceTracksPathPrinter_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapInterfaceFactoryInterface_Package;
with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapInterfaceFactoryInterface_Package_References;
with org.allbinary.media.graphics.geography.map.racetrack.RaceTracksPathPrinter_Package; use org.allbinary.media.graphics.geography.map.racetrack.RaceTracksPathPrinter_Package;
limited with org.allbinary.media.graphics.geography.pathfinding.PathFindingInfo_Package;
with org.allbinary.media.graphics.geography.pathfinding.PathFindingInfo_Package_References;

package org.allbinary.game.media.graphics.geography.map.racetrack.DynamicRaceTracksPathPrinter_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package RaceTrackGeographicMapInterfaceFactoryInterface_Package renames Standard.org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapInterfaceFactoryInterface_Package;
   package RaceTracksPathPrinter_Package renames Standard.org.allbinary.media.graphics.geography.map.racetrack.RaceTracksPathPrinter_Package;
   package PathFindingInfo_Package renames Standard.org.allbinary.media.graphics.geography.pathfinding.PathFindingInfo_Package;
   package Reference_Types is
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
   subtype RaceTrackGeographicMapInterfaceFactoryInterface_Access is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapInterfaceFactoryInterface_Package_References.RaceTrackGeographicMapInterfaceFactoryInterface_Access;
   use type RaceTrackGeographicMapInterfaceFactoryInterface_Access;
   subtype RaceTrackGeographicMapInterfaceFactoryInterface_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapInterfaceFactoryInterface_Package_References.RaceTrackGeographicMapInterfaceFactoryInterface_Access_Array;
   use type RaceTrackGeographicMapInterfaceFactoryInterface_Access_Array;
   subtype RaceTrackGeographicMapInterfaceFactoryInterface_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapInterfaceFactoryInterface_Package_References.RaceTrackGeographicMapInterfaceFactoryInterface_Access_Array_Access;
   use type RaceTrackGeographicMapInterfaceFactoryInterface_Access_Array_Access;
   subtype RaceTrackGeographicMapInterfaceFactoryInterface_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapInterfaceFactoryInterface_Package_References.RaceTrackGeographicMapInterfaceFactoryInterface_Access_Array_Access_Array;
   use type RaceTrackGeographicMapInterfaceFactoryInterface_Access_Array_Access_Array;
   subtype RaceTrackGeographicMapInterfaceFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapInterfaceFactoryInterface_Package_References.RaceTrackGeographicMapInterfaceFactoryInterface_Access_Array_Access_Array_Access;
   use type RaceTrackGeographicMapInterfaceFactoryInterface_Access_Array_Access_Array_Access;
   subtype PathFindingInfo_Access is org.allbinary.media.graphics.geography.pathfinding.PathFindingInfo_Package_References.PathFindingInfo_Access;
   use type PathFindingInfo_Access;
   subtype PathFindingInfo_Access_Array is org.allbinary.media.graphics.geography.pathfinding.PathFindingInfo_Package_References.PathFindingInfo_Access_Array;
   use type PathFindingInfo_Access_Array;
   subtype PathFindingInfo_Access_Array_Access is org.allbinary.media.graphics.geography.pathfinding.PathFindingInfo_Package_References.PathFindingInfo_Access_Array_Access;
   use type PathFindingInfo_Access_Array_Access;
   subtype PathFindingInfo_Access_Array_Access_Array is org.allbinary.media.graphics.geography.pathfinding.PathFindingInfo_Package_References.PathFindingInfo_Access_Array_Access_Array;
   use type PathFindingInfo_Access_Array_Access_Array;
   subtype PathFindingInfo_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.pathfinding.PathFindingInfo_Package_References.PathFindingInfo_Access_Array_Access_Array_Access;
   use type PathFindingInfo_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype DynamicRaceTracksPathPrinter_Access is org.allbinary.game.media.graphics.geography.map.racetrack.DynamicRaceTracksPathPrinter_Package_References.DynamicRaceTracksPathPrinter_Access;
   function "=" (Left, Right : DynamicRaceTracksPathPrinter_Access) return Boolean renames org.allbinary.game.media.graphics.geography.map.racetrack.DynamicRaceTracksPathPrinter_Package_References."=";
   subtype DynamicRaceTracksPathPrinter_Access_Array is org.allbinary.game.media.graphics.geography.map.racetrack.DynamicRaceTracksPathPrinter_Package_References.DynamicRaceTracksPathPrinter_Access_Array;
   function "=" (Left, Right : DynamicRaceTracksPathPrinter_Access_Array) return Boolean renames org.allbinary.game.media.graphics.geography.map.racetrack.DynamicRaceTracksPathPrinter_Package_References."=";
   subtype DynamicRaceTracksPathPrinter_Access_Array_Access is org.allbinary.game.media.graphics.geography.map.racetrack.DynamicRaceTracksPathPrinter_Package_References.DynamicRaceTracksPathPrinter_Access_Array_Access;
   function "=" (Left, Right : DynamicRaceTracksPathPrinter_Access_Array_Access) return Boolean renames org.allbinary.game.media.graphics.geography.map.racetrack.DynamicRaceTracksPathPrinter_Package_References."=";
   function Java_Box (Value : DynamicRaceTracksPathPrinter_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.media.graphics.geography.map.racetrack.DynamicRaceTracksPathPrinter_Package_References.Java_Box;
   function Java_Unbox_DynamicRaceTracksPathPrinter_Access_Array (Value : access Java_Object'Class) return DynamicRaceTracksPathPrinter_Access_Array_Access renames org.allbinary.game.media.graphics.geography.map.racetrack.DynamicRaceTracksPathPrinter_Package_References.Java_Unbox_DynamicRaceTracksPathPrinter_Access_Array;
   subtype DynamicRaceTracksPathPrinter_Access_Array_Access_Array is org.allbinary.game.media.graphics.geography.map.racetrack.DynamicRaceTracksPathPrinter_Package_References.DynamicRaceTracksPathPrinter_Access_Array_Access_Array;
   function "=" (Left, Right : DynamicRaceTracksPathPrinter_Access_Array_Access_Array) return Boolean renames org.allbinary.game.media.graphics.geography.map.racetrack.DynamicRaceTracksPathPrinter_Package_References."=";
   subtype DynamicRaceTracksPathPrinter_Access_Array_Access_Array_Access is org.allbinary.game.media.graphics.geography.map.racetrack.DynamicRaceTracksPathPrinter_Package_References.DynamicRaceTracksPathPrinter_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DynamicRaceTracksPathPrinter_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.media.graphics.geography.map.racetrack.DynamicRaceTracksPathPrinter_Package_References."=";
   function Java_Box (Value : DynamicRaceTracksPathPrinter_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.media.graphics.geography.map.racetrack.DynamicRaceTracksPathPrinter_Package_References.Java_Box;
   function Java_Unbox_DynamicRaceTracksPathPrinter_Access_Array_Access_Array (Value : access Java_Object'Class) return DynamicRaceTracksPathPrinter_Access_Array_Access_Array_Access renames org.allbinary.game.media.graphics.geography.map.racetrack.DynamicRaceTracksPathPrinter_Package_References.Java_Unbox_DynamicRaceTracksPathPrinter_Access_Array_Access_Array;

   type DynamicRaceTracksPathPrinter is new RaceTracksPathPrinter with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out DynamicRaceTracksPathPrinter'Class);
   function Create return DynamicRaceTracksPathPrinter_Access;
   procedure printAllPaths (This : in out DynamicRaceTracksPathPrinter; raceTrackGeographicMapInterfaceFactoryInterface_Param : access RaceTrackGeographicMapInterfaceFactoryInterface_Package.RaceTrackGeographicMapInterfaceFactoryInterface'Class; pathFindingInfo_Param : access PathFindingInfo_Package.PathFindingInfo'Class; size : Integer);

end org.allbinary.game.media.graphics.geography.map.racetrack.DynamicRaceTracksPathPrinter_Package;


