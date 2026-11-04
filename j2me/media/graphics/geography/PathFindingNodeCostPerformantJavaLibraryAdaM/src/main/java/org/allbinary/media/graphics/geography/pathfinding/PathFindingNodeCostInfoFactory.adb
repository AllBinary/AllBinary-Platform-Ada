--
-- AllBinary Open License Version 1
-- Copyright (c) 2006 AllBinary
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


with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package; use org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References;
with org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package;
with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellType_Package; use org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellType_Package;

package body org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactory_Package is

   package GeographicMapCellType_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package;
   package RaceTrackGeographicMapCellType_Package renames Standard.org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellType_Package;
   subtype BasicGeographicMap_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access;
   function "=" (Left, Right : BasicGeographicMap_Access) return Boolean renames org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References."=";
   subtype BasicGeographicMap_Access_Array is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array;
   function "=" (Left, Right : BasicGeographicMap_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References."=";
   subtype BasicGeographicMap_Access_Array_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array_Access;
   function "=" (Left, Right : BasicGeographicMap_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References."=";
   subtype BasicGeographicMap_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array_Access_Array;
   function "=" (Left, Right : BasicGeographicMap_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References."=";
   subtype BasicGeographicMap_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicGeographicMap_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References."=";
   subtype GeographicMapCellPosition_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access;
   function "=" (Left, Right : GeographicMapCellPosition_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References."=";
   subtype GeographicMapCellPosition_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array;
   function "=" (Left, Right : GeographicMapCellPosition_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References."=";
   subtype GeographicMapCellPosition_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellPosition_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References."=";
   subtype GeographicMapCellPosition_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array_Access_Array;
   function "=" (Left, Right : GeographicMapCellPosition_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References."=";
   subtype GeographicMapCellPosition_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellPosition_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References."=";
   procedure Initialize_Fields (This : in out PathFindingNodeCostInfoFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out PathFindingNodeCostInfoFactory'Class; max : Integer) is
   begin
      PathFindingNodeCostInfoFactoryBase_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create (max : Integer) return PathFindingNodeCostInfoFactory_Access is
      This : constant PathFindingNodeCostInfoFactory_Access := new PathFindingNodeCostInfoFactory;
   begin
      PathFindingNodeCostInfoFactory_Package.Initialize (This.all, max);
      return This;
   end Create;

   --  throws Exception
   procedure create (This : in out PathFindingNodeCostInfoFactory; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; goingToGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; costFromStart : Long_Long_Integer; costToEnd : Long_Long_Integer) is
      geographicMapInterface : constant BasicGeographicMap_Access := BasicGeographicMap_Access (geographicMapInterface_Param);
      goingToGeographicMapCellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (goingToGeographicMapCellPosition_Param);
      geographicMapCellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (geographicMapCellPosition_Param);
   begin
        null;
   end create;

   --  throws Exception
   function getTotalCost (This : in out PathFindingNodeCostInfoFactory; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; comingFromGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) return Long_Long_Integer is
      geographicMapInterface : constant BasicGeographicMap_Access := BasicGeographicMap_Access (geographicMapInterface_Param);
      comingFromGeographicMapCellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (comingFromGeographicMapCellPosition_Param);
      geographicMapCellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (geographicMapCellPosition_Param);
      geographicMapCellType : GeographicMapCellType_Access;
      geographicMapCellType2 : GeographicMapCellType_Access;
      raceTrackGeographicMapCellType : RaceTrackGeographicMapCellType_Access;
      raceTrackGeographicMapCellType2 : RaceTrackGeographicMapCellType_Access;
   begin
        geographicMapCellType := geographicMapInterface.getCellTypeAt (comingFromGeographicMapCellPosition);
        geographicMapCellType2 := geographicMapInterface.getCellTypeAt (geographicMapCellPosition);
        raceTrackGeographicMapCellType := RaceTrackGeographicMapCellType_Access (geographicMapCellType);
        raceTrackGeographicMapCellType2 := RaceTrackGeographicMapCellType_Access (geographicMapCellType2);
        return (Long_Long_Integer (raceTrackGeographicMapCellType.getTravelCost)) + (raceTrackGeographicMapCellType2.getTravelCost);
   end getTotalCost;

   procedure getTotalCost (This : in out PathFindingNodeCostInfoFactory; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; comingFromGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) is
      Java_Result : constant Long_Long_Integer := PathFindingNodeCostInfoFactory'Class (This).getTotalCost (geographicMapInterface_Param => geographicMapInterface_Param, comingFromGeographicMapCellPosition_Param => comingFromGeographicMapCellPosition_Param, geographicMapCellPosition_Param => geographicMapCellPosition_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTotalCost;

end org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactory_Package;


