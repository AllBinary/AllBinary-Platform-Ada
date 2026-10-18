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
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;

package org.allbinary.graphics.color.ColorTemperatureUtil_Package is


   type ColorTemperatureUtil is tagged;
   type ColorTemperatureUtil_Access is access all ColorTemperatureUtil'Class;
   type ColorTemperatureUtil_Access_Array is array (Natural range <>) of ColorTemperatureUtil_Access;
   type ColorTemperatureUtil_Access_Array_Access is access all ColorTemperatureUtil_Access_Array;
   type ColorTemperatureUtil_Access_Array_Access_Array is array (Natural range <>) of ColorTemperatureUtil_Access_Array_Access;
   type ColorTemperatureUtil_Access_Array_Access_Array_Access is access all ColorTemperatureUtil_Access_Array_Access_Array;

   type ColorTemperatureUtil is new Java_Object with record
      basicColorFactory : BasicColorFactory_Access;
   end record;
   instance : ColorTemperatureUtil_Access;

   procedure Initialize (This : in out ColorTemperatureUtil'Class);
   function Create return ColorTemperatureUtil_Access;
   function getInstance return ColorTemperatureUtil_Access;
   function getBasicColor (This : in out ColorTemperatureUtil; thirdTemp : Integer) return BasicColor_Access;
   procedure getBasicColor (This : in out ColorTemperatureUtil; thirdTemp : Integer);

end org.allbinary.graphics.color.ColorTemperatureUtil_Package;


