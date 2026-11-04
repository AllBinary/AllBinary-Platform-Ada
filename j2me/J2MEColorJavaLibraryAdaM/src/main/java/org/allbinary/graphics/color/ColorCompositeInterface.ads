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

limited with org.allbinary.graphics.color.ColorCompositeInterface_Package;
package org.allbinary.graphics.color.ColorCompositeInterface_Package_References is
   type ColorCompositeInterface_Access is access all org.allbinary.graphics.color.ColorCompositeInterface_Package.ColorCompositeInterface'Class;
   type ColorCompositeInterface_Access_Array is array (Natural range <>) of ColorCompositeInterface_Access;
   type ColorCompositeInterface_Access_Array_Access is access all ColorCompositeInterface_Access_Array;
   type ColorCompositeInterface_Access_Array_Access_Array is array (Natural range <>) of ColorCompositeInterface_Access_Array_Access;
   type ColorCompositeInterface_Access_Array_Access_Array_Access is access all ColorCompositeInterface_Access_Array_Access_Array;
end org.allbinary.graphics.color.ColorCompositeInterface_Package_References;

with org.allbinary.graphics.color.ColorCompositeInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.graphics.color.BasicColorCompositeSetterInterface_Package; use org.allbinary.graphics.color.BasicColorCompositeSetterInterface_Package;
limited with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;

package org.allbinary.graphics.color.ColorCompositeInterface_Package is

   package Reference_Types is
   subtype BasicColor_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access;
   use type BasicColor_Access;
   subtype BasicColor_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array;
   use type BasicColor_Access_Array;
   subtype BasicColor_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access;
   use type BasicColor_Access_Array_Access;
   subtype BasicColor_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array;
   use type BasicColor_Access_Array_Access_Array;
   subtype BasicColor_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array_Access;
   use type BasicColor_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type ColorCompositeInterface is interface and BasicColorCompositeSetterInterface;
   subtype ColorCompositeInterface_Access is org.allbinary.graphics.color.ColorCompositeInterface_Package_References.ColorCompositeInterface_Access;
   function "=" (Left, Right : ColorCompositeInterface_Access) return Boolean renames org.allbinary.graphics.color.ColorCompositeInterface_Package_References."=";
   subtype ColorCompositeInterface_Access_Array is org.allbinary.graphics.color.ColorCompositeInterface_Package_References.ColorCompositeInterface_Access_Array;
   function "=" (Left, Right : ColorCompositeInterface_Access_Array) return Boolean renames org.allbinary.graphics.color.ColorCompositeInterface_Package_References."=";
   subtype ColorCompositeInterface_Access_Array_Access is org.allbinary.graphics.color.ColorCompositeInterface_Package_References.ColorCompositeInterface_Access_Array_Access;
   function "=" (Left, Right : ColorCompositeInterface_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.ColorCompositeInterface_Package_References."=";
   subtype ColorCompositeInterface_Access_Array_Access_Array is org.allbinary.graphics.color.ColorCompositeInterface_Package_References.ColorCompositeInterface_Access_Array_Access_Array;
   function "=" (Left, Right : ColorCompositeInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.color.ColorCompositeInterface_Package_References."=";
   subtype ColorCompositeInterface_Access_Array_Access_Array_Access is org.allbinary.graphics.color.ColorCompositeInterface_Package_References.ColorCompositeInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ColorCompositeInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.ColorCompositeInterface_Package_References."=";
   function Java_Object_Access_From_ColorCompositeInterface (Value : ColorCompositeInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getBasicColorP (This : in out ColorCompositeInterface) return BasicColor_Access is abstract;

end org.allbinary.graphics.color.ColorCompositeInterface_Package;


