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


package body org.allbinary.media.graphics.geography.pathfinding.PathFinder_Package is

   procedure Initialize_Fields (This : in out PathFinder'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.basicArrayListUtil := BasicArrayListUtil_Package.getInstance;
      This.mathUtil := MathUtil_Package.getInstance;
      This.openPriorityQueue := PriorityQueue_Package.Create;
      This.closedSet := HashSet_Package.Create;
      This.geographicMapInterface := NullUtil_Package.getInstance.NULL_OBJECT;
      This.costArray := PathFindingNodeCost_Package.NULL_PATH_FINDING_NODE_COST_ARRAY_ARRAY;
   end Initialize_Fields;

   procedure Initialize (This : in out PathFinder'Class) is
   begin
      GeographicPathFinderBase_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return PathFinder_Access is
      This : constant PathFinder_Access := new PathFinder;
   begin
      Initialize (This.all);
      return This;
   end Create;


   --  throws Exception
   procedure init (This : in out PathFinder; geographicMapInterface : BasicGeographicMap_Access) is
      tiledLayer : AllBinaryTiledLayer_Access;
      basicGeographicMapCellPositionFactory : BasicGeographicMapCellPositionFactory_Access;
      node : PathFindingNodeCost_Access;
      sizeX : Integer;
      sizeY : Integer;
      geographicMapCellType : GeographicMapCellType_Access;
      raceTrackGeographicMapCellType : RaceTrackGeographicMapCellType_Access;
      row : Integer;
      column : Integer;
   begin
        This.geographicMapInterface := geographicMapInterface;
        tiledLayer := geographicMapInterface.getAllBinaryTiledLayer;
        This.costArray := new PathFindingNodeCost_Access_Array_Access_Array'(0 .. (tiledLayer.getColumns) - 1 => new PathFindingNodeCost_Access_Array'(0 .. (tiledLayer.getRows) - 1 => null));
        basicGeographicMapCellPositionFactory := geographicMapInterface.getGeographicMapCellPositionFactory;
        node := null;
        sizeX := This.costArray'Length;
        sizeY := This.costArray (0)'Length;
        for column in 0 .. (sizeX) - 1 loop
            for row in 0 .. (sizeY) - 1 loop
                geographicMapCellType := geographicMapInterface.getCellTypeAt (basicGeographicMapCellPositionFactory.getAt (column, row));
                raceTrackGeographicMapCellType := RaceTrackGeographicMapCellType_Access (geographicMapCellType);
                node := PathFindingNodeCost_Package.Create (NullUtil_Package.getInstance.NULL_OBJECT, basicGeographicMapCellPositionFactory.getAt (column, row), PathFindingNodeCostInfo_Package.Create (Long_Long_Integer (raceTrackGeographicMapCellType.getTravelCost), Long_Long_Integer (-(1))));
                This.costArray (column) (row) := node;
            end loop;
        end loop;
   end init;

   function searchTotalPath (This : in out PathFinder; startPathFindingNodeList : BasicArrayList_Access; endPathFindingNodeList : BasicArrayList_Access; totalPaths : Integer) return BasicArrayList_Access is
      commonStrings : CommonStrings_Access;
   begin
        begin
            return This.search (PathFindingNode_Access (startPathFindingNodeList.get (0)), PathFindingNode_Access (endPathFindingNodeList.get (0)));
        exception
            when e : others =>
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.put (commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("search"), e);
            return This.basicArrayListUtil.getImmutableInstance;
        end;
   end searchTotalPath;

   --  throws Exception
   function searchTotalPathN (This : in out PathFinder; startPathFindingNodeList : BasicArrayList_Access; endPathFindingNodeList : BasicArrayList_Access; totalPaths : Integer; multipassState : MultipassState_Access) return BasicArrayList_Access is
   begin
        if (multipassState.step) = (0) then
            multipassState.step := multipassState.step + 1;
        elsif (multipassState.step) = (1) then
            This.searchStart (PathFindingNode_Access (startPathFindingNodeList.get (0)), PathFindingNode_Access (endPathFindingNodeList.get (0)), multipassState);
        elsif (multipassState.step) = (2) then
            return This.searchN (PathFindingNode_Access (startPathFindingNodeList.get (0)), PathFindingNode_Access (endPathFindingNodeList.get (0)), multipassState);
        end if;
        return This.basicArrayListUtil.getImmutableInstance;
   end searchTotalPathN;

   --  throws Exception
   function search (This : in out PathFinder; startPathFindingNode : PathFindingNode_Access; endPathFindingNode : PathFindingNode_Access) return BasicArrayList_Access is
      list : BasicArrayList_Access;
      pathList : BasicArrayList_Access;
   begin
        list := This.findPath (startPathFindingNode.geographicMapCellPosition, endPathFindingNode.geographicMapCellPosition);
        pathList := BasicArrayListD_Package.Create;
        pathList.add (list);
        return pathList;
   end search;

   --  throws Exception
   procedure searchStart (This : in out PathFinder; startPathFindingNode : PathFindingNode_Access; endPathFindingNode : PathFindingNode_Access; multipassState : MultipassState_Access) is
   begin
        This.findPathStart (startPathFindingNode.geographicMapCellPosition, endPathFindingNode.geographicMapCellPosition, multipassState);
   end searchStart;

   --  throws Exception
   function searchN (This : in out PathFinder; startPathFindingNode : PathFindingNode_Access; endPathFindingNode : PathFindingNode_Access; multipassState : MultipassState_Access) return BasicArrayList_Access is
      list : BasicArrayList_Access;
      pathList : BasicArrayList_Access;
   begin
        list := This.findPathEnd (startPathFindingNode.geographicMapCellPosition, endPathFindingNode.geographicMapCellPosition, multipassState);
        if (list) = (null) then
            return This.basicArrayListUtil.getImmutableInstance;
        end if;
        pathList := BasicArrayListD_Package.Create;
        pathList.add (list);
        multipassState.iteration := 0;
        multipassState.step := 0;
        return pathList;
   end searchN;

   --  throws Exception
   function findPath (This : in out PathFinder; start : GeographicMapCellPosition_Access; target : GeographicMapCellPosition_Access) return BasicArrayList_Access is
      discoveryCalculation : Long_Long_Integer;
      node : PathFindingNodeCost_Access;
      targetColumn : Integer;
      targetRow : Integer;
      sizeX : Integer;
      sizeY : Integer;
      row : Integer;
      column : Integer;
      startNode : PathFindingNodeCost_Access;
      geographicMapInterface : BasicGeographicMap_Access;
      basicGeographicMapCellPositionFactory : BasicGeographicMapCellPositionFactory_Access;
      allBinaryTiledLayer : AllBinaryTiledLayer_Access;
      targetNode : PathFindingNodeCost_Access;
      current : PathFindingNodeCost_Access;
      neighbor : PathFindingNodeCost_Access;
      neighborInfo : PathFindingNodeCostInfo_Access;
      calculatedCost : Long_Long_Integer;
   begin
        This.openPriorityQueue.clear;
        This.closedSet.clear;
        discoveryCalculation := 0;
        node := null;
        targetColumn := target.getColumn;
        targetRow := target.getRow;
        sizeX := This.costArray'Length;
        sizeY := This.costArray (0)'Length;
        for column in 0 .. (sizeX) - 1 loop
            for row in 0 .. (sizeY) - 1 loop
                discoveryCalculation := (Long_Long_Integer (This.mathUtil.abs_Id ((column) - (targetColumn)))) + (This.mathUtil.abs_Id ((row) - (targetRow)));
                node := This.costArray (column) (row);
                node.pathFindingNodeCostInfoP.totalCostP := 0;
                node.pathFindingNodeCostInfoP.costToEndP := discoveryCalculation;
            end loop;
        end loop;
        startNode := This.costArray (start.getColumn) (start.getRow);
        This.openPriorityQueue.add (startNode);
        geographicMapInterface := BasicGeographicMap_Access (This.geographicMapInterface);
        basicGeographicMapCellPositionFactory := geographicMapInterface.getGeographicMapCellPositionFactory;
        allBinaryTiledLayer := geographicMapInterface.getAllBinaryTiledLayer;
        targetNode := This.costArray (target.getColumn) (target.getRow);
        current := null;
        loop
            current := This.openPriorityQueue.poll;
            This.closedSet.add (current);
            if current.equals (targetNode) then
                return This.extractPath (start, current);
            end if;
            neighbor := null;
            neighborInfo := null;
            calculatedCost := 0;
            for column in (current.geographicMapCellPosition.getColumn) - (1) .. ((current.geographicMapCellPosition.getColumn) + (2)) - 1 loop
                for row in (current.geographicMapCellPosition.getRow) - (1) .. ((current.geographicMapCellPosition.getRow) + (2)) - 1 loop
                    if (((((column) > (0)) and then ((row) > (0))) and then ((column) < (allBinaryTiledLayer.getColumns))) and then ((row) < (allBinaryTiledLayer.getRows))) and then (geographicMapInterface.isOnMap (basicGeographicMapCellPositionFactory.getAt (column, row))) then
                        neighbor := This.costArray (column) (row);
                        if This.closedSet.contains (neighbor) then
                            goto Continue_N70394;
                        end if;
                        neighborInfo := neighbor.pathFindingNodeCostInfoP;
                        calculatedCost := ((neighborInfo.costToEndP) + (neighborInfo.costFromStartP)) + (current.pathFindingNodeCostInfoP.totalCostP);
                        if ((calculatedCost) < (neighborInfo.totalCostP)) or else (not (This.openPriorityQueue.contains (neighbor))) then
                            neighborInfo.totalCostP := calculatedCost;
                            neighbor.parent := current;
                            if not (This.openPriorityQueue.contains (neighbor)) then
                                if geographicMapInterface.isOfFourDirections (current.geographicMapCellPosition, neighbor.geographicMapCellPosition) then
                                    This.openPriorityQueue.add (neighbor);
                                end if;
                            end if;
                        end if;
                    end if;
                    <<Continue_N70394>> null;
                end loop;
            end loop;
            exit when not (not (This.openPriorityQueue.isEmpty));
        end loop;
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end findPath;

   --  throws Exception
   procedure findPathStart (This : in out PathFinder; start : GeographicMapCellPosition_Access; target : GeographicMapCellPosition_Access; multipassState : MultipassState_Access) is
      discoveryCalculation : Long_Long_Integer;
      node : PathFindingNodeCost_Access;
      targetColumn : Integer;
      targetRow : Integer;
      sizeX : Integer;
      sizeY : Integer;
      row : Integer;
      column : Integer;
      startNode : PathFindingNodeCost_Access;
   begin
        This.openPriorityQueue.clear;
        This.closedSet.clear;
        discoveryCalculation := 0;
        node := null;
        targetColumn := target.getColumn;
        targetRow := target.getRow;
        sizeX := This.costArray'Length;
        sizeY := This.costArray (0)'Length;
        for column in 0 .. (sizeX) - 1 loop
            for row in 0 .. (sizeY) - 1 loop
                discoveryCalculation := (Long_Long_Integer (This.mathUtil.abs_Id ((column) - (targetColumn)))) + (This.mathUtil.abs_Id ((row) - (targetRow)));
                node := This.costArray (column) (row);
                node.pathFindingNodeCostInfoP.totalCostP := 0;
                node.pathFindingNodeCostInfoP.costToEndP := discoveryCalculation;
            end loop;
        end loop;
        startNode := This.costArray (start.getColumn) (start.getRow);
        This.openPriorityQueue.add (startNode);
        multipassState.step := multipassState.step + 1;
   end findPathStart;

   --  throws Exception
   function findPathEnd (This : in out PathFinder; start : GeographicMapCellPosition_Access; target : GeographicMapCellPosition_Access; multipassState : MultipassState_Access) return BasicArrayList_Access is
      geographicMapInterface : BasicGeographicMap_Access;
      basicGeographicMapCellPositionFactory : BasicGeographicMapCellPositionFactory_Access;
      allBinaryTiledLayer : AllBinaryTiledLayer_Access;
      targetNode : PathFindingNodeCost_Access;
      current : PathFindingNodeCost_Access;
      total : Integer;
      neighbor : PathFindingNodeCost_Access;
      neighborInfo : PathFindingNodeCostInfo_Access;
      calculatedCost : Long_Long_Integer;
      row : Integer;
      column : Integer;
   begin
        geographicMapInterface := BasicGeographicMap_Access (This.geographicMapInterface);
        basicGeographicMapCellPositionFactory := geographicMapInterface.getGeographicMapCellPositionFactory;
        allBinaryTiledLayer := geographicMapInterface.getAllBinaryTiledLayer;
        targetNode := This.costArray (target.getColumn) (target.getRow);
        current := null;
        total := 0;
        loop
            current := This.openPriorityQueue.poll;
            This.closedSet.add (current);
            if current.equals (targetNode) then
                return This.extractPath (start, current);
            end if;
            neighbor := null;
            neighborInfo := null;
            calculatedCost := 0;
            for column in (current.geographicMapCellPosition.getColumn) - (1) .. ((current.geographicMapCellPosition.getColumn) + (2)) - 1 loop
                for row in (current.geographicMapCellPosition.getRow) - (1) .. ((current.geographicMapCellPosition.getRow) + (2)) - 1 loop
                    if (((((column) > (0)) and then ((row) > (0))) and then ((column) < (allBinaryTiledLayer.getColumns))) and then ((row) < (allBinaryTiledLayer.getRows))) and then (geographicMapInterface.isOnMap (basicGeographicMapCellPositionFactory.getAt (column, row))) then
                        neighbor := This.costArray (column) (row);
                        if This.closedSet.contains (neighbor) then
                            goto Continue_N72940;
                        end if;
                        neighborInfo := neighbor.pathFindingNodeCostInfoP;
                        calculatedCost := ((neighborInfo.costToEndP) + (neighborInfo.costFromStartP)) + (current.pathFindingNodeCostInfoP.totalCostP);
                        if ((calculatedCost) < (neighborInfo.totalCostP)) or else (not (This.openPriorityQueue.contains (neighbor))) then
                            neighborInfo.totalCostP := calculatedCost;
                            neighbor.parent := current;
                            if not (This.openPriorityQueue.contains (neighbor)) then
                                if geographicMapInterface.isOfFourDirections (current.geographicMapCellPosition, neighbor.geographicMapCellPosition) then
                                    This.openPriorityQueue.add (neighbor);
                                end if;
                            end if;
                        end if;
                    end if;
                    <<Continue_N72940>> null;
                end loop;
            end loop;
            total := total + 1;
            if (total) > (10) then
                return This.basicArrayListUtil.getImmutableInstance;
            end if;
            exit when not (not (This.openPriorityQueue.isEmpty));
        end loop;
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end findPathEnd;

   function extractPath (This : in out PathFinder; start : GeographicMapCellPosition_Access; current : PathFindingNodeCost_Access) return BasicArrayList_Access is
      path : BasicArrayList_Access;
   begin
        path := BasicArrayListD_Package.Create;
        while (current.parent) /= (NullUtil_Package.getInstance.NULL_OBJECT) loop
            path.add (current.geographicMapCellPosition);
            current := PathFindingNodeCost_Access (current.parent);
        end loop;
        path.add (start);
        This.basicArrayListUtil.reverse_Id (path);
        return path;
   end extractPath;

   procedure searchTotalPath (This : in out PathFinder; startPathFindingNodeList : BasicArrayList_Access; endPathFindingNodeList : BasicArrayList_Access; totalPaths : Integer) is
      Java_Result : constant BasicArrayList_Access := PathFinder'Class (This).searchTotalPath (startPathFindingNodeList, endPathFindingNodeList, totalPaths);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end searchTotalPath;

   procedure searchTotalPathN (This : in out PathFinder; startPathFindingNodeList : BasicArrayList_Access; endPathFindingNodeList : BasicArrayList_Access; totalPaths : Integer; multipassState : MultipassState_Access) is
      Java_Result : constant BasicArrayList_Access := PathFinder'Class (This).searchTotalPathN (startPathFindingNodeList, endPathFindingNodeList, totalPaths, multipassState);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end searchTotalPathN;

   procedure search (This : in out PathFinder; startPathFindingNode : PathFindingNode_Access; endPathFindingNode : PathFindingNode_Access) is
      Java_Result : constant BasicArrayList_Access := PathFinder'Class (This).search (startPathFindingNode, endPathFindingNode);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end search;

   procedure searchN (This : in out PathFinder; startPathFindingNode : PathFindingNode_Access; endPathFindingNode : PathFindingNode_Access; multipassState : MultipassState_Access) is
      Java_Result : constant BasicArrayList_Access := PathFinder'Class (This).searchN (startPathFindingNode, endPathFindingNode, multipassState);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end searchN;

   procedure findPath (This : in out PathFinder; start : GeographicMapCellPosition_Access; target : GeographicMapCellPosition_Access) is
      Java_Result : constant BasicArrayList_Access := PathFinder'Class (This).findPath (start, target);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end findPath;

   procedure findPathEnd (This : in out PathFinder; start : GeographicMapCellPosition_Access; target : GeographicMapCellPosition_Access; multipassState : MultipassState_Access) is
      Java_Result : constant BasicArrayList_Access := PathFinder'Class (This).findPathEnd (start, target, multipassState);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end findPathEnd;

   procedure extractPath (This : in out PathFinder; start : GeographicMapCellPosition_Access; current : PathFindingNodeCost_Access) is
      Java_Result : constant BasicArrayList_Access := PathFinder'Class (This).extractPath (start, current);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end extractPath;

end org.allbinary.media.graphics.geography.pathfinding.PathFinder_Package;


