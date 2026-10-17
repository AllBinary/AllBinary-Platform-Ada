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


package body org.allbinary.game.view.TileLayerPositionIntoViewPosition_Package is

   procedure Initialize_Fields (This : in out TileLayerPositionIntoViewPosition'Class) is
   begin
      null;
      This.tiledLayer := NullLayer_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out TileLayerPositionIntoViewPosition'Class) is
   begin
        ViewPosition_Package.Initialize (This, 0, 0, 0);
        Initialize_Fields (This);
   end Initialize;

   function Create return TileLayerPositionIntoViewPosition_Access is
      This : constant TileLayerPositionIntoViewPosition_Access := new TileLayerPositionIntoViewPosition;
   begin
      TileLayerPositionIntoViewPosition_Package.Initialize (This.all);
      return This;
   end Create;

   function getX (This : in out TileLayerPositionIntoViewPosition) return Integer is
   begin
        return (ViewPosition (This).getX) - (This.tiledLayer.getXP);
   end getX;

   function getY (This : in out TileLayerPositionIntoViewPosition) return Integer is
   begin
        return (ViewPosition (This).getY) - (This.tiledLayer.getYP);
   end getY;

   function getZ (This : in out TileLayerPositionIntoViewPosition) return Integer is
   begin
        return (ViewPosition (This).getZ) - (This.tiledLayer.getZP);
   end getZ;

   procedure setTiledLayer (This : in out TileLayerPositionIntoViewPosition; tiledLayer : AllBinaryTiledLayer_Access) is
   begin
        This.tiledLayer := tiledLayer;
   end setTiledLayer;

end org.allbinary.game.view.TileLayerPositionIntoViewPosition_Package;


