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
with org.allbinary.logic.util.event.EventListenerInterface_Package; use org.allbinary.logic.util.event.EventListenerInterface_Package;
with org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEvent_Package; use org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEvent_Package;

package org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventListenerInterface_Package is

   package EventListenerInterface_Package renames Standard.org.allbinary.logic.util.event.EventListenerInterface_Package;

   type GeographicMapCellPositionEventListenerInterface is interface and EventListenerInterface;
   type GeographicMapCellPositionEventListenerInterface_Access is access all GeographicMapCellPositionEventListenerInterface'Class;
   type GeographicMapCellPositionEventListenerInterface_Access_Array is array (Natural range <>) of GeographicMapCellPositionEventListenerInterface_Access;
   type GeographicMapCellPositionEventListenerInterface_Access_Array_Access is access all GeographicMapCellPositionEventListenerInterface_Access_Array;
   type GeographicMapCellPositionEventListenerInterface_Access_Array_Access_Array is array (Natural range <>) of GeographicMapCellPositionEventListenerInterface_Access_Array_Access;
   type GeographicMapCellPositionEventListenerInterface_Access_Array_Access_Array_Access is access all GeographicMapCellPositionEventListenerInterface_Access_Array_Access_Array;
   procedure onGeographicMapCellPositionEvent (This : in out GeographicMapCellPositionEventListenerInterface; geographicMapCellPositionEvent_Param : access GeographicMapCellPositionEvent_Package.GeographicMapCellPositionEvent'Class) is abstract;
   procedure onRemoveGeographicMapCellPositionEvent (This : in out GeographicMapCellPositionEventListenerInterface; geographicMapCellPositionEvent_Param : access GeographicMapCellPositionEvent_Package.GeographicMapCellPositionEvent'Class) is abstract;

end org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventListenerInterface_Package;


