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


with org.allbinary.game.layer.AllBinaryTiledLayer_Package; use org.allbinary.game.layer.AllBinaryTiledLayer_Package;
with org.allbinary.game.layer.AllBinaryTiledLayer_Package_References;
with org.allbinary.layer.Layer_Package; use org.allbinary.layer.Layer_Package;
with org.allbinary.layer.Layer_Package_References;
with org.allbinary.layer.NullLayer_Package; use org.allbinary.layer.NullLayer_Package;
with org.allbinary.view.ViewPosition_Package; use org.allbinary.view.ViewPosition_Package;

package body org.allbinary.game.view.TileLayerPositionIntoViewPosition_Package is

   package NullLayer_Package renames Standard.org.allbinary.layer.NullLayer_Package;
   subtype AllBinaryTiledLayer_Access is org.allbinary.game.layer.AllBinaryTiledLayer_Package_References.AllBinaryTiledLayer_Access;
   function "=" (Left, Right : AllBinaryTiledLayer_Access) return Boolean renames org.allbinary.game.layer.AllBinaryTiledLayer_Package_References."=";
   subtype AllBinaryTiledLayer_Access_Array is org.allbinary.game.layer.AllBinaryTiledLayer_Package_References.AllBinaryTiledLayer_Access_Array;
   function "=" (Left, Right : AllBinaryTiledLayer_Access_Array) return Boolean renames org.allbinary.game.layer.AllBinaryTiledLayer_Package_References."=";
   subtype AllBinaryTiledLayer_Access_Array_Access is org.allbinary.game.layer.AllBinaryTiledLayer_Package_References.AllBinaryTiledLayer_Access_Array_Access;
   function "=" (Left, Right : AllBinaryTiledLayer_Access_Array_Access) return Boolean renames org.allbinary.game.layer.AllBinaryTiledLayer_Package_References."=";
   subtype AllBinaryTiledLayer_Access_Array_Access_Array is org.allbinary.game.layer.AllBinaryTiledLayer_Package_References.AllBinaryTiledLayer_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryTiledLayer_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.AllBinaryTiledLayer_Package_References."=";
   subtype AllBinaryTiledLayer_Access_Array_Access_Array_Access is org.allbinary.game.layer.AllBinaryTiledLayer_Package_References.AllBinaryTiledLayer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryTiledLayer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.AllBinaryTiledLayer_Package_References."=";
   subtype Layer_Access is org.allbinary.layer.Layer_Package_References.Layer_Access;
   function "=" (Left, Right : Layer_Access) return Boolean renames org.allbinary.layer.Layer_Package_References."=";
   subtype Layer_Access_Array is org.allbinary.layer.Layer_Package_References.Layer_Access_Array;
   function "=" (Left, Right : Layer_Access_Array) return Boolean renames org.allbinary.layer.Layer_Package_References."=";
   subtype Layer_Access_Array_Access is org.allbinary.layer.Layer_Package_References.Layer_Access_Array_Access;
   function "=" (Left, Right : Layer_Access_Array_Access) return Boolean renames org.allbinary.layer.Layer_Package_References."=";
   subtype Layer_Access_Array_Access_Array is org.allbinary.layer.Layer_Package_References.Layer_Access_Array_Access_Array;
   function "=" (Left, Right : Layer_Access_Array_Access_Array) return Boolean renames org.allbinary.layer.Layer_Package_References."=";
   subtype Layer_Access_Array_Access_Array_Access is org.allbinary.layer.Layer_Package_References.Layer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Layer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.layer.Layer_Package_References."=";
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
        return (ViewPosition_Package.ViewPosition (This).getX) - (This.tiledLayer.getXP);
   end getX;

   function getY (This : in out TileLayerPositionIntoViewPosition) return Integer is
   begin
        return (ViewPosition_Package.ViewPosition (This).getY) - (This.tiledLayer.getYP);
   end getY;

   function getZ (This : in out TileLayerPositionIntoViewPosition) return Integer is
   begin
        return (ViewPosition_Package.ViewPosition (This).getZ) - (This.tiledLayer.getZP);
   end getZ;

   procedure setTiledLayer (This : in out TileLayerPositionIntoViewPosition; tiledLayer_Param : access AllBinaryTiledLayer_Package.AllBinaryTiledLayer'Class) is
      tiledLayer : constant AllBinaryTiledLayer_Access := AllBinaryTiledLayer_Access (tiledLayer_Param);
   begin
        This.tiledLayer := Layer_Access (tiledLayer);
   end setTiledLayer;

end org.allbinary.game.view.TileLayerPositionIntoViewPosition_Package;


