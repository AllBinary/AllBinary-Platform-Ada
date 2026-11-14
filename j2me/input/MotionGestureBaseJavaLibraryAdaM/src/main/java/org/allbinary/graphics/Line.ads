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

with AllBinary_Java;
limited with org.allbinary.graphics.Line_Package;
package org.allbinary.graphics.Line_Package_References is
   type Line_Access is access all org.allbinary.graphics.Line_Package.Line'Class;
   type Line_Access_Array is array (Natural range <>) of Line_Access;
   type Line_Access_Array_Access is access all Line_Access_Array;
   type Line_Access_Array_Access_Array is array (Natural range <>) of Line_Access_Array_Access;
   type Line_Access_Array_Access_Array_Access is access all Line_Access_Array_Access_Array;
   type Line_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : Line_Access_Array_Access;
   end record;
   function Java_Box (Value : Line_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new Line_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_Line_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return Line_Access_Array_Access is (if Value /= null and then Value.all in Line_Access_Array_Object'Class then Line_Access_Array_Object'Class (Value.all).Value else null);
   type Line_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : Line_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : Line_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new Line_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_Line_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return Line_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in Line_Access_Array_Access_Array_Object'Class then Line_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.Line_Package_References;

with org.allbinary.graphics.Line_Package_References;
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

package org.allbinary.graphics.Line_Package is

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


   subtype Line_Access is org.allbinary.graphics.Line_Package_References.Line_Access;
   function "=" (Left, Right : Line_Access) return Boolean renames org.allbinary.graphics.Line_Package_References."=";
   subtype Line_Access_Array is org.allbinary.graphics.Line_Package_References.Line_Access_Array;
   function "=" (Left, Right : Line_Access_Array) return Boolean renames org.allbinary.graphics.Line_Package_References."=";
   subtype Line_Access_Array_Access is org.allbinary.graphics.Line_Package_References.Line_Access_Array_Access;
   function "=" (Left, Right : Line_Access_Array_Access) return Boolean renames org.allbinary.graphics.Line_Package_References."=";
   function Java_Box (Value : Line_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.Line_Package_References.Java_Box;
   function Java_Unbox_Line_Access_Array (Value : access Java_Object'Class) return Line_Access_Array_Access renames org.allbinary.graphics.Line_Package_References.Java_Unbox_Line_Access_Array;
   subtype Line_Access_Array_Access_Array is org.allbinary.graphics.Line_Package_References.Line_Access_Array_Access_Array;
   function "=" (Left, Right : Line_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.Line_Package_References."=";
   subtype Line_Access_Array_Access_Array_Access is org.allbinary.graphics.Line_Package_References.Line_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Line_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.Line_Package_References."=";
   function Java_Box (Value : Line_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.Line_Package_References.Java_Box;
   function Java_Unbox_Line_Access_Array_Access_Array (Value : access Java_Object'Class) return Line_Access_Array_Access_Array_Access renames org.allbinary.graphics.Line_Package_References.Java_Unbox_Line_Access_Array_Access_Array;

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


