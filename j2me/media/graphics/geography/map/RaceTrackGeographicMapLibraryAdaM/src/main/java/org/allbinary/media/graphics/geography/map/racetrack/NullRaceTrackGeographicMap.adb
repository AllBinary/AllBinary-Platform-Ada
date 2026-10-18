-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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



package body org.allbinary.media.graphics.geography.map.racetrack.NullRaceTrackGeographicMap_Package is

   procedure Initialize_Fields (This : in out NullRaceTrackGeographicMap'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out NullRaceTrackGeographicMap'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return NullRaceTrackGeographicMap_Access is
      This : constant NullRaceTrackGeographicMap_Access := new NullRaceTrackGeographicMap;
   begin
      NullRaceTrackGeographicMap_Package.Initialize (This.all);
      return This;
   end Create;


   function getId (This : in out NullRaceTrackGeographicMap) return Integer is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getId;

   function getName (This : in out NullRaceTrackGeographicMap) return Unbounded_String is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return Null_Unbounded_String;
   end getName;

   procedure reset (This : in out NullRaceTrackGeographicMap) is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end reset;

   function getAllBinaryTiledLayer (This : in out NullRaceTrackGeographicMap) return AllBinaryTiledLayer_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getAllBinaryTiledLayer;

   --  throws Exception
   function getCellPositionsAt (This : in out NullRaceTrackGeographicMap; layer_Param : access Layer_Package.Layer'Class; currentCellPositionArray : GeographicMapCellPosition_Access_Array_Access_Array_Access; cellPositionArray : GeographicMapCellPosition_Access_Array_Access_Array_Access) return Boolean is
      layer : constant Layer_Access := Layer_Access (layer_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return False;
   end getCellPositionsAt;

   --  throws Exception
   function getCellPositionAtXY (This : in out NullRaceTrackGeographicMap; x : Integer; y : Integer) return GeographicMapCellPosition_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getCellPositionAtXY;

   --  throws Exception
   function getCellPositionAtXYNoThrow (This : in out NullRaceTrackGeographicMap; x : Integer; y : Integer) return GeographicMapCellPosition_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getCellPositionAtXYNoThrow;

   function getCellTypeFromMapCellTypeInt (This : in out NullRaceTrackGeographicMap; cellTypeId : Integer) return Integer is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return 0;
   end getCellTypeFromMapCellTypeInt;

   --  throws Exception
   function getCellTypeAtXY (This : in out NullRaceTrackGeographicMap; x : Integer; y : Integer) return GeographicMapCellType_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getCellTypeAtXY;

   --  throws Exception
   function getCellTypeAt (This : in out NullRaceTrackGeographicMap; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) return GeographicMapCellType_Access is
      geographicMapCellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (geographicMapCellPosition_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getCellTypeAt;

   function getGeographicMapCellPositionFactory (This : in out NullRaceTrackGeographicMap) return BasicGeographicMapCellPositionFactory_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getGeographicMapCellPositionFactory;

   function getGeographicMapCellPositionFactoryInterface (This : in out NullRaceTrackGeographicMap) return GeographicMapCellPositionFactoryInterface_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getGeographicMapCellPositionFactoryInterface;

   function getForegroundBasicColor (This : in out NullRaceTrackGeographicMap) return BasicColor_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getForegroundBasicColor;

   function getBackgroundBasicColor (This : in out NullRaceTrackGeographicMap) return BasicColor_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getBackgroundBasicColor;

   function getRaceTrackInfo (This : in out NullRaceTrackGeographicMap) return RaceTrackInfo_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getRaceTrackInfo;

   procedure setRaceTrackInfo (This : in out NullRaceTrackGeographicMap; aRaceTrackInfo_Param : access RaceTrackInfo_Package.RaceTrackInfo'Class) is
      aRaceTrackInfo : constant RaceTrackInfo_Access := RaceTrackInfo_Access (aRaceTrackInfo_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end setRaceTrackInfo;

   function getRaceTrackData (This : in out NullRaceTrackGeographicMap) return RaceTrackData_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getRaceTrackData;

   procedure setRaceTrackData (This : in out NullRaceTrackGeographicMap; raceTrackData_Param : access RaceTrackData_Package.RaceTrackData'Class) is
      raceTrackData : constant RaceTrackData_Access := RaceTrackData_Access (raceTrackData_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end setRaceTrackData;

   procedure getCellPositionsAt (This : in out NullRaceTrackGeographicMap; layer_Param : access Layer_Package.Layer'Class; currentCellPositionArray : GeographicMapCellPosition_Access_Array_Access_Array_Access; cellPositionArray : GeographicMapCellPosition_Access_Array_Access_Array_Access) is
      Java_Result : constant Boolean := NullRaceTrackGeographicMap'Class (This).getCellPositionsAt (layer_Param => layer_Param, currentCellPositionArray => currentCellPositionArray, cellPositionArray => cellPositionArray);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCellPositionsAt;

   procedure getCellPositionAtXY (This : in out NullRaceTrackGeographicMap; x : Integer; y : Integer) is
      Java_Result : constant GeographicMapCellPosition_Access := NullRaceTrackGeographicMap'Class (This).getCellPositionAtXY (x => x, y => y);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCellPositionAtXY;

   procedure getCellPositionAtXYNoThrow (This : in out NullRaceTrackGeographicMap; x : Integer; y : Integer) is
      Java_Result : constant GeographicMapCellPosition_Access := NullRaceTrackGeographicMap'Class (This).getCellPositionAtXYNoThrow (x => x, y => y);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCellPositionAtXYNoThrow;

   procedure getCellTypeFromMapCellTypeInt (This : in out NullRaceTrackGeographicMap; cellTypeId : Integer) is
      Java_Result : constant Integer := NullRaceTrackGeographicMap'Class (This).getCellTypeFromMapCellTypeInt (cellTypeId => cellTypeId);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCellTypeFromMapCellTypeInt;

   procedure getCellTypeAtXY (This : in out NullRaceTrackGeographicMap; x : Integer; y : Integer) is
      Java_Result : constant GeographicMapCellType_Access := NullRaceTrackGeographicMap'Class (This).getCellTypeAtXY (x => x, y => y);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCellTypeAtXY;

   procedure getCellTypeAt (This : in out NullRaceTrackGeographicMap; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) is
      Java_Result : constant GeographicMapCellType_Access := NullRaceTrackGeographicMap'Class (This).getCellTypeAt (geographicMapCellPosition_Param => geographicMapCellPosition_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCellTypeAt;

begin
   null;
   NULL_RACE_TRACK_GEOGRAPHIC_MAP := NullRaceTrackGeographicMap_Package.Create;

end org.allbinary.media.graphics.geography.map.racetrack.NullRaceTrackGeographicMap_Package;


