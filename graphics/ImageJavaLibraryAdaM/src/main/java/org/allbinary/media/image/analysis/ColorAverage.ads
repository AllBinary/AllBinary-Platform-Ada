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
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;

package org.allbinary.media.image.analysis.ColorAverage_Package is

   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;

   type ColorAverage is tagged;
   type ColorAverage_Access is access all ColorAverage'Class;
   type ColorAverage_Access_Array is array (Natural range <>) of ColorAverage_Access;
   type ColorAverage_Access_Array_Access is access all ColorAverage_Access_Array;

   type ColorAverage is new Java_Object with record
      avgRed : Float;
      avgGreen : Float;
      avgBlue : Float;
   end record;

   procedure Initialize (This : in out ColorAverage'Class);
   function Create return ColorAverage_Access;
   function toString (This : in out ColorAverage) return Unbounded_String;
   procedure toString (This : in out ColorAverage);
   function getAvgRed (This : in out ColorAverage) return Float;
   procedure getAvgRed (This : in out ColorAverage);
   procedure setAvgRed (This : in out ColorAverage; avgRed : Float);
   function getAvgGreen (This : in out ColorAverage) return Float;
   procedure getAvgGreen (This : in out ColorAverage);
   procedure setAvgGreen (This : in out ColorAverage; avgGreen : Float);
   function getAvgBlue (This : in out ColorAverage) return Float;
   procedure getAvgBlue (This : in out ColorAverage);
   procedure setAvgBlue (This : in out ColorAverage; avgBlue : Float);

end org.allbinary.media.image.analysis.ColorAverage_Package;


