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


with org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory_Package; use org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface_Package;

package body org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking_Package is

   procedure Initialize_Fields (This : in out GeographicMapCellPositionTracking'Class) is
   begin
      null;
      This.currentGeographicMapCellPosition := SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION;
      This.previousGeographicMapCellPosition := SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION;
      This.newGeographicMapCellPosition := SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION;
      This.currentCellType := GeographicMapCellType_Package.NULL_GEOGRAPHIC_MAP_CELL_TYPE;
   end Initialize_Fields;


   procedure Initialize (This : in out GeographicMapCellPositionTracking'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return GeographicMapCellPositionTracking_Access is
      This : constant GeographicMapCellPositionTracking_Access := new GeographicMapCellPositionTracking;
   begin
      GeographicMapCellPositionTracking_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function getCurrentOverCellType (This : in out GeographicMapCellPositionTracking; geographicMap_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class) return GeographicMapCellType_Access is
      geographicMap : constant BasicGeographicMap_Access := BasicGeographicMap_Access (geographicMap_Param);
      geographicMapCellPosition : GeographicMapCellPosition_Access;
   begin
        geographicMapCellPosition := This.currentGeographicMapCellPosition;
        if (geographicMapCellPosition) /= (This.previousGeographicMapCellPosition) then
            This.currentCellType := geographicMap.getCellTypeAt (geographicMapCellPosition);
        end if;
        return This.currentCellType;
   end getCurrentOverCellType;

   --  throws Exception
   function updateStart (This : in out GeographicMapCellPositionTracking; gameCanvasInterface_Param : access AllBinaryGameCanvasInterface_Package.AllBinaryGameCanvasInterface'Class; layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) return Boolean is
      gameCanvasInterface : constant AllBinaryGameCanvasInterface_Access := AllBinaryGameCanvasInterface_Access (gameCanvasInterface_Param);
      layer : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layer_Param);
      geographicMapCompositeInterface : GeographicMapCompositeInterface_Access;
      geographicMapInterface : BasicGeographicMap_Access;
   begin
        if (gameCanvasInterface) /= (SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION) then
            geographicMapCompositeInterface := GeographicMapCompositeInterface_Access (gameCanvasInterface.getLayerManager);
            geographicMapInterface := geographicMapCompositeInterface.getGeographicMapInterface (0);
            This.newGeographicMapCellPosition := geographicMapInterface.getCellPositionAtXY ((layer.getXP) + (layer.getHalfWidth), (layer.getYP) + (layer.getHalfHeight));
            if (This.newGeographicMapCellPosition) /= (This.currentGeographicMapCellPosition) then
                This.currentGeographicMapCellPosition := This.newGeographicMapCellPosition;
                return True;
            end if;
        end if;
        return False;
   end updateStart;

   function updateEnd (This : in out GeographicMapCellPositionTracking) return Boolean is
   begin
        if (This.currentGeographicMapCellPosition) /= (This.previousGeographicMapCellPosition) then
            This.previousGeographicMapCellPosition := This.currentGeographicMapCellPosition;
            return True;
        end if;
        return False;
   end updateEnd;

   function getPreviousGeographicMapCellPosition (This : in out GeographicMapCellPositionTracking) return GeographicMapCellPosition_Access is
   begin
        return This.previousGeographicMapCellPosition;
   end getPreviousGeographicMapCellPosition;

   function getCurrentGeographicMapCellPosition (This : in out GeographicMapCellPositionTracking) return GeographicMapCellPosition_Access is
   begin
        return This.currentGeographicMapCellPosition;
   end getCurrentGeographicMapCellPosition;

   procedure getCurrentOverCellType (This : in out GeographicMapCellPositionTracking; geographicMap_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class) is
      Java_Result : constant GeographicMapCellType_Access := GeographicMapCellPositionTracking'Class (This).getCurrentOverCellType (geographicMap_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCurrentOverCellType;

   procedure updateStart (This : in out GeographicMapCellPositionTracking; gameCanvasInterface_Param : access AllBinaryGameCanvasInterface_Package.AllBinaryGameCanvasInterface'Class; layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) is
      Java_Result : constant Boolean := GeographicMapCellPositionTracking'Class (This).updateStart (gameCanvasInterface_Param, layer_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end updateStart;

end org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking_Package;


