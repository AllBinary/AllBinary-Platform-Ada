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


with org.allbinary.media.graphics.geography.map.racetrack.EmptyRaceRaceTrackGeographicMapCellTypeFactory_Package; use org.allbinary.media.graphics.geography.map.racetrack.EmptyRaceRaceTrackGeographicMapCellTypeFactory_Package;

package body org.allbinary.media.graphics.geography.map.racetrack.CloseLoopRaceTrackGeographicMapCellTypeFactory_Package is

   procedure Initialize_Fields (This : in out CloseLoopRaceTrackGeographicMapCellTypeFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   function getInstance return CloseLoopRaceTrackGeographicMapCellTypeFactory_Access is
   begin
        return CloseLoopRaceTrackGeographicMapCellTypeFactory_Package.instanceC;
   end getInstance;

   procedure Initialize (This : in out CloseLoopRaceTrackGeographicMapCellTypeFactory'Class) is
   begin
      RaceTrackGeographicMapCellTypeFactory_Package.Initialize (This);
      Initialize_Fields (This);
        This.EMPTY_CELL_TYPE := EmptyRaceRaceTrackGeographicMapCellTypeFactory_Package.getInstance.EMPTY_CELL_TYPE;
        This.EASY_CELL_TYPE := This.EMPTY_CELL_TYPE;
        This.FINISH_LINE_ROAD_CELL_TYPE := This.START_LINE_ROAD_CELL_TYPE;
   end Initialize;

   function Create return CloseLoopRaceTrackGeographicMapCellTypeFactory_Access is
      This : constant CloseLoopRaceTrackGeographicMapCellTypeFactory_Access := new CloseLoopRaceTrackGeographicMapCellTypeFactory;
   begin
      CloseLoopRaceTrackGeographicMapCellTypeFactory_Package.Initialize (This.all);
      return This;
   end Create;

begin
   null;
   instanceC := CloseLoopRaceTrackGeographicMapCellTypeFactory_Package.Create;

end org.allbinary.media.graphics.geography.map.racetrack.CloseLoopRaceTrackGeographicMapCellTypeFactory_Package;


