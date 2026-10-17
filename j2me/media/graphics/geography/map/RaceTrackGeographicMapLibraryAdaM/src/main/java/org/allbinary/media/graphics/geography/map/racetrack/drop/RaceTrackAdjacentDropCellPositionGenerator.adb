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


package body org.allbinary.media.graphics.geography.map.racetrack.drop.RaceTrackAdjacentDropCellPositionGenerator_Package is

   procedure Initialize_Fields (This : in out RaceTrackAdjacentDropCellPositionGenerator'Class) is
   begin
      null;
      This.layerCoveringCellPositionsUtil := LayerCoveringCellPositionsUtil_Package.getInstance;
      This.groupCommonFactory := GroupCommonFactory_Package.getInstance;
      This.surroundingCellPositions := new GeographicMapCellPosition_Access_Array'(0 .. (4) - 1 => null);
      This.hashtable := StdUtil_Package.getInstance.createHashtable;
      This.geographicMapDirectionUtil := GeographicMapDirectionUtil_Package.getInstance;
   end Initialize_Fields;


   function getInstance return DropCellPositionGeneratorInterface_Access is
   begin
        return RaceTrackAdjacentDropCellPositionGenerator_Package.SINGLETON;
   end getInstance;

   procedure Initialize (This : in out RaceTrackAdjacentDropCellPositionGenerator'Class) is
   begin
      RaceTrackDropCellPositionGenerator_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return RaceTrackAdjacentDropCellPositionGenerator_Access is
      This : constant RaceTrackAdjacentDropCellPositionGenerator_Access := new RaceTrackAdjacentDropCellPositionGenerator;
   begin
      Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function getFirstNonRoadAdjacentCellPosition (This : in out RaceTrackAdjacentDropCellPositionGenerator; column : Integer; row : Integer) return GeographicMapCellPosition_Access is
      nonRoadGeographicMapCellPosition : GeographicMapCellPosition_Access;
      geographicMapCellPositionFactory : BasicGeographicMapCellPositionFactory_Access;
      baseRaceTrackGeographicMap : BaseRaceTrackGeographicMap_Access;
      raceTrackGeographicMapCellTypeFactory : RaceTrackGeographicMapCellTypeFactory_Access;
      geographicMapCellPosition : GeographicMapCellPosition_Access;
      raceTrackGeographicMapCellType : RaceTrackGeographicMapCellType_Access;
      index : Integer;
   begin
        nonRoadGeographicMapCellPosition := SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION;
        geographicMapCellPositionFactory := This.raceTrackGeographicMap.getGeographicMapCellPositionFactory;
        This.surroundingCellPositions (0) := geographicMapCellPositionFactory.getAt (column, (row) - (1));
        This.surroundingCellPositions (1) := geographicMapCellPositionFactory.getAt (column, (row) + (1));
        This.surroundingCellPositions (2) := geographicMapCellPositionFactory.getAt ((column) - (1), row);
        This.surroundingCellPositions (3) := geographicMapCellPositionFactory.getAt ((column) + (1), row);
        baseRaceTrackGeographicMap := BaseRaceTrackGeographicMap_Access (This.raceTrackGeographicMap);
        raceTrackGeographicMapCellTypeFactory := RaceTrackGeographicMapCellTypeFactory_Access (baseRaceTrackGeographicMap.getGeographicMapCellTypeFactory);
        geographicMapCellPosition := null;
        raceTrackGeographicMapCellType := null;
        index := This.surroundingCellPositions'Length;
        while (Java_Pre_Decrement (index)) >= (0) loop
            geographicMapCellPosition := This.surroundingCellPositions (index);
            raceTrackGeographicMapCellType := RaceTrackGeographicMapCellType_Access (This.raceTrackGeographicMap.getCellTypeAt (geographicMapCellPosition));
            if not (raceTrackGeographicMapCellTypeFactory.isPath (raceTrackGeographicMapCellType)) then
                nonRoadGeographicMapCellPosition := geographicMapCellPosition;
                exit;
            end if;
        end loop;
        return nonRoadGeographicMapCellPosition;
   end getFirstNonRoadAdjacentCellPosition;

   --  throws Exception
   procedure update (This : in out RaceTrackAdjacentDropCellPositionGenerator; allBinaryGameLayerManager : AllBinaryGameLayerManager_Access; geographicMapInterface : BasicGeographicMap_Access) is
   begin
        This.hashtable.put (AllBinaryGameLayerManager_Package.ID, allBinaryGameLayerManager);
        RaceTrackDropCellPositionGenerator (This).update (allBinaryGameLayerManager, geographicMapInterface);
   end update;

   --  throws Exception
   procedure drop (This : in out RaceTrackAdjacentDropCellPositionGenerator; allBinaryLayerManager : AllBinaryLayerManager_Access; index : Integer) is
      geographicMapCellPosition : GeographicMapCellPosition_Access;
      randomGeographicMapCellPosition : GeographicMapCellPosition_Access;
      dropCellPositionHistory : DropCellPositionHistory_Access;
      direction : Direction_Access;
      objectCanBeNull : Java_Object_Access;
      point : GPoint_Access;
      x : Integer;
      y : Integer;
      z : Integer;
      layerInterface : AllBinaryLayer_Access;
      baseRaceTrackGeographicMap : BaseRaceTrackGeographicMap_Access;
      list : BasicArrayList_Access;
      geographicMapCellType : GeographicMapCellType_Access;
      index2 : Integer;
   begin
        geographicMapCellPosition := GeographicMapCellPosition_Access (This.list.get (index));
        randomGeographicMapCellPosition := This.getFirstNonRoadAdjacentCellPosition (geographicMapCellPosition.getColumn, geographicMapCellPosition.getRow);
        if (randomGeographicMapCellPosition) = (null) then
            return;
        end if;
        dropCellPositionHistory := DropCellPositionHistory_Package.getInstance;
        if not (dropCellPositionHistory.isCellPositionWithDrop (geographicMapCellPosition)) then
            direction := This.geographicMapDirectionUtil.getDirectionFromCellPositionToAdjacentCellPosition (randomGeographicMapCellPosition, geographicMapCellPosition);
            objectCanBeNull := This.hashtable.get (This.groupCommonFactory.ID);
            if (objectCanBeNull) /= (null) then
                null;
            else
                This.hashtable.put (This.groupCommonFactory.ID, BasicGroupFactory_Package.getInstance.NONE_ARRAY);
            end if;
            This.hashtable.put (DirectionFactory_Package.getInstance.NAME, direction);
            point := randomGeographicMapCellPosition.getPoint;
            x := point.getX;
            y := point.getY;
            z := point.getZ;
            layerInterface := RaceTrackAdjacentDropLayerFactory_Package.getInstance.getRandomInstance.getNextInstance (This.hashtable, x, y, z);
            baseRaceTrackGeographicMap := BaseRaceTrackGeographicMap_Access (This.raceTrackGeographicMap);
            list := This.layerCoveringCellPositionsUtil.getAll (baseRaceTrackGeographicMap, randomGeographicMapCellPosition, layerInterface, BasicArrayListD_Package.Create);
            if dropCellPositionHistory.anyCellPositionWithDrop (list) then
                return;
            end if;
            geographicMapCellType := null;
            index2 := list.size;
            while (Java_Pre_Decrement (index2)) >= (0) loop
                geographicMapCellType := This.raceTrackGeographicMap.getCellTypeAt (GeographicMapCellPosition_Access (list.get (index2)));
                if This.raceTrackGeographicMapCellTypeFactory.isPath (geographicMapCellType) then
                    return;
                end if;
            end loop;
            dropCellPositionHistory.addAll (list, layerInterface);
            allBinaryLayerManager.append (layerInterface);
        end if;
   end drop;

   procedure getInstance is
      Java_Result : constant DropCellPositionGeneratorInterface_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getFirstNonRoadAdjacentCellPosition (This : in out RaceTrackAdjacentDropCellPositionGenerator; column : Integer; row : Integer) is
      Java_Result : constant GeographicMapCellPosition_Access := RaceTrackAdjacentDropCellPositionGenerator'Class (This).getFirstNonRoadAdjacentCellPosition (column, row);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getFirstNonRoadAdjacentCellPosition;

begin
   null;
   SINGLETON := RaceTrackAdjacentDropCellPositionGenerator_Package.Create;

end org.allbinary.media.graphics.geography.map.racetrack.drop.RaceTrackAdjacentDropCellPositionGenerator_Package;


