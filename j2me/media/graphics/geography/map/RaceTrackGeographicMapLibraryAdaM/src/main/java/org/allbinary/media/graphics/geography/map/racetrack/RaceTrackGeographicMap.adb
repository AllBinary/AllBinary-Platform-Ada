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


with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.media.graphics.geography.map.racetrack.BasicGeographicMapFactory_Package; use org.allbinary.media.graphics.geography.map.racetrack.BasicGeographicMapFactory_Package;

package body org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMap_Package is

   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   procedure Initialize_Fields (This : in out RaceTrackGeographicMap'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out RaceTrackGeographicMap'Class; raceTrackInfo_Param : access RaceTrackInfo_Package.RaceTrackInfo'Class; raceTrackData_Param : access RaceTrackData_Package.RaceTrackData'Class; tiledLayerFactoryInterface_Param : access AllBinaryTiledLayerFactoryInterface_Package.AllBinaryTiledLayerFactoryInterface'Class; geographicMapCellPositionFactoryInterface_Param : access GeographicMapCellPositionFactoryInterface_Package.GeographicMapCellPositionFactoryInterface'Class; geographicMapCellPositionBaseFactory_Param : access GeographicMapCellPositionBaseFactory_Package.GeographicMapCellPositionBaseFactory'Class; geographicMapCellTypeFactory_Param : access GeographicMapCellTypeFactory_Package.GeographicMapCellTypeFactory'Class; customMapGeneratorBaseFactory_Param : access CustomMapGeneratorBaseFactory_Package.CustomMapGeneratorBaseFactory'Class) is
      raceTrackInfo : constant RaceTrackInfo_Access := RaceTrackInfo_Access (raceTrackInfo_Param);
      raceTrackData : constant RaceTrackData_Access := RaceTrackData_Access (raceTrackData_Param);
      tiledLayerFactoryInterface : constant AllBinaryTiledLayerFactoryInterface_Access := AllBinaryTiledLayerFactoryInterface_Access (tiledLayerFactoryInterface_Param);
      geographicMapCellPositionFactoryInterface : constant GeographicMapCellPositionFactoryInterface_Access := GeographicMapCellPositionFactoryInterface_Access (geographicMapCellPositionFactoryInterface_Param);
      geographicMapCellPositionBaseFactory : constant GeographicMapCellPositionBaseFactory_Access := GeographicMapCellPositionBaseFactory_Access (geographicMapCellPositionBaseFactory_Param);
      geographicMapCellTypeFactory : constant GeographicMapCellTypeFactory_Access := GeographicMapCellTypeFactory_Access (geographicMapCellTypeFactory_Param);
      customMapGeneratorBaseFactory : constant CustomMapGeneratorBaseFactory_Access := CustomMapGeneratorBaseFactory_Access (customMapGeneratorBaseFactory_Param);
   begin
        BaseRaceTrackGeographicMap_Package.Initialize (This, raceTrackInfo, raceTrackData, tiledLayerFactoryInterface.getInstance (raceTrackInfo, raceTrackData), BasicGeographicMapFactory_Package.Create.getInstance (raceTrackInfo, raceTrackData, tiledLayerFactoryInterface, geographicMapCellPositionFactoryInterface, geographicMapCellTypeFactory), geographicMapCellPositionFactoryInterface, geographicMapCellPositionBaseFactory, geographicMapCellTypeFactory);
        Initialize_Fields (This);
        This.customMapGenerator := customMapGeneratorBaseFactory.create (RaceTrackGeographicMap_Access'(This'Unchecked_Access));
   end Initialize;

   function Create (raceTrackInfo_Param : access RaceTrackInfo_Package.RaceTrackInfo'Class; raceTrackData_Param : access RaceTrackData_Package.RaceTrackData'Class; tiledLayerFactoryInterface_Param : access AllBinaryTiledLayerFactoryInterface_Package.AllBinaryTiledLayerFactoryInterface'Class; geographicMapCellPositionFactoryInterface_Param : access GeographicMapCellPositionFactoryInterface_Package.GeographicMapCellPositionFactoryInterface'Class; geographicMapCellPositionBaseFactory_Param : access GeographicMapCellPositionBaseFactory_Package.GeographicMapCellPositionBaseFactory'Class; geographicMapCellTypeFactory_Param : access GeographicMapCellTypeFactory_Package.GeographicMapCellTypeFactory'Class; customMapGeneratorBaseFactory_Param : access CustomMapGeneratorBaseFactory_Package.CustomMapGeneratorBaseFactory'Class) return RaceTrackGeographicMap_Access is
      This : constant RaceTrackGeographicMap_Access := new RaceTrackGeographicMap;
   begin
      RaceTrackGeographicMap_Package.Initialize (This.all, raceTrackInfo_Param, raceTrackData_Param, tiledLayerFactoryInterface_Param, geographicMapCellPositionFactoryInterface_Param, geographicMapCellPositionBaseFactory_Param, geographicMapCellTypeFactory_Param, customMapGeneratorBaseFactory_Param);
      return This;
   end Create;

   function getCustomMapGenerator (This : in out RaceTrackGeographicMap) return CustomMapGeneratorBase_Access is
   begin
        return This.customMapGenerator;
   end getCustomMapGenerator;

   --  throws Exception
   function isValid (This : in out RaceTrackGeographicMap; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) return Boolean is
      geographicMapCellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (geographicMapCellPosition_Param);
      customMapArray : Integer_Array_Access_Array_Access;
      stringBuffer : StringMaker_Access;
   begin
        customMapArray := This.customMapGenerator.getCustomMapArray;
        if (geographicMapCellPosition.getColumn) >= (customMapArray (0)'Length) then
            stringBuffer := StringMaker_Package.Create;
            stringBuffer.append (To_Unbounded_String ("Column: "));
            stringBuffer.appendint (Integer (geographicMapCellPosition.getColumn));
            stringBuffer.append (To_Unbounded_String (" not in: "));
            stringBuffer.appendint (customMapArray (0)'Length);
            This.logUtil.putF (stringBuffer.toString, RaceTrackGeographicMap_Access'(This'Unchecked_Access), This.commonStrings.IS_VALID);
            if (geographicMapCellPosition.getColumn) = (customMapArray (0)'Length) then
                return True;
            else
                return False;
            end if;
        elsif (geographicMapCellPosition.getRow) > (customMapArray'Length) then
            stringBuffer := StringMaker_Package.Create;
            stringBuffer.append (To_Unbounded_String ("Row: "));
            stringBuffer.appendint (Integer (geographicMapCellPosition.getRow));
            stringBuffer.append (To_Unbounded_String (" not in: "));
            stringBuffer.appendint (customMapArray'Length);
            This.logUtil.putF (stringBuffer.toString, RaceTrackGeographicMap_Access'(This'Unchecked_Access), This.commonStrings.IS_VALID);
            if (geographicMapCellPosition.getRow) = (customMapArray'Length) then
                return True;
            else
                return False;
            end if;
        end if;
        return True;
   end isValid;

   procedure isValid (This : in out RaceTrackGeographicMap; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) is
      Java_Result : constant Boolean := RaceTrackGeographicMap'Class (This).isValid (geographicMapCellPosition_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isValid;

end org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMap_Package;


