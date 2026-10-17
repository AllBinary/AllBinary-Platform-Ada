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
with org.allbinary.game.rand.MyRandomFactory_Package; use org.allbinary.game.rand.MyRandomFactory_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.mapeditor.core.TileLayer_Package; use org.mapeditor.core.TileLayer_Package;
with org.mapeditor.core.TiledMap_Package; use org.mapeditor.core.TiledMap_Package;
with org.allbinary.game.behavior.topview.placement.TileMapPlacementVisitor_Package; use org.allbinary.game.behavior.topview.placement.TileMapPlacementVisitor_Package;

package org.allbinary.game.behavior.topview.placement.PropsTileMapPlacementVisitor_Package is

   package MyRandomFactory_Package renames org.allbinary.game.rand.MyRandomFactory_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;
   package TileLayer_Package renames org.mapeditor.core.TileLayer_Package;
   package TiledMap_Package renames org.mapeditor.core.TiledMap_Package;

   type PropsTileMapPlacementVisitor is tagged;
   type PropsTileMapPlacementVisitor_Access is access all PropsTileMapPlacementVisitor'Class;
   type PropsTileMapPlacementVisitor_Access_Array is array (Natural range <>) of PropsTileMapPlacementVisitor_Access;
   type PropsTileMapPlacementVisitor_Access_Array_Access is access all PropsTileMapPlacementVisitor_Access_Array;

   type PropsTileMapPlacementVisitor is new TileMapPlacementVisitor with record
      logUtil : LogUtil_Access;
      randomFactory : MyRandomFactory_Access;
   end record;

   procedure Initialize (This : in out PropsTileMapPlacementVisitor'Class);
   function Create return PropsTileMapPlacementVisitor_Access;
   procedure visit (This : in out PropsTileMapPlacementVisitor; lastMap : TiledMap_Access; mapData : Integer_Array_Access_Array_Access);
   procedure visit2 (This : in out PropsTileMapPlacementVisitor; mapArray : Integer_Array_Access_Array_Access; mapData : Integer_Array_Access_Array_Access; index : Integer; index2 : Integer);

end org.allbinary.game.behavior.topview.placement.PropsTileMapPlacementVisitor_Package;


