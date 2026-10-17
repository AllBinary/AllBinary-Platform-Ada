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


package body org.allbinary.media.graphics.geography.map.racetrack.BaseRaceTrackGeographicMap_Package is

   procedure Initialize_Fields (This : in out BaseRaceTrackGeographicMap'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out BaseRaceTrackGeographicMap'Class; raceTrackInfo : RaceTrackInfo_Access; raceTrackData : RaceTrackData_Access; tiledLayer : AllBinaryTiledLayer_Access; miniGeographicMap : BasicGeographicMap_Access; geographicMapCellPositionFactoryInterface : GeographicMapCellPositionFactoryInterface_Access; geographicMapCellPositionBaseFactory : GeographicMapCellPositionBaseFactory_Access; geographicMapCellTypeFactory : GeographicMapCellTypeFactory_Access) is
      miniTiledLayer : AllBinaryTiledLayer_Access;
      error : Unbounded_String;
      commonStrings : CommonStrings_Access;
   begin
        BasicGeographicMap_Package.Initialize (This, raceTrackInfo.getId, raceTrackInfo.getName, raceTrackData.getCellTypeIdToGeographicMapCellTypeArray, tiledLayer, raceTrackInfo.getForegroundBasicColor, raceTrackInfo.getBackgroundBasicColor, geographicMapCellPositionFactoryInterface, geographicMapCellPositionBaseFactory, geographicMapCellTypeFactory);
        Initialize_Fields (This);
        This.raceTrackInfo := raceTrackInfo;
        This.raceTrackData := raceTrackData;
        This.miniGeographicMap := miniGeographicMap;
        miniTiledLayer := This.miniGeographicMap.getAllBinaryTiledLayer;
        if (miniTiledLayer.getColumns) /= (This.getGeographicMapCellPositionFactory.getColumns) then
            error := StringMaker_Package.Create.append (To_Unbounded_String ("RaceTrackMap has incorrect Mini Map columns: ")).appendint (Integer (miniTiledLayer.getColumns)).append (To_Unbounded_String (" != ")).appendint (Integer (This.getGeographicMapCellPositionFactory.getColumns)).toString;
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.putF (commonStrings.EXCEPTION_Id, This'Unchecked_Access, commonStrings.CONSTRUCTOR);
            Java_Throw (Java_New_Exception ("Exception", error));
        end if;
        if (miniTiledLayer.getRows) /= (This.getGeographicMapCellPositionFactory.getRows) then
            error := To_Unbounded_String ("RaceTrackMap has incorrect Mini Map rows");
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.putF (commonStrings.EXCEPTION_Id, This'Unchecked_Access, commonStrings.CONSTRUCTOR);
            Java_Throw (Java_New_Exception ("Exception", error));
        end if;
   end Initialize;

   function Create (raceTrackInfo : RaceTrackInfo_Access; raceTrackData : RaceTrackData_Access; tiledLayer : AllBinaryTiledLayer_Access; miniGeographicMap : BasicGeographicMap_Access; geographicMapCellPositionFactoryInterface : GeographicMapCellPositionFactoryInterface_Access; geographicMapCellPositionBaseFactory : GeographicMapCellPositionBaseFactory_Access; geographicMapCellTypeFactory : GeographicMapCellTypeFactory_Access) return BaseRaceTrackGeographicMap_Access is
      This : constant BaseRaceTrackGeographicMap_Access := new BaseRaceTrackGeographicMap;
   begin
      BaseRaceTrackGeographicMap_Package.Initialize (This.all, raceTrackInfo, raceTrackData, tiledLayer, miniGeographicMap, geographicMapCellPositionFactoryInterface, geographicMapCellPositionBaseFactory, geographicMapCellTypeFactory);
      return This;
   end Create;

   function getRaceTrackInfo (This : in out BaseRaceTrackGeographicMap) return RaceTrackInfo_Access is
   begin
        return This.raceTrackInfo;
   end getRaceTrackInfo;

   procedure setRaceTrackInfo (This : in out BaseRaceTrackGeographicMap; aRaceTrackInfo : RaceTrackInfo_Access) is
   begin
        This.raceTrackInfo := aRaceTrackInfo;
   end setRaceTrackInfo;

   procedure setMiniBasicGeographicMap (This : in out BaseRaceTrackGeographicMap; miniBasicGeographicMap : BasicGeographicMap_Access) is
   begin
        This.miniGeographicMap := miniBasicGeographicMap;
   end setMiniBasicGeographicMap;

   function getMiniBasicGeographicMap (This : in out BaseRaceTrackGeographicMap) return BasicGeographicMap_Access is
   begin
        return This.miniGeographicMap;
   end getMiniBasicGeographicMap;

   function getRaceTrackData (This : in out BaseRaceTrackGeographicMap) return RaceTrackData_Access is
   begin
        return This.raceTrackData;
   end getRaceTrackData;

   procedure setRaceTrackData (This : in out BaseRaceTrackGeographicMap; raceTrackData : RaceTrackData_Access) is
   begin
        This.raceTrackData := raceTrackData;
   end setRaceTrackData;

end org.allbinary.media.graphics.geography.map.racetrack.BaseRaceTrackGeographicMap_Package;


