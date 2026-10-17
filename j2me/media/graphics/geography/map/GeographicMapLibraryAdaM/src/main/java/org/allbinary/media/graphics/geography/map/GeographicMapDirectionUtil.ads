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
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.direction.Direction_Package; use org.allbinary.direction.Direction_Package;
with org.allbinary.direction.DirectionFactory_Package; use org.allbinary.direction.DirectionFactory_Package;
with org.allbinary.graphics.CellPosition_Package; use org.allbinary.graphics.CellPosition_Package;

package org.allbinary.media.graphics.geography.map.GeographicMapDirectionUtil_Package is

   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package Direction_Package renames Standard.org.allbinary.direction.Direction_Package;
   package DirectionFactory_Package renames Standard.org.allbinary.direction.DirectionFactory_Package;
   package CellPosition_Package renames Standard.org.allbinary.graphics.CellPosition_Package;

   type GeographicMapDirectionUtil is tagged;
   type GeographicMapDirectionUtil_Access is access all GeographicMapDirectionUtil'Class;
   type GeographicMapDirectionUtil_Access_Array is array (Natural range <>) of GeographicMapDirectionUtil_Access;
   type GeographicMapDirectionUtil_Access_Array_Access is access all GeographicMapDirectionUtil_Access_Array;

   type GeographicMapDirectionUtil is new Java_Object with record
      MESSAGE : Unbounded_String;
      ERROR : Unbounded_String;
      EQUAL : Unbounded_String;
   end record;
   instance : GeographicMapDirectionUtil_Access;

   procedure Initialize (This : in out GeographicMapDirectionUtil'Class);
   function Create return GeographicMapDirectionUtil_Access;
   function getInstance return GeographicMapDirectionUtil_Access;
   procedure getInstance;
   function getDirectionFromCellPositionToAdjacentCellPosition (This : in out GeographicMapDirectionUtil; fromGeographicMapCellPosition : GeographicMapCellPosition_Access; toGeographicMapCellPosition : GeographicMapCellPosition_Access) return Direction_Access;
   procedure getDirectionFromCellPositionToAdjacentCellPosition (This : in out GeographicMapDirectionUtil; fromGeographicMapCellPosition : GeographicMapCellPosition_Access; toGeographicMapCellPosition : GeographicMapCellPosition_Access);
   function getEightDirectionFromCellPositionToAdjacentCellPosition (This : in out GeographicMapDirectionUtil; fromGeographicMapCellPosition : GeographicMapCellPosition_Access; toGeographicMapCellPosition : GeographicMapCellPosition_Access) return Direction_Access;
   procedure getEightDirectionFromCellPositionToAdjacentCellPosition (This : in out GeographicMapDirectionUtil; fromGeographicMapCellPosition : GeographicMapCellPosition_Access; toGeographicMapCellPosition : GeographicMapCellPosition_Access);
   function getDirectionFromCellPositionToCellPosition (This : in out GeographicMapDirectionUtil; fromGeographicMapCellPosition : GeographicMapCellPosition_Access; toGeographicMapCellPosition : GeographicMapCellPosition_Access) return Direction_Access;
   procedure getDirectionFromCellPositionToCellPosition (This : in out GeographicMapDirectionUtil; fromGeographicMapCellPosition : GeographicMapCellPosition_Access; toGeographicMapCellPosition : GeographicMapCellPosition_Access);
   function getEightDirectionFromCellPositionToCellPosition (This : in out GeographicMapDirectionUtil; fromGeographicMapCellPosition : GeographicMapCellPosition_Access; toGeographicMapCellPosition : GeographicMapCellPosition_Access) return Direction_Access;
   procedure getEightDirectionFromCellPositionToCellPosition (This : in out GeographicMapDirectionUtil; fromGeographicMapCellPosition : GeographicMapCellPosition_Access; toGeographicMapCellPosition : GeographicMapCellPosition_Access);

end org.allbinary.media.graphics.geography.map.GeographicMapDirectionUtil_Package;


