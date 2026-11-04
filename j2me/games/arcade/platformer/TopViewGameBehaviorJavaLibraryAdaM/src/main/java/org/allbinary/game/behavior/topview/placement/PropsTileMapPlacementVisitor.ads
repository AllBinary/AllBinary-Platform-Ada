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

limited with org.allbinary.game.behavior.topview.placement.PropsTileMapPlacementVisitor_Package;
package org.allbinary.game.behavior.topview.placement.PropsTileMapPlacementVisitor_Package_References is
   type PropsTileMapPlacementVisitor_Access is access all org.allbinary.game.behavior.topview.placement.PropsTileMapPlacementVisitor_Package.PropsTileMapPlacementVisitor'Class;
   type PropsTileMapPlacementVisitor_Access_Array is array (Natural range <>) of PropsTileMapPlacementVisitor_Access;
   type PropsTileMapPlacementVisitor_Access_Array_Access is access all PropsTileMapPlacementVisitor_Access_Array;
   type PropsTileMapPlacementVisitor_Access_Array_Access_Array is array (Natural range <>) of PropsTileMapPlacementVisitor_Access_Array_Access;
   type PropsTileMapPlacementVisitor_Access_Array_Access_Array_Access is access all PropsTileMapPlacementVisitor_Access_Array_Access_Array;
end org.allbinary.game.behavior.topview.placement.PropsTileMapPlacementVisitor_Package_References;

with org.allbinary.game.behavior.topview.placement.PropsTileMapPlacementVisitor_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.rand.MyRandomFactory_Package;
with org.allbinary.game.rand.MyRandomFactory_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.mapeditor.core.TiledMap_Package;
with org.mapeditor.core.TiledMap_Package_References;
with org.allbinary.game.behavior.topview.placement.TileMapPlacementVisitor_Package; use org.allbinary.game.behavior.topview.placement.TileMapPlacementVisitor_Package;

package org.allbinary.game.behavior.topview.placement.PropsTileMapPlacementVisitor_Package is

   package MyRandomFactory_Package renames Standard.org.allbinary.game.rand.MyRandomFactory_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package TiledMap_Package renames Standard.org.mapeditor.core.TiledMap_Package;
   package Reference_Types is
   subtype MyRandomFactory_Access is org.allbinary.game.rand.MyRandomFactory_Package_References.MyRandomFactory_Access;
   use type MyRandomFactory_Access;
   subtype MyRandomFactory_Access_Array is org.allbinary.game.rand.MyRandomFactory_Package_References.MyRandomFactory_Access_Array;
   use type MyRandomFactory_Access_Array;
   subtype MyRandomFactory_Access_Array_Access is org.allbinary.game.rand.MyRandomFactory_Package_References.MyRandomFactory_Access_Array_Access;
   use type MyRandomFactory_Access_Array_Access;
   subtype MyRandomFactory_Access_Array_Access_Array is org.allbinary.game.rand.MyRandomFactory_Package_References.MyRandomFactory_Access_Array_Access_Array;
   use type MyRandomFactory_Access_Array_Access_Array;
   subtype MyRandomFactory_Access_Array_Access_Array_Access is org.allbinary.game.rand.MyRandomFactory_Package_References.MyRandomFactory_Access_Array_Access_Array_Access;
   use type MyRandomFactory_Access_Array_Access_Array_Access;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
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


   subtype PropsTileMapPlacementVisitor_Access is org.allbinary.game.behavior.topview.placement.PropsTileMapPlacementVisitor_Package_References.PropsTileMapPlacementVisitor_Access;
   function "=" (Left, Right : PropsTileMapPlacementVisitor_Access) return Boolean renames org.allbinary.game.behavior.topview.placement.PropsTileMapPlacementVisitor_Package_References."=";
   subtype PropsTileMapPlacementVisitor_Access_Array is org.allbinary.game.behavior.topview.placement.PropsTileMapPlacementVisitor_Package_References.PropsTileMapPlacementVisitor_Access_Array;
   function "=" (Left, Right : PropsTileMapPlacementVisitor_Access_Array) return Boolean renames org.allbinary.game.behavior.topview.placement.PropsTileMapPlacementVisitor_Package_References."=";
   subtype PropsTileMapPlacementVisitor_Access_Array_Access is org.allbinary.game.behavior.topview.placement.PropsTileMapPlacementVisitor_Package_References.PropsTileMapPlacementVisitor_Access_Array_Access;
   function "=" (Left, Right : PropsTileMapPlacementVisitor_Access_Array_Access) return Boolean renames org.allbinary.game.behavior.topview.placement.PropsTileMapPlacementVisitor_Package_References."=";
   subtype PropsTileMapPlacementVisitor_Access_Array_Access_Array is org.allbinary.game.behavior.topview.placement.PropsTileMapPlacementVisitor_Package_References.PropsTileMapPlacementVisitor_Access_Array_Access_Array;
   function "=" (Left, Right : PropsTileMapPlacementVisitor_Access_Array_Access_Array) return Boolean renames org.allbinary.game.behavior.topview.placement.PropsTileMapPlacementVisitor_Package_References."=";
   subtype PropsTileMapPlacementVisitor_Access_Array_Access_Array_Access is org.allbinary.game.behavior.topview.placement.PropsTileMapPlacementVisitor_Package_References.PropsTileMapPlacementVisitor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PropsTileMapPlacementVisitor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.behavior.topview.placement.PropsTileMapPlacementVisitor_Package_References."=";

   type PropsTileMapPlacementVisitor is new TileMapPlacementVisitor with record
      logUtil : LogUtil_Access;
      randomFactory : MyRandomFactory_Access;
   end record;

   procedure Initialize (This : in out PropsTileMapPlacementVisitor'Class);
   function Create return PropsTileMapPlacementVisitor_Access;
   procedure visit (This : in out PropsTileMapPlacementVisitor; lastMap_Param : access TiledMap_Package.TiledMap'Class; mapData : Integer_Array_Access_Array_Access);
   procedure visit2 (This : in out PropsTileMapPlacementVisitor; mapArray : Integer_Array_Access_Array_Access; mapData : Integer_Array_Access_Array_Access; index : Integer; index2 : Integer);

end org.allbinary.game.behavior.topview.placement.PropsTileMapPlacementVisitor_Package;


