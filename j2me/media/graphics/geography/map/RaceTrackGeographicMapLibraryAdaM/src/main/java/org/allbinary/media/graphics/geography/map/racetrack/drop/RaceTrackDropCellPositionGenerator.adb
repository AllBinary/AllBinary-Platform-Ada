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


package body org.allbinary.media.graphics.geography.map.racetrack.drop.RaceTrackDropCellPositionGenerator_Package is

   procedure Initialize_Fields (This : in out RaceTrackDropCellPositionGenerator'Class) is
   begin
      null;
      This.list := BasicArrayListD_Package.Create;
      
      This.STRAIGHTAWAY := 4;
      This.raceTrackGeographicMap := NullRaceTrackGeographicMap_Package.NULL_RACE_TRACK_GEOGRAPHIC_MAP;
      This.raceTrackGeographicMapCellTypeFactory := GeographicMapCellTypeFactory_Package.getInstance;
      This.basicArrayListUtil := BasicArrayListUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out RaceTrackDropCellPositionGenerator'Class) is
   begin
      BaseDropCellPositionGenerator_Package.Initialize (This);
      Initialize_Fields (This);
        This.timeDelayHelper := TimeDelayHelper_Package.Create (10000);
   end Initialize;

   function Create return RaceTrackDropCellPositionGenerator_Access is
      This : constant RaceTrackDropCellPositionGenerator_Access := new RaceTrackDropCellPositionGenerator;
   begin
      RaceTrackDropCellPositionGenerator_Package.Initialize (This.all);
      return This;
   end Create;

   procedure init (This : in out RaceTrackDropCellPositionGenerator) is
   begin
        This.list.clear;
   end init;

   --  throws Exception
   function isDropAllowedAt (This : in out RaceTrackDropCellPositionGenerator; geographicMapCellPosition_Param : access GeographicMapCellPosition'Class) return Boolean is
      geographicMapCellPosition : GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (geographicMapCellPosition_Param);
      raceTrackGeographicMapCellType : RaceTrackGeographicMapCellType_Access;
      raceTrackGeographicMapCellTypeFactory : RaceTrackGeographicMapCellTypeFactory_Access;
   begin
        raceTrackGeographicMapCellType := RaceTrackGeographicMapCellType_Access (This.raceTrackGeographicMap.getCellTypeAt (geographicMapCellPosition));
        raceTrackGeographicMapCellTypeFactory := RaceTrackGeographicMapCellTypeFactory_Access (This.raceTrackGeographicMapCellTypeFactory);
        if ((raceTrackGeographicMapCellType) = (raceTrackGeographicMapCellTypeFactory.HORIZONTAL_STRAIGHT_ROAD_CELL_TYPE)) or else ((raceTrackGeographicMapCellType) = (raceTrackGeographicMapCellTypeFactory.VERTICAL_STRAIGHT_ROAD_CELL_TYPE)) then
            return True;
        end if;
        return False;
   end isDropAllowedAt;

   --  throws Exception
   procedure update (This : in out RaceTrackDropCellPositionGenerator; allBinaryGameLayerManager_Param : access AllBinaryGameLayerManager'Class; geographicMapInterface_Param : access BasicGeographicMap'Class) is
      allBinaryGameLayerManager : AllBinaryGameLayerManager_Access := AllBinaryGameLayerManager_Access (allBinaryGameLayerManager_Param);
      geographicMapInterface : BasicGeographicMap_Access := BasicGeographicMap_Access (geographicMapInterface_Param);
      baseRaceTrackGeographicMap : BaseRaceTrackGeographicMap_Access;
      roadGeographicMapCellHistory : GeographicMapCellHistory_Access;
      trackedList : BasicArrayList_Access;
      geographicMapCellPosition : GeographicMapCellPosition_Access;
      lastIndex : Integer;
      total : Integer;
      ahead : Integer;
      index : Integer;
      size : Integer;
   begin
        This.init;
        baseRaceTrackGeographicMap := BaseRaceTrackGeographicMap_Access (geographicMapInterface);
        This.raceTrackGeographicMap := baseRaceTrackGeographicMap;
        This.raceTrackGeographicMapCellTypeFactory := RaceTrackGeographicMapCellTypeFactory_Access (baseRaceTrackGeographicMap.getGeographicMapCellTypeFactory);
        roadGeographicMapCellHistory := RaceTrackRoadsGeographicMapCellHistoryFactory_Package.getInstance;
        trackedList := roadGeographicMapCellHistory.getTracked;
        geographicMapCellPosition := null;
        lastIndex := (trackedList.size) - (1);
        total := 0;
        ahead := 0;
        for index in reverse (0) + 1 .. lastIndex loop
            geographicMapCellPosition := GeographicMapCellPosition_Access (trackedList.get (index));
            total := 0;
            ahead := index;
            while This.isDropAllowedAt (GeographicMapCellPosition_Access (trackedList.get (ahead))) loop
                total := total + 1;
                if (total) > (This.STRAIGHTAWAY) then
                    This.list.add (geographicMapCellPosition);
                    exit;
                end if;
                ahead := ahead + 1;
                if (ahead) > (lastIndex) then
                    exit;
                end if;
            end loop;
        end loop;
        size := This.list.size;
        for index in reverse 0 .. (size) - (1) loop
            This.drop (allBinaryGameLayerManager, index);
        end loop;
   end update;

   --  throws Exception
   procedure processTick (This : in out RaceTrackDropCellPositionGenerator; allBinaryLayerManager_Param : access AllBinaryLayerManager'Class) is
      allBinaryLayerManager : AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (allBinaryLayerManager_Param);
      index : Integer;
   begin
        if This.timeDelayHelper.isTime (GameTickTimeDelayHelperFactory_Package.getInstance.startTime) then
            index := This.basicArrayListUtil.getRandomIndex (This.list);
            This.drop (allBinaryLayerManager, index);
        end if;
   end processTick;

   --  throws Exception
   procedure drop (This : in out RaceTrackDropCellPositionGenerator; allBinaryLayerManager_Param : access AllBinaryLayerManager'Class; index : Integer) is
      allBinaryLayerManager : AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (allBinaryLayerManager_Param);
   begin
        Java_Throw (Java_New_Exception ("Exception", CommonStrings_Package.getInstance.NOT_IMPLEMENTED));
   end drop;

   procedure isDropAllowedAt (This : in out RaceTrackDropCellPositionGenerator; geographicMapCellPosition_Param : access GeographicMapCellPosition'Class) is
      Java_Result : constant Boolean := RaceTrackDropCellPositionGenerator'Class (This).isDropAllowedAt (geographicMapCellPosition_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isDropAllowedAt;

end org.allbinary.media.graphics.geography.map.racetrack.drop.RaceTrackDropCellPositionGenerator_Package;


