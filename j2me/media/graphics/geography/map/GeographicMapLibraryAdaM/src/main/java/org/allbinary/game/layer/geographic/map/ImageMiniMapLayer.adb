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


   procedure Initialize (This : in out ImageMiniMapLayer'Class; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; viewPosition_Param : access ViewPositionBase_Package.ViewPositionBase'Class) is
      geographicMapInterface : constant BasicGeographicMap_Access := BasicGeographicMap_Access (geographicMapInterface_Param);
      viewPosition : constant ViewPositionBase_Access := ViewPositionBase_Access (viewPosition_Param);
   begin
        MiniMapLayer_Package.Initialize (This, geographicMapInterface, viewPosition);
        Initialize_Fields (This);
   end Initialize;

   function Create (geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; viewPosition_Param : access ViewPositionBase_Package.ViewPositionBase'Class) return ImageMiniMapLayer_Access is
      This : constant ImageMiniMapLayer_Access := new ImageMiniMapLayer;
   begin
      ImageMiniMapLayer_Package.Initialize (This.all, geographicMapInterface_Param, viewPosition_Param);
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

   procedure paint (This : in out ImageMiniMapLayer; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        graphics.drawImage (This.image, This.x, This.y, This.anchor);
        ImageMiniMapLayer'Class (This).paintDots (graphics);
   end paint;

end org.allbinary.game.layer.geographic.map.ImageMiniMapLayer_Package;


