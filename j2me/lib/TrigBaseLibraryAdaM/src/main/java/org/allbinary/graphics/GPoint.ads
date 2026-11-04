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

limited with org.allbinary.graphics.GPoint_Package;
package org.allbinary.graphics.GPoint_Package_References is
   type GPoint_Access is access all org.allbinary.graphics.GPoint_Package.GPoint'Class;
   type GPoint_Access_Array is array (Natural range <>) of GPoint_Access;
   type GPoint_Access_Array_Access is access all GPoint_Access_Array;
   type GPoint_Access_Array_Access_Array is array (Natural range <>) of GPoint_Access_Array_Access;
   type GPoint_Access_Array_Access_Array_Access is access all GPoint_Access_Array_Access_Array;
end org.allbinary.graphics.GPoint_Package_References;

with org.allbinary.graphics.GPoint_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.graphics.GPoint_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype GPoint_Access is org.allbinary.graphics.GPoint_Package_References.GPoint_Access;
   function "=" (Left, Right : GPoint_Access) return Boolean renames org.allbinary.graphics.GPoint_Package_References."=";
   subtype GPoint_Access_Array is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array;
   function "=" (Left, Right : GPoint_Access_Array) return Boolean renames org.allbinary.graphics.GPoint_Package_References."=";
   subtype GPoint_Access_Array_Access is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array_Access;
   function "=" (Left, Right : GPoint_Access_Array_Access) return Boolean renames org.allbinary.graphics.GPoint_Package_References."=";
   subtype GPoint_Access_Array_Access_Array is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array_Access_Array;
   function "=" (Left, Right : GPoint_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.GPoint_Package_References."=";
   subtype GPoint_Access_Array_Access_Array_Access is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GPoint_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.GPoint_Package_References."=";

   type GPoint is new Java_Object with record
      x : Integer;
      y : Integer;
      z : Integer;
   end record;
   POINT_LABEL : Unbounded_String;

   procedure Initialize (This : in out GPoint'Class; x : Integer; y : Integer; z : Integer);
   function Create (x : Integer; y : Integer; z : Integer) return GPoint_Access;
   function getInstance (point_Param : access GPoint_Package.GPoint'Class) return GPoint_Access;
   procedure getInstance (point_Param : access GPoint_Package.GPoint'Class);
   function getX (This : in out GPoint) return Integer;
   function getY (This : in out GPoint) return Integer;
   function getZ (This : in out GPoint) return Integer;
   function getRawX (This : in out GPoint) return Integer;
   function getRawY (This : in out GPoint) return Integer;
   function getRawZ (This : in out GPoint) return Integer;
   function toString (This : in out GPoint) return Unbounded_String;
   function toStringStatic (x : Integer; y : Integer; z : Integer) return Unbounded_String;
   procedure toStringStatic (x : Integer; y : Integer; z : Integer);

end org.allbinary.graphics.GPoint_Package;


