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

limited with org.allbinary.game.layer.waypoint.WaypointCellPositionHistory_Package;
package org.allbinary.game.layer.waypoint.WaypointCellPositionHistory_Package_References is
   type WaypointCellPositionHistory_Access is access all org.allbinary.game.layer.waypoint.WaypointCellPositionHistory_Package.WaypointCellPositionHistory'Class;
   type WaypointCellPositionHistory_Access_Array is array (Natural range <>) of WaypointCellPositionHistory_Access;
   type WaypointCellPositionHistory_Access_Array_Access is access all WaypointCellPositionHistory_Access_Array;
   type WaypointCellPositionHistory_Access_Array_Access_Array is array (Natural range <>) of WaypointCellPositionHistory_Access_Array_Access;
   type WaypointCellPositionHistory_Access_Array_Access_Array_Access is access all WaypointCellPositionHistory_Access_Array_Access_Array;
end org.allbinary.game.layer.waypoint.WaypointCellPositionHistory_Package_References;

with org.allbinary.game.layer.waypoint.WaypointCellPositionHistory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.graphics.CellPosition_Package;
with org.allbinary.graphics.CellPosition_Package_References;
limited with org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package_References;

package org.allbinary.game.layer.waypoint.WaypointCellPositionHistory_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package CellPosition_Package renames Standard.org.allbinary.graphics.CellPosition_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package Reference_Types is
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   subtype CellPosition_Access is org.allbinary.graphics.CellPosition_Package_References.CellPosition_Access;
   use type CellPosition_Access;
   subtype CellPosition_Access_Array is org.allbinary.graphics.CellPosition_Package_References.CellPosition_Access_Array;
   use type CellPosition_Access_Array;
   subtype CellPosition_Access_Array_Access is org.allbinary.graphics.CellPosition_Package_References.CellPosition_Access_Array_Access;
   use type CellPosition_Access_Array_Access;
   subtype CellPosition_Access_Array_Access_Array is org.allbinary.graphics.CellPosition_Package_References.CellPosition_Access_Array_Access_Array;
   use type CellPosition_Access_Array_Access_Array;
   subtype CellPosition_Access_Array_Access_Array_Access is org.allbinary.graphics.CellPosition_Package_References.CellPosition_Access_Array_Access_Array_Access;
   use type CellPosition_Access_Array_Access_Array_Access;
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
   end Reference_Types;
   use Reference_Types;


   subtype WaypointCellPositionHistory_Access is org.allbinary.game.layer.waypoint.WaypointCellPositionHistory_Package_References.WaypointCellPositionHistory_Access;
   function "=" (Left, Right : WaypointCellPositionHistory_Access) return Boolean renames org.allbinary.game.layer.waypoint.WaypointCellPositionHistory_Package_References."=";
   subtype WaypointCellPositionHistory_Access_Array is org.allbinary.game.layer.waypoint.WaypointCellPositionHistory_Package_References.WaypointCellPositionHistory_Access_Array;
   function "=" (Left, Right : WaypointCellPositionHistory_Access_Array) return Boolean renames org.allbinary.game.layer.waypoint.WaypointCellPositionHistory_Package_References."=";
   subtype WaypointCellPositionHistory_Access_Array_Access is org.allbinary.game.layer.waypoint.WaypointCellPositionHistory_Package_References.WaypointCellPositionHistory_Access_Array_Access;
   function "=" (Left, Right : WaypointCellPositionHistory_Access_Array_Access) return Boolean renames org.allbinary.game.layer.waypoint.WaypointCellPositionHistory_Package_References."=";
   subtype WaypointCellPositionHistory_Access_Array_Access_Array is org.allbinary.game.layer.waypoint.WaypointCellPositionHistory_Package_References.WaypointCellPositionHistory_Access_Array_Access_Array;
   function "=" (Left, Right : WaypointCellPositionHistory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.waypoint.WaypointCellPositionHistory_Package_References."=";
   subtype WaypointCellPositionHistory_Access_Array_Access_Array_Access is org.allbinary.game.layer.waypoint.WaypointCellPositionHistory_Package_References.WaypointCellPositionHistory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : WaypointCellPositionHistory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.waypoint.WaypointCellPositionHistory_Package_References."=";

   type WaypointCellPositionHistory is new Java_Object with record
      positionList : BasicArrayList_Access;
      layerList : BasicArrayList_Access;
   end record;
   SINGLETON : WaypointCellPositionHistory_Access;

   procedure Initialize (This : in out WaypointCellPositionHistory'Class);
   function Create return WaypointCellPositionHistory_Access;
   function getInstance return WaypointCellPositionHistory_Access;
   procedure add (This : in out WaypointCellPositionHistory; cellPosition_Param : access CellPosition_Package.CellPosition'Class; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class);
   procedure addList (This : in out WaypointCellPositionHistory; list_Param : access BasicArrayList_Package.BasicArrayList'Class; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class);
   procedure remove (This : in out WaypointCellPositionHistory; cellPosition_Param : access CellPosition_Package.CellPosition'Class);
   procedure removeLayer (This : in out WaypointCellPositionHistory; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class);
   procedure clear (This : in out WaypointCellPositionHistory);
   function isCellPositionWithDrop (This : in out WaypointCellPositionHistory; cellPosition_Param : access CellPosition_Package.CellPosition'Class) return Boolean;
   procedure isCellPositionWithDrop (This : in out WaypointCellPositionHistory; cellPosition_Param : access CellPosition_Package.CellPosition'Class);
   function anyCellPositionWithDrop (This : in out WaypointCellPositionHistory; list_Param : access BasicArrayList_Package.BasicArrayList'Class) return Boolean;
   procedure anyCellPositionWithDrop (This : in out WaypointCellPositionHistory; list_Param : access BasicArrayList_Package.BasicArrayList'Class);
   function getLayerInterface (This : in out WaypointCellPositionHistory; cellPosition_Param : access CellPosition_Package.CellPosition'Class) return AllBinaryLayer_Access;
   procedure getLayerInterface (This : in out WaypointCellPositionHistory; cellPosition_Param : access CellPosition_Package.CellPosition'Class);

end org.allbinary.game.layer.waypoint.WaypointCellPositionHistory_Package;


