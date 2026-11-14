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


with org.allbinary.layer.Layer_Package; use org.allbinary.layer.Layer_Package;
with org.allbinary.layer.Layer_Package_References;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package; use org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package;
with org.allbinary.graphics.CellPosition_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with javax.microedition.lcdui.Font_Package;
with org.allbinary.graphics.GPoint_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionBaseFactory_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInitVisitorInterface_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapInterface_Package;
with javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Image_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.media.graphics.geography.map.SimpleGeographicMap_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;
with org.allbinary.graph.V_Package;

package body org.allbinary.media.graphics.geography.map.BasicGeographicMapUtil_Package is

   subtype Layer_Access is org.allbinary.layer.Layer_Package_References.Layer_Access;
   function "=" (Left, Right : Layer_Access) return Boolean renames org.allbinary.layer.Layer_Package_References."=";
   subtype Layer_Access_Array is org.allbinary.layer.Layer_Package_References.Layer_Access_Array;
   function "=" (Left, Right : Layer_Access_Array) return Boolean renames org.allbinary.layer.Layer_Package_References."=";
   subtype Layer_Access_Array_Access is org.allbinary.layer.Layer_Package_References.Layer_Access_Array_Access;
   function "=" (Left, Right : Layer_Access_Array_Access) return Boolean renames org.allbinary.layer.Layer_Package_References."=";
   subtype Layer_Access_Array_Access_Array is org.allbinary.layer.Layer_Package_References.Layer_Access_Array_Access_Array;
   function "=" (Left, Right : Layer_Access_Array_Access_Array) return Boolean renames org.allbinary.layer.Layer_Package_References."=";
   subtype Layer_Access_Array_Access_Array_Access is org.allbinary.layer.Layer_Package_References.Layer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Layer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.layer.Layer_Package_References."=";
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   function "=" (Left, Right : LogUtil_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype GeographicMapCellPosition_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access;
   function "=" (Left, Right : GeographicMapCellPosition_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References."=";
   subtype GeographicMapCellPosition_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array;
   function "=" (Left, Right : GeographicMapCellPosition_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References."=";
   subtype GeographicMapCellPosition_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellPosition_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References."=";
   subtype GeographicMapCellPosition_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array_Access_Array;
   function "=" (Left, Right : GeographicMapCellPosition_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References."=";
   subtype GeographicMapCellPosition_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellPosition_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References."=";
   subtype BasicGeographicMap_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access;
   function "=" (Left, Right : BasicGeographicMap_Access) return Boolean renames org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References."=";
   subtype BasicGeographicMap_Access_Array is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array;
   function "=" (Left, Right : BasicGeographicMap_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References."=";
   subtype BasicGeographicMap_Access_Array_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array_Access;
   function "=" (Left, Right : BasicGeographicMap_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References."=";
   subtype BasicGeographicMap_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array_Access_Array;
   function "=" (Left, Right : BasicGeographicMap_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References."=";
   subtype BasicGeographicMap_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicGeographicMap_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References."=";
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
      BasicGeographicMapUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return BasicGeographicMapUtil_Access is
   begin
        return BasicGeographicMapUtil_Package.instance;
   end getInstance;

   --  throws Exception
   function getBorderingRow (This : in out BasicGeographicMapUtil; direction : Integer; oldGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) return Integer is
      oldGeographicMapCellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (oldGeographicMapCellPosition_Param);
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
   function getBorderingColumn (This : in out BasicGeographicMapUtil; direction : Integer; oldGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) return Integer is
      oldGeographicMapCellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (oldGeographicMapCellPosition_Param);
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
   function isSameCellPosition (This : in out BasicGeographicMapUtil; fromGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; toGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) return Boolean is
      fromGeographicMapCellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (fromGeographicMapCellPosition_Param);
      toGeographicMapCellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (toGeographicMapCellPosition_Param);
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
        return BasicGeographicMapUtil'Class (This).getAllBinaryTiledLayerArray (geographicMapInterfaceArray, tiledLayerArray, 0);
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

   procedure getBorderingRow (This : in out BasicGeographicMapUtil; direction : Integer; oldGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) is
      Java_Result : constant Integer := BasicGeographicMapUtil'Class (This).getBorderingRow (direction => direction, oldGeographicMapCellPosition_Param => oldGeographicMapCellPosition_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getBorderingRow;

   procedure getBorderingColumn (This : in out BasicGeographicMapUtil; direction : Integer; oldGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) is
      Java_Result : constant Integer := BasicGeographicMapUtil'Class (This).getBorderingColumn (direction => direction, oldGeographicMapCellPosition_Param => oldGeographicMapCellPosition_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getBorderingColumn;

   procedure isSameCellPosition (This : in out BasicGeographicMapUtil; fromGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; toGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) is
      Java_Result : constant Boolean := BasicGeographicMapUtil'Class (This).isSameCellPosition (fromGeographicMapCellPosition_Param => fromGeographicMapCellPosition_Param, toGeographicMapCellPosition_Param => toGeographicMapCellPosition_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isSameCellPosition;

   procedure createAllBinaryTiledLayerArray (This : in out BasicGeographicMapUtil; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access) is
      Java_Result : constant Layer_Access_Array_Access := BasicGeographicMapUtil'Class (This).createAllBinaryTiledLayerArray (geographicMapInterfaceArray => geographicMapInterfaceArray);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createAllBinaryTiledLayerArray;

   procedure getAllBinaryTiledLayerArray (This : in out BasicGeographicMapUtil; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; tiledLayerArray : Layer_Access_Array_Access; startIndex : Integer) is
      Java_Result : constant Layer_Access_Array_Access := BasicGeographicMapUtil'Class (This).getAllBinaryTiledLayerArray (geographicMapInterfaceArray => geographicMapInterfaceArray, tiledLayerArray => tiledLayerArray, startIndex => startIndex);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getAllBinaryTiledLayerArray;

begin
   null;
   instance := BasicGeographicMapUtil_Package.Create;

end org.allbinary.media.graphics.geography.map.BasicGeographicMapUtil_Package;


