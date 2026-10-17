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


package body org.allbinary.media.graphics.geography.map.racetrack.RaceTrackData_Package is

   procedure Initialize_Fields (This : in out RaceTrackData'Class) is
   begin
      null;
      This.tileSetImage := NullImage_Package.NULL_IMAGE;
      This.miniTileSetImage := NullImage_Package.NULL_IMAGE;
      This.cellWidth := 0;
      This.cellHeight := 0;
      This.miniCellWidth := 0;
      This.miniCellHeight := 0;
      This.mapArray := NullUtil_Package.getInstance.NULL_INT_ARRAY_ARRAY;
      This.cellTypeIdToGeographicMapCellTypeArray := NullUtil_Package.getInstance.NULL_INT_ARRAY;
      This.NO_OVER_PASSES_ARRAY := new CellPosition_Access_Array'(0 .. (0) - 1 => null);
      This.overPassGeographicMapCellPositionArray := This.NO_OVER_PASSES_ARRAY;
      
   end Initialize_Fields;


   procedure Initialize (This : in out RaceTrackData'Class; id : Integer; cellWidth : Integer; cellHeight : Integer; miniCellWidth : Integer; miniCellHeight : Integer; cellTypeIdToGeographicMapCellTypeArray : Integer_Array_Access; mapArray : Integer_Array_Access_Array_Access) is
   begin
      Initialize_Fields (This);
        This.id := id;
        This.cellWidth := cellWidth;
        This.cellHeight := cellHeight;
        This.miniCellWidth := miniCellWidth;
        This.miniCellHeight := miniCellHeight;
        This.mapArray := mapArray;
        This.cellTypeIdToGeographicMapCellTypeArray := cellTypeIdToGeographicMapCellTypeArray;
   end Initialize;

   function Create (id : Integer; cellWidth : Integer; cellHeight : Integer; miniCellWidth : Integer; miniCellHeight : Integer; cellTypeIdToGeographicMapCellTypeArray : Integer_Array_Access; mapArray : Integer_Array_Access_Array_Access) return RaceTrackData_Access is
      This : constant RaceTrackData_Access := new RaceTrackData;
   begin
      RaceTrackData_Package.Initialize (This.all, id, cellWidth, cellHeight, miniCellWidth, miniCellHeight, cellTypeIdToGeographicMapCellTypeArray, mapArray);
      return This;
   end Create;

   procedure setMapArray (This : in out RaceTrackData; mapArray : Integer_Array_Access_Array_Access) is
   begin
        This.mapArray := mapArray;
   end setMapArray;

   function getMapArray (This : in out RaceTrackData) return Integer_Array_Access_Array_Access is
   begin
        return This.mapArray;
   end getMapArray;

   procedure setCellTypeIdToGeographicMapCellTypeArray (This : in out RaceTrackData; cellTypeIdToGeographicMapCellTypeArray : Integer_Array_Access) is
   begin
        This.cellTypeIdToGeographicMapCellTypeArray := cellTypeIdToGeographicMapCellTypeArray;
   end setCellTypeIdToGeographicMapCellTypeArray;

   function getCellTypeIdToGeographicMapCellTypeArray (This : in out RaceTrackData) return Integer_Array_Access is
   begin
        return This.cellTypeIdToGeographicMapCellTypeArray;
   end getCellTypeIdToGeographicMapCellTypeArray;

   procedure setCellWidth (This : in out RaceTrackData; cellWidth : Integer) is
   begin
        This.cellWidth := cellWidth;
   end setCellWidth;

   function getCellWidth (This : in out RaceTrackData) return Integer is
   begin
        return This.cellWidth;
   end getCellWidth;

   procedure setCellHeight (This : in out RaceTrackData; cellHeight : Integer) is
   begin
        This.cellHeight := cellHeight;
   end setCellHeight;

   function getCellHeight (This : in out RaceTrackData) return Integer is
   begin
        return This.cellHeight;
   end getCellHeight;

   function getOverPassGeographicMapCellPositionArray (This : in out RaceTrackData) return CellPosition_Access_Array_Access is
   begin
        return This.overPassGeographicMapCellPositionArray;
   end getOverPassGeographicMapCellPositionArray;

   procedure setOverPassGeographicMapCellPositionArray (This : in out RaceTrackData; overPassGeographicMapCellPositionArray : CellPosition_Access_Array_Access) is
   begin
        This.overPassGeographicMapCellPositionArray := overPassGeographicMapCellPositionArray;
   end setOverPassGeographicMapCellPositionArray;

   function getTileSetImage (This : in out RaceTrackData) return Image_Access is
   begin
        return This.tileSetImage;
   end getTileSetImage;

   procedure setTileSetImage (This : in out RaceTrackData; tileSetImage : Image_Access) is
   begin
        This.tileSetImage := tileSetImage;
   end setTileSetImage;

   function getMiniTileSetImage (This : in out RaceTrackData) return Image_Access is
   begin
        return This.miniTileSetImage;
   end getMiniTileSetImage;

   procedure setMiniTileSetImage (This : in out RaceTrackData; miniTileSetImage : Image_Access) is
   begin
        This.miniTileSetImage := miniTileSetImage;
   end setMiniTileSetImage;

   function getMiniCellWidth (This : in out RaceTrackData) return Integer is
   begin
        return This.miniCellWidth;
   end getMiniCellWidth;

   procedure setMiniCellWidth (This : in out RaceTrackData; miniCellWidth : Integer) is
   begin
        This.miniCellWidth := miniCellWidth;
   end setMiniCellWidth;

   function getMiniCellHeight (This : in out RaceTrackData) return Integer is
   begin
        return This.miniCellHeight;
   end getMiniCellHeight;

   procedure setMiniCellHeight (This : in out RaceTrackData; miniCellHeight : Integer) is
   begin
        This.miniCellHeight := miniCellHeight;
   end setMiniCellHeight;

   procedure setId (This : in out RaceTrackData; id : Integer) is
   begin
        This.id := id;
   end setId;

   function getId (This : in out RaceTrackData) return Integer is
   begin
        return This.id;
   end getId;

end org.allbinary.media.graphics.geography.map.racetrack.RaceTrackData_Package;


