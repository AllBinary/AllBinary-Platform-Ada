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
with org.allbinary.graphics.GPoint_Package; use org.allbinary.graphics.GPoint_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.math.RectangleCollisionUtil_Package; use org.allbinary.math.RectangleCollisionUtil_Package;

package org.allbinary.math.RectangleCollisionPointUtil_Package is

   package GPoint_Package renames Standard.org.allbinary.graphics.GPoint_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;

   type RectangleCollisionPointUtil is tagged;
   type RectangleCollisionPointUtil_Access is access all RectangleCollisionPointUtil'Class;
   type RectangleCollisionPointUtil_Access_Array is array (Natural range <>) of RectangleCollisionPointUtil_Access;
   type RectangleCollisionPointUtil_Access_Array_Access is access all RectangleCollisionPointUtil_Access_Array;

   type RectangleCollisionPointUtil is new Java_Object with null record;

   procedure Initialize (This : in out RectangleCollisionPointUtil'Class);
   function Create return RectangleCollisionPointUtil_Access;
   function allPointsInside (rectX1 : Integer; rectY1 : Integer; rectX2 : Integer; rectY2 : Integer; list : BasicArrayList_Access) return Boolean;
   procedure allPointsInside (rectX1 : Integer; rectY1 : Integer; rectX2 : Integer; rectY2 : Integer; list : BasicArrayList_Access);
   function allPointsInsideCell (rectX1 : Integer; rectY1 : Integer; rectX2 : Integer; rectY2 : Integer; list : BasicArrayList_Access; xCellSize : Integer; yCellSize : Integer) return Boolean;
   procedure allPointsInsideCell (rectX1 : Integer; rectY1 : Integer; rectX2 : Integer; rectY2 : Integer; list : BasicArrayList_Access; xCellSize : Integer; yCellSize : Integer);

end org.allbinary.math.RectangleCollisionPointUtil_Package;


