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


with org.allbinary.game.layer.AdvancedRTSGameLayer_Package; use org.allbinary.game.layer.AdvancedRTSGameLayer_Package;
with org.allbinary.game.layer.waypoint.WaypointLayer_Package; use org.allbinary.game.layer.waypoint.WaypointLayer_Package;
with org.allbinary.graphics.CellPosition_Package; use org.allbinary.graphics.CellPosition_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package; use org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package;

package body org.allbinary.media.graphics.geography.map.racetrack.CustomMapGenerator_Package is

   package AdvancedRTSGameLayer_Package renames Standard.org.allbinary.game.layer.AdvancedRTSGameLayer_Package;
   package WaypointLayer_Package renames Standard.org.allbinary.game.layer.waypoint.WaypointLayer_Package;
   package CellPosition_Package renames Standard.org.allbinary.graphics.CellPosition_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package BasicGeographicMapCellPositionFactory_Package renames Standard.org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package;
   procedure Initialize_Fields (This : in out CustomMapGenerator'Class) is
   begin
      null;
      
      
      
      This.dropCellPositionHistory := DropCellPositionHistory_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out CustomMapGenerator'Class; raceTrackGeographicMap_Param : access RaceTrackGeographicMap_Package.RaceTrackGeographicMap'Class) is
      raceTrackGeographicMap : constant RaceTrackGeographicMap_Access := RaceTrackGeographicMap_Access (raceTrackGeographicMap_Param);
      mapArray : Integer_Array_Access_Array_Access;
      size2 : Integer;
   begin
      CustomMapGeneratorBase_Package.Initialize (This);
      Initialize_Fields (This);
        This.raceTrackGeographicMap := raceTrackGeographicMap;
        This.geographicMapCellTypeFactory := This.raceTrackGeographicMap.getGeographicMapCellTypeFactory;
        mapArray := raceTrackGeographicMap.getRaceTrackData.getMapArray;
        size2 := mapArray (0)'Length;
        This.customMapArray := new Integer_Array_Access_Array'(0 .. (mapArray'Length) - 1 => new Integer_Array'(0 .. (size2) - 1 => 0));
        if ((mapArray'Length) /= (This.customMapArray'Length)) or else ((mapArray (0)'Length) /= (This.customMapArray (0)'Length)) then
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Array Incorrect")));
        end if;
   end Initialize;

   function Create (raceTrackGeographicMap_Param : access RaceTrackGeographicMap_Package.RaceTrackGeographicMap'Class) return CustomMapGenerator_Access is
      This : constant CustomMapGenerator_Access := new CustomMapGenerator;
   begin
      CustomMapGenerator_Package.Initialize (This.all, raceTrackGeographicMap_Param);
      return This;
   end Create;

   --  throws Exception
   procedure copyMapIntoCustomMap (This : in out CustomMapGenerator) is
      mapArray : Integer_Array_Access_Array_Access;
      startIndex2 : Integer;
      index2 : Integer;
      index : Integer;
   begin
        mapArray := This.raceTrackGeographicMap.getRaceTrackData.getMapArray;
        startIndex2 := (mapArray (0)'Length) - (1);
        for index in reverse 0 .. (mapArray'Length) - (1) loop
            for index2 in reverse 0 .. startIndex2 loop
                This.customMapArray (index) (index2) := CustomMapGenerator'Class (This).getCustomType (index2, index, mapArray (index) (index2));
            end loop;
        end loop;
   end copyMapIntoCustomMap;

   --  throws Exception
   function getCustomType (This : in out CustomMapGenerator; column : Integer; row : Integer; currentType : Integer) return Integer is
      emptyType : Integer;
      geographicMapCellPositionFactory : BasicGeographicMapCellPositionFactory_Access;
      cellPosition : CellPosition_Access;
      layer : AllBinaryLayer_Access;
      rtsLayer : AdvancedRTSGameLayer_Access;
   begin
        emptyType := This.geographicMapCellTypeFactory.getEmptyType;
        geographicMapCellPositionFactory := This.raceTrackGeographicMap.getGeographicMapCellPositionFactory;
        cellPosition := geographicMapCellPositionFactory.getAt (column, row);
        if This.dropCellPositionHistory.isCellPositionWithDrop (cellPosition) then
            layer := This.dropCellPositionHistory.getLayerInterface (cellPosition);
            if (layer) = (AllBinaryLayer_Package.NULL_ALLBINARY_LAYER) then
                return emptyType;
            end if;
            rtsLayer := AdvancedRTSGameLayer_Access (layer);
            if not (((rtsLayer.getType) = (WaypointLayer_Package.getStaticType))) then
                return emptyType;
            end if;
        end if;
        return currentType;
   end getCustomType;

   function getCustomMapArray (This : in out CustomMapGenerator) return Integer_Array_Access_Array_Access is
   begin
        return This.customMapArray;
   end getCustomMapArray;

   procedure getCustomType (This : in out CustomMapGenerator; column : Integer; row : Integer; currentType : Integer) is
      Java_Result : constant Integer := CustomMapGenerator'Class (This).getCustomType (column => column, row => row, currentType => currentType);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCustomType;

end org.allbinary.media.graphics.geography.map.racetrack.CustomMapGenerator_Package;


