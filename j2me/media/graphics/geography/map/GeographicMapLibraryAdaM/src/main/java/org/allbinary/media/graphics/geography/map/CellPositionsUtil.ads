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
limited with org.allbinary.media.graphics.geography.map.CellPositionsUtil_Package;
package org.allbinary.media.graphics.geography.map.CellPositionsUtil_Package_References is
   type CellPositionsUtil_Access is access all org.allbinary.media.graphics.geography.map.CellPositionsUtil_Package.CellPositionsUtil'Class;
   type CellPositionsUtil_Access_Array is array (Natural range <>) of CellPositionsUtil_Access;
   type CellPositionsUtil_Access_Array_Access is access all CellPositionsUtil_Access_Array;
   type CellPositionsUtil_Access_Array_Access_Array is array (Natural range <>) of CellPositionsUtil_Access_Array_Access;
   type CellPositionsUtil_Access_Array_Access_Array_Access is access all CellPositionsUtil_Access_Array_Access_Array;
   type CellPositionsUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CellPositionsUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : CellPositionsUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CellPositionsUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CellPositionsUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CellPositionsUtil_Access_Array_Access is (if Value /= null and then Value.all in CellPositionsUtil_Access_Array_Object'Class then CellPositionsUtil_Access_Array_Object'Class (Value.all).Value else null);
   type CellPositionsUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CellPositionsUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : CellPositionsUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CellPositionsUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CellPositionsUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CellPositionsUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in CellPositionsUtil_Access_Array_Access_Array_Object'Class then CellPositionsUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.graphics.geography.map.CellPositionsUtil_Package_References;

with org.allbinary.media.graphics.geography.map.CellPositionsUtil_Package_References;
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
limited with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References;
limited with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References;

package org.allbinary.media.graphics.geography.map.CellPositionsUtil_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
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
   subtype GeographicMapCellPosition_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access;
   use type GeographicMapCellPosition_Access;
   subtype GeographicMapCellPosition_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array;
   use type GeographicMapCellPosition_Access_Array;
   subtype GeographicMapCellPosition_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array_Access;
   use type GeographicMapCellPosition_Access_Array_Access;
   subtype GeographicMapCellPosition_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array_Access_Array;
   use type GeographicMapCellPosition_Access_Array_Access_Array;
   subtype GeographicMapCellPosition_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array_Access_Array_Access;
   use type GeographicMapCellPosition_Access_Array_Access_Array_Access;
   subtype BasicGeographicMap_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access;
   use type BasicGeographicMap_Access;
   subtype BasicGeographicMap_Access_Array is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array;
   use type BasicGeographicMap_Access_Array;
   subtype BasicGeographicMap_Access_Array_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array_Access;
   use type BasicGeographicMap_Access_Array_Access;
   subtype BasicGeographicMap_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array_Access_Array;
   use type BasicGeographicMap_Access_Array_Access_Array;
   subtype BasicGeographicMap_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array_Access_Array_Access;
   use type BasicGeographicMap_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype CellPositionsUtil_Access is org.allbinary.media.graphics.geography.map.CellPositionsUtil_Package_References.CellPositionsUtil_Access;
   function "=" (Left, Right : CellPositionsUtil_Access) return Boolean renames org.allbinary.media.graphics.geography.map.CellPositionsUtil_Package_References."=";
   subtype CellPositionsUtil_Access_Array is org.allbinary.media.graphics.geography.map.CellPositionsUtil_Package_References.CellPositionsUtil_Access_Array;
   function "=" (Left, Right : CellPositionsUtil_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.CellPositionsUtil_Package_References."=";
   subtype CellPositionsUtil_Access_Array_Access is org.allbinary.media.graphics.geography.map.CellPositionsUtil_Package_References.CellPositionsUtil_Access_Array_Access;
   function "=" (Left, Right : CellPositionsUtil_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.CellPositionsUtil_Package_References."=";
   function Java_Box (Value : CellPositionsUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.graphics.geography.map.CellPositionsUtil_Package_References.Java_Box;
   function Java_Unbox_CellPositionsUtil_Access_Array (Value : access Java_Object'Class) return CellPositionsUtil_Access_Array_Access renames org.allbinary.media.graphics.geography.map.CellPositionsUtil_Package_References.Java_Unbox_CellPositionsUtil_Access_Array;
   subtype CellPositionsUtil_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.CellPositionsUtil_Package_References.CellPositionsUtil_Access_Array_Access_Array;
   function "=" (Left, Right : CellPositionsUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.CellPositionsUtil_Package_References."=";
   subtype CellPositionsUtil_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.CellPositionsUtil_Package_References.CellPositionsUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CellPositionsUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.CellPositionsUtil_Package_References."=";
   function Java_Box (Value : CellPositionsUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.graphics.geography.map.CellPositionsUtil_Package_References.Java_Box;
   function Java_Unbox_CellPositionsUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return CellPositionsUtil_Access_Array_Access_Array_Access renames org.allbinary.media.graphics.geography.map.CellPositionsUtil_Package_References.Java_Unbox_CellPositionsUtil_Access_Array_Access_Array;

   type CellPositionsUtil is new Java_Object with record
      reusableSingleThreadedSurroundingList : BasicArrayList_Access;
      surroundArray : Integer_Array_Access_Array_Access;
   end record;
   instance : CellPositionsUtil_Access;

   procedure Initialize (This : in out CellPositionsUtil'Class);
   function Create return CellPositionsUtil_Access;
   function getInstance return CellPositionsUtil_Access;
   function getAll (This : in out CellPositionsUtil; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; topRightGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; columns : Integer; rows : Integer; reusableList_Param : access BasicArrayList_Package.BasicArrayList'Class) return BasicArrayList_Access;
   procedure getAll (This : in out CellPositionsUtil; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; topRightGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; columns : Integer; rows : Integer; reusableList_Param : access BasicArrayList_Package.BasicArrayList'Class);
   function getAllSurrounding (This : in out CellPositionsUtil; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; occupyList_Param : access BasicArrayList_Package.BasicArrayList'Class; reusableList_Param : access BasicArrayList_Package.BasicArrayList'Class) return BasicArrayList_Access;
   procedure getAllSurrounding (This : in out CellPositionsUtil; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; occupyList_Param : access BasicArrayList_Package.BasicArrayList'Class; reusableList_Param : access BasicArrayList_Package.BasicArrayList'Class);
   function getAllSurroundingAt (This : in out CellPositionsUtil; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; layerGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; reusableSurroundingList_Param : access BasicArrayList_Package.BasicArrayList'Class) return BasicArrayList_Access;
   procedure getAllSurroundingAt (This : in out CellPositionsUtil; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; layerGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; reusableSurroundingList_Param : access BasicArrayList_Package.BasicArrayList'Class);

end org.allbinary.media.graphics.geography.map.CellPositionsUtil_Package;


