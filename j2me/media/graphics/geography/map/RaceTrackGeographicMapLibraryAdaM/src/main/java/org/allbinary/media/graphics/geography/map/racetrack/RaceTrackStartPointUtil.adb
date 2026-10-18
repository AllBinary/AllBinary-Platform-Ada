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


with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.graphics.PointFactory_Package; use org.allbinary.graphics.PointFactory_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.pathfinding.PathFindingNode_Package; use org.allbinary.media.graphics.geography.pathfinding.PathFindingNode_Package;

package body org.allbinary.media.graphics.geography.map.racetrack.RaceTrackStartPointUtil_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package PointFactory_Package renames Standard.org.allbinary.graphics.PointFactory_Package;
   package GeographicMapCellPosition_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
   package PathFindingNode_Package renames Standard.org.allbinary.media.graphics.geography.pathfinding.PathFindingNode_Package;
   procedure Initialize_Fields (This : in out RaceTrackStartPointUtil'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out RaceTrackStartPointUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return RaceTrackStartPointUtil_Access is
      This : constant RaceTrackStartPointUtil_Access := new RaceTrackStartPointUtil;
   begin
      RaceTrackStartPointUtil_Package.Initialize (This.all);
      return This;
   end Create;


   --  throws Exception
   function get (geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; pathFindingInfo_Param : access PathFindingInfo_Package.PathFindingInfo'Class; index : Integer) return GPoint_Access is
      geographicMapInterface : constant BasicGeographicMap_Access := BasicGeographicMap_Access (geographicMapInterface_Param);
      pathFindingInfo : constant PathFindingInfo_Access := PathFindingInfo_Access (pathFindingInfo_Param);
      list : BasicArrayList_Access;
      startPathFindingNode : PathFindingNode_Access;
      geographicMapCellPosition : GeographicMapCellPosition_Access;
      point : GPoint_Access;
   begin
        list := pathFindingInfo.getStartPathFindingNodeList;
        startPathFindingNode := PathFindingNode_Access (list.get (index));
        geographicMapCellPosition := startPathFindingNode.geographicMapCellPosition;
        point := geographicMapCellPosition.getPoint;
        return PointFactory_Package.getInstance.createXY (point.getX, (point.getY) + (geographicMapInterface.getAllBinaryTiledLayer.getHalfCellHeight));
   end get;

   procedure get (geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; pathFindingInfo_Param : access PathFindingInfo_Package.PathFindingInfo'Class; index : Integer) is
      Java_Result : constant GPoint_Access := get (geographicMapInterface_Param, pathFindingInfo_Param, index);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end get;

end org.allbinary.media.graphics.geography.map.racetrack.RaceTrackStartPointUtil_Package;


