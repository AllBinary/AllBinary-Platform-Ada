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

limited with org.allbinary.game.view.TileLayerPositionIntoViewPosition_Package;
package org.allbinary.game.view.TileLayerPositionIntoViewPosition_Package_References is
   type TileLayerPositionIntoViewPosition_Access is access all org.allbinary.game.view.TileLayerPositionIntoViewPosition_Package.TileLayerPositionIntoViewPosition'Class;
   type TileLayerPositionIntoViewPosition_Access_Array is array (Natural range <>) of TileLayerPositionIntoViewPosition_Access;
   type TileLayerPositionIntoViewPosition_Access_Array_Access is access all TileLayerPositionIntoViewPosition_Access_Array;
   type TileLayerPositionIntoViewPosition_Access_Array_Access_Array is array (Natural range <>) of TileLayerPositionIntoViewPosition_Access_Array_Access;
   type TileLayerPositionIntoViewPosition_Access_Array_Access_Array_Access is access all TileLayerPositionIntoViewPosition_Access_Array_Access_Array;
end org.allbinary.game.view.TileLayerPositionIntoViewPosition_Package_References;

with org.allbinary.game.view.TileLayerPositionIntoViewPosition_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.layer.AllBinaryTiledLayer_Package;
with org.allbinary.game.layer.AllBinaryTiledLayer_Package_References;
limited with org.allbinary.layer.Layer_Package;
with org.allbinary.layer.Layer_Package_References;
with org.allbinary.view.ViewPosition_Package; use org.allbinary.view.ViewPosition_Package;

package org.allbinary.game.view.TileLayerPositionIntoViewPosition_Package is

   package AllBinaryTiledLayer_Package renames Standard.org.allbinary.game.layer.AllBinaryTiledLayer_Package;
   package Layer_Package renames Standard.org.allbinary.layer.Layer_Package;
   package ViewPosition_Package renames Standard.org.allbinary.view.ViewPosition_Package;
   package Reference_Types is
   subtype AllBinaryTiledLayer_Access is org.allbinary.game.layer.AllBinaryTiledLayer_Package_References.AllBinaryTiledLayer_Access;
   use type AllBinaryTiledLayer_Access;
   subtype AllBinaryTiledLayer_Access_Array is org.allbinary.game.layer.AllBinaryTiledLayer_Package_References.AllBinaryTiledLayer_Access_Array;
   use type AllBinaryTiledLayer_Access_Array;
   subtype AllBinaryTiledLayer_Access_Array_Access is org.allbinary.game.layer.AllBinaryTiledLayer_Package_References.AllBinaryTiledLayer_Access_Array_Access;
   use type AllBinaryTiledLayer_Access_Array_Access;
   subtype AllBinaryTiledLayer_Access_Array_Access_Array is org.allbinary.game.layer.AllBinaryTiledLayer_Package_References.AllBinaryTiledLayer_Access_Array_Access_Array;
   use type AllBinaryTiledLayer_Access_Array_Access_Array;
   subtype AllBinaryTiledLayer_Access_Array_Access_Array_Access is org.allbinary.game.layer.AllBinaryTiledLayer_Package_References.AllBinaryTiledLayer_Access_Array_Access_Array_Access;
   use type AllBinaryTiledLayer_Access_Array_Access_Array_Access;
   subtype Layer_Access is org.allbinary.layer.Layer_Package_References.Layer_Access;
   use type Layer_Access;
   subtype Layer_Access_Array is org.allbinary.layer.Layer_Package_References.Layer_Access_Array;
   use type Layer_Access_Array;
   subtype Layer_Access_Array_Access is org.allbinary.layer.Layer_Package_References.Layer_Access_Array_Access;
   use type Layer_Access_Array_Access;
   subtype Layer_Access_Array_Access_Array is org.allbinary.layer.Layer_Package_References.Layer_Access_Array_Access_Array;
   use type Layer_Access_Array_Access_Array;
   subtype Layer_Access_Array_Access_Array_Access is org.allbinary.layer.Layer_Package_References.Layer_Access_Array_Access_Array_Access;
   use type Layer_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


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

   type TileLayerPositionIntoViewPosition is new ViewPosition with record
      tiledLayer : Layer_Access;
   end record;

   procedure Initialize (This : in out TileLayerPositionIntoViewPosition'Class);
   function Create return TileLayerPositionIntoViewPosition_Access;
   function getX (This : in out TileLayerPositionIntoViewPosition) return Integer;
   function getY (This : in out TileLayerPositionIntoViewPosition) return Integer;
   function getZ (This : in out TileLayerPositionIntoViewPosition) return Integer;
   procedure setTiledLayer (This : in out TileLayerPositionIntoViewPosition; tiledLayer_Param : access AllBinaryTiledLayer_Package.AllBinaryTiledLayer'Class);

end org.allbinary.game.view.TileLayerPositionIntoViewPosition_Package;


