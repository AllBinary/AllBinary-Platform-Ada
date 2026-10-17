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


package body org.allbinary.media.graphics.geography.map.SimpleGeographicMap_Package is

   procedure Initialize_Fields (This : in out SimpleGeographicMap'Class) is
   begin
      null;
      This.commonStrings := CommonStrings_Package.getInstance;
      
      
      
      
      This.foregroundBasicColor := BasicColorFactory_Package.getInstance.NULL_COLOR;
      This.backgroundBasicColor := BasicColorFactory_Package.getInstance.NULL_COLOR;
      This.geographicMapCellTypeFactory := GeographicMapCellTypeFactory_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out SimpleGeographicMap'Class; id : Integer; name : Unbounded_String; cellTypeIdToGeographicMapCellType : Integer_Array_Access; tiledLayer : AllBinaryTiledLayer_Access; foregroundBasicColor : BasicColor_Access; backgroundBasicColor : BasicColor_Access) is
   begin
      Initialize_Fields (This);
        This.id := id;
        This.name := name;
        This.cellTypeIdToGeographicMapCellType := cellTypeIdToGeographicMapCellType;
        This.tiledLayer := tiledLayer;
        This.setBackgroundBasicColor (backgroundBasicColor);
        This.setForegroundBasicColor (foregroundBasicColor);
   end Initialize;

   function Create (id : Integer; name : Unbounded_String; cellTypeIdToGeographicMapCellType : Integer_Array_Access; tiledLayer : AllBinaryTiledLayer_Access; foregroundBasicColor : BasicColor_Access; backgroundBasicColor : BasicColor_Access) return SimpleGeographicMap_Access is
      This : constant SimpleGeographicMap_Access := new SimpleGeographicMap;
   begin
      Initialize (This.all, id, name, cellTypeIdToGeographicMapCellType, tiledLayer, foregroundBasicColor, backgroundBasicColor);
      return This;
   end Create;

   function getId (This : in out SimpleGeographicMap) return Integer is
   begin
        return This.id;
   end getId;

   function getName (This : in out SimpleGeographicMap) return Unbounded_String is
   begin
        return This.name;
   end getName;

   procedure reset (This : in out SimpleGeographicMap) is
   begin
        null;
   end reset;

   function getAllBinaryTiledLayer (This : in out SimpleGeographicMap) return AllBinaryTiledLayer_Access is
   begin
        return This.tiledLayer;
   end getAllBinaryTiledLayer;

   --  throws Exception
   function getCellTypeAt (This : in out SimpleGeographicMap; cellPosition : GeographicMapCellPosition_Access) return GeographicMapCellType_Access is
      i_column : Integer;
      i_row : Integer;
      cellTypeId : Integer;
   begin
        i_column := cellPosition.getColumn;
        i_row := cellPosition.getRow;
        cellTypeId := This.tiledLayer.getCell (i_column, i_row);
        if (cellTypeId) < (0) then
            cellTypeId := This.tiledLayer.getAnimatedTile (cellTypeId);
        end if;
        return This.geographicMapCellTypeFactory.get (This.cellTypeIdToGeographicMapCellType (cellTypeId));
   end getCellTypeAt;

   function getCellTypeFromMapCellTypeInt (This : in out SimpleGeographicMap; cellTypeId : Integer) return Integer is
   begin
        return This.cellTypeIdToGeographicMapCellType (cellTypeId);
   end getCellTypeFromMapCellTypeInt;

   function getForegroundBasicColor (This : in out SimpleGeographicMap) return BasicColor_Access is
   begin
        return This.foregroundBasicColor;
   end getForegroundBasicColor;

   procedure setForegroundBasicColor (This : in out SimpleGeographicMap; foregroundBasicColor : BasicColor_Access) is
   begin
        This.foregroundBasicColor := foregroundBasicColor;
   end setForegroundBasicColor;

   function getBackgroundBasicColor (This : in out SimpleGeographicMap) return BasicColor_Access is
   begin
        return This.backgroundBasicColor;
   end getBackgroundBasicColor;

   procedure setBackgroundBasicColor (This : in out SimpleGeographicMap; backgroundBasicColor : BasicColor_Access) is
   begin
        This.backgroundBasicColor := backgroundBasicColor;
   end setBackgroundBasicColor;

   procedure getId (This : in out SimpleGeographicMap) is
      Java_Result : constant Integer := SimpleGeographicMap'Class (This).getId;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getId;

   procedure getName (This : in out SimpleGeographicMap) is
      Java_Result : constant Unbounded_String := SimpleGeographicMap'Class (This).getName;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getName;

   procedure getAllBinaryTiledLayer (This : in out SimpleGeographicMap) is
      Java_Result : constant AllBinaryTiledLayer_Access := SimpleGeographicMap'Class (This).getAllBinaryTiledLayer;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getAllBinaryTiledLayer;

   procedure getCellTypeAt (This : in out SimpleGeographicMap; cellPosition : GeographicMapCellPosition_Access) is
      Java_Result : constant GeographicMapCellType_Access := SimpleGeographicMap'Class (This).getCellTypeAt (cellPosition);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCellTypeAt;

   procedure getCellTypeFromMapCellTypeInt (This : in out SimpleGeographicMap; cellTypeId : Integer) is
      Java_Result : constant Integer := SimpleGeographicMap'Class (This).getCellTypeFromMapCellTypeInt (cellTypeId);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCellTypeFromMapCellTypeInt;

   procedure getForegroundBasicColor (This : in out SimpleGeographicMap) is
      Java_Result : constant BasicColor_Access := SimpleGeographicMap'Class (This).getForegroundBasicColor;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getForegroundBasicColor;

   procedure getBackgroundBasicColor (This : in out SimpleGeographicMap) is
      Java_Result : constant BasicColor_Access := SimpleGeographicMap'Class (This).getBackgroundBasicColor;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getBackgroundBasicColor;

end org.allbinary.media.graphics.geography.map.SimpleGeographicMap_Package;


