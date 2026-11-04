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

limited with org.allbinary.media.graphics.geography.map.racetrack.BasePathFindingInfoFactory_Package;
package org.allbinary.media.graphics.geography.map.racetrack.BasePathFindingInfoFactory_Package_References is
   type BasePathFindingInfoFactory_Access is access all org.allbinary.media.graphics.geography.map.racetrack.BasePathFindingInfoFactory_Package.BasePathFindingInfoFactory'Class;
   type BasePathFindingInfoFactory_Access_Array is array (Natural range <>) of BasePathFindingInfoFactory_Access;
   type BasePathFindingInfoFactory_Access_Array_Access is access all BasePathFindingInfoFactory_Access_Array;
   type BasePathFindingInfoFactory_Access_Array_Access_Array is array (Natural range <>) of BasePathFindingInfoFactory_Access_Array_Access;
   type BasePathFindingInfoFactory_Access_Array_Access_Array_Access is access all BasePathFindingInfoFactory_Access_Array_Access_Array;
end org.allbinary.media.graphics.geography.map.racetrack.BasePathFindingInfoFactory_Package_References;

with org.allbinary.media.graphics.geography.map.racetrack.BasePathFindingInfoFactory_Package_References;
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
limited with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References;
limited with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References;
limited with org.allbinary.media.graphics.geography.pathfinding.PathFindingInfo_Package;
with org.allbinary.media.graphics.geography.pathfinding.PathFindingInfo_Package_References;

package org.allbinary.media.graphics.geography.map.racetrack.BasePathFindingInfoFactory_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package BasicGeographicMap_Package renames Standard.org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
   package GeographicMapCellPosition_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
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
   subtype BasicGeographicMap_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access;
   use type BasicGeographicMap_Access;
   subtype BasicGeographicMap_Access_Array is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array;
   use type BasicGeographicMap_Access_Array;
   subtype BasicGeographicMap_Access_Array_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array_Access;
   use type BasicGeographicMap_Access_Array_Access;
   subtype BasicGeographicMap_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array_Access_Array;
   use type BasicGeographicMap_Access_Array_Access_Array;
   subtype BasicGeographicMap_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array_Access_Array_Access;
   use type BasicGeographicMap_Access_Array_Access_Array_Access;
   subtype GeographicMapCellPosition_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access;
   use type GeographicMapCellPosition_Access;
   subtype GeographicMapCellPosition_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array;
   use type GeographicMapCellPosition_Access_Array;
   subtype GeographicMapCellPosition_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array_Access;
   use type GeographicMapCellPosition_Access_Array_Access;
   subtype GeographicMapCellPosition_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array_Access_Array;
   use type GeographicMapCellPosition_Access_Array_Access_Array;
   subtype GeographicMapCellPosition_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array_Access_Array_Access;
   use type GeographicMapCellPosition_Access_Array_Access_Array_Access;
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


   subtype BasePathFindingInfoFactory_Access is org.allbinary.media.graphics.geography.map.racetrack.BasePathFindingInfoFactory_Package_References.BasePathFindingInfoFactory_Access;
   function "=" (Left, Right : BasePathFindingInfoFactory_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.BasePathFindingInfoFactory_Package_References."=";
   subtype BasePathFindingInfoFactory_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.BasePathFindingInfoFactory_Package_References.BasePathFindingInfoFactory_Access_Array;
   function "=" (Left, Right : BasePathFindingInfoFactory_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.BasePathFindingInfoFactory_Package_References."=";
   subtype BasePathFindingInfoFactory_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.BasePathFindingInfoFactory_Package_References.BasePathFindingInfoFactory_Access_Array_Access;
   function "=" (Left, Right : BasePathFindingInfoFactory_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.BasePathFindingInfoFactory_Package_References."=";
   subtype BasePathFindingInfoFactory_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.BasePathFindingInfoFactory_Package_References.BasePathFindingInfoFactory_Access_Array_Access_Array;
   function "=" (Left, Right : BasePathFindingInfoFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.BasePathFindingInfoFactory_Package_References."=";
   subtype BasePathFindingInfoFactory_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.BasePathFindingInfoFactory_Package_References.BasePathFindingInfoFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasePathFindingInfoFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.BasePathFindingInfoFactory_Package_References."=";

   type BasePathFindingInfoFactory is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out BasePathFindingInfoFactory'Class);
   function Create return BasePathFindingInfoFactory_Access;
   procedure init (This : in out BasePathFindingInfoFactory; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; pathFindingInfo_Param : access PathFindingInfo_Package.PathFindingInfo'Class; mapArray : Integer_Array_Access_Array_Access);
   procedure addStartPathFindingNode (This : in out BasePathFindingInfoFactory; pathFindingInfo_Param : access PathFindingInfo_Package.PathFindingInfo'Class; startGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class);
   procedure addEndPathFindingNode (This : in out BasePathFindingInfoFactory; pathFindingInfo_Param : access PathFindingInfo_Package.PathFindingInfo'Class; endGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class);
   function getInstancePathFindingInfo (This : in out BasePathFindingInfoFactory; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; graphArray : Integer_Array_Access_Array_Access) return PathFindingInfo_Access;
   procedure getInstancePathFindingInfo (This : in out BasePathFindingInfoFactory; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; graphArray : Integer_Array_Access_Array_Access);

end org.allbinary.media.graphics.geography.map.racetrack.BasePathFindingInfoFactory_Package;


