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


package body org.allbinary.media.graphics.geography.map.BasicGeographicMapUtil_Package is

   procedure Initialize_Fields (This : in out BasicGeographicMapUtil'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out BasicGeographicMapUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return BasicGeographicMapUtil_Access is
      This : constant BasicGeographicMapUtil_Access := new BasicGeographicMapUtil;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return BasicGeographicMapUtil_Access is
   begin
        return BasicGeographicMapUtil_Package.instance;
   end getInstance;

   --  throws Exception
   function getBorderingRow (This : in out BasicGeographicMapUtil; direction : Integer; oldGeographicMapCellPosition : GeographicMapCellPosition_Access) return Integer is
      LOCATION_CHANGE : Integer;
   begin
        LOCATION_CHANGE := 1;
        case direction is
            when 0 =>
                return oldGeographicMapCellPosition.getRow;
            when 1 =>
                return oldGeographicMapCellPosition.getRow;
            when 2 =>
                return (oldGeographicMapCellPosition.getRow) + (LOCATION_CHANGE);
            when 3 =>
                return (oldGeographicMapCellPosition.getRow) - (LOCATION_CHANGE);
            when others =>
                Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Only Four Directions")));
        end case;
   end getBorderingRow;

   --  throws Exception
   function getBorderingColumn (This : in out BasicGeographicMapUtil; direction : Integer; oldGeographicMapCellPosition : GeographicMapCellPosition_Access) return Integer is
      LOCATION_CHANGE : Integer;
   begin
        LOCATION_CHANGE := 1;
        case direction is
            when 0 =>
                return (oldGeographicMapCellPosition.getColumn) - (LOCATION_CHANGE);
            when 1 =>
                return (oldGeographicMapCellPosition.getColumn) + (LOCATION_CHANGE);
            when 2 =>
                return oldGeographicMapCellPosition.getColumn;
            when 3 =>
                return oldGeographicMapCellPosition.getColumn;
            when others =>
                Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Only Four Directions")));
        end case;
   end getBorderingColumn;

   --  throws Exception
   function isSameCellPosition (This : in out BasicGeographicMapUtil; fromGeographicMapCellPosition : GeographicMapCellPosition_Access; toGeographicMapCellPosition : GeographicMapCellPosition_Access) return Boolean is
      fromColumn : Integer;
      fromRow : Integer;
      goColumn : Integer;
      goRow : Integer;
   begin
        fromColumn := fromGeographicMapCellPosition.getColumn;
        fromRow := fromGeographicMapCellPosition.getRow;
        goColumn := toGeographicMapCellPosition.getColumn;
        goRow := toGeographicMapCellPosition.getRow;
        if ((fromColumn) = (goColumn)) and then ((fromRow) = (goRow)) then
            return True;
        else
            return False;
        end if;
   end isSameCellPosition;

   function createAllBinaryTiledLayerArray (This : in out BasicGeographicMapUtil; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access) return Layer_Access_Array_Access is
      tiledLayerArray : Layer_Access_Array_Access;
   begin
        tiledLayerArray := new Layer_Access_Array'(0 .. (geographicMapInterfaceArray'Length) - 1 => null);
        return This.getAllBinaryTiledLayerArray (geographicMapInterfaceArray, tiledLayerArray, 0);
   end createAllBinaryTiledLayerArray;

   function getAllBinaryTiledLayerArray (This : in out BasicGeographicMapUtil; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; tiledLayerArray : Layer_Access_Array_Access; startIndex : Integer) return Layer_Access_Array_Access is
      geographicMapInterface : BasicGeographicMap_Access;
      size : Integer;
      count : Integer;
      index : Integer;
   begin
        geographicMapInterface := null;
        size := geographicMapInterfaceArray'Length;
        count := 0;
        index := (size) + (startIndex);
        while (Java_Pre_Decrement (index)) >= (startIndex) loop
            geographicMapInterface := geographicMapInterfaceArray (index);
            tiledLayerArray (Java_Post_Increment (count)) := geographicMapInterface.getAllBinaryTiledLayer;
        end loop;
        return tiledLayerArray;
   end getAllBinaryTiledLayerArray;

   procedure move (This : in out BasicGeographicMapUtil; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; dx : Integer; dy : Integer) is
      geographicMapInterface : BasicGeographicMap_Access;
      size : Integer;
      index : Integer;
   begin
        geographicMapInterface := null;
        size := geographicMapInterfaceArray'Length;
        index := size;
        while (Java_Pre_Decrement (index)) >= (0) loop
            geographicMapInterface := geographicMapInterfaceArray (index);
            geographicMapInterface.getAllBinaryTiledLayer.moveDXY (dx, dy);
        end loop;
   end move;

   procedure setPosition (This : in out BasicGeographicMapUtil; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; x : Integer; y : Integer) is
      geographicMapInterface : BasicGeographicMap_Access;
      size : Integer;
      index : Integer;
   begin
        geographicMapInterface := null;
        size := geographicMapInterfaceArray'Length;
        index := size;
        while (Java_Pre_Decrement (index)) >= (0) loop
            geographicMapInterface := geographicMapInterfaceArray (index);
            geographicMapInterface.getAllBinaryTiledLayer.setPosition (x, y, geographicMapInterface.getAllBinaryTiledLayer.getZP);
        end loop;
   end setPosition;

   procedure getInstance is
      Java_Result : constant BasicGeographicMapUtil_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getBorderingRow (This : in out BasicGeographicMapUtil; direction : Integer; oldGeographicMapCellPosition : GeographicMapCellPosition_Access) is
      Java_Result : constant Integer := BasicGeographicMapUtil'Class (This).getBorderingRow (direction, oldGeographicMapCellPosition);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getBorderingRow;

   procedure getBorderingColumn (This : in out BasicGeographicMapUtil; direction : Integer; oldGeographicMapCellPosition : GeographicMapCellPosition_Access) is
      Java_Result : constant Integer := BasicGeographicMapUtil'Class (This).getBorderingColumn (direction, oldGeographicMapCellPosition);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getBorderingColumn;

   procedure isSameCellPosition (This : in out BasicGeographicMapUtil; fromGeographicMapCellPosition : GeographicMapCellPosition_Access; toGeographicMapCellPosition : GeographicMapCellPosition_Access) is
      Java_Result : constant Boolean := BasicGeographicMapUtil'Class (This).isSameCellPosition (fromGeographicMapCellPosition, toGeographicMapCellPosition);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isSameCellPosition;

   procedure createAllBinaryTiledLayerArray (This : in out BasicGeographicMapUtil; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access) is
      Java_Result : constant Layer_Access_Array_Access := BasicGeographicMapUtil'Class (This).createAllBinaryTiledLayerArray (geographicMapInterfaceArray);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createAllBinaryTiledLayerArray;

   procedure getAllBinaryTiledLayerArray (This : in out BasicGeographicMapUtil; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; tiledLayerArray : Layer_Access_Array_Access; startIndex : Integer) is
      Java_Result : constant Layer_Access_Array_Access := BasicGeographicMapUtil'Class (This).getAllBinaryTiledLayerArray (geographicMapInterfaceArray, tiledLayerArray, startIndex);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getAllBinaryTiledLayerArray;

begin
   null;
   instance := BasicGeographicMapUtil_Package.Create;

end org.allbinary.media.graphics.geography.map.BasicGeographicMapUtil_Package;


