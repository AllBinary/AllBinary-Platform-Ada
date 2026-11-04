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

limited with org.allbinary.graphics.j2me.workarea.canvas.Grid_Package;
package org.allbinary.graphics.j2me.workarea.canvas.Grid_Package_References is
   type Grid_Access is access all org.allbinary.graphics.j2me.workarea.canvas.Grid_Package.Grid'Class;
   type Grid_Access_Array is array (Natural range <>) of Grid_Access;
   type Grid_Access_Array_Access is access all Grid_Access_Array;
   type Grid_Access_Array_Access_Array is array (Natural range <>) of Grid_Access_Array_Access;
   type Grid_Access_Array_Access_Array_Access is access all Grid_Access_Array_Access_Array;
end org.allbinary.graphics.j2me.workarea.canvas.Grid_Package_References;

with org.allbinary.graphics.j2me.workarea.canvas.Grid_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.graphics.GPoint_Package;
with org.allbinary.graphics.GPoint_Package_References;

package org.allbinary.graphics.j2me.workarea.canvas.Grid_Package is

   package GPoint_Package renames Standard.org.allbinary.graphics.GPoint_Package;
   package Reference_Types is
   subtype GPoint_Access is org.allbinary.graphics.GPoint_Package_References.GPoint_Access;
   use type GPoint_Access;
   subtype GPoint_Access_Array is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array;
   use type GPoint_Access_Array;
   subtype GPoint_Access_Array_Access is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array_Access;
   use type GPoint_Access_Array_Access;
   subtype GPoint_Access_Array_Access_Array is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array_Access_Array;
   use type GPoint_Access_Array_Access_Array;
   subtype GPoint_Access_Array_Access_Array_Access is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array_Access_Array_Access;
   use type GPoint_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype Grid_Access is org.allbinary.graphics.j2me.workarea.canvas.Grid_Package_References.Grid_Access;
   function "=" (Left, Right : Grid_Access) return Boolean renames org.allbinary.graphics.j2me.workarea.canvas.Grid_Package_References."=";
   subtype Grid_Access_Array is org.allbinary.graphics.j2me.workarea.canvas.Grid_Package_References.Grid_Access_Array;
   function "=" (Left, Right : Grid_Access_Array) return Boolean renames org.allbinary.graphics.j2me.workarea.canvas.Grid_Package_References."=";
   subtype Grid_Access_Array_Access is org.allbinary.graphics.j2me.workarea.canvas.Grid_Package_References.Grid_Access_Array_Access;
   function "=" (Left, Right : Grid_Access_Array_Access) return Boolean renames org.allbinary.graphics.j2me.workarea.canvas.Grid_Package_References."=";
   subtype Grid_Access_Array_Access_Array is org.allbinary.graphics.j2me.workarea.canvas.Grid_Package_References.Grid_Access_Array_Access_Array;
   function "=" (Left, Right : Grid_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.j2me.workarea.canvas.Grid_Package_References."=";
   subtype Grid_Access_Array_Access_Array_Access is org.allbinary.graphics.j2me.workarea.canvas.Grid_Package_References.Grid_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Grid_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.j2me.workarea.canvas.Grid_Package_References."=";

   type Grid is new Java_Object with record
      grid_Var : GPoint_Access;
      isGridOn_Field : Boolean;
      isGridPossible_Field : Boolean;
      zoom : Integer;
      isChanged : Boolean;
   end record;

   procedure Initialize (This : in out Grid'Class);
   function Create return Grid_Access;
   procedure Initialize (This : in out Grid'Class; grid_Var_Param : access Grid_Package.Grid'Class);
   function Create (grid_Var_Param : access Grid_Package.Grid'Class) return Grid_Access;
   function isGridOn (This : in out Grid) return Boolean;
   function isGridPossible (This : in out Grid) return Boolean;
   function getGrid (This : in out Grid) return GPoint_Access;
   function getZoom (This : in out Grid) return Integer;
   procedure showGrid (This : in out Grid; value : Boolean);
   procedure setZoom (This : in out Grid; zoom_Param : Integer);

end org.allbinary.graphics.j2me.workarea.canvas.Grid_Package;


