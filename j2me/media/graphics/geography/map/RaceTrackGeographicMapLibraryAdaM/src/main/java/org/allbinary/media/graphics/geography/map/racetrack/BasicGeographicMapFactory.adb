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


package body org.allbinary.media.graphics.geography.map.racetrack.BasicGeographicMapFactory_Package is

   procedure Initialize_Fields (This : in out BasicGeographicMapFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out BasicGeographicMapFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return BasicGeographicMapFactory_Access is
      This : constant BasicGeographicMapFactory_Access := new BasicGeographicMapFactory;
   begin
      Initialize (This.all);
      return This;
   end Create;


   --  throws Exception
   function getInstance (This : in out BasicGeographicMapFactory; raceTrackInfo : RaceTrackInfo_Access; raceTrackData : RaceTrackData_Access; tiledLayerFactoryInterface : AllBinaryTiledLayerFactoryInterface_Access; geographicMapCellPositionFactoryInterface : GeographicMapCellPositionFactoryInterface_Access; geographicMapCellTypeFactory : GeographicMapCellTypeFactory_Access) return BasicGeographicMap_Access is
   begin
        return BasicGeographicMap_Package.Create (SmallIntegerSingletonFactory_Package.getInstance.getAt (((raceTrackInfo.getId.intValue) + (100)) + (1)), raceTrackInfo.getName, raceTrackData.getCellTypeIdToGeographicMapCellTypeArray, tiledLayerFactoryInterface.getMiniInstance (raceTrackData), BasicColorFactory_Package.getInstance.CLEAR_COLOR, BasicColorFactory_Package.getInstance.CLEAR_COLOR, geographicMapCellPositionFactoryInterface, GeographicMapCellPositionBaseFactory_Package.Create, geographicMapCellTypeFactory);
   end getInstance;

   procedure getInstance (This : in out BasicGeographicMapFactory; raceTrackInfo : RaceTrackInfo_Access; raceTrackData : RaceTrackData_Access; tiledLayerFactoryInterface : AllBinaryTiledLayerFactoryInterface_Access; geographicMapCellPositionFactoryInterface : GeographicMapCellPositionFactoryInterface_Access; geographicMapCellTypeFactory : GeographicMapCellTypeFactory_Access) is
      Java_Result : constant BasicGeographicMap_Access := BasicGeographicMapFactory'Class (This).getInstance (raceTrackInfo, raceTrackData, tiledLayerFactoryInterface, geographicMapCellPositionFactoryInterface, geographicMapCellTypeFactory);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.media.graphics.geography.map.racetrack.BasicGeographicMapFactory_Package;


