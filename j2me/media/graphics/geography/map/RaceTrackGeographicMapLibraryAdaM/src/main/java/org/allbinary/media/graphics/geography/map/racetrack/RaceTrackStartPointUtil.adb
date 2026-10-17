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


package body org.allbinary.media.graphics.geography.map.racetrack.RaceTrackStartPointUtil_Package is

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


