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


package body org.allbinary.game.layer.geographic.map.ImageMiniMapLayer_Package is

   procedure Initialize_Fields (This : in out ImageMiniMapLayer'Class) is
   begin
      null;
      This.image := NullImage_Package.NULL_IMAGE;
      This.anchor := Anchor_Package.TOP_LEFT;
   end Initialize_Fields;


   procedure Initialize (This : in out ImageMiniMapLayer'Class; geographicMapInterface : BasicGeographicMap_Access; viewPosition : ViewPositionBase_Access) is
   begin
        MiniMapLayer_Package.Initialize (This, geographicMapInterface, viewPosition);
        Initialize_Fields (This);
   end Initialize;

   function Create (geographicMapInterface : BasicGeographicMap_Access; viewPosition : ViewPositionBase_Access) return ImageMiniMapLayer_Access is
      This : constant ImageMiniMapLayer_Access := new ImageMiniMapLayer;
   begin
      Initialize (This.all, geographicMapInterface, viewPosition);
      return This;
   end Create;

   --  throws Exception
   procedure init (This : in out ImageMiniMapLayer) is
      aWidth : Integer;
      aHeight : Integer;
   begin
        aWidth := This.allBinaryTiledLayer.getWidth;
        aHeight := This.allBinaryTiledLayer.getHeight;
        This.image := PaintableToImageUtil_Package.getImage (This.allBinaryTiledLayer, aWidth, aHeight);
   end init;

   procedure paint (This : in out ImageMiniMapLayer; graphics : Graphics_Access) is
   begin
        graphics.drawImage (This.image, This.x, This.y, This.anchor);
        This.paintDots (graphics);
   end paint;

end org.allbinary.game.layer.geographic.map.ImageMiniMapLayer_Package;


