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


package body org.allbinary.media.graphics.geography.map.CellPositionsUtil_Package is

   procedure Initialize_Fields (This : in out CellPositionsUtil'Class) is
   begin
      null;
      This.reusableSingleThreadedSurroundingList := BasicArrayListS_Package.Create (8);
      This.surroundArray := new Integer_Array_Access_Array'(new Integer_Array'(-(1), -(1)), new Integer_Array'(0, -(1)), new Integer_Array'(1, -(1)), new Integer_Array'(-(1), 1), new Integer_Array'(0, 1), new Integer_Array'(1, 1), new Integer_Array'(1, 0), new Integer_Array'(-(1), 0));
   end Initialize_Fields;

   procedure Initialize (This : in out CellPositionsUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return CellPositionsUtil_Access is
      This : constant CellPositionsUtil_Access := new CellPositionsUtil;
   begin
      CellPositionsUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return CellPositionsUtil_Access is
   begin
        return CellPositionsUtil_Package.instance;
   end getInstance;

   --  throws Exception
   function getAll (This : in out CellPositionsUtil; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; topRightGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; columns : Integer; rows : Integer; reusableList_Param : access BasicArrayList_Package.BasicArrayList'Class) return BasicArrayList_Access is
      geographicMapInterface : constant BasicGeographicMap_Access := BasicGeographicMap_Access (geographicMapInterface_Param);
      topRightGeographicMapCellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (topRightGeographicMapCellPosition_Param);
      reusableList : constant BasicArrayList_Access := BasicArrayList_Access (reusableList_Param);
      geographicMapCellPositionFactory : BasicGeographicMapCellPositionFactory_Access;
      lastColumn : Integer;
      lastRow : Integer;
      geographicMapCellPosition : GeographicMapCellPosition_Access;
      columnIndex : Integer;
      rowIndex : Integer;
   begin
        reusableList.clear;
        geographicMapCellPositionFactory := geographicMapInterface.getGeographicMapCellPositionFactory;
        lastColumn := (topRightGeographicMapCellPosition.getColumn) + (columns);
        lastRow := (topRightGeographicMapCellPosition.getRow) + (rows);
        if ((((columns) > (1)) and then ((lastColumn) > (geographicMapInterface.getAllBinaryTiledLayer.getColumns)))) or else ((((rows) > (1)) and then ((lastRow) > (geographicMapInterface.getAllBinaryTiledLayer.getRows)))) then
            return reusableList;
        end if;
        for rowIndex in 0 .. (rows) - 1 loop
            for columnIndex in 0 .. (columns) - 1 loop
                geographicMapCellPosition := geographicMapCellPositionFactory.getAt ((topRightGeographicMapCellPosition.getColumn) + (columnIndex), (topRightGeographicMapCellPosition.getRow) + (rowIndex));
                reusableList.add (geographicMapCellPosition);
            end loop;
        end loop;
        return reusableList;
   end getAll;

   --  throws Exception
   function getAllSurrounding (This : in out CellPositionsUtil; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; occupyList_Param : access BasicArrayList_Package.BasicArrayList'Class; reusableList_Param : access BasicArrayList_Package.BasicArrayList'Class) return BasicArrayList_Access is
      geographicMapInterface : constant BasicGeographicMap_Access := BasicGeographicMap_Access (geographicMapInterface_Param);
      occupyList : constant BasicArrayList_Access := BasicArrayList_Access (occupyList_Param);
      reusableList : constant BasicArrayList_Access := BasicArrayList_Access (reusableList_Param);
      layerGeographicMapCellPosition : GeographicMapCellPosition_Access;
      surroundingGeographicMapCellPositionList : BasicArrayList_Access;
      geographicMapCellPosition : GeographicMapCellPosition_Access;
      index2 : Integer;
      index : Integer;
   begin
        reusableList.clear;
        for index in reverse 0 .. (occupyList.size) - (1) loop
            layerGeographicMapCellPosition := GeographicMapCellPosition_Access (occupyList.get (index));
            surroundingGeographicMapCellPositionList := This.getAllSurroundingAt (geographicMapInterface, layerGeographicMapCellPosition, This.reusableSingleThreadedSurroundingList);
            for index2 in reverse 0 .. (surroundingGeographicMapCellPositionList.size) - (1) loop
                geographicMapCellPosition := GeographicMapCellPosition_Access (surroundingGeographicMapCellPositionList.get (index2));
                if (not (reusableList.contains (geographicMapCellPosition))) and then (not (occupyList.contains (geographicMapCellPosition))) then
                    reusableList.add (geographicMapCellPosition);
                end if;
            end loop;
        end loop;
        return reusableList;
   end getAllSurrounding;

   --  throws Exception
   function getAllSurroundingAt (This : in out CellPositionsUtil; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; layerGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; reusableSurroundingList_Param : access BasicArrayList_Package.BasicArrayList'Class) return BasicArrayList_Access is
      geographicMapInterface : constant BasicGeographicMap_Access := BasicGeographicMap_Access (geographicMapInterface_Param);
      layerGeographicMapCellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (layerGeographicMapCellPosition_Param);
      reusableSurroundingList : constant BasicArrayList_Access := BasicArrayList_Access (reusableSurroundingList_Param);
      geographicMapCellPositionFactory : BasicGeographicMapCellPositionFactory_Access;
      tiledLayer : AllBinaryTiledLayer_Access;
      row : Integer;
      column : Integer;
      geographicMapCellPosition : GeographicMapCellPosition_Access;
      index : Integer;
   begin
        reusableSurroundingList.clear;
        geographicMapCellPositionFactory := geographicMapInterface.getGeographicMapCellPositionFactory;
        tiledLayer := geographicMapInterface.getAllBinaryTiledLayer;
        row := 0;
        column := 0;
        for index in 0 .. (8) - 1 loop
            column := (layerGeographicMapCellPosition.getColumn) + (This.surroundArray (index) (0));
            row := (layerGeographicMapCellPosition.getRow) + (This.surroundArray (index) (1));
            if tiledLayer.isOnTileLayer (column, row) then
                geographicMapCellPosition := geographicMapCellPositionFactory.getAt (column, row);
                reusableSurroundingList.add (geographicMapCellPosition);
            end if;
        end loop;
        return reusableSurroundingList;
   end getAllSurroundingAt;

   procedure getAll (This : in out CellPositionsUtil; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; topRightGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; columns : Integer; rows : Integer; reusableList_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      Java_Result : constant BasicArrayList_Access := CellPositionsUtil'Class (This).getAll (geographicMapInterface_Param, topRightGeographicMapCellPosition_Param, columns, rows, reusableList_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getAll;

   procedure getAllSurrounding (This : in out CellPositionsUtil; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; occupyList_Param : access BasicArrayList_Package.BasicArrayList'Class; reusableList_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      Java_Result : constant BasicArrayList_Access := CellPositionsUtil'Class (This).getAllSurrounding (geographicMapInterface_Param, occupyList_Param, reusableList_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getAllSurrounding;

   procedure getAllSurroundingAt (This : in out CellPositionsUtil; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; layerGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; reusableSurroundingList_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      Java_Result : constant BasicArrayList_Access := CellPositionsUtil'Class (This).getAllSurroundingAt (geographicMapInterface_Param, layerGeographicMapCellPosition_Param, reusableSurroundingList_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getAllSurroundingAt;

begin
   null;
   instance := CellPositionsUtil_Package.Create;

end org.allbinary.media.graphics.geography.map.CellPositionsUtil_Package;


