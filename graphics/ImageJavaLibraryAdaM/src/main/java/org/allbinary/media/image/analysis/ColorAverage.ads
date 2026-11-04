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

limited with org.allbinary.media.image.analysis.ColorAverage_Package;
package org.allbinary.media.image.analysis.ColorAverage_Package_References is
   type ColorAverage_Access is access all org.allbinary.media.image.analysis.ColorAverage_Package.ColorAverage'Class;
   type ColorAverage_Access_Array is array (Natural range <>) of ColorAverage_Access;
   type ColorAverage_Access_Array_Access is access all ColorAverage_Access_Array;
   type ColorAverage_Access_Array_Access_Array is array (Natural range <>) of ColorAverage_Access_Array_Access;
   type ColorAverage_Access_Array_Access_Array_Access is access all ColorAverage_Access_Array_Access_Array;
end org.allbinary.media.image.analysis.ColorAverage_Package_References;

with org.allbinary.media.image.analysis.ColorAverage_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.media.image.analysis.ColorAverage_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype ColorAverage_Access is org.allbinary.media.image.analysis.ColorAverage_Package_References.ColorAverage_Access;
   function "=" (Left, Right : ColorAverage_Access) return Boolean renames org.allbinary.media.image.analysis.ColorAverage_Package_References."=";
   subtype ColorAverage_Access_Array is org.allbinary.media.image.analysis.ColorAverage_Package_References.ColorAverage_Access_Array;
   function "=" (Left, Right : ColorAverage_Access_Array) return Boolean renames org.allbinary.media.image.analysis.ColorAverage_Package_References."=";
   subtype ColorAverage_Access_Array_Access is org.allbinary.media.image.analysis.ColorAverage_Package_References.ColorAverage_Access_Array_Access;
   function "=" (Left, Right : ColorAverage_Access_Array_Access) return Boolean renames org.allbinary.media.image.analysis.ColorAverage_Package_References."=";
   subtype ColorAverage_Access_Array_Access_Array is org.allbinary.media.image.analysis.ColorAverage_Package_References.ColorAverage_Access_Array_Access_Array;
   function "=" (Left, Right : ColorAverage_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.analysis.ColorAverage_Package_References."=";
   subtype ColorAverage_Access_Array_Access_Array_Access is org.allbinary.media.image.analysis.ColorAverage_Package_References.ColorAverage_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ColorAverage_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.analysis.ColorAverage_Package_References."=";

   type ColorAverage is new Java_Object with record
      avgRed : Float;
      avgGreen : Float;
      avgBlue : Float;
   end record;

   procedure Initialize (This : in out ColorAverage'Class);
   function Create return ColorAverage_Access;
   function toString (This : in out ColorAverage) return Unbounded_String;
   function getAvgRed (This : in out ColorAverage) return Float;
   procedure setAvgRed (This : in out ColorAverage; avgRed : Float);
   function getAvgGreen (This : in out ColorAverage) return Float;
   procedure setAvgGreen (This : in out ColorAverage; avgGreen : Float);
   function getAvgBlue (This : in out ColorAverage) return Float;
   procedure setAvgBlue (This : in out ColorAverage; avgBlue : Float);

end org.allbinary.media.image.analysis.ColorAverage_Package;


