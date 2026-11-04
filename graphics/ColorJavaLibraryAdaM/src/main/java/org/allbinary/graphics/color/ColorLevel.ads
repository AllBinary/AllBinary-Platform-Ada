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

limited with org.allbinary.graphics.color.ColorLevel_Package;
package org.allbinary.graphics.color.ColorLevel_Package_References is
   type ColorLevel_Access is access all org.allbinary.graphics.color.ColorLevel_Package.ColorLevel'Class;
   type ColorLevel_Access_Array is array (Natural range <>) of ColorLevel_Access;
   type ColorLevel_Access_Array_Access is access all ColorLevel_Access_Array;
   type ColorLevel_Access_Array_Access_Array is array (Natural range <>) of ColorLevel_Access_Array_Access;
   type ColorLevel_Access_Array_Access_Array_Access is access all ColorLevel_Access_Array_Access_Array;
end org.allbinary.graphics.color.ColorLevel_Package_References;

with org.allbinary.graphics.color.ColorLevel_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.graphics.color.ColorLevel_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype ColorLevel_Access is org.allbinary.graphics.color.ColorLevel_Package_References.ColorLevel_Access;
   function "=" (Left, Right : ColorLevel_Access) return Boolean renames org.allbinary.graphics.color.ColorLevel_Package_References."=";
   subtype ColorLevel_Access_Array is org.allbinary.graphics.color.ColorLevel_Package_References.ColorLevel_Access_Array;
   function "=" (Left, Right : ColorLevel_Access_Array) return Boolean renames org.allbinary.graphics.color.ColorLevel_Package_References."=";
   subtype ColorLevel_Access_Array_Access is org.allbinary.graphics.color.ColorLevel_Package_References.ColorLevel_Access_Array_Access;
   function "=" (Left, Right : ColorLevel_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.ColorLevel_Package_References."=";
   subtype ColorLevel_Access_Array_Access_Array is org.allbinary.graphics.color.ColorLevel_Package_References.ColorLevel_Access_Array_Access_Array;
   function "=" (Left, Right : ColorLevel_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.color.ColorLevel_Package_References."=";
   subtype ColorLevel_Access_Array_Access_Array_Access is org.allbinary.graphics.color.ColorLevel_Package_References.ColorLevel_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ColorLevel_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.ColorLevel_Package_References."=";

   type ColorLevel is new Java_Object with null record;
   COLOR_MASK : Integer;
   MIN : Integer;
   AVG : Integer;
   LIGHT : Integer;
   HIGH : Integer;

   procedure Initialize (This : in out ColorLevel'Class);
   function Create return ColorLevel_Access;

end org.allbinary.graphics.color.ColorLevel_Package;


