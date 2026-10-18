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
with org.allbinary.graphics.GPoint_Package; use org.allbinary.graphics.GPoint_Package;

package org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package is

   package CellPosition_Package renames Standard.org.allbinary.graphics.CellPosition_Package;
   package GPoint_Package renames Standard.org.allbinary.graphics.GPoint_Package;

   type GeographicMapCellPosition is tagged;
   type GeographicMapCellPosition_Access is access all GeographicMapCellPosition'Class;
   type GeographicMapCellPosition_Access_Array is array (Natural range <>) of GeographicMapCellPosition_Access;
   type GeographicMapCellPosition_Access_Array_Access is access all GeographicMapCellPosition_Access_Array;
   type GeographicMapCellPosition_Access_Array_Access_Array is array (Natural range <>) of GeographicMapCellPosition_Access_Array_Access;
   type GeographicMapCellPosition_Access_Array_Access_Array_Access is access all GeographicMapCellPosition_Access_Array_Access_Array;

   type GeographicMapCellPosition is new CellPosition with record
      point : GPoint_Access;
      midPoint : GPoint_Access;
   end record;

   procedure Initialize (This : in out GeographicMapCellPosition'Class; column : Integer; row : Integer; columns : Integer; rows : Integer; width : Integer; height : Integer);
   function Create (column : Integer; row : Integer; columns : Integer; rows : Integer; width : Integer; height : Integer) return GeographicMapCellPosition_Access;
   function getPoint (This : in out GeographicMapCellPosition) return GPoint_Access;
   function getMidPoint (This : in out GeographicMapCellPosition) return GPoint_Access;
   procedure setMidPoint (This : in out GeographicMapCellPosition; midPoint_Param : access GPoint_Package.GPoint'Class);

end org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;


