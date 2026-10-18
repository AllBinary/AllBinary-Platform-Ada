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
with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking_Package;
with org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEvent_Package; use org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEvent_Package;
with org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventHandler_Package; use org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventHandler_Package;

package org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventUtil_Package is

   package GeographicMapCellPositionTracking_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking_Package;

   type GeographicMapCellPositionEventUtil is tagged;
   type GeographicMapCellPositionEventUtil_Access is access all GeographicMapCellPositionEventUtil'Class;
   type GeographicMapCellPositionEventUtil_Access_Array is array (Natural range <>) of GeographicMapCellPositionEventUtil_Access;
   type GeographicMapCellPositionEventUtil_Access_Array_Access is access all GeographicMapCellPositionEventUtil_Access_Array;
   type GeographicMapCellPositionEventUtil_Access_Array_Access_Array is array (Natural range <>) of GeographicMapCellPositionEventUtil_Access_Array_Access;
   type GeographicMapCellPositionEventUtil_Access_Array_Access_Array_Access is access all GeographicMapCellPositionEventUtil_Access_Array_Access_Array;

   type GeographicMapCellPositionEventUtil is new Java_Object with record
      geographicMapCellPositionEvent : GeographicMapCellPositionEvent_Access;
      geographicMapCellPositionEventHandler : GeographicMapCellPositionEventHandler_Access;
   end record;

   procedure Initialize (This : in out GeographicMapCellPositionEventUtil'Class; anyType_Param : access Java_Object'Class);
   function Create (anyType_Param : access Java_Object'Class) return GeographicMapCellPositionEventUtil_Access;
   procedure update (This : in out GeographicMapCellPositionEventUtil; geographicMapCellPositionTracking_Param : access GeographicMapCellPositionTracking_Package.GeographicMapCellPositionTracking'Class);
   procedure remove (This : in out GeographicMapCellPositionEventUtil; geographicMapCellPositionTracking_Param : access GeographicMapCellPositionTracking_Package.GeographicMapCellPositionTracking'Class);

end org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventUtil_Package;


