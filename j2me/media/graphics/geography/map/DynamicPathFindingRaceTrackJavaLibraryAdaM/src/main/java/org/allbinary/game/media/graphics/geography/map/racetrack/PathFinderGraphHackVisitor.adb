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


package body org.allbinary.game.media.graphics.geography.map.racetrack.PathFinderGraphHackVisitor_Package is

   procedure Initialize_Fields (This : in out PathFinderGraphHackVisitor'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out PathFinderGraphHackVisitor'Class; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; edgeMinimum : Integer; minPathWeight : Integer; maxPathWeight : Integer) is
      geographicMapInterface : constant BasicGeographicMap_Access := BasicGeographicMap_Access (geographicMapInterface_Param);
   begin
        BasePathFinderGraphVisitor_Package.Initialize (This, geographicMapInterface, edgeMinimum, minPathWeight, maxPathWeight);
        Initialize_Fields (This);
   end Initialize;

   function Create (geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; edgeMinimum : Integer; minPathWeight : Integer; maxPathWeight : Integer) return PathFinderGraphHackVisitor_Access is
      This : constant PathFinderGraphHackVisitor_Access := new PathFinderGraphHackVisitor;
   begin
      PathFinderGraphHackVisitor_Package.Initialize (This.all, geographicMapInterface_Param, edgeMinimum, minPathWeight, maxPathWeight);
      return This;
   end Create;

   --  throws Exception
   procedure visit (This : in out PathFinderGraphHackVisitor; graph_Param : access SimpleWeightedGraph_Package.SimpleWeightedGraph'Class; startPathFindingNodeList_Param : access BasicArrayList_Package.BasicArrayList'Class; endPathFindingNodeList_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      graph : constant SimpleWeightedGraph_Access := SimpleWeightedGraph_Access (graph_Param);
      startPathFindingNodeList : constant BasicArrayList_Access := BasicArrayList_Access (startPathFindingNodeList_Param);
      endPathFindingNodeList : constant BasicArrayList_Access := BasicArrayList_Access (endPathFindingNodeList_Param);
   begin
        This.fixStart (graph, startPathFindingNodeList);
        This.fixEnd (graph, endPathFindingNodeList);
        This.fixOverPassEdges (graph);
   end visit;

   --  throws Exception
   procedure fixStart (This : in out PathFinderGraphHackVisitor; graph_Param : access SimpleWeightedGraph_Package.SimpleWeightedGraph'Class; startPathFindingNodeList_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      graph : constant SimpleWeightedGraph_Access := SimpleWeightedGraph_Access (graph_Param);
      startPathFindingNodeList : constant BasicArrayList_Access := BasicArrayList_Access (startPathFindingNodeList_Param);
      geographicMapCellPositionFactory : BasicGeographicMapCellPositionFactory_Access;
      tiledLayer : AllBinaryTiledLayer_Access;
      startPathFindingNode : PathFindingNode_Access;
      geographicMapCellPosition : GeographicMapCellPosition_Access;
      column : Integer;
      row : Integer;
      nextRow : Integer;
      geographicMapCellPositionNeighbor : GeographicMapCellPosition_Access;
      index : Integer;
   begin
        geographicMapCellPositionFactory := This.geographicMapInterface.getGeographicMapCellPositionFactory;
        tiledLayer := This.geographicMapInterface.getAllBinaryTiledLayer;
        for index in reverse 0 .. (startPathFindingNodeList.size) - (1) loop
            startPathFindingNode := PathFindingNode_Access (startPathFindingNodeList.get (index));
            geographicMapCellPosition := startPathFindingNode.geographicMapCellPosition;
            column := geographicMapCellPosition.getColumn;
            row := geographicMapCellPosition.getRow;
            nextRow := (row) + (1);
            if tiledLayer.isOnTileLayer (column, nextRow) then
                geographicMapCellPositionNeighbor := geographicMapCellPositionFactory.getAt (column, nextRow);
                graph.removeEdge (geographicMapCellPosition, geographicMapCellPositionNeighbor);
            end if;
        end loop;
   end fixStart;

   --  throws Exception
   procedure fixEnd (This : in out PathFinderGraphHackVisitor; graph_Param : access SimpleWeightedGraph_Package.SimpleWeightedGraph'Class; endPathFindingNodeList_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      graph : constant SimpleWeightedGraph_Access := SimpleWeightedGraph_Access (graph_Param);
      endPathFindingNodeList : constant BasicArrayList_Access := BasicArrayList_Access (endPathFindingNodeList_Param);
      geographicMapCellPositionFactory : BasicGeographicMapCellPositionFactory_Access;
      tiledLayer : AllBinaryTiledLayer_Access;
      endPathFindingNode : PathFindingNode_Access;
      geographicMapCellPosition : GeographicMapCellPosition_Access;
      column : Integer;
      row : Integer;
      nextRow : Integer;
      geographicMapCellPositionNeighbor : GeographicMapCellPosition_Access;
      index : Integer;
   begin
        geographicMapCellPositionFactory := This.geographicMapInterface.getGeographicMapCellPositionFactory;
        tiledLayer := This.geographicMapInterface.getAllBinaryTiledLayer;
        for index in reverse 0 .. (endPathFindingNodeList.size) - (1) loop
            endPathFindingNode := PathFindingNode_Access (endPathFindingNodeList.get (index));
            geographicMapCellPosition := endPathFindingNode.geographicMapCellPosition;
            graph.addVertex (geographicMapCellPosition);
            column := geographicMapCellPosition.getColumn;
            row := geographicMapCellPosition.getRow;
            nextRow := (row) + (1);
            if tiledLayer.isOnTileLayer (column, nextRow) then
                geographicMapCellPositionNeighbor := geographicMapCellPositionFactory.getAt (column, nextRow);
                graph.addEdge (geographicMapCellPosition, geographicMapCellPositionNeighbor);
            end if;
        end loop;
   end fixEnd;

   --  throws Exception
   procedure fixOverPassEdges (This : in out PathFinderGraphHackVisitor; graph_Param : access SimpleWeightedGraph_Package.SimpleWeightedGraph'Class) is
      graph : constant SimpleWeightedGraph_Access := SimpleWeightedGraph_Access (graph_Param);
      geographicMapCellPositionFactory : BasicGeographicMapCellPositionFactory_Access;
      raceTrackGeographicMap : RaceTrackGeographicMap_Access;
      CellPositionArray : CellPosition_Access_Array_Access;
      overPassGeographicMapCellPosition : CellPosition_Access;
      underPassGeographicMapCellPosition : GeographicMapCellPosition_Access;
      rightUnderPassGeographicMapCellPosition : GeographicMapCellPosition_Access;
      leftUnderPassGeographicMapCellPosition : GeographicMapCellPosition_Access;
      index : Integer;
   begin
        geographicMapCellPositionFactory := This.geographicMapInterface.getGeographicMapCellPositionFactory;
        raceTrackGeographicMap := RaceTrackGeographicMap_Access (This.geographicMapInterface);
        CellPositionArray := raceTrackGeographicMap.getRaceTrackData.getOverPassGeographicMapCellPositionArray;
        for index in reverse 0 .. (CellPositionArray'Length) - (1) loop
            overPassGeographicMapCellPosition := CellPositionArray (index);
            This.logUtil.putF (To_Unbounded_String ("Fixing Over Pass: ") & Java_Image (overPassGeographicMapCellPosition.getColumn) & To_Unbounded_String (", ") & Java_Image (overPassGeographicMapCellPosition.getRow), PathFinderGraphHackVisitor_Access'(This'Unchecked_Access), To_Unbounded_String ("fixOverPassEdges"));
            underPassGeographicMapCellPosition := geographicMapCellPositionFactory.getAt (overPassGeographicMapCellPosition.getColumn, overPassGeographicMapCellPosition.getRow);
            rightUnderPassGeographicMapCellPosition := geographicMapCellPositionFactory.getAt ((overPassGeographicMapCellPosition.getColumn) + (1), overPassGeographicMapCellPosition.getRow);
            leftUnderPassGeographicMapCellPosition := geographicMapCellPositionFactory.getAt ((overPassGeographicMapCellPosition.getColumn) - (1), overPassGeographicMapCellPosition.getRow);
            graph.removeEdge (underPassGeographicMapCellPosition, rightUnderPassGeographicMapCellPosition);
            graph.removeEdge (underPassGeographicMapCellPosition, leftUnderPassGeographicMapCellPosition);
            graph.addVertex (overPassGeographicMapCellPosition);
            graph.addEdge (overPassGeographicMapCellPosition, rightUnderPassGeographicMapCellPosition);
            graph.addEdge (overPassGeographicMapCellPosition, leftUnderPassGeographicMapCellPosition);
        end loop;
   end fixOverPassEdges;

   --  throws Exception
   procedure fixPath (This : in out PathFinderGraphHackVisitor; startPathFindingNodeList_Param : access BasicArrayList_Package.BasicArrayList'Class; endPathFindingNodeList_Param : access BasicArrayList_Package.BasicArrayList'Class; pathList_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      startPathFindingNodeList : constant BasicArrayList_Access := BasicArrayList_Access (startPathFindingNodeList_Param);
      endPathFindingNodeList : constant BasicArrayList_Access := BasicArrayList_Access (endPathFindingNodeList_Param);
      pathList : constant BasicArrayList_Access := BasicArrayList_Access (pathList_Param);
      endPathFindingNode : PathFindingNode_Access;
      startPathFindingNode : PathFindingNode_Access;
      index : Integer;
   begin
        for index in reverse 0 .. (startPathFindingNodeList.size) - (1) loop
            endPathFindingNode := PathFindingNode_Access (endPathFindingNodeList.get (index));
            startPathFindingNode := PathFindingNode_Access (startPathFindingNodeList.get (index));
            if BasicGeographicMapUtil_Package.getInstance.isSameCellPosition (startPathFindingNode.geographicMapCellPosition, endPathFindingNode.geographicMapCellPosition) then
                if pathList.remove (endPathFindingNode.geographicMapCellPosition) then
                    pathList.remove (startPathFindingNode.geographicMapCellPosition);
                    pathList.addAt (0, startPathFindingNode.geographicMapCellPosition);
                end if;
            end if;
        end loop;
        This.removeOverPassEdges (pathList);
   end fixPath;

   --  throws Exception
   procedure removeOverPassEdges (This : in out PathFinderGraphHackVisitor; pathList_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      pathList : constant BasicArrayList_Access := BasicArrayList_Access (pathList_Param);
      geographicMapCellPositionFactory : BasicGeographicMapCellPositionFactory_Access;
      raceTrackGeographicMap : RaceTrackGeographicMap_Access;
      CellPositionArray : CellPosition_Access_Array_Access;
      overPassGeographicMapCellPosition : CellPosition_Access;
      underPassGeographicMapCellPosition : GeographicMapCellPosition_Access;
      indexOf : Integer;
      index : Integer;
   begin
        geographicMapCellPositionFactory := This.geographicMapInterface.getGeographicMapCellPositionFactory;
        raceTrackGeographicMap := RaceTrackGeographicMap_Access (This.geographicMapInterface);
        CellPositionArray := raceTrackGeographicMap.getRaceTrackData.getOverPassGeographicMapCellPositionArray;
        for index in reverse 0 .. (CellPositionArray'Length) - (1) loop
            overPassGeographicMapCellPosition := CellPositionArray (index);
            underPassGeographicMapCellPosition := geographicMapCellPositionFactory.getAt (overPassGeographicMapCellPosition.getColumn, overPassGeographicMapCellPosition.getRow);
            indexOf := pathList.indexOf (overPassGeographicMapCellPosition);
            if (indexOf) /= (-(1)) then
                pathList.set (indexOf, underPassGeographicMapCellPosition);
            end if;
        end loop;
   end removeOverPassEdges;

   function isValid (This : in out PathFinderGraphHackVisitor; graphPath_Param : access GraphPath_Package.GraphPath'Class) return Boolean is
      graphPath : constant GraphPath_Access := GraphPath_Access (graphPath_Param);
   begin
        if (((graphPath.getEdgeList.size) > (This.edgeMinimum)) and then ((graphPath.getWeight) < (This.maxPathWeight))) and then ((graphPath.getWeight) > (This.minPathWeight)) then
            return True;
        else
            return False;
        end if;
   end isValid;

   procedure isValid (This : in out PathFinderGraphHackVisitor; graphPath_Param : access GraphPath_Package.GraphPath'Class) is
      Java_Result : constant Boolean := PathFinderGraphHackVisitor'Class (This).isValid (graphPath_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isValid;

end org.allbinary.game.media.graphics.geography.map.racetrack.PathFinderGraphHackVisitor_Package;


