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

limited with org.allbinary.game.behavior.topview.placement.TileMapPlacementVisitor_Package;
package org.allbinary.game.behavior.topview.placement.TileMapPlacementVisitor_Package_References is
   type TileMapPlacementVisitor_Access is access all org.allbinary.game.behavior.topview.placement.TileMapPlacementVisitor_Package.TileMapPlacementVisitor'Class;
   type TileMapPlacementVisitor_Access_Array is array (Natural range <>) of TileMapPlacementVisitor_Access;
   type TileMapPlacementVisitor_Access_Array_Access is access all TileMapPlacementVisitor_Access_Array;
   type TileMapPlacementVisitor_Access_Array_Access_Array is array (Natural range <>) of TileMapPlacementVisitor_Access_Array_Access;
   type TileMapPlacementVisitor_Access_Array_Access_Array_Access is access all TileMapPlacementVisitor_Access_Array_Access_Array;
end org.allbinary.game.behavior.topview.placement.TileMapPlacementVisitor_Package_References;

with org.allbinary.game.behavior.topview.placement.TileMapPlacementVisitor_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.mapeditor.core.TiledMap_Package;
with org.mapeditor.core.TiledMap_Package_References;

package org.allbinary.game.behavior.topview.placement.TileMapPlacementVisitor_Package is

   package TiledMap_Package renames Standard.org.mapeditor.core.TiledMap_Package;
   package Reference_Types is
   subtype TiledMap_Access is org.mapeditor.core.TiledMap_Package_References.TiledMap_Access;
   use type TiledMap_Access;
   subtype TiledMap_Access_Array is org.mapeditor.core.TiledMap_Package_References.TiledMap_Access_Array;
   use type TiledMap_Access_Array;
   subtype TiledMap_Access_Array_Access is org.mapeditor.core.TiledMap_Package_References.TiledMap_Access_Array_Access;
   use type TiledMap_Access_Array_Access;
   subtype TiledMap_Access_Array_Access_Array is org.mapeditor.core.TiledMap_Package_References.TiledMap_Access_Array_Access_Array;
   use type TiledMap_Access_Array_Access_Array;
   subtype TiledMap_Access_Array_Access_Array_Access is org.mapeditor.core.TiledMap_Package_References.TiledMap_Access_Array_Access_Array_Access;
   use type TiledMap_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype TileMapPlacementVisitor_Access is org.allbinary.game.behavior.topview.placement.TileMapPlacementVisitor_Package_References.TileMapPlacementVisitor_Access;
   function "=" (Left, Right : TileMapPlacementVisitor_Access) return Boolean renames org.allbinary.game.behavior.topview.placement.TileMapPlacementVisitor_Package_References."=";
   subtype TileMapPlacementVisitor_Access_Array is org.allbinary.game.behavior.topview.placement.TileMapPlacementVisitor_Package_References.TileMapPlacementVisitor_Access_Array;
   function "=" (Left, Right : TileMapPlacementVisitor_Access_Array) return Boolean renames org.allbinary.game.behavior.topview.placement.TileMapPlacementVisitor_Package_References."=";
   subtype TileMapPlacementVisitor_Access_Array_Access is org.allbinary.game.behavior.topview.placement.TileMapPlacementVisitor_Package_References.TileMapPlacementVisitor_Access_Array_Access;
   function "=" (Left, Right : TileMapPlacementVisitor_Access_Array_Access) return Boolean renames org.allbinary.game.behavior.topview.placement.TileMapPlacementVisitor_Package_References."=";
   subtype TileMapPlacementVisitor_Access_Array_Access_Array is org.allbinary.game.behavior.topview.placement.TileMapPlacementVisitor_Package_References.TileMapPlacementVisitor_Access_Array_Access_Array;
   function "=" (Left, Right : TileMapPlacementVisitor_Access_Array_Access_Array) return Boolean renames org.allbinary.game.behavior.topview.placement.TileMapPlacementVisitor_Package_References."=";
   subtype TileMapPlacementVisitor_Access_Array_Access_Array_Access is org.allbinary.game.behavior.topview.placement.TileMapPlacementVisitor_Package_References.TileMapPlacementVisitor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TileMapPlacementVisitor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.behavior.topview.placement.TileMapPlacementVisitor_Package_References."=";

   type TileMapPlacementVisitor is new Java_Object with null record;

   procedure Initialize (This : in out TileMapPlacementVisitor'Class);
   function Create return TileMapPlacementVisitor_Access;
   procedure visit (This : in out TileMapPlacementVisitor; lastMap_Param : access TiledMap_Package.TiledMap'Class; mapData : Integer_Array_Access_Array_Access);

end org.allbinary.game.behavior.topview.placement.TileMapPlacementVisitor_Package;


