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
limited with org.allbinary.media.graphics.geography.pathfinding.GeographicMapCellPathHistoryInfo_Package;
package org.allbinary.media.graphics.geography.pathfinding.GeographicMapCellPathHistoryInfo_Package_References is
   type GeographicMapCellPathHistoryInfo_Access is access all org.allbinary.media.graphics.geography.pathfinding.GeographicMapCellPathHistoryInfo_Package.GeographicMapCellPathHistoryInfo'Class;
   type GeographicMapCellPathHistoryInfo_Access_Array is array (Natural range <>) of GeographicMapCellPathHistoryInfo_Access;
   type GeographicMapCellPathHistoryInfo_Access_Array_Access is access all GeographicMapCellPathHistoryInfo_Access_Array;
   type GeographicMapCellPathHistoryInfo_Access_Array_Access_Array is array (Natural range <>) of GeographicMapCellPathHistoryInfo_Access_Array_Access;
   type GeographicMapCellPathHistoryInfo_Access_Array_Access_Array_Access is access all GeographicMapCellPathHistoryInfo_Access_Array_Access_Array;
   type GeographicMapCellPathHistoryInfo_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GeographicMapCellPathHistoryInfo_Access_Array_Access;
   end record;
   function Java_Box (Value : GeographicMapCellPathHistoryInfo_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GeographicMapCellPathHistoryInfo_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GeographicMapCellPathHistoryInfo_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GeographicMapCellPathHistoryInfo_Access_Array_Access is (if Value /= null and then Value.all in GeographicMapCellPathHistoryInfo_Access_Array_Object'Class then GeographicMapCellPathHistoryInfo_Access_Array_Object'Class (Value.all).Value else null);
   type GeographicMapCellPathHistoryInfo_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GeographicMapCellPathHistoryInfo_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : GeographicMapCellPathHistoryInfo_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GeographicMapCellPathHistoryInfo_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GeographicMapCellPathHistoryInfo_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GeographicMapCellPathHistoryInfo_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in GeographicMapCellPathHistoryInfo_Access_Array_Access_Array_Object'Class then GeographicMapCellPathHistoryInfo_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.graphics.geography.pathfinding.GeographicMapCellPathHistoryInfo_Package_References;

with org.allbinary.media.graphics.geography.pathfinding.GeographicMapCellPathHistoryInfo_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References;

package org.allbinary.media.graphics.geography.pathfinding.GeographicMapCellPathHistoryInfo_Package is

   package GeographicMapCellPosition_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
   package Reference_Types is
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


   subtype GeographicMapCellPathHistoryInfo_Access is org.allbinary.media.graphics.geography.pathfinding.GeographicMapCellPathHistoryInfo_Package_References.GeographicMapCellPathHistoryInfo_Access;
   function "=" (Left, Right : GeographicMapCellPathHistoryInfo_Access) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.GeographicMapCellPathHistoryInfo_Package_References."=";
   subtype GeographicMapCellPathHistoryInfo_Access_Array is org.allbinary.media.graphics.geography.pathfinding.GeographicMapCellPathHistoryInfo_Package_References.GeographicMapCellPathHistoryInfo_Access_Array;
   function "=" (Left, Right : GeographicMapCellPathHistoryInfo_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.GeographicMapCellPathHistoryInfo_Package_References."=";
   subtype GeographicMapCellPathHistoryInfo_Access_Array_Access is org.allbinary.media.graphics.geography.pathfinding.GeographicMapCellPathHistoryInfo_Package_References.GeographicMapCellPathHistoryInfo_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellPathHistoryInfo_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.GeographicMapCellPathHistoryInfo_Package_References."=";
   function Java_Box (Value : GeographicMapCellPathHistoryInfo_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.graphics.geography.pathfinding.GeographicMapCellPathHistoryInfo_Package_References.Java_Box;
   function Java_Unbox_GeographicMapCellPathHistoryInfo_Access_Array (Value : access Java_Object'Class) return GeographicMapCellPathHistoryInfo_Access_Array_Access renames org.allbinary.media.graphics.geography.pathfinding.GeographicMapCellPathHistoryInfo_Package_References.Java_Unbox_GeographicMapCellPathHistoryInfo_Access_Array;
   subtype GeographicMapCellPathHistoryInfo_Access_Array_Access_Array is org.allbinary.media.graphics.geography.pathfinding.GeographicMapCellPathHistoryInfo_Package_References.GeographicMapCellPathHistoryInfo_Access_Array_Access_Array;
   function "=" (Left, Right : GeographicMapCellPathHistoryInfo_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.GeographicMapCellPathHistoryInfo_Package_References."=";
   subtype GeographicMapCellPathHistoryInfo_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.pathfinding.GeographicMapCellPathHistoryInfo_Package_References.GeographicMapCellPathHistoryInfo_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellPathHistoryInfo_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.GeographicMapCellPathHistoryInfo_Package_References."=";
   function Java_Box (Value : GeographicMapCellPathHistoryInfo_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.graphics.geography.pathfinding.GeographicMapCellPathHistoryInfo_Package_References.Java_Box;
   function Java_Unbox_GeographicMapCellPathHistoryInfo_Access_Array_Access_Array (Value : access Java_Object'Class) return GeographicMapCellPathHistoryInfo_Access_Array_Access_Array_Access renames org.allbinary.media.graphics.geography.pathfinding.GeographicMapCellPathHistoryInfo_Package_References.Java_Unbox_GeographicMapCellPathHistoryInfo_Access_Array_Access_Array;

   type GeographicMapCellPathHistoryInfo is new Java_Object with record
      previousGeographicMapCellPosition : GeographicMapCellPosition_Access;
      previousOnPathGeographicMapCellPosition : GeographicMapCellPosition_Access;
      nextUnvisitedOnPathGeographicMapCellPosition : GeographicMapCellPosition_Access;
      nextOnPathGeographicMapCellPosition : GeographicMapCellPosition_Access;
      nextChosenOnPathGeographicMapCellPosition : GeographicMapCellPosition_Access;
   end record;

   procedure Initialize (This : in out GeographicMapCellPathHistoryInfo'Class);
   function Create return GeographicMapCellPathHistoryInfo_Access;
   function getPreviousGeographicMapCellPosition (This : in out GeographicMapCellPathHistoryInfo) return GeographicMapCellPosition_Access;
   procedure setPreviousGeographicMapCellPosition (This : in out GeographicMapCellPathHistoryInfo; previousGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class);
   function getPreviousOnPathGeographicMapCellPosition (This : in out GeographicMapCellPathHistoryInfo) return GeographicMapCellPosition_Access;
   procedure setPreviousOnPathGeographicMapCellPosition (This : in out GeographicMapCellPathHistoryInfo; previousOnPathGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class);
   function getNextUnvisitedOnPathGeographicMapCellPosition (This : in out GeographicMapCellPathHistoryInfo) return GeographicMapCellPosition_Access;
   procedure setNextUnvisitedOnPathGeographicMapCellPosition (This : in out GeographicMapCellPathHistoryInfo; nextUnvisitedOnPathGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class);
   function getNextOnPathGeographicMapCellPosition (This : in out GeographicMapCellPathHistoryInfo) return GeographicMapCellPosition_Access;
   procedure setNextOnPathGeographicMapCellPosition (This : in out GeographicMapCellPathHistoryInfo; nextOnPathGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class);
   function getNextChosenOnPathGeographicMapCellPosition (This : in out GeographicMapCellPathHistoryInfo) return GeographicMapCellPosition_Access;
   procedure setNextChosenOnPathGeographicMapCellPosition (This : in out GeographicMapCellPathHistoryInfo; nextChosenOnPathGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class);

end org.allbinary.media.graphics.geography.pathfinding.GeographicMapCellPathHistoryInfo_Package;


