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


package body org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMap_Package is

   procedure Initialize_Fields (This : in out RaceTrackGeographicMap'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out RaceTrackGeographicMap'Class; raceTrackInfo : RaceTrackInfo_Access; raceTrackData : RaceTrackData_Access; tiledLayerFactoryInterface : AllBinaryTiledLayerFactoryInterface_Access; geographicMapCellPositionFactoryInterface : GeographicMapCellPositionFactoryInterface_Access; geographicMapCellPositionBaseFactory : GeographicMapCellPositionBaseFactory_Access; geographicMapCellTypeFactory : GeographicMapCellTypeFactory_Access; customMapGeneratorBaseFactory : CustomMapGeneratorBaseFactory_Access) is
   begin
        BaseRaceTrackGeographicMap_Package.Initialize (This, raceTrackInfo, raceTrackData, tiledLayerFactoryInterface.getInstance (raceTrackInfo, raceTrackData), BasicGeographicMapFactory_Package.Create.getInstance (raceTrackInfo, raceTrackData, tiledLayerFactoryInterface, geographicMapCellPositionFactoryInterface, geographicMapCellTypeFactory), geographicMapCellPositionFactoryInterface, geographicMapCellPositionBaseFactory, geographicMapCellTypeFactory);
        Initialize_Fields (This);
        This.customMapGenerator := customMapGeneratorBaseFactory.create (This'Unchecked_Access);
   end Initialize;

   function Create (raceTrackInfo : RaceTrackInfo_Access; raceTrackData : RaceTrackData_Access; tiledLayerFactoryInterface : AllBinaryTiledLayerFactoryInterface_Access; geographicMapCellPositionFactoryInterface : GeographicMapCellPositionFactoryInterface_Access; geographicMapCellPositionBaseFactory : GeographicMapCellPositionBaseFactory_Access; geographicMapCellTypeFactory : GeographicMapCellTypeFactory_Access; customMapGeneratorBaseFactory : CustomMapGeneratorBaseFactory_Access) return RaceTrackGeographicMap_Access is
      This : constant RaceTrackGeographicMap_Access := new RaceTrackGeographicMap;
   begin
      Initialize (This.all, raceTrackInfo, raceTrackData, tiledLayerFactoryInterface, geographicMapCellPositionFactoryInterface, geographicMapCellPositionBaseFactory, geographicMapCellTypeFactory, customMapGeneratorBaseFactory);
      return This;
   end Create;

   function getCustomMapGenerator (This : in out RaceTrackGeographicMap) return CustomMapGeneratorBase_Access is
   begin
        return This.customMapGenerator;
   end getCustomMapGenerator;

   --  throws Exception
   function isValid (This : in out RaceTrackGeographicMap; geographicMapCellPosition : GeographicMapCellPosition_Access) return Boolean is
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
            This.logUtil.putF (stringBuffer.toString, This'Unchecked_Access, This.commonStrings.IS_VALID);
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
            This.logUtil.putF (stringBuffer.toString, This'Unchecked_Access, This.commonStrings.IS_VALID);
            if (geographicMapCellPosition.getRow) = (customMapArray'Length) then
                return True;
            else
                return False;
            end if;
        end if;
        return True;
   end isValid;

   procedure getCustomMapGenerator (This : in out RaceTrackGeographicMap) is
      Java_Result : constant CustomMapGeneratorBase_Access := RaceTrackGeographicMap'Class (This).getCustomMapGenerator;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCustomMapGenerator;

   procedure isValid (This : in out RaceTrackGeographicMap; geographicMapCellPosition : GeographicMapCellPosition_Access) is
      Java_Result : constant Boolean := RaceTrackGeographicMap'Class (This).isValid (geographicMapCellPosition);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isValid;

end org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMap_Package;


