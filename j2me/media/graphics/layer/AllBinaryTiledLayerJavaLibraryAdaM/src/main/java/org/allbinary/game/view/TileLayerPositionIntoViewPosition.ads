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
with org.allbinary.layer.Layer_Package; use org.allbinary.layer.Layer_Package;
with org.allbinary.layer.NullLayer_Package; use org.allbinary.layer.NullLayer_Package;
with org.allbinary.view.ViewPosition_Package; use org.allbinary.view.ViewPosition_Package;

package org.allbinary.game.view.TileLayerPositionIntoViewPosition_Package is

   package AllBinaryTiledLayer_Package renames Standard.org.allbinary.game.layer.AllBinaryTiledLayer_Package;
   package Layer_Package renames Standard.org.allbinary.layer.Layer_Package;
   package NullLayer_Package renames Standard.org.allbinary.layer.NullLayer_Package;
   package ViewPosition_Package renames Standard.org.allbinary.view.ViewPosition_Package;

   type TileLayerPositionIntoViewPosition is tagged;
   type TileLayerPositionIntoViewPosition_Access is access all TileLayerPositionIntoViewPosition'Class;
   type TileLayerPositionIntoViewPosition_Access_Array is array (Natural range <>) of TileLayerPositionIntoViewPosition_Access;
   type TileLayerPositionIntoViewPosition_Access_Array_Access is access all TileLayerPositionIntoViewPosition_Access_Array;

   type TileLayerPositionIntoViewPosition is new ViewPosition with record
      tiledLayer : Layer_Access;
   end record;

   procedure Initialize (This : in out TileLayerPositionIntoViewPosition'Class);
   function Create return TileLayerPositionIntoViewPosition_Access;
   function getX (This : in out TileLayerPositionIntoViewPosition) return Integer;
   procedure getX (This : in out TileLayerPositionIntoViewPosition);
   function getY (This : in out TileLayerPositionIntoViewPosition) return Integer;
   procedure getY (This : in out TileLayerPositionIntoViewPosition);
   function getZ (This : in out TileLayerPositionIntoViewPosition) return Integer;
   procedure getZ (This : in out TileLayerPositionIntoViewPosition);
   procedure setTiledLayer (This : in out TileLayerPositionIntoViewPosition; tiledLayer : AllBinaryTiledLayer_Access);

end org.allbinary.game.view.TileLayerPositionIntoViewPosition_Package;


