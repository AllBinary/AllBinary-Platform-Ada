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

limited with org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventListenerInterface_Package;
package org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventListenerInterface_Package_References is
   type GeographicMapCellPositionEventListenerInterface_Access is access all org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventListenerInterface_Package.GeographicMapCellPositionEventListenerInterface'Class;
   type GeographicMapCellPositionEventListenerInterface_Access_Array is array (Natural range <>) of GeographicMapCellPositionEventListenerInterface_Access;
   type GeographicMapCellPositionEventListenerInterface_Access_Array_Access is access all GeographicMapCellPositionEventListenerInterface_Access_Array;
   type GeographicMapCellPositionEventListenerInterface_Access_Array_Access_Array is array (Natural range <>) of GeographicMapCellPositionEventListenerInterface_Access_Array_Access;
   type GeographicMapCellPositionEventListenerInterface_Access_Array_Access_Array_Access is access all GeographicMapCellPositionEventListenerInterface_Access_Array_Access_Array;
end org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventListenerInterface_Package_References;

with org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventListenerInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.util.event.EventListenerInterface_Package; use org.allbinary.logic.util.event.EventListenerInterface_Package;
limited with org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEvent_Package;
with org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEvent_Package_References;

package org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventListenerInterface_Package is

   package EventListenerInterface_Package renames Standard.org.allbinary.logic.util.event.EventListenerInterface_Package;
   package Reference_Types is
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
   end Reference_Types;
   use Reference_Types;


   type GeographicMapCellPositionEventListenerInterface is interface and EventListenerInterface;
   subtype GeographicMapCellPositionEventListenerInterface_Access is org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventListenerInterface_Package_References.GeographicMapCellPositionEventListenerInterface_Access;
   function "=" (Left, Right : GeographicMapCellPositionEventListenerInterface_Access) return Boolean renames org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventListenerInterface_Package_References."=";
   subtype GeographicMapCellPositionEventListenerInterface_Access_Array is org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventListenerInterface_Package_References.GeographicMapCellPositionEventListenerInterface_Access_Array;
   function "=" (Left, Right : GeographicMapCellPositionEventListenerInterface_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventListenerInterface_Package_References."=";
   subtype GeographicMapCellPositionEventListenerInterface_Access_Array_Access is org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventListenerInterface_Package_References.GeographicMapCellPositionEventListenerInterface_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellPositionEventListenerInterface_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventListenerInterface_Package_References."=";
   subtype GeographicMapCellPositionEventListenerInterface_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventListenerInterface_Package_References.GeographicMapCellPositionEventListenerInterface_Access_Array_Access_Array;
   function "=" (Left, Right : GeographicMapCellPositionEventListenerInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventListenerInterface_Package_References."=";
   subtype GeographicMapCellPositionEventListenerInterface_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventListenerInterface_Package_References.GeographicMapCellPositionEventListenerInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellPositionEventListenerInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventListenerInterface_Package_References."=";
   function Java_Object_Access_From_GeographicMapCellPositionEventListenerInterface (Value : GeographicMapCellPositionEventListenerInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure onGeographicMapCellPositionEvent (This : in out GeographicMapCellPositionEventListenerInterface; geographicMapCellPositionEvent_Param : access GeographicMapCellPositionEvent_Package.GeographicMapCellPositionEvent'Class) is abstract;
   procedure onRemoveGeographicMapCellPositionEvent (This : in out GeographicMapCellPositionEventListenerInterface; geographicMapCellPositionEvent_Param : access GeographicMapCellPositionEvent_Package.GeographicMapCellPositionEvent'Class) is abstract;

end org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventListenerInterface_Package;


