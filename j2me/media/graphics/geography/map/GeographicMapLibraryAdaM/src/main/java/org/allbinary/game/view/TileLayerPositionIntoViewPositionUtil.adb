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


with org.allbinary.game.view.TileLayerPositionIntoViewPosition_Package; use org.allbinary.game.view.TileLayerPositionIntoViewPosition_Package;
with org.allbinary.game.view.TileLayerPositionIntoViewPosition_Package_References;
with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package; use org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;
with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References;
with org.allbinary.game.layer.AllBinaryTiledLayer_Package; use org.allbinary.game.layer.AllBinaryTiledLayer_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package; use org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface_Package;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package;
with org.allbinary.graphics.CellPosition_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.graphics.GPoint_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionBaseFactory_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInitVisitorInterface_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapInterface_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.media.graphics.geography.map.SimpleGeographicMap_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.game.view.TileLayerPositionIntoViewPositionUtil_Package is

   package AllBinaryTiledLayer_Package renames Standard.org.allbinary.game.layer.AllBinaryTiledLayer_Package;
   package BasicGeographicMap_Package renames Standard.org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
   package GeographicMapCompositeInterface_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface_Package;
   subtype TileLayerPositionIntoViewPosition_Access is org.allbinary.game.view.TileLayerPositionIntoViewPosition_Package_References.TileLayerPositionIntoViewPosition_Access;
   function "=" (Left, Right : TileLayerPositionIntoViewPosition_Access) return Boolean renames org.allbinary.game.view.TileLayerPositionIntoViewPosition_Package_References."=";
   subtype TileLayerPositionIntoViewPosition_Access_Array is org.allbinary.game.view.TileLayerPositionIntoViewPosition_Package_References.TileLayerPositionIntoViewPosition_Access_Array;
   function "=" (Left, Right : TileLayerPositionIntoViewPosition_Access_Array) return Boolean renames org.allbinary.game.view.TileLayerPositionIntoViewPosition_Package_References."=";
   subtype TileLayerPositionIntoViewPosition_Access_Array_Access is org.allbinary.game.view.TileLayerPositionIntoViewPosition_Package_References.TileLayerPositionIntoViewPosition_Access_Array_Access;
   function "=" (Left, Right : TileLayerPositionIntoViewPosition_Access_Array_Access) return Boolean renames org.allbinary.game.view.TileLayerPositionIntoViewPosition_Package_References."=";
   subtype TileLayerPositionIntoViewPosition_Access_Array_Access_Array is org.allbinary.game.view.TileLayerPositionIntoViewPosition_Package_References.TileLayerPositionIntoViewPosition_Access_Array_Access_Array;
   function "=" (Left, Right : TileLayerPositionIntoViewPosition_Access_Array_Access_Array) return Boolean renames org.allbinary.game.view.TileLayerPositionIntoViewPosition_Package_References."=";
   subtype TileLayerPositionIntoViewPosition_Access_Array_Access_Array_Access is org.allbinary.game.view.TileLayerPositionIntoViewPosition_Package_References.TileLayerPositionIntoViewPosition_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TileLayerPositionIntoViewPosition_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.view.TileLayerPositionIntoViewPosition_Package_References."=";
   subtype AllBinaryGameCanvas_Access is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access;
   function "=" (Left, Right : AllBinaryGameCanvas_Access) return Boolean renames org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References."=";
   subtype AllBinaryGameCanvas_Access_Array is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access_Array;
   function "=" (Left, Right : AllBinaryGameCanvas_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References."=";
   subtype AllBinaryGameCanvas_Access_Array_Access is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access_Array_Access;
   function "=" (Left, Right : AllBinaryGameCanvas_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References."=";
   subtype AllBinaryGameCanvas_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryGameCanvas_Access_Array_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References."=";
   subtype AllBinaryGameCanvas_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryGameCanvas_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References."=";
   procedure Initialize_Fields (This : in out TileLayerPositionIntoViewPositionUtil'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out TileLayerPositionIntoViewPositionUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return TileLayerPositionIntoViewPositionUtil_Access is
      This : constant TileLayerPositionIntoViewPositionUtil_Access := new TileLayerPositionIntoViewPositionUtil;
   begin
      TileLayerPositionIntoViewPositionUtil_Package.Initialize (This.all);
      return This;
   end Create;


   procedure init (gameCanvasInterface_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class; viewPosition_Param : access TileLayerPositionIntoViewPosition_Package.TileLayerPositionIntoViewPosition'Class) is
      gameCanvasInterface : constant AllBinaryGameCanvas_Access := AllBinaryGameCanvas_Access (gameCanvasInterface_Param);
      viewPosition : constant TileLayerPositionIntoViewPosition_Access := TileLayerPositionIntoViewPosition_Access (viewPosition_Param);
      geographicMapCompositeInterface : GeographicMapCompositeInterface_Access;
      geographicMapInterface : BasicGeographicMap_Access;
      tiledLayer : AllBinaryTiledLayer_Access;
   begin
        geographicMapCompositeInterface := GeographicMapCompositeInterface_Access (gameCanvasInterface.getLayerManager);
        geographicMapInterface := geographicMapCompositeInterface.getGeographicMapInterface (0);
        tiledLayer := geographicMapInterface.getAllBinaryTiledLayer;
        viewPosition.setTiledLayer (tiledLayer);
   end init;

end org.allbinary.game.view.TileLayerPositionIntoViewPositionUtil_Package;


