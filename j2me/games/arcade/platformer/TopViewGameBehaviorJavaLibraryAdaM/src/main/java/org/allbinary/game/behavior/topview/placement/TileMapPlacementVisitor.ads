-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
with org.mapeditor.core.TiledMap_Package; use org.mapeditor.core.TiledMap_Package;

package org.allbinary.game.behavior.topview.placement.TileMapPlacementVisitor_Package is

   package TiledMap_Package renames Standard.org.mapeditor.core.TiledMap_Package;

   type TileMapPlacementVisitor is tagged;
   type TileMapPlacementVisitor_Access is access all TileMapPlacementVisitor'Class;
   type TileMapPlacementVisitor_Access_Array is array (Natural range <>) of TileMapPlacementVisitor_Access;
   type TileMapPlacementVisitor_Access_Array_Access is access all TileMapPlacementVisitor_Access_Array;

   type TileMapPlacementVisitor is new Java_Object with null record;

   procedure Initialize (This : in out TileMapPlacementVisitor'Class);
   function Create return TileMapPlacementVisitor_Access;
   procedure visit (This : in out TileMapPlacementVisitor; lastMap : TiledMap_Access; mapData : Integer_Array_Access_Array_Access);

end org.allbinary.game.behavior.topview.placement.TileMapPlacementVisitor_Package;


