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
limited with org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEvent_Package;
package org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEvent_Package_References is
   type GeographicMapCellPositionEvent_Access is access all org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEvent_Package.GeographicMapCellPositionEvent'Class;
   type GeographicMapCellPositionEvent_Access_Array is array (Natural range <>) of GeographicMapCellPositionEvent_Access;
   type GeographicMapCellPositionEvent_Access_Array_Access is access all GeographicMapCellPositionEvent_Access_Array;
   type GeographicMapCellPositionEvent_Access_Array_Access_Array is array (Natural range <>) of GeographicMapCellPositionEvent_Access_Array_Access;
   type GeographicMapCellPositionEvent_Access_Array_Access_Array_Access is access all GeographicMapCellPositionEvent_Access_Array_Access_Array;
   type GeographicMapCellPositionEvent_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GeographicMapCellPositionEvent_Access_Array_Access;
   end record;
   function Java_Box (Value : GeographicMapCellPositionEvent_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GeographicMapCellPositionEvent_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GeographicMapCellPositionEvent_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GeographicMapCellPositionEvent_Access_Array_Access is (if Value /= null and then Value.all in GeographicMapCellPositionEvent_Access_Array_Object'Class then GeographicMapCellPositionEvent_Access_Array_Object'Class (Value.all).Value else null);
   type GeographicMapCellPositionEvent_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GeographicMapCellPositionEvent_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : GeographicMapCellPositionEvent_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GeographicMapCellPositionEvent_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GeographicMapCellPositionEvent_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GeographicMapCellPositionEvent_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in GeographicMapCellPositionEvent_Access_Array_Access_Array_Object'Class then GeographicMapCellPositionEvent_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEvent_Package_References;

with org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEvent_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.graphics.CellPosition_Package;
with org.allbinary.graphics.CellPosition_Package_References;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;
limited with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References;

package org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEvent_Package is

   package CellPosition_Package renames Standard.org.allbinary.graphics.CellPosition_Package;
   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package GeographicMapCellPosition_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
   package Reference_Types is
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


   subtype GeographicMapCellPositionEvent_Access is org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEvent_Package_References.GeographicMapCellPositionEvent_Access;
   function "=" (Left, Right : GeographicMapCellPositionEvent_Access) return Boolean renames org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEvent_Package_References."=";
   subtype GeographicMapCellPositionEvent_Access_Array is org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEvent_Package_References.GeographicMapCellPositionEvent_Access_Array;
   function "=" (Left, Right : GeographicMapCellPositionEvent_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEvent_Package_References."=";
   subtype GeographicMapCellPositionEvent_Access_Array_Access is org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEvent_Package_References.GeographicMapCellPositionEvent_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellPositionEvent_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEvent_Package_References."=";
   function Java_Box (Value : GeographicMapCellPositionEvent_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEvent_Package_References.Java_Box;
   function Java_Unbox_GeographicMapCellPositionEvent_Access_Array (Value : access Java_Object'Class) return GeographicMapCellPositionEvent_Access_Array_Access renames org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEvent_Package_References.Java_Unbox_GeographicMapCellPositionEvent_Access_Array;
   subtype GeographicMapCellPositionEvent_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEvent_Package_References.GeographicMapCellPositionEvent_Access_Array_Access_Array;
   function "=" (Left, Right : GeographicMapCellPositionEvent_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEvent_Package_References."=";
   subtype GeographicMapCellPositionEvent_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEvent_Package_References.GeographicMapCellPositionEvent_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellPositionEvent_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEvent_Package_References."=";
   function Java_Box (Value : GeographicMapCellPositionEvent_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEvent_Package_References.Java_Box;
   function Java_Unbox_GeographicMapCellPositionEvent_Access_Array_Access_Array (Value : access Java_Object'Class) return GeographicMapCellPositionEvent_Access_Array_Access_Array_Access renames org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEvent_Package_References.Java_Unbox_GeographicMapCellPositionEvent_Access_Array_Access_Array;

   type GeographicMapCellPositionEvent is new AllBinaryEventObject with record
      geographicMapCellPosition : CellPosition_Access;
   end record;

   procedure Initialize (This : in out GeographicMapCellPositionEvent'Class; anyType_Param : access Java_Object'Class; geographicMapCellPosition_Param : access CellPosition_Package.CellPosition'Class);
   function Create (anyType_Param : access Java_Object'Class; geographicMapCellPosition_Param : access CellPosition_Package.CellPosition'Class) return GeographicMapCellPositionEvent_Access;
   procedure init (This : in out GeographicMapCellPositionEvent; anyType_Param : access Java_Object'Class);
   procedure setGeographicMapCellPosition (This : in out GeographicMapCellPositionEvent; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class);
   function getGeographicMapCellPosition (This : in out GeographicMapCellPositionEvent) return GeographicMapCellPosition_Access;
   function toString (This : in out GeographicMapCellPositionEvent) return Unbounded_String;
   procedure init (This : in out GeographicMapCellPositionEvent; Value : Unbounded_String);

end org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEvent_Package;


