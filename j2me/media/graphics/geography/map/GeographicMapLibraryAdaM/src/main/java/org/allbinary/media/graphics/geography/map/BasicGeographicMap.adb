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


package body org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package is

   procedure Initialize_Fields (This : in out BasicGeographicMap'Class) is
   begin
      null;
      This.mathUtil := MathUtil_Package.getInstance;
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out BasicGeographicMap'Class; id : Integer; name : Unbounded_String; cellTypeIdToGeographicMapCellType : Integer_Array_Access; tiledLayer_Param : access AllBinaryTiledLayer_Package.AllBinaryTiledLayer'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; geographicMapCellPositionFactoryInterface_Param : access GeographicMapCellPositionFactoryInterface_Package.GeographicMapCellPositionFactoryInterface'Class; geographicMapCellPositionBaseFactory_Param : access GeographicMapCellPositionBaseFactory_Package.GeographicMapCellPositionBaseFactory'Class; geographicMapCellTypeFactory_Param : access GeographicMapCellTypeFactory_Package.GeographicMapCellTypeFactory'Class) is
      tiledLayer : constant AllBinaryTiledLayer_Access := AllBinaryTiledLayer_Access (tiledLayer_Param);
      foregroundBasicColor : constant BasicColor_Access := BasicColor_Access (foregroundBasicColor_Param);
      backgroundBasicColor : constant BasicColor_Access := BasicColor_Access (backgroundBasicColor_Param);
      geographicMapCellPositionFactoryInterface : constant GeographicMapCellPositionFactoryInterface_Access := GeographicMapCellPositionFactoryInterface_Access (geographicMapCellPositionFactoryInterface_Param);
      geographicMapCellPositionBaseFactory : constant GeographicMapCellPositionBaseFactory_Access := GeographicMapCellPositionBaseFactory_Access (geographicMapCellPositionBaseFactory_Param);
      geographicMapCellTypeFactory : constant GeographicMapCellTypeFactory_Access := GeographicMapCellTypeFactory_Access (geographicMapCellTypeFactory_Param);
   begin
        SimpleGeographicMap_Package.Initialize (This, id, name, cellTypeIdToGeographicMapCellType, tiledLayer, foregroundBasicColor, backgroundBasicColor);
        Initialize_Fields (This);
        This.geographicMapCellPositionFactoryInterface := geographicMapCellPositionFactoryInterface;
        This.geographicMapCellPositionFactory := geographicMapCellPositionBaseFactory.getInstance (BasicGeographicMap_Access'(This'Unchecked_Access));
        This.geographicMapCellTypeFactory := geographicMapCellTypeFactory;
   end Initialize;

   function Create (id : Integer; name : Unbounded_String; cellTypeIdToGeographicMapCellType : Integer_Array_Access; tiledLayer_Param : access AllBinaryTiledLayer_Package.AllBinaryTiledLayer'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; geographicMapCellPositionFactoryInterface_Param : access GeographicMapCellPositionFactoryInterface_Package.GeographicMapCellPositionFactoryInterface'Class; geographicMapCellPositionBaseFactory_Param : access GeographicMapCellPositionBaseFactory_Package.GeographicMapCellPositionBaseFactory'Class; geographicMapCellTypeFactory_Param : access GeographicMapCellTypeFactory_Package.GeographicMapCellTypeFactory'Class) return BasicGeographicMap_Access is
      This : constant BasicGeographicMap_Access := new BasicGeographicMap;
   begin
      BasicGeographicMap_Package.Initialize (This.all, id, name, cellTypeIdToGeographicMapCellType, tiledLayer_Param, foregroundBasicColor_Param, backgroundBasicColor_Param, geographicMapCellPositionFactoryInterface_Param, geographicMapCellPositionBaseFactory_Param, geographicMapCellTypeFactory_Param);
      return This;
   end Create;

   --  throws Exception
   function getCellPosition (This : in out BasicGeographicMap; direction : Integer; oldGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) return GeographicMapCellPosition_Access is
      oldGeographicMapCellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (oldGeographicMapCellPosition_Param);
   begin
        case direction is
            when 0 =>
                return This.geographicMapCellPositionFactory.getAt ((oldGeographicMapCellPosition.getColumn) - (1), oldGeographicMapCellPosition.getRow);
            when 1 =>
                return This.geographicMapCellPositionFactory.getAt ((oldGeographicMapCellPosition.getColumn) + (1), oldGeographicMapCellPosition.getRow);
            when 2 =>
                return This.geographicMapCellPositionFactory.getAt (oldGeographicMapCellPosition.getColumn, (oldGeographicMapCellPosition.getRow) - (1));
            when 3 =>
                return This.geographicMapCellPositionFactory.getAt (oldGeographicMapCellPosition.getColumn, (oldGeographicMapCellPosition.getRow) + (1));
            when others =>
                Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Only Four Directions")));
        end case;
   end getCellPosition;

   --  throws Exception
   function getCellPositionNoThrow (This : in out BasicGeographicMap; direction : Integer; oldGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) return GeographicMapCellPosition_Access is
      oldGeographicMapCellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (oldGeographicMapCellPosition_Param);
   begin
        case direction is
            when 0 =>
                if ((oldGeographicMapCellPosition.getColumn) - (1)) >= (0) then
                    return This.geographicMapCellPositionFactory.getAt ((oldGeographicMapCellPosition.getColumn) - (1), oldGeographicMapCellPosition.getRow);
                else
                    return SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION;
                end if;
            when 1 =>
                if ((oldGeographicMapCellPosition.getColumn) + (1)) < (This.getAllBinaryTiledLayer.getColumns) then
                    return This.geographicMapCellPositionFactory.getAt ((oldGeographicMapCellPosition.getColumn) + (1), oldGeographicMapCellPosition.getRow);
                else
                    return SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION;
                end if;
            when 2 =>
                if ((oldGeographicMapCellPosition.getRow) - (1)) >= (0) then
                    return This.geographicMapCellPositionFactory.getAt (oldGeographicMapCellPosition.getColumn, (oldGeographicMapCellPosition.getRow) - (1));
                else
                    return SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION;
                end if;
            when 3 =>
                if ((oldGeographicMapCellPosition.getRow) + (1)) < (This.getAllBinaryTiledLayer.getRows) then
                    return This.geographicMapCellPositionFactory.getAt (oldGeographicMapCellPosition.getColumn, (oldGeographicMapCellPosition.getRow) + (1));
                else
                    return SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION;
                end if;
            when others =>
                return SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION;
        end case;
   end getCellPositionNoThrow;

   --  throws Exception
   function isOfFourDirections (This : in out BasicGeographicMap; oldGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; newGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) return Boolean is
      oldGeographicMapCellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (oldGeographicMapCellPosition_Param);
      newGeographicMapCellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (newGeographicMapCellPosition_Param);
      index : Integer;
   begin
        for index in 0 .. (4) - 1 loop
            if (newGeographicMapCellPosition) = (This.getCellPositionNoThrow (index, oldGeographicMapCellPosition)) then
                return True;
            end if;
        end loop;
        return False;
   end isOfFourDirections;

   --  throws Exception
   function getCellPositionAtXY (This : in out BasicGeographicMap; x : Integer; y : Integer) return GeographicMapCellPosition_Access is
      allBinaryTiledLayer : AllBinaryTiledLayer_Access;
      i_column : Integer;
      i_row : Integer;
   begin
        allBinaryTiledLayer := This.getAllBinaryTiledLayer;
        i_column := This.mathUtil.abs_Id ((x) / (allBinaryTiledLayer.getCellHeight));
        i_row := This.mathUtil.abs_Id ((y) / (allBinaryTiledLayer.getCellWidth));
        return This.geographicMapCellPositionFactory.getAt (i_column, i_row);
   end getCellPositionAtXY;

   function getCellPositionAtXYNoThrow (This : in out BasicGeographicMap; x : Integer; y : Integer) return GeographicMapCellPosition_Access is
      allBinaryTiledLayer : AllBinaryTiledLayer_Access;
      i_column : Integer;
      i_row : Integer;
   begin
        allBinaryTiledLayer := This.getAllBinaryTiledLayer;
        i_column := This.mathUtil.abs_Id ((x) / (allBinaryTiledLayer.getCellHeight));
        i_row := This.mathUtil.abs_Id ((y) / (allBinaryTiledLayer.getCellWidth));
        if ((allBinaryTiledLayer.getColumns) > (i_column)) and then ((allBinaryTiledLayer.getRows) > (i_row)) then
            begin
                return This.geographicMapCellPositionFactory.getAt (i_column, i_row);
            exception
                when Java_Occurrence : others =>
                    declare
                        e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                    begin
                return SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION;
                    end;
            end;
        else
            return SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION;
        end if;
   end getCellPositionAtXYNoThrow;

   --  throws Exception
   function isOnMap (This : in out BasicGeographicMap; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) return Boolean is
      geographicMapCellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (geographicMapCellPosition_Param);
      allBinaryTiledLayer : AllBinaryTiledLayer_Access;
      i_column : Integer;
      i_row : Integer;
   begin
        allBinaryTiledLayer := This.getAllBinaryTiledLayer;
        i_column := geographicMapCellPosition.getColumn;
        i_row := geographicMapCellPosition.getRow;
        if ((allBinaryTiledLayer.getColumns) > (i_column)) and then ((allBinaryTiledLayer.getRows) > (i_row)) then
            return True;
        else
            return False;
        end if;
   end isOnMap;

   --  throws Exception
   function getCellPositionAtNoThrow (This : in out BasicGeographicMap; x : Integer; y : Integer; x2 : Integer; y2 : Integer; geographicMapCellPositionList_Param : access BasicArrayList_Package.BasicArrayList'Class) return BasicArrayList_Access is
      geographicMapCellPositionList : constant BasicArrayList_Access := BasicArrayList_Access (geographicMapCellPositionList_Param);
      allBinaryTiledLayer : AllBinaryTiledLayer_Access;
      i_columnMin : Integer;
      i_rowMin : Integer;
      i_columnMax : Integer;
      i_rowMax : Integer;
      rowIndex : Integer;
      columnIndex : Integer;
   begin
        geographicMapCellPositionList.clear;
        allBinaryTiledLayer := This.getAllBinaryTiledLayer;
        i_columnMin := This.mathUtil.abs_Id ((x) / (allBinaryTiledLayer.getCellHeight));
        i_rowMin := This.mathUtil.abs_Id ((y) / (allBinaryTiledLayer.getCellWidth));
        i_columnMax := (This.mathUtil.abs_Id ((x2) / (allBinaryTiledLayer.getCellHeight))) + (1);
        i_rowMax := (This.mathUtil.abs_Id ((y2) / (allBinaryTiledLayer.getCellWidth))) + (1);
        for columnIndex in i_columnMin .. (i_columnMax) - 1 loop
            for rowIndex in i_rowMin .. (i_rowMax) - 1 loop
                if ((allBinaryTiledLayer.getColumns) > (columnIndex)) and then ((allBinaryTiledLayer.getRows) > (rowIndex)) then
                    geographicMapCellPositionList.add (This.geographicMapCellPositionFactory.getAt (columnIndex, rowIndex));
                end if;
            end loop;
        end loop;
        return geographicMapCellPositionList;
   end getCellPositionAtNoThrow;

   --  throws Exception
   function getCellPositionsAt (This : in out BasicGeographicMap; layer_Param : access Layer_Package.Layer'Class; currentCellPositionArray : GeographicMapCellPosition_Access_Array_Access_Array_Access; cellPositionArray : GeographicMapCellPosition_Access_Array_Access_Array_Access) return Boolean is
      layer : constant Layer_Access := Layer_Access (layer_Param);
      hasChanged : Boolean;
      size : Integer;
      size2 : Integer;
      xPortion : Integer;
      yPortion : Integer;
      x : Integer;
      y : Integer;
      index2 : Integer;
      index : Integer;
   begin
        hasChanged := False;
        size := cellPositionArray'Length;
        size2 := cellPositionArray (0)'Length;
        xPortion := (layer.getXP) / (((size) - (1)));
        yPortion := (layer.getYP) / (((size) - (1)));
        for index in 0 .. (size) - 1 loop
            for index2 in 0 .. (size2) - 1 loop
                x := (xPortion) * (index);
                y := (yPortion) * (index);
                cellPositionArray (index) (index2) := This.getCellPositionAtXY (x, y);
                if (currentCellPositionArray (index) (index2)) /= (cellPositionArray (index) (index2)) then
                    hasChanged := True;
                end if;
            end loop;
        end loop;
        return hasChanged;
   end getCellPositionsAt;

   --  throws Exception
   function getCellTypeAtXY (This : in out BasicGeographicMap; x : Integer; y : Integer) return GeographicMapCellType_Access is
      cellPosition : GeographicMapCellPosition_Access;
   begin
        cellPosition := This.getCellPositionAtXY (x, y);
        return This.getCellTypeAt (cellPosition);
   end getCellTypeAtXY;

   function getGeographicMapCellPositionFactory (This : in out BasicGeographicMap) return BasicGeographicMapCellPositionFactory_Access is
   begin
        return This.geographicMapCellPositionFactory;
   end getGeographicMapCellPositionFactory;

   function getGeographicMapCellPositionFactoryInterface (This : in out BasicGeographicMap) return GeographicMapCellPositionFactoryInterface_Access is
   begin
        return This.geographicMapCellPositionFactoryInterface;
   end getGeographicMapCellPositionFactoryInterface;

   function getGeographicMapCellTypeFactory (This : in out BasicGeographicMap) return GeographicMapCellTypeFactory_Access is
   begin
        return This.geographicMapCellTypeFactory;
   end getGeographicMapCellTypeFactory;

   procedure getCellPosition (This : in out BasicGeographicMap; direction : Integer; oldGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) is
      Java_Result : constant GeographicMapCellPosition_Access := BasicGeographicMap'Class (This).getCellPosition (direction, oldGeographicMapCellPosition_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCellPosition;

   procedure getCellPositionNoThrow (This : in out BasicGeographicMap; direction : Integer; oldGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) is
      Java_Result : constant GeographicMapCellPosition_Access := BasicGeographicMap'Class (This).getCellPositionNoThrow (direction, oldGeographicMapCellPosition_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCellPositionNoThrow;

   procedure isOfFourDirections (This : in out BasicGeographicMap; oldGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; newGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) is
      Java_Result : constant Boolean := BasicGeographicMap'Class (This).isOfFourDirections (oldGeographicMapCellPosition_Param, newGeographicMapCellPosition_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isOfFourDirections;

   procedure getCellPositionAtXY (This : in out BasicGeographicMap; x : Integer; y : Integer) is
      Java_Result : constant GeographicMapCellPosition_Access := BasicGeographicMap'Class (This).getCellPositionAtXY (x, y);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCellPositionAtXY;

   procedure getCellPositionAtXYNoThrow (This : in out BasicGeographicMap; x : Integer; y : Integer) is
      Java_Result : constant GeographicMapCellPosition_Access := BasicGeographicMap'Class (This).getCellPositionAtXYNoThrow (x, y);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCellPositionAtXYNoThrow;

   procedure isOnMap (This : in out BasicGeographicMap; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) is
      Java_Result : constant Boolean := BasicGeographicMap'Class (This).isOnMap (geographicMapCellPosition_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isOnMap;

   procedure getCellPositionAtNoThrow (This : in out BasicGeographicMap; x : Integer; y : Integer; x2 : Integer; y2 : Integer; geographicMapCellPositionList_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      Java_Result : constant BasicArrayList_Access := BasicGeographicMap'Class (This).getCellPositionAtNoThrow (x, y, x2, y2, geographicMapCellPositionList_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCellPositionAtNoThrow;

   procedure getCellPositionsAt (This : in out BasicGeographicMap; layer_Param : access Layer_Package.Layer'Class; currentCellPositionArray : GeographicMapCellPosition_Access_Array_Access_Array_Access; cellPositionArray : GeographicMapCellPosition_Access_Array_Access_Array_Access) is
      Java_Result : constant Boolean := BasicGeographicMap'Class (This).getCellPositionsAt (layer_Param, currentCellPositionArray, cellPositionArray);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCellPositionsAt;

   procedure getCellTypeAtXY (This : in out BasicGeographicMap; x : Integer; y : Integer) is
      Java_Result : constant GeographicMapCellType_Access := BasicGeographicMap'Class (This).getCellTypeAtXY (x, y);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCellTypeAtXY;

begin
   null;
   NULL_BASIC_GEOGRAPHIC_MAP_ARRAY := new BasicGeographicMap_Access_Array'(0 .. (0) - 1 => null);

end org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;


