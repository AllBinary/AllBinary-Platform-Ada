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


with org.allbinary.game.displayable.canvas.AllBinaryGameCanvasInterface_Package; use org.allbinary.game.displayable.canvas.AllBinaryGameCanvasInterface_Package;
with org.allbinary.game.displayable.canvas.AllBinaryGameCanvasInterface_Package_References;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package_References;
with org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory_Package; use org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References;
with org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package; use org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References;
with org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionBaseFactory_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInitVisitorInterface_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapInterface_Package;
with org.allbinary.media.graphics.geography.map.SimpleGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References;

package body org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking_Package is

   subtype AllBinaryGameCanvasInterface_Access is org.allbinary.game.displayable.canvas.AllBinaryGameCanvasInterface_Package_References.AllBinaryGameCanvasInterface_Access;
   function "=" (Left, Right : AllBinaryGameCanvasInterface_Access) return Boolean renames org.allbinary.game.displayable.canvas.AllBinaryGameCanvasInterface_Package_References."=";
   subtype AllBinaryGameCanvasInterface_Access_Array is org.allbinary.game.displayable.canvas.AllBinaryGameCanvasInterface_Package_References.AllBinaryGameCanvasInterface_Access_Array;
   function "=" (Left, Right : AllBinaryGameCanvasInterface_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.AllBinaryGameCanvasInterface_Package_References."=";
   subtype AllBinaryGameCanvasInterface_Access_Array_Access is org.allbinary.game.displayable.canvas.AllBinaryGameCanvasInterface_Package_References.AllBinaryGameCanvasInterface_Access_Array_Access;
   function "=" (Left, Right : AllBinaryGameCanvasInterface_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.AllBinaryGameCanvasInterface_Package_References."=";
   subtype AllBinaryGameCanvasInterface_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.AllBinaryGameCanvasInterface_Package_References.AllBinaryGameCanvasInterface_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryGameCanvasInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.AllBinaryGameCanvasInterface_Package_References."=";
   subtype AllBinaryGameCanvasInterface_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.AllBinaryGameCanvasInterface_Package_References.AllBinaryGameCanvasInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryGameCanvasInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.AllBinaryGameCanvasInterface_Package_References."=";
   subtype AllBinaryLayer_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access;
   function "=" (Left, Right : AllBinaryLayer_Access) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryLayer_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array;
   function "=" (Left, Right : AllBinaryLayer_Access_Array) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryLayer_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access;
   function "=" (Left, Right : AllBinaryLayer_Access_Array_Access) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryLayer_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryLayer_Access_Array_Access_Array) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryLayer_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryLayer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype GeographicMapCellPosition_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access;
   function "=" (Left, Right : GeographicMapCellPosition_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References."=";
   subtype GeographicMapCellPosition_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array;
   function "=" (Left, Right : GeographicMapCellPosition_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References."=";
   subtype GeographicMapCellPosition_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellPosition_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References."=";
   subtype GeographicMapCellPosition_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array_Access_Array;
   function "=" (Left, Right : GeographicMapCellPosition_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References."=";
   subtype GeographicMapCellPosition_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellPosition_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References."=";
   subtype GeographicMapCellType_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References.GeographicMapCellType_Access;
   function "=" (Left, Right : GeographicMapCellType_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References."=";
   subtype GeographicMapCellType_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References.GeographicMapCellType_Access_Array;
   function "=" (Left, Right : GeographicMapCellType_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References."=";
   subtype GeographicMapCellType_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References.GeographicMapCellType_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellType_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References."=";
   subtype GeographicMapCellType_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References.GeographicMapCellType_Access_Array_Access_Array;
   function "=" (Left, Right : GeographicMapCellType_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References."=";
   subtype GeographicMapCellType_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References.GeographicMapCellType_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellType_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References."=";
   subtype BasicGeographicMap_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access;
   function "=" (Left, Right : BasicGeographicMap_Access) return Boolean renames org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References."=";
   subtype BasicGeographicMap_Access_Array is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array;
   function "=" (Left, Right : BasicGeographicMap_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References."=";
   subtype BasicGeographicMap_Access_Array_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array_Access;
   function "=" (Left, Right : BasicGeographicMap_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References."=";
   subtype BasicGeographicMap_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array_Access_Array;
   function "=" (Left, Right : BasicGeographicMap_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References."=";
   subtype BasicGeographicMap_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicGeographicMap_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References."=";
   procedure Initialize_Fields (This : in out GeographicMapCellPositionTracking'Class) is
   begin
      null;
      This.currentGeographicMapCellPosition := GeographicMapCellPosition_Access (SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION);
      This.previousGeographicMapCellPosition := GeographicMapCellPosition_Access (SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION);
      This.newGeographicMapCellPosition := GeographicMapCellPosition_Access (SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION);
      This.currentCellType := GeographicMapCellType_Access (GeographicMapCellType_Package.NULL_GEOGRAPHIC_MAP_CELL_TYPE);
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
        if (not org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References."=" (geographicMapCellPosition, This.previousGeographicMapCellPosition)) then
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
        if (Java_Object_Access (gameCanvasInterface)) /= (Java_Object_Access (SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION)) then
            geographicMapCompositeInterface := GeographicMapCompositeInterface_Access (gameCanvasInterface.getLayerManager);
            geographicMapInterface := geographicMapCompositeInterface.getGeographicMapInterface (0);
            This.newGeographicMapCellPosition := geographicMapInterface.getCellPositionAtXY ((layer.getXP) + (layer.getHalfWidth), (layer.getYP) + (layer.getHalfHeight));
            if (not org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References."=" (This.newGeographicMapCellPosition, This.currentGeographicMapCellPosition)) then
                This.currentGeographicMapCellPosition := This.newGeographicMapCellPosition;
                return True;
            end if;
        end if;
        return False;
   end updateStart;

   function updateEnd (This : in out GeographicMapCellPositionTracking) return Boolean is
   begin
        if (not org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References."=" (This.currentGeographicMapCellPosition, This.previousGeographicMapCellPosition)) then
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
      Java_Result : constant GeographicMapCellType_Access := GeographicMapCellPositionTracking'Class (This).getCurrentOverCellType (geographicMap_Param => geographicMap_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCurrentOverCellType;

   procedure updateStart (This : in out GeographicMapCellPositionTracking; gameCanvasInterface_Param : access AllBinaryGameCanvasInterface_Package.AllBinaryGameCanvasInterface'Class; layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) is
      Java_Result : constant Boolean := GeographicMapCellPositionTracking'Class (This).updateStart (gameCanvasInterface_Param => gameCanvasInterface_Param, layer_Param => layer_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end updateStart;

end org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking_Package;


