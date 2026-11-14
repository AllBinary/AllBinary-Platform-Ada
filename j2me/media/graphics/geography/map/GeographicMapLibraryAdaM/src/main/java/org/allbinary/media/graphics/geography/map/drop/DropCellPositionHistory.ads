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

with AllBinary_Java;
limited with org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory_Package;
package org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory_Package_References is
   type DropCellPositionHistory_Access is access all org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory_Package.DropCellPositionHistory'Class;
   type DropCellPositionHistory_Access_Array is array (Natural range <>) of DropCellPositionHistory_Access;
   type DropCellPositionHistory_Access_Array_Access is access all DropCellPositionHistory_Access_Array;
   type DropCellPositionHistory_Access_Array_Access_Array is array (Natural range <>) of DropCellPositionHistory_Access_Array_Access;
   type DropCellPositionHistory_Access_Array_Access_Array_Access is access all DropCellPositionHistory_Access_Array_Access_Array;
   type DropCellPositionHistory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : DropCellPositionHistory_Access_Array_Access;
   end record;
   function Java_Box (Value : DropCellPositionHistory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new DropCellPositionHistory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_DropCellPositionHistory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return DropCellPositionHistory_Access_Array_Access is (if Value /= null and then Value.all in DropCellPositionHistory_Access_Array_Object'Class then DropCellPositionHistory_Access_Array_Object'Class (Value.all).Value else null);
   type DropCellPositionHistory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : DropCellPositionHistory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : DropCellPositionHistory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new DropCellPositionHistory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_DropCellPositionHistory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return DropCellPositionHistory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in DropCellPositionHistory_Access_Array_Access_Array_Object'Class then DropCellPositionHistory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory_Package_References;

with org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory_Package_References;
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
limited with org.allbinary.graphics.CellPositionFactory_Package;
with org.allbinary.graphics.CellPositionFactory_Package_References;
limited with org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package_References;

package org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package CellPosition_Package renames Standard.org.allbinary.graphics.CellPosition_Package;
   package CellPositionFactory_Package renames Standard.org.allbinary.graphics.CellPositionFactory_Package;
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
   subtype CellPositionFactory_Access is org.allbinary.graphics.CellPositionFactory_Package_References.CellPositionFactory_Access;
   use type CellPositionFactory_Access;
   subtype CellPositionFactory_Access_Array is org.allbinary.graphics.CellPositionFactory_Package_References.CellPositionFactory_Access_Array;
   use type CellPositionFactory_Access_Array;
   subtype CellPositionFactory_Access_Array_Access is org.allbinary.graphics.CellPositionFactory_Package_References.CellPositionFactory_Access_Array_Access;
   use type CellPositionFactory_Access_Array_Access;
   subtype CellPositionFactory_Access_Array_Access_Array is org.allbinary.graphics.CellPositionFactory_Package_References.CellPositionFactory_Access_Array_Access_Array;
   use type CellPositionFactory_Access_Array_Access_Array;
   subtype CellPositionFactory_Access_Array_Access_Array_Access is org.allbinary.graphics.CellPositionFactory_Package_References.CellPositionFactory_Access_Array_Access_Array_Access;
   use type CellPositionFactory_Access_Array_Access_Array_Access;
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


   subtype DropCellPositionHistory_Access is org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory_Package_References.DropCellPositionHistory_Access;
   function "=" (Left, Right : DropCellPositionHistory_Access) return Boolean renames org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory_Package_References."=";
   subtype DropCellPositionHistory_Access_Array is org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory_Package_References.DropCellPositionHistory_Access_Array;
   function "=" (Left, Right : DropCellPositionHistory_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory_Package_References."=";
   subtype DropCellPositionHistory_Access_Array_Access is org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory_Package_References.DropCellPositionHistory_Access_Array_Access;
   function "=" (Left, Right : DropCellPositionHistory_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory_Package_References."=";
   function Java_Box (Value : DropCellPositionHistory_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory_Package_References.Java_Box;
   function Java_Unbox_DropCellPositionHistory_Access_Array (Value : access Java_Object'Class) return DropCellPositionHistory_Access_Array_Access renames org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory_Package_References.Java_Unbox_DropCellPositionHistory_Access_Array;
   subtype DropCellPositionHistory_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory_Package_References.DropCellPositionHistory_Access_Array_Access_Array;
   function "=" (Left, Right : DropCellPositionHistory_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory_Package_References."=";
   subtype DropCellPositionHistory_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory_Package_References.DropCellPositionHistory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DropCellPositionHistory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory_Package_References."=";
   function Java_Box (Value : DropCellPositionHistory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory_Package_References.Java_Box;
   function Java_Unbox_DropCellPositionHistory_Access_Array_Access_Array (Value : access Java_Object'Class) return DropCellPositionHistory_Access_Array_Access_Array_Access renames org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory_Package_References.Java_Unbox_DropCellPositionHistory_Access_Array_Access_Array;

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


