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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.layer.AllBinaryTiledLayer_Package; use org.allbinary.game.layer.AllBinaryTiledLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.Layer_Package; use org.allbinary.layer.Layer_Package;
with org.allbinary.layer.NullLayer_Package; use org.allbinary.layer.NullLayer_Package;
with org.allbinary.view.ViewPosition_Package; use org.allbinary.view.ViewPosition_Package;

package org.allbinary.game.view.StaticTileLayerIntoPositionViewPosition_Package is

   package AllBinaryTiledLayer_Package renames Standard.org.allbinary.game.layer.AllBinaryTiledLayer_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package Layer_Package renames Standard.org.allbinary.layer.Layer_Package;
   package NullLayer_Package renames Standard.org.allbinary.layer.NullLayer_Package;
   package ViewPosition_Package renames Standard.org.allbinary.view.ViewPosition_Package;

   type StaticTileLayerIntoPositionViewPosition is tagged;
   type StaticTileLayerIntoPositionViewPosition_Access is access all StaticTileLayerIntoPositionViewPosition'Class;
   type StaticTileLayerIntoPositionViewPosition_Access_Array is array (Natural range <>) of StaticTileLayerIntoPositionViewPosition_Access;
   type StaticTileLayerIntoPositionViewPosition_Access_Array_Access is access all StaticTileLayerIntoPositionViewPosition_Access_Array;

   type StaticTileLayerIntoPositionViewPosition is new ViewPosition with null record;
   tiledLayer : Layer_Access;
   layer : AllBinaryLayer_Access;

   procedure Initialize (This : in out StaticTileLayerIntoPositionViewPosition'Class);
   function Create return StaticTileLayerIntoPositionViewPosition_Access;
   function getX (This : in out StaticTileLayerIntoPositionViewPosition) return Integer;
   procedure getX (This : in out StaticTileLayerIntoPositionViewPosition);
   function getY (This : in out StaticTileLayerIntoPositionViewPosition) return Integer;
   procedure getY (This : in out StaticTileLayerIntoPositionViewPosition);
   function getZ (This : in out StaticTileLayerIntoPositionViewPosition) return Integer;
   procedure getZ (This : in out StaticTileLayerIntoPositionViewPosition);
   procedure setTiledLayer (tiledLayer : AllBinaryTiledLayer_Access);

end org.allbinary.game.view.StaticTileLayerIntoPositionViewPosition_Package;


