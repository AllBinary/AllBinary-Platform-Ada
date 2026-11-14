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
limited with org.allbinary.graphics.color.ColorLevel_Package;
package org.allbinary.graphics.color.ColorLevel_Package_References is
   type ColorLevel_Access is access all org.allbinary.graphics.color.ColorLevel_Package.ColorLevel'Class;
   type ColorLevel_Access_Array is array (Natural range <>) of ColorLevel_Access;
   type ColorLevel_Access_Array_Access is access all ColorLevel_Access_Array;
   type ColorLevel_Access_Array_Access_Array is array (Natural range <>) of ColorLevel_Access_Array_Access;
   type ColorLevel_Access_Array_Access_Array_Access is access all ColorLevel_Access_Array_Access_Array;
   type ColorLevel_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ColorLevel_Access_Array_Access;
   end record;
   function Java_Box (Value : ColorLevel_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ColorLevel_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ColorLevel_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ColorLevel_Access_Array_Access is (if Value /= null and then Value.all in ColorLevel_Access_Array_Object'Class then ColorLevel_Access_Array_Object'Class (Value.all).Value else null);
   type ColorLevel_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ColorLevel_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ColorLevel_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ColorLevel_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ColorLevel_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ColorLevel_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ColorLevel_Access_Array_Access_Array_Object'Class then ColorLevel_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
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
   function Java_Box (Value : ColorLevel_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.color.ColorLevel_Package_References.Java_Box;
   function Java_Unbox_ColorLevel_Access_Array (Value : access Java_Object'Class) return ColorLevel_Access_Array_Access renames org.allbinary.graphics.color.ColorLevel_Package_References.Java_Unbox_ColorLevel_Access_Array;
   subtype ColorLevel_Access_Array_Access_Array is org.allbinary.graphics.color.ColorLevel_Package_References.ColorLevel_Access_Array_Access_Array;
   function "=" (Left, Right : ColorLevel_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.color.ColorLevel_Package_References."=";
   subtype ColorLevel_Access_Array_Access_Array_Access is org.allbinary.graphics.color.ColorLevel_Package_References.ColorLevel_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ColorLevel_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.ColorLevel_Package_References."=";
   function Java_Box (Value : ColorLevel_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.color.ColorLevel_Package_References.Java_Box;
   function Java_Unbox_ColorLevel_Access_Array_Access_Array (Value : access Java_Object'Class) return ColorLevel_Access_Array_Access_Array_Access renames org.allbinary.graphics.color.ColorLevel_Package_References.Java_Unbox_ColorLevel_Access_Array_Access_Array;

   type ColorLevel is new Java_Object with null record;
   COLOR_MASK : constant Integer := 16#00FFFFFF#;
   MIN : constant Integer := 16#44#;
   AVG : constant Integer := 16#77#;
   LIGHT : constant Integer := 16#AA#;
   HIGH : constant Integer := 16#EE#;

   procedure Initialize (This : in out ColorLevel'Class);
   function Create return ColorLevel_Access;

end org.allbinary.graphics.color.ColorLevel_Package;


