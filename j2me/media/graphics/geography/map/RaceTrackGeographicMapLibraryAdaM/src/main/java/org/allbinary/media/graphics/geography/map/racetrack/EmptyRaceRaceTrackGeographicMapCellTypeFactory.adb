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


with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoData_Package; use org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoData_Package;
with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellType_Package; use org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellType_Package;

package body org.allbinary.media.graphics.geography.map.racetrack.EmptyRaceRaceTrackGeographicMapCellTypeFactory_Package is

   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package PathFindingNodeCostInfoData_Package renames Standard.org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoData_Package;
   procedure Initialize_Fields (This : in out EmptyRaceRaceTrackGeographicMapCellTypeFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   function getInstance return EmptyRaceRaceTrackGeographicMapCellTypeFactory_Access is
   begin
        return EmptyRaceRaceTrackGeographicMapCellTypeFactory_Package.instanceC;
   end getInstance;

   procedure Initialize (This : in out EmptyRaceRaceTrackGeographicMapCellTypeFactory'Class) is
      commonStrings : CommonStrings_Access;
   begin
      RaceTrackGeographicMapCellTypeFactory_Package.Initialize (This);
      Initialize_Fields (This);
        commonStrings := CommonStrings_Package.getInstance;
        This.EMPTY_CELL_TYPE := RaceTrackGeographicMapCellType_Package.Create (commonStrings.EMPTY, 0, PathFindingNodeCostInfoData_Package.getInstance.MAX_NODE_COST, 1);
        This.EASY_CELL_TYPE := RaceTrackGeographicMapCellType_Package.Create (To_Unbounded_String ("Easy"), 19, 1, 0);
        This.FINISH_LINE_ROAD_CELL_TYPE := This.DEFAULT_FINISH_LINE_ROAD_CELL_TYPE;
   end Initialize;

   function Create return EmptyRaceRaceTrackGeographicMapCellTypeFactory_Access is
      This : constant EmptyRaceRaceTrackGeographicMapCellTypeFactory_Access := new EmptyRaceRaceTrackGeographicMapCellTypeFactory;
   begin
      EmptyRaceRaceTrackGeographicMapCellTypeFactory_Package.Initialize (This.all);
      return This;
   end Create;

begin
   null;
   instanceC := EmptyRaceRaceTrackGeographicMapCellTypeFactory_Package.Create;

end org.allbinary.media.graphics.geography.map.racetrack.EmptyRaceRaceTrackGeographicMapCellTypeFactory_Package;


