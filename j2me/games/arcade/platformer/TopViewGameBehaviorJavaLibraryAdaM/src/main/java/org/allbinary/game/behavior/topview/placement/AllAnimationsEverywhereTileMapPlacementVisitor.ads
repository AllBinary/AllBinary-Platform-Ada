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

limited with org.allbinary.game.behavior.topview.placement.AllAnimationsEverywhereTileMapPlacementVisitor_Package;
package org.allbinary.game.behavior.topview.placement.AllAnimationsEverywhereTileMapPlacementVisitor_Package_References is
   type AllAnimationsEverywhereTileMapPlacementVisitor_Access is access all org.allbinary.game.behavior.topview.placement.AllAnimationsEverywhereTileMapPlacementVisitor_Package.AllAnimationsEverywhereTileMapPlacementVisitor'Class;
   type AllAnimationsEverywhereTileMapPlacementVisitor_Access_Array is array (Natural range <>) of AllAnimationsEverywhereTileMapPlacementVisitor_Access;
   type AllAnimationsEverywhereTileMapPlacementVisitor_Access_Array_Access is access all AllAnimationsEverywhereTileMapPlacementVisitor_Access_Array;
   type AllAnimationsEverywhereTileMapPlacementVisitor_Access_Array_Access_Array is array (Natural range <>) of AllAnimationsEverywhereTileMapPlacementVisitor_Access_Array_Access;
   type AllAnimationsEverywhereTileMapPlacementVisitor_Access_Array_Access_Array_Access is access all AllAnimationsEverywhereTileMapPlacementVisitor_Access_Array_Access_Array;
end org.allbinary.game.behavior.topview.placement.AllAnimationsEverywhereTileMapPlacementVisitor_Package_References;

with org.allbinary.game.behavior.topview.placement.AllAnimationsEverywhereTileMapPlacementVisitor_Package_References;
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
with org.allbinary.game.behavior.topview.placement.TileMapPlacementVisitor_Package; use org.allbinary.game.behavior.topview.placement.TileMapPlacementVisitor_Package;

package org.allbinary.game.behavior.topview.placement.AllAnimationsEverywhereTileMapPlacementVisitor_Package is

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


   subtype AllAnimationsEverywhereTileMapPlacementVisitor_Access is org.allbinary.game.behavior.topview.placement.AllAnimationsEverywhereTileMapPlacementVisitor_Package_References.AllAnimationsEverywhereTileMapPlacementVisitor_Access;
   function "=" (Left, Right : AllAnimationsEverywhereTileMapPlacementVisitor_Access) return Boolean renames org.allbinary.game.behavior.topview.placement.AllAnimationsEverywhereTileMapPlacementVisitor_Package_References."=";
   subtype AllAnimationsEverywhereTileMapPlacementVisitor_Access_Array is org.allbinary.game.behavior.topview.placement.AllAnimationsEverywhereTileMapPlacementVisitor_Package_References.AllAnimationsEverywhereTileMapPlacementVisitor_Access_Array;
   function "=" (Left, Right : AllAnimationsEverywhereTileMapPlacementVisitor_Access_Array) return Boolean renames org.allbinary.game.behavior.topview.placement.AllAnimationsEverywhereTileMapPlacementVisitor_Package_References."=";
   subtype AllAnimationsEverywhereTileMapPlacementVisitor_Access_Array_Access is org.allbinary.game.behavior.topview.placement.AllAnimationsEverywhereTileMapPlacementVisitor_Package_References.AllAnimationsEverywhereTileMapPlacementVisitor_Access_Array_Access;
   function "=" (Left, Right : AllAnimationsEverywhereTileMapPlacementVisitor_Access_Array_Access) return Boolean renames org.allbinary.game.behavior.topview.placement.AllAnimationsEverywhereTileMapPlacementVisitor_Package_References."=";
   subtype AllAnimationsEverywhereTileMapPlacementVisitor_Access_Array_Access_Array is org.allbinary.game.behavior.topview.placement.AllAnimationsEverywhereTileMapPlacementVisitor_Package_References.AllAnimationsEverywhereTileMapPlacementVisitor_Access_Array_Access_Array;
   function "=" (Left, Right : AllAnimationsEverywhereTileMapPlacementVisitor_Access_Array_Access_Array) return Boolean renames org.allbinary.game.behavior.topview.placement.AllAnimationsEverywhereTileMapPlacementVisitor_Package_References."=";
   subtype AllAnimationsEverywhereTileMapPlacementVisitor_Access_Array_Access_Array_Access is org.allbinary.game.behavior.topview.placement.AllAnimationsEverywhereTileMapPlacementVisitor_Package_References.AllAnimationsEverywhereTileMapPlacementVisitor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllAnimationsEverywhereTileMapPlacementVisitor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.behavior.topview.placement.AllAnimationsEverywhereTileMapPlacementVisitor_Package_References."=";

   type AllAnimationsEverywhereTileMapPlacementVisitor is new TileMapPlacementVisitor with null record;

   procedure Initialize (This : in out AllAnimationsEverywhereTileMapPlacementVisitor'Class);
   function Create return AllAnimationsEverywhereTileMapPlacementVisitor_Access;
   procedure visit (This : in out AllAnimationsEverywhereTileMapPlacementVisitor; lastMap_Param : access TiledMap_Package.TiledMap'Class; mapData : Integer_Array_Access_Array_Access);

end org.allbinary.game.behavior.topview.placement.AllAnimationsEverywhereTileMapPlacementVisitor_Package;


