--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
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
with org.allbinary.graphics.CellPositionFactory_Package; use org.allbinary.graphics.CellPositionFactory_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;

package org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package CellPosition_Package renames Standard.org.allbinary.graphics.CellPosition_Package;
   package CellPositionFactory_Package renames Standard.org.allbinary.graphics.CellPositionFactory_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;

   type DropCellPositionHistory is tagged;
   type DropCellPositionHistory_Access is access all DropCellPositionHistory'Class;
   type DropCellPositionHistory_Access_Array is array (Natural range <>) of DropCellPositionHistory_Access;
   type DropCellPositionHistory_Access_Array_Access is access all DropCellPositionHistory_Access_Array;

   type DropCellPositionHistory is new Java_Object with record
      cellPositionFactory : CellPositionFactory_Access;
      positionList : BasicArrayList_Access;
      layerList : BasicArrayList_Access;
   end record;
   SINGLETON : DropCellPositionHistory_Access;

   procedure Initialize (This : in out DropCellPositionHistory'Class);
   function Create return DropCellPositionHistory_Access;
   function getInstance return DropCellPositionHistory_Access;
   procedure add (This : in out DropCellPositionHistory; cellPosition_Param : access CellPosition_Package.CellPosition'Class; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class);
   procedure addAll (This : in out DropCellPositionHistory; list_Param : access BasicArrayList_Package.BasicArrayList'Class; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class);
   procedure remove (This : in out DropCellPositionHistory; cellPosition_Param : access CellPosition_Package.CellPosition'Class);
   procedure removeAll (This : in out DropCellPositionHistory; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class);
   procedure clear (This : in out DropCellPositionHistory);
   function isCellPositionWithDrop (This : in out DropCellPositionHistory; cellPosition_Param : access CellPosition_Package.CellPosition'Class) return Boolean;
   procedure isCellPositionWithDrop (This : in out DropCellPositionHistory; cellPosition_Param : access CellPosition_Package.CellPosition'Class);
   function anyCellPositionWithDrop (This : in out DropCellPositionHistory; list_Param : access BasicArrayList_Package.BasicArrayList'Class) return Boolean;
   procedure anyCellPositionWithDrop (This : in out DropCellPositionHistory; list_Param : access BasicArrayList_Package.BasicArrayList'Class);
   function getCellPositionWithDrop (This : in out DropCellPositionHistory; list_Param : access BasicArrayList_Package.BasicArrayList'Class) return CellPosition_Access;
   procedure getCellPositionWithDrop (This : in out DropCellPositionHistory; list_Param : access BasicArrayList_Package.BasicArrayList'Class);
   function getLayerInterface (This : in out DropCellPositionHistory; cellPosition_Param : access CellPosition_Package.CellPosition'Class) return AllBinaryLayer_Access;
   procedure getLayerInterface (This : in out DropCellPositionHistory; cellPosition_Param : access CellPosition_Package.CellPosition'Class);

end org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory_Package;


