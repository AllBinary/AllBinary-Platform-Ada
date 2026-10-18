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
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.math.SmallIntegerSingletonFactory_Package; use org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package; use org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackRoadsGeographicMapCellHistoryFactory_Package; use org.allbinary.media.graphics.geography.map.racetrack.RaceTrackRoadsGeographicMapCellHistoryFactory_Package;
with org.allbinary.media.graphics.geography.pathfinding.PathGenerator_Package; use org.allbinary.media.graphics.geography.pathfinding.PathGenerator_Package;

package body org.allbinary.game.media.graphics.geography.map.racetrack.DynamicRaceTracksPathPrinter_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package SmallIntegerSingletonFactory_Package renames Standard.org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
   package BasicGeographicMap_Package renames Standard.org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
   package RaceTrackRoadsGeographicMapCellHistoryFactory_Package renames Standard.org.allbinary.media.graphics.geography.map.racetrack.RaceTrackRoadsGeographicMapCellHistoryFactory_Package;
   package PathGenerator_Package renames Standard.org.allbinary.media.graphics.geography.pathfinding.PathGenerator_Package;
   procedure Initialize_Fields (This : in out DynamicRaceTracksPathPrinter'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out DynamicRaceTracksPathPrinter'Class) is
   begin
      RaceTracksPathPrinter_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return DynamicRaceTracksPathPrinter_Access is
      This : constant DynamicRaceTracksPathPrinter_Access := new DynamicRaceTracksPathPrinter;
   begin
      DynamicRaceTracksPathPrinter_Package.Initialize (This.all);
      return This;
   end Create;


   procedure printAllPaths (This : in out DynamicRaceTracksPathPrinter; raceTrackGeographicMapInterfaceFactoryInterface_Param : access RaceTrackGeographicMapInterfaceFactoryInterface_Package.RaceTrackGeographicMapInterfaceFactoryInterface'Class; pathFindingInfo_Param : access PathFindingInfo_Package.PathFindingInfo'Class; size : Integer) is
      raceTrackGeographicMapInterfaceFactoryInterface : constant RaceTrackGeographicMapInterfaceFactoryInterface_Access := RaceTrackGeographicMapInterfaceFactoryInterface_Access (raceTrackGeographicMapInterfaceFactoryInterface_Param);
      pathFindingInfo : constant PathFindingInfo_Access := PathFindingInfo_Access (pathFindingInfo_Param);
      geographicMapInterface : BasicGeographicMap_Access;
      list : BasicArrayList_Access;
      index : Integer;
      commonStrings : CommonStrings_Access;
   begin
        begin
            for index in 0 .. (size) - 1 loop
                geographicMapInterface := raceTrackGeographicMapInterfaceFactoryInterface.getTrackInstance (SmallIntegerSingletonFactory_Package.getInstance.getAt (index));
                list := PathGenerator_Package.getInstance.createList (geographicMapInterface, RaceTrackRoadsGeographicMapCellHistoryFactory_Package.getInstance, pathFindingInfo, 10);
                Ada.Text_IO.Put_Line (Java_Image (To_Unbounded_String ("Track ") & Java_Image (index)));
                DynamicRaceTracksPathPrinter'Class (This).printPaths (list);
            end loop;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.put (commonStrings.EXCEPTION_Id, DynamicRaceTracksPathPrinter_Access'(This'Unchecked_Access), commonStrings.PROCESS, e);
                end;
        end;
   end printAllPaths;

end org.allbinary.game.media.graphics.geography.map.racetrack.DynamicRaceTracksPathPrinter_Package;


