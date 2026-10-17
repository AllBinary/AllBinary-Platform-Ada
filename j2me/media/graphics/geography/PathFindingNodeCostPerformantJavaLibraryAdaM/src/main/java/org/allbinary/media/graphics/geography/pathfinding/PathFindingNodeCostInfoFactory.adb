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


package body org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactory_Package is

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
   procedure create (This : in out PathFindingNodeCostInfoFactory; geographicMapInterface : BasicGeographicMap_Access; goingToGeographicMapCellPosition : GeographicMapCellPosition_Access; geographicMapCellPosition : GeographicMapCellPosition_Access; costFromStart : Long_Long_Integer; costToEnd : Long_Long_Integer) is
   begin
        null;
   end create;

   --  throws Exception
   function getTotalCost (This : in out PathFindingNodeCostInfoFactory; geographicMapInterface : BasicGeographicMap_Access; comingFromGeographicMapCellPosition : GeographicMapCellPosition_Access; geographicMapCellPosition : GeographicMapCellPosition_Access) return Long_Long_Integer is
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

   procedure getTotalCost (This : in out PathFindingNodeCostInfoFactory; geographicMapInterface : BasicGeographicMap_Access; comingFromGeographicMapCellPosition : GeographicMapCellPosition_Access; geographicMapCellPosition : GeographicMapCellPosition_Access) is
      Java_Result : constant Long_Long_Integer := PathFindingNodeCostInfoFactory'Class (This).getTotalCost (geographicMapInterface, comingFromGeographicMapCellPosition, geographicMapCellPosition);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTotalCost;

end org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactory_Package;


