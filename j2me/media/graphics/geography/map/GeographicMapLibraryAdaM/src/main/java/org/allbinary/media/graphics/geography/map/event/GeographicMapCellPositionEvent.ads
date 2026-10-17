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
with org.allbinary.graphics.CellPosition_Package; use org.allbinary.graphics.CellPosition_Package;
with org.allbinary.graphics.CellPositionFactory_Package; use org.allbinary.graphics.CellPositionFactory_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;

package org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEvent_Package is

   package CellPosition_Package renames Standard.org.allbinary.graphics.CellPosition_Package;
   package CellPositionFactory_Package renames Standard.org.allbinary.graphics.CellPositionFactory_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package GeographicMapCellPosition_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;

   type GeographicMapCellPositionEvent is tagged;
   type GeographicMapCellPositionEvent_Access is access all GeographicMapCellPositionEvent'Class;
   type GeographicMapCellPositionEvent_Access_Array is array (Natural range <>) of GeographicMapCellPositionEvent_Access;
   type GeographicMapCellPositionEvent_Access_Array_Access is access all GeographicMapCellPositionEvent_Access_Array;

   type GeographicMapCellPositionEvent is new AllBinaryEventObject with record
      geographicMapCellPosition : CellPosition_Access;
   end record;

   procedure Initialize (This : in out GeographicMapCellPositionEvent'Class; anyType_Param : access Java_Object'Class; geographicMapCellPosition_Param : access CellPosition_Package.CellPosition'Class);
   function Create (anyType_Param : access Java_Object'Class; geographicMapCellPosition_Param : access CellPosition_Package.CellPosition'Class) return GeographicMapCellPositionEvent_Access;
   procedure init (This : in out GeographicMapCellPositionEvent; anyType_Param : access Java_Object'Class);
   procedure setGeographicMapCellPosition (This : in out GeographicMapCellPositionEvent; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class);
   function getGeographicMapCellPosition (This : in out GeographicMapCellPositionEvent) return GeographicMapCellPosition_Access;
   function toString (This : in out GeographicMapCellPositionEvent) return Unbounded_String;

end org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEvent_Package;


