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


package body org.allbinary.game.media.graphics.geography.map.racetrack.DynamicRaceTracksPathPrinter_Package is

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
      Initialize (This.all);
      return This;
   end Create;


   procedure printAllPaths (This : in out DynamicRaceTracksPathPrinter; raceTrackGeographicMapInterfaceFactoryInterface : RaceTrackGeographicMapInterfaceFactoryInterface_Access; pathFindingInfo : PathFindingInfo_Access; size : Integer) is
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
                This.printPaths (list);
            end loop;
        exception
            when e : others =>
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.put (commonStrings.EXCEPTION_Id, This'Unchecked_Access, commonStrings.PROCESS, e);
        end;
   end printAllPaths;

end org.allbinary.game.media.graphics.geography.map.racetrack.DynamicRaceTracksPathPrinter_Package;


