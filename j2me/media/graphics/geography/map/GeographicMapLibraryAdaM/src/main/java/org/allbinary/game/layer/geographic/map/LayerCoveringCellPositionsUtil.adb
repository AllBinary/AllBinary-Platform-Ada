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
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package_References;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package; use org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References;
with org.allbinary.media.graphics.geography.map.CellPositionsUtil_Package; use org.allbinary.media.graphics.geography.map.CellPositionsUtil_Package;
with org.allbinary.media.graphics.geography.map.CellPositionsUtil_Package_References;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References;
with org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionBaseFactory_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInitVisitorInterface_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapInterface_Package;
with org.allbinary.media.graphics.geography.map.SimpleGeographicMap_Package;

package body org.allbinary.game.layer.geographic.map.LayerCoveringCellPositionsUtil_Package is

   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   function "=" (Left, Right : BasicArrayList_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype AllBinaryLayer_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access;
   function "=" (Left, Right : AllBinaryLayer_Access) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryLayer_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array;
   function "=" (Left, Right : AllBinaryLayer_Access_Array) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryLayer_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access;
   function "=" (Left, Right : AllBinaryLayer_Access_Array_Access) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryLayer_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryLayer_Access_Array_Access_Array) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryLayer_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryLayer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
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
   subtype CellPositionsUtil_Access is org.allbinary.media.graphics.geography.map.CellPositionsUtil_Package_References.CellPositionsUtil_Access;
   function "=" (Left, Right : CellPositionsUtil_Access) return Boolean renames org.allbinary.media.graphics.geography.map.CellPositionsUtil_Package_References."=";
   subtype CellPositionsUtil_Access_Array is org.allbinary.media.graphics.geography.map.CellPositionsUtil_Package_References.CellPositionsUtil_Access_Array;
   function "=" (Left, Right : CellPositionsUtil_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.CellPositionsUtil_Package_References."=";
   subtype CellPositionsUtil_Access_Array_Access is org.allbinary.media.graphics.geography.map.CellPositionsUtil_Package_References.CellPositionsUtil_Access_Array_Access;
   function "=" (Left, Right : CellPositionsUtil_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.CellPositionsUtil_Package_References."=";
   subtype CellPositionsUtil_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.CellPositionsUtil_Package_References.CellPositionsUtil_Access_Array_Access_Array;
   function "=" (Left, Right : CellPositionsUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.CellPositionsUtil_Package_References."=";
   subtype CellPositionsUtil_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.CellPositionsUtil_Package_References.CellPositionsUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CellPositionsUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.CellPositionsUtil_Package_References."=";
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
   procedure Initialize_Fields (This : in out LayerCoveringCellPositionsUtil'Class) is
   begin
      null;
      This.cellPositionsUtil := CellPositionsUtil_Package.getInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out LayerCoveringCellPositionsUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return LayerCoveringCellPositionsUtil_Access is
      This : constant LayerCoveringCellPositionsUtil_Access := new LayerCoveringCellPositionsUtil;
   begin
      LayerCoveringCellPositionsUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return LayerCoveringCellPositionsUtil_Access is
   begin
        return LayerCoveringCellPositionsUtil_Access (LayerCoveringCellPositionsUtil_Package.instance);
   end getInstance;

   --  throws Exception
   function getAllXY (This : in out LayerCoveringCellPositionsUtil; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; x : Integer; y : Integer; reusableList_Param : access BasicArrayList_Package.BasicArrayList'Class) return BasicArrayList_Access is
      geographicMapInterface : constant BasicGeographicMap_Access := BasicGeographicMap_Access (geographicMapInterface_Param);
      layerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layerInterface_Param);
      reusableList : constant BasicArrayList_Access := BasicArrayList_Access (reusableList_Param);
      topLeftGeographicMapCellPosition : GeographicMapCellPosition_Access;
   begin
        topLeftGeographicMapCellPosition := geographicMapInterface.getCellPositionAtXY (x, y);
        return LayerCoveringCellPositionsUtil'Class (This).getAll (geographicMapInterface, topLeftGeographicMapCellPosition, layerInterface, reusableList);
   end getAllXY;

   --  throws Exception
   function getAll (This : in out LayerCoveringCellPositionsUtil; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; topLeftGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; reusableList_Param : access BasicArrayList_Package.BasicArrayList'Class) return BasicArrayList_Access is
      geographicMapInterface : constant BasicGeographicMap_Access := BasicGeographicMap_Access (geographicMapInterface_Param);
      topLeftGeographicMapCellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (topLeftGeographicMapCellPosition_Param);
      layerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layerInterface_Param);
      reusableList : constant BasicArrayList_Access := BasicArrayList_Access (reusableList_Param);
      columns : Integer;
      rows : Integer;
   begin
        reusableList.clear;
        columns := (layerInterface.getWidth) / (geographicMapInterface.getAllBinaryTiledLayer.getCellWidth);
        rows := (layerInterface.getHeight) / (geographicMapInterface.getAllBinaryTiledLayer.getCellHeight);
        if (columns) = (0) then
            columns := 1;
        end if;
        if (rows) = (0) then
            rows := 1;
        end if;
        return This.cellPositionsUtil.getAll (geographicMapInterface, topLeftGeographicMapCellPosition, columns, rows, reusableList);
   end getAll;

   procedure getAllXY (This : in out LayerCoveringCellPositionsUtil; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; x : Integer; y : Integer; reusableList_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      Java_Result : constant BasicArrayList_Access := LayerCoveringCellPositionsUtil'Class (This).getAllXY (geographicMapInterface_Param => geographicMapInterface_Param, layerInterface_Param => layerInterface_Param, x => x, y => y, reusableList_Param => reusableList_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getAllXY;

   procedure getAll (This : in out LayerCoveringCellPositionsUtil; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; topLeftGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; reusableList_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      Java_Result : constant BasicArrayList_Access := LayerCoveringCellPositionsUtil'Class (This).getAll (geographicMapInterface_Param => geographicMapInterface_Param, topLeftGeographicMapCellPosition_Param => topLeftGeographicMapCellPosition_Param, layerInterface_Param => layerInterface_Param, reusableList_Param => reusableList_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getAll;

begin
   null;
   instance := LayerCoveringCellPositionsUtil_Package.Create;

end org.allbinary.game.layer.geographic.map.LayerCoveringCellPositionsUtil_Package;


