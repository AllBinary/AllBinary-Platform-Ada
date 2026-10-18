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


with org.allbinary.game.layer.AllBinaryTiledLayer_Package; use org.allbinary.game.layer.AllBinaryTiledLayer_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package; use org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface_Package;

package body org.allbinary.game.view.TileLayerPositionIntoViewPositionUtil_Package is

   package AllBinaryTiledLayer_Package renames Standard.org.allbinary.game.layer.AllBinaryTiledLayer_Package;
   package BasicGeographicMap_Package renames Standard.org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
   package GeographicMapCompositeInterface_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface_Package;
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


