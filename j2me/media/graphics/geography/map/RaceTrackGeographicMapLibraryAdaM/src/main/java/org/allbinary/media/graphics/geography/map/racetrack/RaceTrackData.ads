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

limited with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackData_Package;
package org.allbinary.media.graphics.geography.map.racetrack.RaceTrackData_Package_References is
   type RaceTrackData_Access is access all org.allbinary.media.graphics.geography.map.racetrack.RaceTrackData_Package.RaceTrackData'Class;
   type RaceTrackData_Access_Array is array (Natural range <>) of RaceTrackData_Access;
   type RaceTrackData_Access_Array_Access is access all RaceTrackData_Access_Array;
   type RaceTrackData_Access_Array_Access_Array is array (Natural range <>) of RaceTrackData_Access_Array_Access;
   type RaceTrackData_Access_Array_Access_Array_Access is access all RaceTrackData_Access_Array_Access_Array;
end org.allbinary.media.graphics.geography.map.racetrack.RaceTrackData_Package_References;

with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackData_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.lcdui.Image_Package;
with javax.microedition.lcdui.Image_Package_References;
limited with org.allbinary.graphics.CellPosition_Package;
with org.allbinary.graphics.CellPosition_Package_References;

package org.allbinary.media.graphics.geography.map.racetrack.RaceTrackData_Package is

   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package CellPosition_Package renames Standard.org.allbinary.graphics.CellPosition_Package;
   package Reference_Types is
   subtype Image_Access is javax.microedition.lcdui.Image_Package_References.Image_Access;
   use type Image_Access;
   subtype Image_Access_Array is javax.microedition.lcdui.Image_Package_References.Image_Access_Array;
   use type Image_Access_Array;
   subtype Image_Access_Array_Access is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access;
   use type Image_Access_Array_Access;
   subtype Image_Access_Array_Access_Array is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access_Array;
   use type Image_Access_Array_Access_Array;
   subtype Image_Access_Array_Access_Array_Access is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access_Array_Access;
   use type Image_Access_Array_Access_Array_Access;
   subtype CellPosition_Access is org.allbinary.graphics.CellPosition_Package_References.CellPosition_Access;
   use type CellPosition_Access;
   subtype CellPosition_Access_Array is org.allbinary.graphics.CellPosition_Package_References.CellPosition_Access_Array;
   use type CellPosition_Access_Array;
   subtype CellPosition_Access_Array_Access is org.allbinary.graphics.CellPosition_Package_References.CellPosition_Access_Array_Access;
   use type CellPosition_Access_Array_Access;
   subtype CellPosition_Access_Array_Access_Array is org.allbinary.graphics.CellPosition_Package_References.CellPosition_Access_Array_Access_Array;
   use type CellPosition_Access_Array_Access_Array;
   subtype CellPosition_Access_Array_Access_Array_Access is org.allbinary.graphics.CellPosition_Package_References.CellPosition_Access_Array_Access_Array_Access;
   use type CellPosition_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype RaceTrackData_Access is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackData_Package_References.RaceTrackData_Access;
   function "=" (Left, Right : RaceTrackData_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackData_Package_References."=";
   subtype RaceTrackData_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackData_Package_References.RaceTrackData_Access_Array;
   function "=" (Left, Right : RaceTrackData_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackData_Package_References."=";
   subtype RaceTrackData_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackData_Package_References.RaceTrackData_Access_Array_Access;
   function "=" (Left, Right : RaceTrackData_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackData_Package_References."=";
   subtype RaceTrackData_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackData_Package_References.RaceTrackData_Access_Array_Access_Array;
   function "=" (Left, Right : RaceTrackData_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackData_Package_References."=";
   subtype RaceTrackData_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackData_Package_References.RaceTrackData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RaceTrackData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackData_Package_References."=";

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
   procedure setCellTypeIdToGeographicMapCellTypeArray (This : in out RaceTrackData; cellTypeIdToGeographicMapCellTypeArray : Integer_Array_Access);
   function getCellTypeIdToGeographicMapCellTypeArray (This : in out RaceTrackData) return Integer_Array_Access;
   procedure setCellWidth (This : in out RaceTrackData; cellWidth : Integer);
   function getCellWidth (This : in out RaceTrackData) return Integer;
   procedure setCellHeight (This : in out RaceTrackData; cellHeight : Integer);
   function getCellHeight (This : in out RaceTrackData) return Integer;
   function getOverPassGeographicMapCellPositionArray (This : in out RaceTrackData) return CellPosition_Access_Array_Access;
   procedure setOverPassGeographicMapCellPositionArray (This : in out RaceTrackData; overPassGeographicMapCellPositionArray : CellPosition_Access_Array_Access);
   function getTileSetImage (This : in out RaceTrackData) return Image_Access;
   procedure setTileSetImage (This : in out RaceTrackData; tileSetImage_Param : access Image_Package.Image'Class);
   function getMiniTileSetImage (This : in out RaceTrackData) return Image_Access;
   procedure setMiniTileSetImage (This : in out RaceTrackData; miniTileSetImage_Param : access Image_Package.Image'Class);
   function getMiniCellWidth (This : in out RaceTrackData) return Integer;
   procedure setMiniCellWidth (This : in out RaceTrackData; miniCellWidth : Integer);
   function getMiniCellHeight (This : in out RaceTrackData) return Integer;
   procedure setMiniCellHeight (This : in out RaceTrackData; miniCellHeight : Integer);
   procedure setId (This : in out RaceTrackData; id : Integer);
   function getId (This : in out RaceTrackData) return Integer;

end org.allbinary.media.graphics.geography.map.racetrack.RaceTrackData_Package;


