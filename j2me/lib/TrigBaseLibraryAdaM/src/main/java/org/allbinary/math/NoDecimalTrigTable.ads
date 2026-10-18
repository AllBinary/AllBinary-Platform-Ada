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
with org.allbinary.logic.math.MathUtil_Package; use org.allbinary.logic.math.MathUtil_Package;

package org.allbinary.math.NoDecimalTrigTable_Package is

   package MathUtil_Package renames Standard.org.allbinary.logic.math.MathUtil_Package;

   type NoDecimalTrigTable is tagged;
   type NoDecimalTrigTable_Access is access all NoDecimalTrigTable'Class;
   type NoDecimalTrigTable_Access_Array is array (Natural range <>) of NoDecimalTrigTable_Access;
   type NoDecimalTrigTable_Access_Array_Access is access all NoDecimalTrigTable_Access_Array;
   type NoDecimalTrigTable_Access_Array_Access_Array is array (Natural range <>) of NoDecimalTrigTable_Access_Array_Access;
   type NoDecimalTrigTable_Access_Array_Access_Array_Access is access all NoDecimalTrigTable_Access_Array_Access_Array;

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


