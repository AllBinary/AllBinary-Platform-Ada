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

limited with org.allbinary.game.view.StaticTileLayerIntoPositionViewPosition_Package;
package org.allbinary.game.view.StaticTileLayerIntoPositionViewPosition_Package_References is
   type StaticTileLayerIntoPositionViewPosition_Access is access all org.allbinary.game.view.StaticTileLayerIntoPositionViewPosition_Package.StaticTileLayerIntoPositionViewPosition'Class;
   type StaticTileLayerIntoPositionViewPosition_Access_Array is array (Natural range <>) of StaticTileLayerIntoPositionViewPosition_Access;
   type StaticTileLayerIntoPositionViewPosition_Access_Array_Access is access all StaticTileLayerIntoPositionViewPosition_Access_Array;
   type StaticTileLayerIntoPositionViewPosition_Access_Array_Access_Array is array (Natural range <>) of StaticTileLayerIntoPositionViewPosition_Access_Array_Access;
   type StaticTileLayerIntoPositionViewPosition_Access_Array_Access_Array_Access is access all StaticTileLayerIntoPositionViewPosition_Access_Array_Access_Array;
end org.allbinary.game.view.StaticTileLayerIntoPositionViewPosition_Package_References;

with org.allbinary.game.view.StaticTileLayerIntoPositionViewPosition_Package_References;
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
limited with org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package_References;
limited with org.allbinary.layer.Layer_Package;
with org.allbinary.layer.Layer_Package_References;
with org.allbinary.view.ViewPosition_Package; use org.allbinary.view.ViewPosition_Package;

package org.allbinary.game.view.StaticTileLayerIntoPositionViewPosition_Package is

   package AllBinaryTiledLayer_Package renames Standard.org.allbinary.game.layer.AllBinaryTiledLayer_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
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
   subtype AllBinaryLayer_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access;
   use type AllBinaryLayer_Access;
   subtype AllBinaryLayer_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array;
   use type AllBinaryLayer_Access_Array;
   subtype AllBinaryLayer_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access;
   use type AllBinaryLayer_Access_Array_Access;
   subtype AllBinaryLayer_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array;
   use type AllBinaryLayer_Access_Array_Access_Array;
   subtype AllBinaryLayer_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array_Access;
   use type AllBinaryLayer_Access_Array_Access_Array_Access;
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


   subtype StaticTileLayerIntoPositionViewPosition_Access is org.allbinary.game.view.StaticTileLayerIntoPositionViewPosition_Package_References.StaticTileLayerIntoPositionViewPosition_Access;
   function "=" (Left, Right : StaticTileLayerIntoPositionViewPosition_Access) return Boolean renames org.allbinary.game.view.StaticTileLayerIntoPositionViewPosition_Package_References."=";
   subtype StaticTileLayerIntoPositionViewPosition_Access_Array is org.allbinary.game.view.StaticTileLayerIntoPositionViewPosition_Package_References.StaticTileLayerIntoPositionViewPosition_Access_Array;
   function "=" (Left, Right : StaticTileLayerIntoPositionViewPosition_Access_Array) return Boolean renames org.allbinary.game.view.StaticTileLayerIntoPositionViewPosition_Package_References."=";
   subtype StaticTileLayerIntoPositionViewPosition_Access_Array_Access is org.allbinary.game.view.StaticTileLayerIntoPositionViewPosition_Package_References.StaticTileLayerIntoPositionViewPosition_Access_Array_Access;
   function "=" (Left, Right : StaticTileLayerIntoPositionViewPosition_Access_Array_Access) return Boolean renames org.allbinary.game.view.StaticTileLayerIntoPositionViewPosition_Package_References."=";
   subtype StaticTileLayerIntoPositionViewPosition_Access_Array_Access_Array is org.allbinary.game.view.StaticTileLayerIntoPositionViewPosition_Package_References.StaticTileLayerIntoPositionViewPosition_Access_Array_Access_Array;
   function "=" (Left, Right : StaticTileLayerIntoPositionViewPosition_Access_Array_Access_Array) return Boolean renames org.allbinary.game.view.StaticTileLayerIntoPositionViewPosition_Package_References."=";
   subtype StaticTileLayerIntoPositionViewPosition_Access_Array_Access_Array_Access is org.allbinary.game.view.StaticTileLayerIntoPositionViewPosition_Package_References.StaticTileLayerIntoPositionViewPosition_Access_Array_Access_Array_Access;
   function "=" (Left, Right : StaticTileLayerIntoPositionViewPosition_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.view.StaticTileLayerIntoPositionViewPosition_Package_References."=";

   type StaticTileLayerIntoPositionViewPosition is new ViewPosition with null record;
   tiledLayer : Layer_Access;
   layer : AllBinaryLayer_Access;

   procedure Initialize (This : in out StaticTileLayerIntoPositionViewPosition'Class);
   function Create return StaticTileLayerIntoPositionViewPosition_Access;
   function getX (This : in out StaticTileLayerIntoPositionViewPosition) return Integer;
   function getY (This : in out StaticTileLayerIntoPositionViewPosition) return Integer;
   function getZ (This : in out StaticTileLayerIntoPositionViewPosition) return Integer;
   procedure setTiledLayer (tiledLayer_Param : access AllBinaryTiledLayer_Package.AllBinaryTiledLayer'Class);

end org.allbinary.game.view.StaticTileLayerIntoPositionViewPosition_Package;


