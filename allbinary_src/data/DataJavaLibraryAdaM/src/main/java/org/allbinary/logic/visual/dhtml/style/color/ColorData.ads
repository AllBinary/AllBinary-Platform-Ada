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
limited with org.allbinary.logic.visual.dhtml.style.color.ColorData_Package;
package org.allbinary.logic.visual.dhtml.style.color.ColorData_Package_References is
   type ColorData_Access is access all org.allbinary.logic.visual.dhtml.style.color.ColorData_Package.ColorData'Class;
   type ColorData_Access_Array is array (Natural range <>) of ColorData_Access;
   type ColorData_Access_Array_Access is access all ColorData_Access_Array;
   type ColorData_Access_Array_Access_Array is array (Natural range <>) of ColorData_Access_Array_Access;
   type ColorData_Access_Array_Access_Array_Access is access all ColorData_Access_Array_Access_Array;
   type ColorData_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ColorData_Access_Array_Access;
   end record;
   function Java_Box (Value : ColorData_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ColorData_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ColorData_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ColorData_Access_Array_Access is (if Value /= null and then Value.all in ColorData_Access_Array_Object'Class then ColorData_Access_Array_Object'Class (Value.all).Value else null);
   type ColorData_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ColorData_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ColorData_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ColorData_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ColorData_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ColorData_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ColorData_Access_Array_Access_Array_Object'Class then ColorData_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.visual.dhtml.style.color.ColorData_Package_References;

with org.allbinary.logic.visual.dhtml.style.color.ColorData_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.visual.dhtml.style.color.ColorData_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype ColorData_Access is org.allbinary.logic.visual.dhtml.style.color.ColorData_Package_References.ColorData_Access;
   function "=" (Left, Right : ColorData_Access) return Boolean renames org.allbinary.logic.visual.dhtml.style.color.ColorData_Package_References."=";
   subtype ColorData_Access_Array is org.allbinary.logic.visual.dhtml.style.color.ColorData_Package_References.ColorData_Access_Array;
   function "=" (Left, Right : ColorData_Access_Array) return Boolean renames org.allbinary.logic.visual.dhtml.style.color.ColorData_Package_References."=";
   subtype ColorData_Access_Array_Access is org.allbinary.logic.visual.dhtml.style.color.ColorData_Package_References.ColorData_Access_Array_Access;
   function "=" (Left, Right : ColorData_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.dhtml.style.color.ColorData_Package_References."=";
   function Java_Box (Value : ColorData_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.dhtml.style.color.ColorData_Package_References.Java_Box;
   function Java_Unbox_ColorData_Access_Array (Value : access Java_Object'Class) return ColorData_Access_Array_Access renames org.allbinary.logic.visual.dhtml.style.color.ColorData_Package_References.Java_Unbox_ColorData_Access_Array;
   subtype ColorData_Access_Array_Access_Array is org.allbinary.logic.visual.dhtml.style.color.ColorData_Package_References.ColorData_Access_Array_Access_Array;
   function "=" (Left, Right : ColorData_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.dhtml.style.color.ColorData_Package_References."=";
   subtype ColorData_Access_Array_Access_Array_Access is org.allbinary.logic.visual.dhtml.style.color.ColorData_Package_References.ColorData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ColorData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.dhtml.style.color.ColorData_Package_References."=";
   function Java_Box (Value : ColorData_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.dhtml.style.color.ColorData_Package_References.Java_Box;
   function Java_Unbox_ColorData_Access_Array_Access_Array (Value : access Java_Object'Class) return ColorData_Access_Array_Access_Array_Access renames org.allbinary.logic.visual.dhtml.style.color.ColorData_Package_References.Java_Unbox_ColorData_Access_Array_Access_Array;

   type ColorData is new Java_Object with record
      NAME : Unbounded_String;
   end record;
   instance : ColorData_Access;

   procedure Initialize (This : in out ColorData'Class);
   function Create return ColorData_Access;
   function getInstance return ColorData_Access;

end org.allbinary.logic.visual.dhtml.style.color.ColorData_Package;


