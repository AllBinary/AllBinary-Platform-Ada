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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
--  with javax.microedition.lcdui.NullImage_Package; use javax.microedition.lcdui.NullImage_Package;
with org.allbinary.graphics.CellPosition_Package; use org.allbinary.graphics.CellPosition_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;

package org.allbinary.media.graphics.geography.map.racetrack.RaceTrackData_Package is

   package CellPosition_Package renames org.allbinary.graphics.CellPosition_Package;
   package NullUtil_Package renames org.allbinary.logic.NullUtil_Package;

   type RaceTrackData is tagged;
   type RaceTrackData_Access is access all RaceTrackData'Class;
   type RaceTrackData_Access_Array is array (Natural range <>) of RaceTrackData_Access;
   type RaceTrackData_Access_Array_Access is access all RaceTrackData_Access_Array;

   type RaceTrackData is new Java_Object with record
      tileSetImage : Image_Access;
      miniTileSetImage : Image_Access;
      cellWidth : Integer;
      cellHeight : Integer;
      miniCellWidth : Integer;
      miniCellHeight : Integer;
      mapArray : Integer_Array_Access_Array_Access;
      cellTypeIdToGeographicMapCellTypeArray : Integer_Array_Access;
      NO_OVER_PASSES_ARRAY : CellPosition_Access_Array_Access;
      overPassGeographicMapCellPositionArray : CellPosition_Access_Array_Access;
      id : Integer;
   end record;

   procedure Initialize (This : in out RaceTrackData'Class; id : Integer; cellWidth : Integer; cellHeight : Integer; miniCellWidth : Integer; miniCellHeight : Integer; cellTypeIdToGeographicMapCellTypeArray : Integer_Array_Access; mapArray : Integer_Array_Access_Array_Access);
   function Create (id : Integer; cellWidth : Integer; cellHeight : Integer; miniCellWidth : Integer; miniCellHeight : Integer; cellTypeIdToGeographicMapCellTypeArray : Integer_Array_Access; mapArray : Integer_Array_Access_Array_Access) return RaceTrackData_Access;
   procedure setMapArray (This : in out RaceTrackData; mapArray : Integer_Array_Access_Array_Access);
   function getMapArray (This : in out RaceTrackData) return Integer_Array_Access_Array_Access;
   procedure getMapArray (This : in out RaceTrackData);
   procedure setCellTypeIdToGeographicMapCellTypeArray (This : in out RaceTrackData; cellTypeIdToGeographicMapCellTypeArray : Integer_Array_Access);
   function getCellTypeIdToGeographicMapCellTypeArray (This : in out RaceTrackData) return Integer_Array_Access;
   procedure getCellTypeIdToGeographicMapCellTypeArray (This : in out RaceTrackData);
   procedure setCellWidth (This : in out RaceTrackData; cellWidth : Integer);
   function getCellWidth (This : in out RaceTrackData) return Integer;
   procedure getCellWidth (This : in out RaceTrackData);
   procedure setCellHeight (This : in out RaceTrackData; cellHeight : Integer);
   function getCellHeight (This : in out RaceTrackData) return Integer;
   procedure getCellHeight (This : in out RaceTrackData);
   function getOverPassGeographicMapCellPositionArray (This : in out RaceTrackData) return CellPosition_Access_Array_Access;
   procedure getOverPassGeographicMapCellPositionArray (This : in out RaceTrackData);
   procedure setOverPassGeographicMapCellPositionArray (This : in out RaceTrackData; overPassGeographicMapCellPositionArray : CellPosition_Access_Array_Access);
   function getTileSetImage (This : in out RaceTrackData) return Image_Access;
   procedure getTileSetImage (This : in out RaceTrackData);
   procedure setTileSetImage (This : in out RaceTrackData; tileSetImage : Image_Access);
   function getMiniTileSetImage (This : in out RaceTrackData) return Image_Access;
   procedure getMiniTileSetImage (This : in out RaceTrackData);
   procedure setMiniTileSetImage (This : in out RaceTrackData; miniTileSetImage : Image_Access);
   function getMiniCellWidth (This : in out RaceTrackData) return Integer;
   procedure getMiniCellWidth (This : in out RaceTrackData);
   procedure setMiniCellWidth (This : in out RaceTrackData; miniCellWidth : Integer);
   function getMiniCellHeight (This : in out RaceTrackData) return Integer;
   procedure getMiniCellHeight (This : in out RaceTrackData);
   procedure setMiniCellHeight (This : in out RaceTrackData; miniCellHeight : Integer);
   procedure setId (This : in out RaceTrackData; id : Integer);
   function getId (This : in out RaceTrackData) return Integer;
   procedure getId (This : in out RaceTrackData);

end org.allbinary.media.graphics.geography.map.racetrack.RaceTrackData_Package;


