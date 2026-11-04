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

limited with org.allbinary.math.NoDecimalTrigTable_Package;
package org.allbinary.math.NoDecimalTrigTable_Package_References is
   type NoDecimalTrigTable_Access is access all org.allbinary.math.NoDecimalTrigTable_Package.NoDecimalTrigTable'Class;
   type NoDecimalTrigTable_Access_Array is array (Natural range <>) of NoDecimalTrigTable_Access;
   type NoDecimalTrigTable_Access_Array_Access is access all NoDecimalTrigTable_Access_Array;
   type NoDecimalTrigTable_Access_Array_Access_Array is array (Natural range <>) of NoDecimalTrigTable_Access_Array_Access;
   type NoDecimalTrigTable_Access_Array_Access_Array_Access is access all NoDecimalTrigTable_Access_Array_Access_Array;
end org.allbinary.math.NoDecimalTrigTable_Package_References;

with org.allbinary.math.NoDecimalTrigTable_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.logic.math.MathUtil_Package_References;

package org.allbinary.math.NoDecimalTrigTable_Package is

   package MathUtil_Package renames Standard.org.allbinary.logic.math.MathUtil_Package;
   package Reference_Types is
   subtype MathUtil_Access is org.allbinary.logic.math.MathUtil_Package_References.MathUtil_Access;
   use type MathUtil_Access;
   subtype MathUtil_Access_Array is org.allbinary.logic.math.MathUtil_Package_References.MathUtil_Access_Array;
   use type MathUtil_Access_Array;
   subtype MathUtil_Access_Array_Access is org.allbinary.logic.math.MathUtil_Package_References.MathUtil_Access_Array_Access;
   use type MathUtil_Access_Array_Access;
   subtype MathUtil_Access_Array_Access_Array is org.allbinary.logic.math.MathUtil_Package_References.MathUtil_Access_Array_Access_Array;
   use type MathUtil_Access_Array_Access_Array;
   subtype MathUtil_Access_Array_Access_Array_Access is org.allbinary.logic.math.MathUtil_Package_References.MathUtil_Access_Array_Access_Array_Access;
   use type MathUtil_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype NoDecimalTrigTable_Access is org.allbinary.math.NoDecimalTrigTable_Package_References.NoDecimalTrigTable_Access;
   function "=" (Left, Right : NoDecimalTrigTable_Access) return Boolean renames org.allbinary.math.NoDecimalTrigTable_Package_References."=";
   subtype NoDecimalTrigTable_Access_Array is org.allbinary.math.NoDecimalTrigTable_Package_References.NoDecimalTrigTable_Access_Array;
   function "=" (Left, Right : NoDecimalTrigTable_Access_Array) return Boolean renames org.allbinary.math.NoDecimalTrigTable_Package_References."=";
   subtype NoDecimalTrigTable_Access_Array_Access is org.allbinary.math.NoDecimalTrigTable_Package_References.NoDecimalTrigTable_Access_Array_Access;
   function "=" (Left, Right : NoDecimalTrigTable_Access_Array_Access) return Boolean renames org.allbinary.math.NoDecimalTrigTable_Package_References."=";
   subtype NoDecimalTrigTable_Access_Array_Access_Array is org.allbinary.math.NoDecimalTrigTable_Package_References.NoDecimalTrigTable_Access_Array_Access_Array;
   function "=" (Left, Right : NoDecimalTrigTable_Access_Array_Access_Array) return Boolean renames org.allbinary.math.NoDecimalTrigTable_Package_References."=";
   subtype NoDecimalTrigTable_Access_Array_Access_Array_Access is org.allbinary.math.NoDecimalTrigTable_Package_References.NoDecimalTrigTable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NoDecimalTrigTable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.math.NoDecimalTrigTable_Package_References."=";

   type NoDecimalTrigTable is new Java_Object with record
      mathUtil : MathUtil_Access;
      noDecimalSin : Long_Long_Integer_Array_Access;
      noDecimalCos : Long_Long_Integer_Array_Access;
      noDecimalTan : Long_Long_Integer_Array_Access;
      SCALE : Integer;
   end record;
   instance : NoDecimalTrigTable_Access;

   procedure Initialize (This : in out NoDecimalTrigTable'Class);
   function Create return NoDecimalTrigTable_Access;
   function getInstance return NoDecimalTrigTable_Access;
   function sin (This : in out NoDecimalTrigTable; angle : Integer) return Long_Long_Integer;
   procedure sin (This : in out NoDecimalTrigTable; angle : Integer);
   function cos (This : in out NoDecimalTrigTable; angle : Integer) return Long_Long_Integer;
   procedure cos (This : in out NoDecimalTrigTable; angle : Integer);
   function tan (This : in out NoDecimalTrigTable; angle : Integer) return Long_Long_Integer;
   procedure tan (This : in out NoDecimalTrigTable; angle : Integer);
   function antiTan (This : in out NoDecimalTrigTable; dx : Integer; dy : Integer) return Short_Integer;
   procedure antiTan (This : in out NoDecimalTrigTable; dx : Integer; dy : Integer);
   function antiTanDebug (This : in out NoDecimalTrigTable; screenX : Integer; screenY : Integer; targetX : Integer; targetY : Integer) return Short_Integer;
   procedure antiTanDebug (This : in out NoDecimalTrigTable; screenX : Integer; screenY : Integer; targetX : Integer; targetY : Integer);

end org.allbinary.math.NoDecimalTrigTable_Package;


