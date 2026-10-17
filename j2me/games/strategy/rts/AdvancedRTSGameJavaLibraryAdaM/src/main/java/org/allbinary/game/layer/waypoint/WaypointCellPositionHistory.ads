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
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.graphics.CellPosition_Package; use org.allbinary.graphics.CellPosition_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;

package org.allbinary.game.layer.waypoint.WaypointCellPositionHistory_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package CellPosition_Package renames Standard.org.allbinary.graphics.CellPosition_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;

   type WaypointCellPositionHistory is tagged;
   type WaypointCellPositionHistory_Access is access all WaypointCellPositionHistory'Class;
   type WaypointCellPositionHistory_Access_Array is array (Natural range <>) of WaypointCellPositionHistory_Access;
   type WaypointCellPositionHistory_Access_Array_Access is access all WaypointCellPositionHistory_Access_Array;

   type WaypointCellPositionHistory is new Java_Object with record
      positionList : BasicArrayList_Access;
      layerList : BasicArrayList_Access;
   end record;
   SINGLETON : WaypointCellPositionHistory_Access;

   procedure Initialize (This : in out WaypointCellPositionHistory'Class);
   function Create return WaypointCellPositionHistory_Access;
   function getInstance return WaypointCellPositionHistory_Access;
   procedure add (This : in out WaypointCellPositionHistory; cellPosition_Param : access CellPosition'Class; layerInterface_Param : access AllBinaryLayer'Class);
   procedure addList (This : in out WaypointCellPositionHistory; list_Param : access BasicArrayList'Class; layerInterface_Param : access AllBinaryLayer'Class);
   procedure remove (This : in out WaypointCellPositionHistory; cellPosition_Param : access CellPosition'Class);
   procedure removeLayer (This : in out WaypointCellPositionHistory; layerInterface_Param : access AllBinaryLayer'Class);
   procedure clear (This : in out WaypointCellPositionHistory);
   function isCellPositionWithDrop (This : in out WaypointCellPositionHistory; cellPosition_Param : access CellPosition'Class) return Boolean;
   procedure isCellPositionWithDrop (This : in out WaypointCellPositionHistory; cellPosition_Param : access CellPosition'Class);
   function anyCellPositionWithDrop (This : in out WaypointCellPositionHistory; list_Param : access BasicArrayList'Class) return Boolean;
   procedure anyCellPositionWithDrop (This : in out WaypointCellPositionHistory; list_Param : access BasicArrayList'Class);
   function getLayerInterface (This : in out WaypointCellPositionHistory; cellPosition_Param : access CellPosition'Class) return AllBinaryLayer_Access;
   procedure getLayerInterface (This : in out WaypointCellPositionHistory; cellPosition_Param : access CellPosition'Class);

end org.allbinary.game.layer.waypoint.WaypointCellPositionHistory_Package;


