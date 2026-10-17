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

package org.allbinary.graphics.j2me.workarea.canvas.Grid_Package is

   package GPoint_Package renames Standard.org.allbinary.graphics.GPoint_Package;

   type Grid is tagged;
   type Grid_Access is access all Grid'Class;
   type Grid_Access_Array is array (Natural range <>) of Grid_Access;
   type Grid_Access_Array_Access is access all Grid_Access_Array;

   type Grid is new Java_Object with record
      grid : GPoint_Access;
      isGridOn : Boolean;
      isGridPossible : Boolean;
      zoom : Integer;
      isChanged : Boolean;
   end record;

   procedure Initialize (This : in out Grid'Class);
   function Create return Grid_Access;
   procedure Initialize (This : in out Grid'Class; grid_Param : access Grid'Class);
   function Create (grid_Param : access Grid'Class) return Grid_Access;
   function isGridOn (This : in out Grid) return Boolean;
   function isGridPossible (This : in out Grid) return Boolean;
   function getGrid (This : in out Grid) return GPoint_Access;
   function getZoom (This : in out Grid) return Integer;
   procedure showGrid (This : in out Grid; value : Boolean);
   procedure setZoom (This : in out Grid; zoom_Param : Integer);

end org.allbinary.graphics.j2me.workarea.canvas.Grid_Package;


