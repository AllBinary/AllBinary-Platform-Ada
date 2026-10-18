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


with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.logic.math.SmallIntegerSingletonFactory_Package; use org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionBaseFactory_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPositionBaseFactory_Package;

package body org.allbinary.media.graphics.geography.map.racetrack.BasicGeographicMapFactory_Package is

   package BasicColorFactory_Package renames Standard.org.allbinary.graphics.color.BasicColorFactory_Package;
   package SmallIntegerSingletonFactory_Package renames Standard.org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
   package GeographicMapCellPositionBaseFactory_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPositionBaseFactory_Package;
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
      BasicGeographicMapFactory_Package.Initialize (This.all);
      return This;
   end Create;


   --  throws Exception
   function getInstance (This : in out BasicGeographicMapFactory; raceTrackInfo_Param : access RaceTrackInfo_Package.RaceTrackInfo'Class; raceTrackData_Param : access RaceTrackData_Package.RaceTrackData'Class; tiledLayerFactoryInterface_Param : access AllBinaryTiledLayerFactoryInterface_Package.AllBinaryTiledLayerFactoryInterface'Class; geographicMapCellPositionFactoryInterface_Param : access GeographicMapCellPositionFactoryInterface_Package.GeographicMapCellPositionFactoryInterface'Class; geographicMapCellTypeFactory_Param : access GeographicMapCellTypeFactory_Package.GeographicMapCellTypeFactory'Class) return BasicGeographicMap_Access is
      raceTrackInfo : constant RaceTrackInfo_Access := RaceTrackInfo_Access (raceTrackInfo_Param);
      raceTrackData : constant RaceTrackData_Access := RaceTrackData_Access (raceTrackData_Param);
      tiledLayerFactoryInterface : constant AllBinaryTiledLayerFactoryInterface_Access := AllBinaryTiledLayerFactoryInterface_Access (tiledLayerFactoryInterface_Param);
      geographicMapCellPositionFactoryInterface : constant GeographicMapCellPositionFactoryInterface_Access := GeographicMapCellPositionFactoryInterface_Access (geographicMapCellPositionFactoryInterface_Param);
      geographicMapCellTypeFactory : constant GeographicMapCellTypeFactory_Access := GeographicMapCellTypeFactory_Access (geographicMapCellTypeFactory_Param);
   begin
        return BasicGeographicMap_Package.Create (SmallIntegerSingletonFactory_Package.getInstance.getAt (((raceTrackInfo.getId.intValue) + (100)) + (1)), raceTrackInfo.getName, raceTrackData.getCellTypeIdToGeographicMapCellTypeArray, tiledLayerFactoryInterface.getMiniInstance (raceTrackData), BasicColorFactory_Package.getInstance.CLEAR_COLOR, BasicColorFactory_Package.getInstance.CLEAR_COLOR, geographicMapCellPositionFactoryInterface, GeographicMapCellPositionBaseFactory_Package.Create, geographicMapCellTypeFactory);
   end getInstance;

   procedure getInstance (This : in out BasicGeographicMapFactory; raceTrackInfo_Param : access RaceTrackInfo_Package.RaceTrackInfo'Class; raceTrackData_Param : access RaceTrackData_Package.RaceTrackData'Class; tiledLayerFactoryInterface_Param : access AllBinaryTiledLayerFactoryInterface_Package.AllBinaryTiledLayerFactoryInterface'Class; geographicMapCellPositionFactoryInterface_Param : access GeographicMapCellPositionFactoryInterface_Package.GeographicMapCellPositionFactoryInterface'Class; geographicMapCellTypeFactory_Param : access GeographicMapCellTypeFactory_Package.GeographicMapCellTypeFactory'Class) is
      Java_Result : constant BasicGeographicMap_Access := BasicGeographicMapFactory'Class (This).getInstance (raceTrackInfo_Param => raceTrackInfo_Param, raceTrackData_Param => raceTrackData_Param, tiledLayerFactoryInterface_Param => tiledLayerFactoryInterface_Param, geographicMapCellPositionFactoryInterface_Param => geographicMapCellPositionFactoryInterface_Param, geographicMapCellTypeFactory_Param => geographicMapCellTypeFactory_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.media.graphics.geography.map.racetrack.BasicGeographicMapFactory_Package;


