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


package body org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellTypeFactory_Package is

   procedure Initialize_Fields (This : in out RaceTrackGeographicMapCellTypeFactory'Class) is
   begin
      null;
      This.EMPTY_CELL_TYPE := GeographicMapCellType_Package.Create (0, -(1));
      This.EASY_CELL_TYPE := This.EMPTY_CELL_TYPE;
      
      
      
      
      
      
      
      
      This.FINISH_LINE_ROAD_CELL_TYPE := GeographicMapCellType_Package.NULL_GEOGRAPHIC_MAP_CELL_TYPE;
   end Initialize_Fields;


   function getInstance return RaceTrackGeographicMapCellTypeFactory_Access is
   begin
        return RaceTrackGeographicMapCellTypeFactory_Package.instanceC;
   end getInstance;

   procedure Initialize (This : in out RaceTrackGeographicMapCellTypeFactory'Class) is
      raceTrackGeographicMapCellTypes : RaceTrackGeographicMapCellTypes_Access;
   begin
      GeographicMapCellTypeFactory_Package.Initialize (This);
      Initialize_Fields (This);
        raceTrackGeographicMapCellTypes := RaceTrackGeographicMapCellTypes_Package.getInstance;
        This.BOTTOM_LEFT_TURN_ROAD_CELL_TYPE := raceTrackGeographicMapCellTypes.BOTTOM_LEFT_TURN_ROAD_CELL_TYPE;
        This.BOTTOM_RIGHT_TURN_ROAD_CELL_TYPE := raceTrackGeographicMapCellTypes.BOTTOM_RIGHT_TURN_ROAD_CELL_TYPE;
        This.TOP_LEFT_TURN_ROAD_CELL_TYPE := raceTrackGeographicMapCellTypes.TOP_LEFT_TURN_ROAD_CELL_TYPE;
        This.TOP_RIGHT_TURN_ROAD_CELL_TYPE := raceTrackGeographicMapCellTypes.TOP_RIGHT_TURN_ROAD_CELL_TYPE;
        This.HORIZONTAL_STRAIGHT_ROAD_CELL_TYPE := raceTrackGeographicMapCellTypes.HORIZONTAL_STRAIGHT_ROAD_CELL_TYPE;
        This.VERTICAL_STRAIGHT_ROAD_CELL_TYPE := raceTrackGeographicMapCellTypes.VERTICAL_STRAIGHT_ROAD_CELL_TYPE;
        This.START_LINE_ROAD_CELL_TYPE := raceTrackGeographicMapCellTypes.START_LINE_ROAD_CELL_TYPE;
        This.DEFAULT_FINISH_LINE_ROAD_CELL_TYPE := raceTrackGeographicMapCellTypes.DEFAULT_FINISH_LINE_ROAD_CELL_TYPE;
   end Initialize;

   function Create return RaceTrackGeographicMapCellTypeFactory_Access is
      This : constant RaceTrackGeographicMapCellTypeFactory_Access := new RaceTrackGeographicMapCellTypeFactory;
   begin
      RaceTrackGeographicMapCellTypeFactory_Package.Initialize (This.all);
      return This;
   end Create;

   function getStartType (This : in out RaceTrackGeographicMapCellTypeFactory) return Integer is
   begin
        return This.START_LINE_ROAD_CELL_TYPE.getType;
   end getStartType;

   function getEndType (This : in out RaceTrackGeographicMapCellTypeFactory) return Integer is
   begin
        return This.FINISH_LINE_ROAD_CELL_TYPE.getType;
   end getEndType;

   function getEmptyType (This : in out RaceTrackGeographicMapCellTypeFactory) return Integer is
   begin
        return This.EMPTY_CELL_TYPE.getType;
   end getEmptyType;

   function isPath (This : in out RaceTrackGeographicMapCellTypeFactory; cellType_Param : access GeographicMapCellType'Class) return Boolean is
      cellType : GeographicMapCellType_Access := GeographicMapCellType_Access (cellType_Param);
   begin
        if ((cellType) /= (This.EMPTY_CELL_TYPE)) and then ((cellType) /= (This.EASY_CELL_TYPE)) then
            return True;
        end if;
        return False;
   end isPath;

   procedure isPath (This : in out RaceTrackGeographicMapCellTypeFactory; cellType_Param : access GeographicMapCellType'Class) is
      Java_Result : constant Boolean := RaceTrackGeographicMapCellTypeFactory'Class (This).isPath (cellType_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isPath;

begin
   null;
   instanceC := RaceTrackGeographicMapCellTypeFactory_Package.Create;

end org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellTypeFactory_Package;


