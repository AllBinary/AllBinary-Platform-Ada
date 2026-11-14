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
limited with org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventUtil_Package;
package org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventUtil_Package_References is
   type GeographicMapCellPositionEventUtil_Access is access all org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventUtil_Package.GeographicMapCellPositionEventUtil'Class;
   type GeographicMapCellPositionEventUtil_Access_Array is array (Natural range <>) of GeographicMapCellPositionEventUtil_Access;
   type GeographicMapCellPositionEventUtil_Access_Array_Access is access all GeographicMapCellPositionEventUtil_Access_Array;
   type GeographicMapCellPositionEventUtil_Access_Array_Access_Array is array (Natural range <>) of GeographicMapCellPositionEventUtil_Access_Array_Access;
   type GeographicMapCellPositionEventUtil_Access_Array_Access_Array_Access is access all GeographicMapCellPositionEventUtil_Access_Array_Access_Array;
   type GeographicMapCellPositionEventUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GeographicMapCellPositionEventUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : GeographicMapCellPositionEventUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GeographicMapCellPositionEventUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GeographicMapCellPositionEventUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GeographicMapCellPositionEventUtil_Access_Array_Access is (if Value /= null and then Value.all in GeographicMapCellPositionEventUtil_Access_Array_Object'Class then GeographicMapCellPositionEventUtil_Access_Array_Object'Class (Value.all).Value else null);
   type GeographicMapCellPositionEventUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GeographicMapCellPositionEventUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : GeographicMapCellPositionEventUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GeographicMapCellPositionEventUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GeographicMapCellPositionEventUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GeographicMapCellPositionEventUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in GeographicMapCellPositionEventUtil_Access_Array_Access_Array_Object'Class then GeographicMapCellPositionEventUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventUtil_Package_References;

with org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking_Package_References;
limited with org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEvent_Package;
with org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEvent_Package_References;
limited with org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventHandler_Package;
with org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventHandler_Package_References;

