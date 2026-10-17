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


package body org.allbinary.media.graphics.geography.map.racetrack.NormalRaceTrackGeographicMapCellTypeFactory_Package is

   procedure Initialize_Fields (This : in out NormalRaceTrackGeographicMapCellTypeFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   function getInstance return NormalRaceTrackGeographicMapCellTypeFactory_Access is
   begin
        return NormalRaceTrackGeographicMapCellTypeFactory_Package.instanceC;
   end getInstance;

   procedure Initialize (This : in out NormalRaceTrackGeographicMapCellTypeFactory'Class) is
   begin
      RaceTrackGeographicMapCellTypeFactory_Package.Initialize (This);
      Initialize_Fields (This);
        This.EMPTY_CELL_TYPE := EmptyRaceRaceTrackGeographicMapCellTypeFactory_Package.getInstance.EMPTY_CELL_TYPE;
        This.EASY_CELL_TYPE := This.EMPTY_CELL_TYPE;
        This.FINISH_LINE_ROAD_CELL_TYPE := This.DEFAULT_FINISH_LINE_ROAD_CELL_TYPE;
   end Initialize;

   function Create return NormalRaceTrackGeographicMapCellTypeFactory_Access is
      This : constant NormalRaceTrackGeographicMapCellTypeFactory_Access := new NormalRaceTrackGeographicMapCellTypeFactory;
   begin
      Initialize (This.all);
      return This;
   end Create;

   procedure getInstance is
      Java_Result : constant NormalRaceTrackGeographicMapCellTypeFactory_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instanceC := NormalRaceTrackGeographicMapCellTypeFactory_Package.Create;

end org.allbinary.media.graphics.geography.map.racetrack.NormalRaceTrackGeographicMapCellTypeFactory_Package;


