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
limited with org.allbinary.media.graphics.geography.map.GeographicMapDirectionUtil_Package;
package org.allbinary.media.graphics.geography.map.GeographicMapDirectionUtil_Package_References is
   type GeographicMapDirectionUtil_Access is access all org.allbinary.media.graphics.geography.map.GeographicMapDirectionUtil_Package.GeographicMapDirectionUtil'Class;
   type GeographicMapDirectionUtil_Access_Array is array (Natural range <>) of GeographicMapDirectionUtil_Access;
   type GeographicMapDirectionUtil_Access_Array_Access is access all GeographicMapDirectionUtil_Access_Array;
   type GeographicMapDirectionUtil_Access_Array_Access_Array is array (Natural range <>) of GeographicMapDirectionUtil_Access_Array_Access;
   type GeographicMapDirectionUtil_Access_Array_Access_Array_Access is access all GeographicMapDirectionUtil_Access_Array_Access_Array;
   type GeographicMapDirectionUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GeographicMapDirectionUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : GeographicMapDirectionUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GeographicMapDirectionUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GeographicMapDirectionUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GeographicMapDirectionUtil_Access_Array_Access is (if Value /= null and then Value.all in GeographicMapDirectionUtil_Access_Array_Object'Class then GeographicMapDirectionUtil_Access_Array_Object'Class (Value.all).Value else null);
   type GeographicMapDirectionUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GeographicMapDirectionUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : GeographicMapDirectionUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GeographicMapDirectionUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GeographicMapDirectionUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GeographicMapDirectionUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in GeographicMapDirectionUtil_Access_Array_Access_Array_Object'Class then GeographicMapDirectionUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.graphics.geography.map.GeographicMapDirectionUtil_Package_References;

with org.allbinary.media.graphics.geography.map.GeographicMapDirectionUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.direction.Direction_Package;
with org.allbinary.direction.Direction_Package_References;
limited with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References;

package org.allbinary.media.graphics.geography.map.GeographicMapDirectionUtil_Package is

   package Direction_Package renames Standard.org.allbinary.direction.Direction_Package;
   package Reference_Types is
   subtype Direction_Access is org.allbinary.direction.Direction_Package_References.Direction_Access;
   use type Direction_Access;
   subtype Direction_Access_Array is org.allbinary.direction.Direction_Package_References.Direction_Access_Array;
   use type Direction_Access_Array;
   subtype Direction_Access_Array_Access is org.allbinary.direction.Direction_Package_References.Direction_Access_Array_Access;
   use type Direction_Access_Array_Access;
   subtype Direction_Access_Array_Access_Array is org.allbinary.direction.Direction_Package_References.Direction_Access_Array_Access_Array;
   use type Direction_Access_Array_Access_Array;
   subtype Direction_Access_Array_Access_Array_Access is org.allbinary.direction.Direction_Package_References.Direction_Access_Array_Access_Array_Access;
   use type Direction_Access_Array_Access_Array_Access;
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
   end Reference_Types;
   use Reference_Types;


   subtype GeographicMapDirectionUtil_Access is org.allbinary.media.graphics.geography.map.GeographicMapDirectionUtil_Package_References.GeographicMapDirectionUtil_Access;
   function "=" (Left, Right : GeographicMapDirectionUtil_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapDirectionUtil_Package_References."=";
   subtype GeographicMapDirectionUtil_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapDirectionUtil_Package_References.GeographicMapDirectionUtil_Access_Array;
   function "=" (Left, Right : GeographicMapDirectionUtil_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapDirectionUtil_Package_References."=";
   subtype GeographicMapDirectionUtil_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapDirectionUtil_Package_References.GeographicMapDirectionUtil_Access_Array_Access;
   function "=" (Left, Right : GeographicMapDirectionUtil_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapDirectionUtil_Package_References."=";
   function Java_Box (Value : GeographicMapDirectionUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.graphics.geography.map.GeographicMapDirectionUtil_Package_References.Java_Box;
   function Java_Unbox_GeographicMapDirectionUtil_Access_Array (Value : access Java_Object'Class) return GeographicMapDirectionUtil_Access_Array_Access renames org.allbinary.media.graphics.geography.map.GeographicMapDirectionUtil_Package_References.Java_Unbox_GeographicMapDirectionUtil_Access_Array;
   subtype GeographicMapDirectionUtil_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapDirectionUtil_Package_References.GeographicMapDirectionUtil_Access_Array_Access_Array;
   function "=" (Left, Right : GeographicMapDirectionUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapDirectionUtil_Package_References."=";
   subtype GeographicMapDirectionUtil_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapDirectionUtil_Package_References.GeographicMapDirectionUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GeographicMapDirectionUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapDirectionUtil_Package_References."=";
   function Java_Box (Value : GeographicMapDirectionUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.graphics.geography.map.GeographicMapDirectionUtil_Package_References.Java_Box;
   function Java_Unbox_GeographicMapDirectionUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return GeographicMapDirectionUtil_Access_Array_Access_Array_Access renames org.allbinary.media.graphics.geography.map.GeographicMapDirectionUtil_Package_References.Java_Unbox_GeographicMapDirectionUtil_Access_Array_Access_Array;

   type GeographicMapDirectionUtil is new Java_Object with record
      MESSAGE : Unbounded_String;
      ERROR : Unbounded_String;
      EQUAL : Unbounded_String;
   end record;
   instance : GeographicMapDirectionUtil_Access;

   procedure Initialize (This : in out GeographicMapDirectionUtil'Class);
   function Create return GeographicMapDirectionUtil_Access;
   function getInstance return GeographicMapDirectionUtil_Access;
   function getDirectionFromCellPositionToAdjacentCellPosition (This : in out GeographicMapDirectionUtil; fromGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; toGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) return Direction_Access;
   procedure getDirectionFromCellPositionToAdjacentCellPosition (This : in out GeographicMapDirectionUtil; fromGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; toGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class);
   function getEightDirectionFromCellPositionToAdjacentCellPosition (This : in out GeographicMapDirectionUtil; fromGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; toGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) return Direction_Access;
   procedure getEightDirectionFromCellPositionToAdjacentCellPosition (This : in out GeographicMapDirectionUtil; fromGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; toGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class);
   function getDirectionFromCellPositionToCellPosition (This : in out GeographicMapDirectionUtil; fromGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; toGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) return Direction_Access;
   procedure getDirectionFromCellPositionToCellPosition (This : in out GeographicMapDirectionUtil; fromGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; toGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class);
   function getEightDirectionFromCellPositionToCellPosition (This : in out GeographicMapDirectionUtil; fromGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; toGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) return Direction_Access;
   procedure getEightDirectionFromCellPositionToCellPosition (This : in out GeographicMapDirectionUtil; fromGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; toGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class);

end org.allbinary.media.graphics.geography.map.GeographicMapDirectionUtil_Package;