package org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventUtil_Package is

   package GeographicMapCellPositionTracking_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking_Package;
   package Reference_Types is
   subtype GeographicMapCellPositionTracking_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking_Package_References.GeographicMapCellPositionTracking_Access;
   use type GeographicMapCellPositionTracking_Access;
   subtype GeographicMapCellPositionTracking_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking_Package_References.GeographicMapCellPositionTracking_Access_Array;
   use type GeographicMapCellPositionTracking_Access_Array;
   subtype GeographicMapCellPositionTracking_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking_Package_References.GeographicMapCellPositionTracking_Access_Array_Access;
   use type GeographicMapCellPositionTracking_Access_Array_Access;
   subtype GeographicMapCellPositionTracking_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking_Package_References.GeographicMapCellPositionTracking_Access_Array_Access_Array;
   use type GeographicMapCellPositionTracking_Access_Array_Access_Array;
   subtype GeographicMapCellPositionTracking_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking_Package_References.GeographicMapCellPositionTracking_Access_Array_Access_Array_Access;
   use type GeographicMapCellPositionTracking_Access_Array_Access_Array_Access;
   subtype GeographicMapCellPositionEvent_Access is org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEvent_Package_References.GeographicMapCellPositionEvent_Access;
   use type GeographicMapCellPositionEvent_Access;
   subtype GeographicMapCellPositionEvent_Access_Array is org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEvent_Package_References.GeographicMapCellPositionEvent_Access_Array;
   use type GeographicMapCellPositionEvent_Access_Array;
   subtype GeographicMapCellPositionEvent_Access_Array_Access is org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEvent_Package_References.GeographicMapCellPositionEvent_Access_Array_Access;
   use type GeographicMapCellPositionEvent_Access_Array_Access;
   subtype GeographicMapCellPositionEvent_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEvent_Package_References.GeographicMapCellPositionEvent_Access_Array_Access_Array;
   use type GeographicMapCellPositionEvent_Access_Array_Access_Array;
   subtype GeographicMapCellPositionEvent_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEvent_Package_References.GeographicMapCellPositionEvent_Access_Array_Access_Array_Access;
   use type GeographicMapCellPositionEvent_Access_Array_Access_Array_Access;
   subtype GeographicMapCellPositionEventHandler_Access is org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventHandler_Package_References.GeographicMapCellPositionEventHandler_Access;
   use type GeographicMapCellPositionEventHandler_Access;
   subtype GeographicMapCellPositionEventHandler_Access_Array is org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventHandler_Package_References.GeographicMapCellPositionEventHandler_Access_Array;
   use type GeographicMapCellPositionEventHandler_Access_Array;
   subtype GeographicMapCellPositionEventHandler_Access_Array_Access is org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventHandler_Package_References.GeographicMapCellPositionEventHandler_Access_Array_Access;
   use type GeographicMapCellPositionEventHandler_Access_Array_Access;
   subtype GeographicMapCellPositionEventHandler_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventHandler_Package_References.GeographicMapCellPositionEventHandler_Access_Array_Access_Array;
   use type GeographicMapCellPositionEventHandler_Access_Array_Access_Array;
   subtype GeographicMapCellPositionEventHandler_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventHandler_Package_References.GeographicMapCellPositionEventHandler_Access_Array_Access_Array_Access;
   use type GeographicMapCellPositionEventHandler_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype GeographicMapCellPositionEventUtil_Access is org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventUtil_Package_References.GeographicMapCellPositionEventUtil_Access;
   function "=" (Left, Right : GeographicMapCellPositionEventUtil_Access) return Boolean renames org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventUtil_Package_References."=";
   subtype GeographicMapCellPositionEventUtil_Access_Array is org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventUtil_Package_References.GeographicMapCellPositionEventUtil_Access_Array;
   function "=" (Left, Right : GeographicMapCellPositionEventUtil_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventUtil_Package_References."=";
   subtype GeographicMapCellPositionEventUtil_Access_Array_Access is org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventUtil_Package_References.GeographicMapCellPositionEventUtil_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellPositionEventUtil_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventUtil_Package_References."=";
   function Java_Box (Value : GeographicMapCellPositionEventUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventUtil_Package_References.Java_Box;
   function Java_Unbox_GeographicMapCellPositionEventUtil_Access_Array (Value : access Java_Object'Class) return GeographicMapCellPositionEventUtil_Access_Array_Access renames org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventUtil_Package_References.Java_Unbox_GeographicMapCellPositionEventUtil_Access_Array;
   subtype GeographicMapCellPositionEventUtil_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventUtil_Package_References.GeographicMapCellPositionEventUtil_Access_Array_Access_Array;
   function "=" (Left, Right : GeographicMapCellPositionEventUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventUtil_Package_References."=";
   subtype GeographicMapCellPositionEventUtil_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventUtil_Package_References.GeographicMapCellPositionEventUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellPositionEventUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventUtil_Package_References."=";
   function Java_Box (Value : GeographicMapCellPositionEventUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventUtil_Package_References.Java_Box;
   function Java_Unbox_GeographicMapCellPositionEventUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return GeographicMapCellPositionEventUtil_Access_Array_Access_Array_Access renames org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventUtil_Package_References.Java_Unbox_GeographicMapCellPositionEventUtil_Access_Array_Access_Array;

   type GeographicMapCellPositionEventUtil is new Java_Object with record
      geographicMapCellPositionEvent : GeographicMapCellPositionEvent_Access;
      geographicMapCellPositionEventHandler : GeographicMapCellPositionEventHandler_Access;
   end record;

   procedure Initialize (This : in out GeographicMapCellPositionEventUtil'Class; anyType_Param : access Java_Object'Class);
   function Create (anyType_Param : access Java_Object'Class) return GeographicMapCellPositionEventUtil_Access;
   procedure update (This : in out GeographicMapCellPositionEventUtil; geographicMapCellPositionTracking_Param : access GeographicMapCellPositionTracking_Package.GeographicMapCellPositionTracking'Class);
   procedure remove (This : in out GeographicMapCellPositionEventUtil; geographicMapCellPositionTracking_Param : access GeographicMapCellPositionTracking_Package.GeographicMapCellPositionTracking'Class);

end org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventUtil_Package;


