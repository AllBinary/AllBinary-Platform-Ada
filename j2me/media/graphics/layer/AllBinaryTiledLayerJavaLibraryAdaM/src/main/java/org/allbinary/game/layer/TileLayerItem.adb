-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2006 AllBinary 
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



package body org.allbinary.game.layer.TileLayerItem_Package is

   procedure Initialize_Fields (This : in out TileLayerItem'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out TileLayerItem'Class; label : Unbounded_String; tiledLayer_Param : access AllBinaryTiledLayer_Package.AllBinaryTiledLayer'Class; layout : Integer; altText : Unbounded_String; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) is
      tiledLayer : constant AllBinaryTiledLayer_Access := AllBinaryTiledLayer_Access (tiledLayer_Param);
      backgroundBasicColor : constant BasicColor_Access := BasicColor_Access (backgroundBasicColor_Param);
      foregroundBasicColor : constant BasicColor_Access := BasicColor_Access (foregroundBasicColor_Param);
   begin
        ABCustomItem_Package.Initialize (This, label, backgroundBasicColor, foregroundBasicColor);
        Initialize_Fields (This);
        This.tiledLayer := tiledLayer;
   end Initialize;

   function Create (label : Unbounded_String; tiledLayer_Param : access AllBinaryTiledLayer_Package.AllBinaryTiledLayer'Class; layout : Integer; altText : Unbounded_String; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) return TileLayerItem_Access is
      This : constant TileLayerItem_Access := new TileLayerItem;
   begin
      TileLayerItem_Package.Initialize (This.all, label, tiledLayer_Param, layout, altText, backgroundBasicColor_Param, foregroundBasicColor_Param);
      return This;
   end Create;

   procedure setOwner (This : in out TileLayerItem; owner_Param : access Screen_Package.Screen'Class) is
      owner : constant Screen_Access := Screen_Access (owner_Param);
   begin
        null;
   end setOwner;

   function getMinimumWidth (This : in out TileLayerItem) return Integer is
   begin
        return This.tiledLayer.getWidth;
   end getMinimumWidth;

   function getMinimumHeight (This : in out TileLayerItem) return Integer is
   begin
        return This.tiledLayer.getHeight;
   end getMinimumHeight;

   function getMinContentHeight (This : in out TileLayerItem) return Integer is
   begin
        return This.tiledLayer.getHeight;
   end getMinContentHeight;

   function getMinContentWidth (This : in out TileLayerItem) return Integer is
   begin
        return This.tiledLayer.getWidth;
   end getMinContentWidth;

   function getPrefContentHeight (This : in out TileLayerItem; width : Integer) return Integer is
   begin
        return This.tiledLayer.getHeight;
   end getPrefContentHeight;

   function getPrefContentWidth (This : in out TileLayerItem; height : Integer) return Integer is
   begin
        return This.tiledLayer.getWidth;
   end getPrefContentWidth;

   procedure paintXY (This : in out TileLayerItem; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        This.tiledLayer.setPosition (x, y, This.tiledLayer.getZP);
        This.tiledLayer.paint (graphics);
   end paintXY;

   procedure paintUnselected (This : in out TileLayerItem; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        null;
   end paintUnselected;

   procedure getPrefContentHeight (This : in out TileLayerItem; width : Integer) is
      Java_Result : constant Integer := TileLayerItem'Class (This).getPrefContentHeight (width);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getPrefContentHeight;

   procedure getPrefContentWidth (This : in out TileLayerItem; height : Integer) is
      Java_Result : constant Integer := TileLayerItem'Class (This).getPrefContentWidth (height);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getPrefContentWidth;

end org.allbinary.game.layer.TileLayerItem_Package;


