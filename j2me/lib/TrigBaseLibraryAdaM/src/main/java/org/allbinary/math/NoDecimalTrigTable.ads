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
with jsinterop.annotations.JsType_Package; use jsinterop.annotations.JsType_Package;
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.logic.math.MathUtil_Package; use org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with jsinterop.annotations.JsMethod_Package; use jsinterop.annotations.JsMethod_Package;
with jsinterop.annotations.JsConstructor_Package; use jsinterop.annotations.JsConstructor_Package;
with jsinterop.annotations.JsProperty_Package; use jsinterop.annotations.JsProperty_Package;
with org.allbinary.math.AngleFactory_Package; use org.allbinary.math.AngleFactory_Package;
with org.allbinary.math.PositionStrings_Package; use org.allbinary.math.PositionStrings_Package;
with org.allbinary.math.Angle_Package; use org.allbinary.math.Angle_Package;

package org.allbinary.math.NoDecimalTrigTable_Package is

   package JsType_Package renames Standard.jsinterop.annotations.JsType_Package;
   package PreLogUtil_Package renames Standard.org.allbinary.logic.communication.log.PreLogUtil_Package;
   package MathUtil_Package renames Standard.org.allbinary.logic.math.MathUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package JsMethod_Package renames Standard.jsinterop.annotations.JsMethod_Package;
   package JsConstructor_Package renames Standard.jsinterop.annotations.JsConstructor_Package;
   package JsProperty_Package renames Standard.jsinterop.annotations.JsProperty_Package;

   type NoDecimalTrigTable is tagged;
   type NoDecimalTrigTable_Access is access all NoDecimalTrigTable'Class;
   type NoDecimalTrigTable_Access_Array is array (Natural range <>) of NoDecimalTrigTable_Access;
   type NoDecimalTrigTable_Access_Array_Access is access all NoDecimalTrigTable_Access_Array;

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


