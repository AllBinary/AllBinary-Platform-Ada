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
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.game.layer.AllBinaryTiledLayer_Package; use org.allbinary.game.layer.AllBinaryTiledLayer_Package;
with org.allbinary.game.layer.AllBinaryTiledLayer_Package_References;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package; use org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionBaseFactory_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPositionBaseFactory_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionBaseFactory_Package_References;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package_References;
with org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package_References;
with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackInfo_Package; use org.allbinary.media.graphics.geography.map.racetrack.RaceTrackInfo_Package;
with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackInfo_Package_References;
with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackData_Package; use org.allbinary.media.graphics.geography.map.racetrack.RaceTrackData_Package;
with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackData_Package_References;
with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackData_Package;
with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackFrictionProperties_Package;
with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackInfo_Package;

package body org.allbinary.media.graphics.geography.map.racetrack.BaseRaceTrackGeographicMap_Package is

   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   function "=" (Left, Right : LogUtil_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype AllBinaryTiledLayer_Access is org.allbinary.game.layer.AllBinaryTiledLayer_Package_References.AllBinaryTiledLayer_Access;
   function "=" (Left, Right : AllBinaryTiledLayer_Access) return Boolean renames org.allbinary.game.layer.AllBinaryTiledLayer_Package_References."=";
   subtype AllBinaryTiledLayer_Access_Array is org.allbinary.game.layer.AllBinaryTiledLayer_Package_References.AllBinaryTiledLayer_Access_Array;
   function "=" (Left, Right : AllBinaryTiledLayer_Access_Array) return Boolean renames org.allbinary.game.layer.AllBinaryTiledLayer_Package_References."=";
   subtype AllBinaryTiledLayer_Access_Array_Access is org.allbinary.game.layer.AllBinaryTiledLayer_Package_References.AllBinaryTiledLayer_Access_Array_Access;
   function "=" (Left, Right : AllBinaryTiledLayer_Access_Array_Access) return Boolean renames org.allbinary.game.layer.AllBinaryTiledLayer_Package_References."=";
   subtype AllBinaryTiledLayer_Access_Array_Access_Array is org.allbinary.game.layer.AllBinaryTiledLayer_Package_References.AllBinaryTiledLayer_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryTiledLayer_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.AllBinaryTiledLayer_Package_References."=";
   subtype AllBinaryTiledLayer_Access_Array_Access_Array_Access is org.allbinary.game.layer.AllBinaryTiledLayer_Package_References.AllBinaryTiledLayer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryTiledLayer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.AllBinaryTiledLayer_Package_References."=";
   subtype GeographicMapCellPositionBaseFactory_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionBaseFactory_Package_References.GeographicMapCellPositionBaseFactory_Access;
   function "=" (Left, Right : GeographicMapCellPositionBaseFactory_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPositionBaseFactory_Package_References."=";
   subtype GeographicMapCellPositionBaseFactory_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionBaseFactory_Package_References.GeographicMapCellPositionBaseFactory_Access_Array;
   function "=" (Left, Right : GeographicMapCellPositionBaseFactory_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPositionBaseFactory_Package_References."=";
   subtype GeographicMapCellPositionBaseFactory_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionBaseFactory_Package_References.GeographicMapCellPositionBaseFactory_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellPositionBaseFactory_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPositionBaseFactory_Package_References."=";
   subtype GeographicMapCellPositionBaseFactory_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionBaseFactory_Package_References.GeographicMapCellPositionBaseFactory_Access_Array_Access_Array;
   function "=" (Left, Right : GeographicMapCellPositionBaseFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPositionBaseFactory_Package_References."=";
   subtype GeographicMapCellPositionBaseFactory_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionBaseFactory_Package_References.GeographicMapCellPositionBaseFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellPositionBaseFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPositionBaseFactory_Package_References."=";
   subtype GeographicMapCellPositionFactoryInterface_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package_References.GeographicMapCellPositionFactoryInterface_Access;
   function "=" (Left, Right : GeographicMapCellPositionFactoryInterface_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package_References."=";
   subtype GeographicMapCellPositionFactoryInterface_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package_References.GeographicMapCellPositionFactoryInterface_Access_Array;
   function "=" (Left, Right : GeographicMapCellPositionFactoryInterface_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package_References."=";
   subtype GeographicMapCellPositionFactoryInterface_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package_References.GeographicMapCellPositionFactoryInterface_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellPositionFactoryInterface_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package_References."=";
   subtype GeographicMapCellPositionFactoryInterface_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package_References.GeographicMapCellPositionFactoryInterface_Access_Array_Access_Array;
   function "=" (Left, Right : GeographicMapCellPositionFactoryInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package_References."=";
   subtype GeographicMapCellPositionFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package_References.GeographicMapCellPositionFactoryInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellPositionFactoryInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package_References."=";
   subtype GeographicMapCellTypeFactory_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package_References.GeographicMapCellTypeFactory_Access;
   function "=" (Left, Right : GeographicMapCellTypeFactory_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package_References."=";
   subtype GeographicMapCellTypeFactory_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package_References.GeographicMapCellTypeFactory_Access_Array;
   function "=" (Left, Right : GeographicMapCellTypeFactory_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package_References."=";
   subtype GeographicMapCellTypeFactory_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package_References.GeographicMapCellTypeFactory_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellTypeFactory_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package_References."=";
   subtype GeographicMapCellTypeFactory_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package_References.GeographicMapCellTypeFactory_Access_Array_Access_Array;
   function "=" (Left, Right : GeographicMapCellTypeFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package_References."=";
   subtype GeographicMapCellTypeFactory_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package_References.GeographicMapCellTypeFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellTypeFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package_References."=";
   subtype RaceTrackInfo_Access is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackInfo_Package_References.RaceTrackInfo_Access;
   function "=" (Left, Right : RaceTrackInfo_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackInfo_Package_References."=";
   subtype RaceTrackInfo_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackInfo_Package_References.RaceTrackInfo_Access_Array;
   function "=" (Left, Right : RaceTrackInfo_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackInfo_Package_References."=";
   subtype RaceTrackInfo_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackInfo_Package_References.RaceTrackInfo_Access_Array_Access;
   function "=" (Left, Right : RaceTrackInfo_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackInfo_Package_References."=";
   subtype RaceTrackInfo_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackInfo_Package_References.RaceTrackInfo_Access_Array_Access_Array;
   function "=" (Left, Right : RaceTrackInfo_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackInfo_Package_References."=";
   subtype RaceTrackInfo_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackInfo_Package_References.RaceTrackInfo_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RaceTrackInfo_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackInfo_Package_References."=";
   subtype RaceTrackData_Access is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackData_Package_References.RaceTrackData_Access;
   function "=" (Left, Right : RaceTrackData_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackData_Package_References."=";
   subtype RaceTrackData_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackData_Package_References.RaceTrackData_Access_Array;
   function "=" (Left, Right : RaceTrackData_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackData_Package_References."=";
   subtype RaceTrackData_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackData_Package_References.RaceTrackData_Access_Array_Access;
   function "=" (Left, Right : RaceTrackData_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackData_Package_References."=";
   subtype RaceTrackData_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackData_Package_References.RaceTrackData_Access_Array_Access_Array;
   function "=" (Left, Right : RaceTrackData_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackData_Package_References."=";
   subtype RaceTrackData_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackData_Package_References.RaceTrackData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RaceTrackData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackData_Package_References."=";
   procedure Initialize_Fields (This : in out BaseRaceTrackGeographicMap'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out BaseRaceTrackGeographicMap'Class; raceTrackInfo_Param : access RaceTrackInfo_Package.RaceTrackInfo'Class; raceTrackData_Param : access RaceTrackData_Package.RaceTrackData'Class; tiledLayer_Param : access AllBinaryTiledLayer_Package.AllBinaryTiledLayer'Class; miniGeographicMap_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; geographicMapCellPositionFactoryInterface_Param : access GeographicMapCellPositionFactoryInterface_Package.GeographicMapCellPositionFactoryInterface'Class; geographicMapCellPositionBaseFactory_Param : access GeographicMapCellPositionBaseFactory_Package.GeographicMapCellPositionBaseFactory'Class; geographicMapCellTypeFactory_Param : access GeographicMapCellTypeFactory_Package.GeographicMapCellTypeFactory'Class) is
      raceTrackInfo : constant RaceTrackInfo_Access := RaceTrackInfo_Access (raceTrackInfo_Param);
      raceTrackData : constant RaceTrackData_Access := RaceTrackData_Access (raceTrackData_Param);
      tiledLayer : constant AllBinaryTiledLayer_Access := AllBinaryTiledLayer_Access (tiledLayer_Param);
      miniGeographicMap : constant BasicGeographicMap_Access := BasicGeographicMap_Access (miniGeographicMap_Param);
      geographicMapCellPositionFactoryInterface : constant GeographicMapCellPositionFactoryInterface_Access := GeographicMapCellPositionFactoryInterface_Access (geographicMapCellPositionFactoryInterface_Param);
      geographicMapCellPositionBaseFactory : constant GeographicMapCellPositionBaseFactory_Access := GeographicMapCellPositionBaseFactory_Access (geographicMapCellPositionBaseFactory_Param);
      geographicMapCellTypeFactory : constant GeographicMapCellTypeFactory_Access := GeographicMapCellTypeFactory_Access (geographicMapCellTypeFactory_Param);
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
        if (miniTiledLayer.getColumns) /= (BaseRaceTrackGeographicMap'Class (This).getGeographicMapCellPositionFactory.getColumns) then
            error := StringMaker_Package.Create.append (To_Unbounded_String ("RaceTrackMap has incorrect Mini Map columns: ")).appendint (Integer (miniTiledLayer.getColumns)).append (To_Unbounded_String (" != ")).appendint (Integer (BaseRaceTrackGeographicMap'Class (This).getGeographicMapCellPositionFactory.getColumns)).toString;
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.putF (commonStrings.EXCEPTION_Id, BaseRaceTrackGeographicMap_Access'(This'Unchecked_Access), commonStrings.CONSTRUCTOR);
            Java_Throw (Java_New_Exception ("Exception", error));
        end if;
        if (miniTiledLayer.getRows) /= (BaseRaceTrackGeographicMap'Class (This).getGeographicMapCellPositionFactory.getRows) then
            error := To_Unbounded_String ("RaceTrackMap has incorrect Mini Map rows");
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.putF (commonStrings.EXCEPTION_Id, BaseRaceTrackGeographicMap_Access'(This'Unchecked_Access), commonStrings.CONSTRUCTOR);
            Java_Throw (Java_New_Exception ("Exception", error));
        end if;
   end Initialize;

   function Create (raceTrackInfo_Param : access RaceTrackInfo_Package.RaceTrackInfo'Class; raceTrackData_Param : access RaceTrackData_Package.RaceTrackData'Class; tiledLayer_Param : access AllBinaryTiledLayer_Package.AllBinaryTiledLayer'Class; miniGeographicMap_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; geographicMapCellPositionFactoryInterface_Param : access GeographicMapCellPositionFactoryInterface_Package.GeographicMapCellPositionFactoryInterface'Class; geographicMapCellPositionBaseFactory_Param : access GeographicMapCellPositionBaseFactory_Package.GeographicMapCellPositionBaseFactory'Class; geographicMapCellTypeFactory_Param : access GeographicMapCellTypeFactory_Package.GeographicMapCellTypeFactory'Class) return BaseRaceTrackGeographicMap_Access is
      This : constant BaseRaceTrackGeographicMap_Access := new BaseRaceTrackGeographicMap;
   begin
      BaseRaceTrackGeographicMap_Package.Initialize (This.all, raceTrackInfo_Param, raceTrackData_Param, tiledLayer_Param, miniGeographicMap_Param, geographicMapCellPositionFactoryInterface_Param, geographicMapCellPositionBaseFactory_Param, geographicMapCellTypeFactory_Param);
      return This;
   end Create;

   function getRaceTrackInfo (This : in out BaseRaceTrackGeographicMap) return RaceTrackInfo_Access is
   begin
        return This.raceTrackInfo;
   end getRaceTrackInfo;

   procedure setRaceTrackInfo (This : in out BaseRaceTrackGeographicMap; aRaceTrackInfo_Param : access RaceTrackInfo_Package.RaceTrackInfo'Class) is
      aRaceTrackInfo : constant RaceTrackInfo_Access := RaceTrackInfo_Access (aRaceTrackInfo_Param);
   begin
        This.raceTrackInfo := aRaceTrackInfo;
   end setRaceTrackInfo;

   procedure setMiniBasicGeographicMap (This : in out BaseRaceTrackGeographicMap; miniBasicGeographicMap_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class) is
      miniBasicGeographicMap : constant BasicGeographicMap_Access := BasicGeographicMap_Access (miniBasicGeographicMap_Param);
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

   procedure setRaceTrackData (This : in out BaseRaceTrackGeographicMap; raceTrackData_Param : access RaceTrackData_Package.RaceTrackData'Class) is
      raceTrackData : constant RaceTrackData_Access := RaceTrackData_Access (raceTrackData_Param);
   begin
        This.raceTrackData := raceTrackData;
   end setRaceTrackData;

end org.allbinary.media.graphics.geography.map.racetrack.BaseRaceTrackGeographicMap_Package;


