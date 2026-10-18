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


with org.allbinary.layer.NullLayer_Package; use org.allbinary.layer.NullLayer_Package;

package body org.allbinary.game.view.StaticTileLayerIntoPositionViewPosition_Package is

   package NullLayer_Package renames Standard.org.allbinary.layer.NullLayer_Package;
   procedure Initialize_Fields (This : in out StaticTileLayerIntoPositionViewPosition'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out StaticTileLayerIntoPositionViewPosition'Class) is
   begin
        ViewPosition_Package.Initialize (This, 0, 0, 0);
   end Initialize;

   function Create return StaticTileLayerIntoPositionViewPosition_Access is
      This : constant StaticTileLayerIntoPositionViewPosition_Access := new StaticTileLayerIntoPositionViewPosition;
   begin
      StaticTileLayerIntoPositionViewPosition_Package.Initialize (This.all);
      return This;
   end Create;

   function getX (This : in out StaticTileLayerIntoPositionViewPosition) return Integer is
   begin
        return (ViewPosition (This).getX) - (StaticTileLayerIntoPositionViewPosition_Package.tiledLayer.getXP);
   end getX;

   function getY (This : in out StaticTileLayerIntoPositionViewPosition) return Integer is
   begin
        return (ViewPosition (This).getY) - (StaticTileLayerIntoPositionViewPosition_Package.tiledLayer.getYP);
   end getY;

   function getZ (This : in out StaticTileLayerIntoPositionViewPosition) return Integer is
   begin
        return (ViewPosition (This).getZ) - (StaticTileLayerIntoPositionViewPosition_Package.tiledLayer.getZP);
   end getZ;

   procedure setTiledLayer (tiledLayer_Param : access AllBinaryTiledLayer_Package.AllBinaryTiledLayer'Class) is
      tiledLayer : constant AllBinaryTiledLayer_Access := AllBinaryTiledLayer_Access (tiledLayer_Param);
   begin
        StaticTileLayerIntoPositionViewPosition_Package.tiledLayer := tiledLayer;
   end setTiledLayer;

begin
   null;
   tiledLayer := NullLayer_Package.getInstance;
   layer := AllBinaryLayer_Package.NULL_ALLBINARY_LAYER;

end org.allbinary.game.view.StaticTileLayerIntoPositionViewPosition_Package;


