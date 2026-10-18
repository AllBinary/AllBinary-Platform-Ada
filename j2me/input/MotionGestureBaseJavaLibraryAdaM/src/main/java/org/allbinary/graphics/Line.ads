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

package org.allbinary.graphics.Line_Package is


   type Line is tagged;
   type Line_Access is access all Line'Class;
   type Line_Access_Array is array (Natural range <>) of Line_Access;
   type Line_Access_Array_Access is access all Line_Access_Array;
   type Line_Access_Array_Access_Array is array (Natural range <>) of Line_Access_Array_Access;
   type Line_Access_Array_Access_Array_Access is access all Line_Access_Array_Access_Array;

   type Line is new Java_Object with record
      p1 : GPoint_Access;
      p2 : GPoint_Access;
      deltaX : Long_Float;
      deltaY : Long_Float;
   end record;

   procedure Initialize (This : in out Line'Class; p1_Param : access GPoint_Package.GPoint'Class; p2_Param : access GPoint_Package.GPoint'Class);
   function Create (p1_Param : access GPoint_Package.GPoint'Class; p2_Param : access GPoint_Package.GPoint'Class) return Line_Access;
   function getGradient (This : in out Line) return Long_Float;
   procedure update (This : in out Line);
   function getDeltaX (This : in out Line) return Long_Float;
   function getDeltaY (This : in out Line) return Long_Float;
   function getP1 (This : in out Line) return GPoint_Access;
   function getP2 (This : in out Line) return GPoint_Access;
   procedure setP1 (This : in out Line; p1_Param : access GPoint_Package.GPoint'Class);
   procedure setP2 (This : in out Line; p2_Param : access GPoint_Package.GPoint'Class);

end org.allbinary.graphics.Line_Package;


