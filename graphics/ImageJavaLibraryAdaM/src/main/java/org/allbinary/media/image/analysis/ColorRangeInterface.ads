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

limited with org.allbinary.media.image.analysis.ColorRangeInterface_Package;
package org.allbinary.media.image.analysis.ColorRangeInterface_Package_References is
   type ColorRangeInterface_Access is access all org.allbinary.media.image.analysis.ColorRangeInterface_Package.ColorRangeInterface'Class;
   type ColorRangeInterface_Access_Array is array (Natural range <>) of ColorRangeInterface_Access;
   type ColorRangeInterface_Access_Array_Access is access all ColorRangeInterface_Access_Array;
   type ColorRangeInterface_Access_Array_Access_Array is array (Natural range <>) of ColorRangeInterface_Access_Array_Access;
   type ColorRangeInterface_Access_Array_Access_Array_Access is access all ColorRangeInterface_Access_Array_Access_Array;
end org.allbinary.media.image.analysis.ColorRangeInterface_Package_References;

with org.allbinary.media.image.analysis.ColorRangeInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.media.image.analysis.Color_Package;
with org.allbinary.media.image.analysis.Color_Package_References;

package org.allbinary.media.image.analysis.ColorRangeInterface_Package is

   package Reference_Types is
   subtype Color_Access is org.allbinary.media.image.analysis.Color_Package_References.Color_Access;
   use type Color_Access;
   subtype Color_Access_Array is org.allbinary.media.image.analysis.Color_Package_References.Color_Access_Array;
   use type Color_Access_Array;
   subtype Color_Access_Array_Access is org.allbinary.media.image.analysis.Color_Package_References.Color_Access_Array_Access;
   use type Color_Access_Array_Access;
   subtype Color_Access_Array_Access_Array is org.allbinary.media.image.analysis.Color_Package_References.Color_Access_Array_Access_Array;
   use type Color_Access_Array_Access_Array;
   subtype Color_Access_Array_Access_Array_Access is org.allbinary.media.image.analysis.Color_Package_References.Color_Access_Array_Access_Array_Access;
   use type Color_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type ColorRangeInterface is interface;
   subtype ColorRangeInterface_Access is org.allbinary.media.image.analysis.ColorRangeInterface_Package_References.ColorRangeInterface_Access;
   function "=" (Left, Right : ColorRangeInterface_Access) return Boolean renames org.allbinary.media.image.analysis.ColorRangeInterface_Package_References."=";
   subtype ColorRangeInterface_Access_Array is org.allbinary.media.image.analysis.ColorRangeInterface_Package_References.ColorRangeInterface_Access_Array;
   function "=" (Left, Right : ColorRangeInterface_Access_Array) return Boolean renames org.allbinary.media.image.analysis.ColorRangeInterface_Package_References."=";
   subtype ColorRangeInterface_Access_Array_Access is org.allbinary.media.image.analysis.ColorRangeInterface_Package_References.ColorRangeInterface_Access_Array_Access;
   function "=" (Left, Right : ColorRangeInterface_Access_Array_Access) return Boolean renames org.allbinary.media.image.analysis.ColorRangeInterface_Package_References."=";
   subtype ColorRangeInterface_Access_Array_Access_Array is org.allbinary.media.image.analysis.ColorRangeInterface_Package_References.ColorRangeInterface_Access_Array_Access_Array;
   function "=" (Left, Right : ColorRangeInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.analysis.ColorRangeInterface_Package_References."=";
   subtype ColorRangeInterface_Access_Array_Access_Array_Access is org.allbinary.media.image.analysis.ColorRangeInterface_Package_References.ColorRangeInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ColorRangeInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.analysis.ColorRangeInterface_Package_References."=";
   function Java_Object_Access_From_ColorRangeInterface (Value : ColorRangeInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getMinRed (This : in out ColorRangeInterface) return Integer is abstract;
   procedure setMinRed (This : in out ColorRangeInterface; minRed : Integer) is abstract;
   function getMaxRed (This : in out ColorRangeInterface) return Integer is abstract;
   procedure setMaxRed (This : in out ColorRangeInterface; maxRed : Integer) is abstract;
   function getMinGreen (This : in out ColorRangeInterface) return Integer is abstract;
   procedure setMinGreen (This : in out ColorRangeInterface; minGreen : Integer) is abstract;
   function getMaxGreen (This : in out ColorRangeInterface) return Integer is abstract;
   procedure setMaxGreen (This : in out ColorRangeInterface; maxGreen : Integer) is abstract;
   function getMinBlue (This : in out ColorRangeInterface) return Integer is abstract;
   procedure setMinBlue (This : in out ColorRangeInterface; minBlue : Integer) is abstract;
   function getMaxBlue (This : in out ColorRangeInterface) return Integer is abstract;
   procedure setMaxBlue (This : in out ColorRangeInterface; maxBlue : Integer) is abstract;
   function isInRange (This : in out ColorRangeInterface; color_Param : access Color_Package.Color'Class) return Boolean is abstract;
   procedure isInRange (This : in out ColorRangeInterface; color_Param : access Color_Package.Color'Class) is abstract;

end org.allbinary.media.image.analysis.ColorRangeInterface_Package;


