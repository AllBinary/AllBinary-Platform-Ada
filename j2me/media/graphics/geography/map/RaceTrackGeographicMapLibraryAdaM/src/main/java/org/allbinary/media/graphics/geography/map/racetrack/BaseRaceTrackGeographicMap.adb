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


   procedure Initialize (This : in out BaseRaceTrackGeographicMap'Class; raceTrackInfo_Param : access RaceTrackInfo'Class; raceTrackData_Param : access RaceTrackData'Class; tiledLayer_Param : access AllBinaryTiledLayer'Class; miniGeographicMap_Param : access BasicGeographicMap'Class; geographicMapCellPositionFactoryInterface_Param : access GeographicMapCellPositionFactoryInterface'Class; geographicMapCellPositionBaseFactory_Param : access GeographicMapCellPositionBaseFactory'Class; geographicMapCellTypeFactory_Param : access GeographicMapCellTypeFactory'Class) is
      raceTrackInfo : RaceTrackInfo_Access := RaceTrackInfo_Access (raceTrackInfo_Param);
      raceTrackData : RaceTrackData_Access := RaceTrackData_Access (raceTrackData_Param);
      tiledLayer : AllBinaryTiledLayer_Access := AllBinaryTiledLayer_Access (tiledLayer_Param);
      miniGeographicMap : BasicGeographicMap_Access := BasicGeographicMap_Access (miniGeographicMap_Param);
      geographicMapCellPositionFactoryInterface : GeographicMapCellPositionFactoryInterface_Access := GeographicMapCellPositionFactoryInterface_Access (geographicMapCellPositionFactoryInterface_Param);
      geographicMapCellPositionBaseFactory : GeographicMapCellPositionBaseFactory_Access := GeographicMapCellPositionBaseFactory_Access (geographicMapCellPositionBaseFactory_Param);
      geographicMapCellTypeFactory : GeographicMapCellTypeFactory_Access := GeographicMapCellTypeFactory_Access (geographicMapCellTypeFactory_Param);
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
            This.logUtil.putF (commonStrings.EXCEPTION_Id, BaseRaceTrackGeographicMap_Access'(This'Unchecked_Access), commonStrings.CONSTRUCTOR);
            Java_Throw (Java_New_Exception ("Exception", error));
        end if;
        if (miniTiledLayer.getRows) /= (This.getGeographicMapCellPositionFactory.getRows) then
            error := To_Unbounded_String ("RaceTrackMap has incorrect Mini Map rows");
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.putF (commonStrings.EXCEPTION_Id, BaseRaceTrackGeographicMap_Access'(This'Unchecked_Access), commonStrings.CONSTRUCTOR);
            Java_Throw (Java_New_Exception ("Exception", error));
        end if;
   end Initialize;

   function Create (raceTrackInfo_Param : access RaceTrackInfo'Class; raceTrackData_Param : access RaceTrackData'Class; tiledLayer_Param : access AllBinaryTiledLayer'Class; miniGeographicMap_Param : access BasicGeographicMap'Class; geographicMapCellPositionFactoryInterface_Param : access GeographicMapCellPositionFactoryInterface'Class; geographicMapCellPositionBaseFactory_Param : access GeographicMapCellPositionBaseFactory'Class; geographicMapCellTypeFactory_Param : access GeographicMapCellTypeFactory'Class) return BaseRaceTrackGeographicMap_Access is
      This : constant BaseRaceTrackGeographicMap_Access := new BaseRaceTrackGeographicMap;
   begin
      BaseRaceTrackGeographicMap_Package.Initialize (This.all, raceTrackInfo_Param, raceTrackData_Param, tiledLayer_Param, miniGeographicMap_Param, geographicMapCellPositionFactoryInterface_Param, geographicMapCellPositionBaseFactory_Param, geographicMapCellTypeFactory_Param);
      return This;
   end Create;

   function getRaceTrackInfo (This : in out BaseRaceTrackGeographicMap) return RaceTrackInfo_Access is
   begin
        return This.raceTrackInfo;
   end getRaceTrackInfo;

   procedure setRaceTrackInfo (This : in out BaseRaceTrackGeographicMap; aRaceTrackInfo_Param : access RaceTrackInfo'Class) is
      aRaceTrackInfo : RaceTrackInfo_Access := RaceTrackInfo_Access (aRaceTrackInfo_Param);
   begin
        This.raceTrackInfo := aRaceTrackInfo;
   end setRaceTrackInfo;

   procedure setMiniBasicGeographicMap (This : in out BaseRaceTrackGeographicMap; miniBasicGeographicMap_Param : access BasicGeographicMap'Class) is
      miniBasicGeographicMap : BasicGeographicMap_Access := BasicGeographicMap_Access (miniBasicGeographicMap_Param);
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

   procedure setRaceTrackData (This : in out BaseRaceTrackGeographicMap; raceTrackData_Param : access RaceTrackData'Class) is
      raceTrackData : RaceTrackData_Access := RaceTrackData_Access (raceTrackData_Param);
   begin
        This.raceTrackData := raceTrackData;
   end setRaceTrackData;

end org.allbinary.media.graphics.geography.map.racetrack.BaseRaceTrackGeographicMap_Package;


