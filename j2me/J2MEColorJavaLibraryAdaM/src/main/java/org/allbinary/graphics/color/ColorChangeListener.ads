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
limited with org.allbinary.graphics.color.ColorChangeListener_Package;
package org.allbinary.graphics.color.ColorChangeListener_Package_References is
   type ColorChangeListener_Access is access all org.allbinary.graphics.color.ColorChangeListener_Package.ColorChangeListener'Class;
   type ColorChangeListener_Access_Array is array (Natural range <>) of ColorChangeListener_Access;
   type ColorChangeListener_Access_Array_Access is access all ColorChangeListener_Access_Array;
   type ColorChangeListener_Access_Array_Access_Array is array (Natural range <>) of ColorChangeListener_Access_Array_Access;
   type ColorChangeListener_Access_Array_Access_Array_Access is access all ColorChangeListener_Access_Array_Access_Array;
   type ColorChangeListener_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ColorChangeListener_Access_Array_Access;
   end record;
   function Java_Box (Value : ColorChangeListener_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ColorChangeListener_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ColorChangeListener_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ColorChangeListener_Access_Array_Access is (if Value /= null and then Value.all in ColorChangeListener_Access_Array_Object'Class then ColorChangeListener_Access_Array_Object'Class (Value.all).Value else null);
   type ColorChangeListener_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ColorChangeListener_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ColorChangeListener_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ColorChangeListener_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ColorChangeListener_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ColorChangeListener_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ColorChangeListener_Access_Array_Access_Array_Object'Class then ColorChangeListener_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.color.ColorChangeListener_Package_References;

with org.allbinary.graphics.color.ColorChangeListener_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.util.event.EventListenerInterface_Package; use org.allbinary.logic.util.event.EventListenerInterface_Package;

package org.allbinary.graphics.color.ColorChangeListener_Package is

   package EventListenerInterface_Package renames Standard.org.allbinary.logic.util.event.EventListenerInterface_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type ColorChangeListener is interface and EventListenerInterface;
   subtype ColorChangeListener_Access is org.allbinary.graphics.color.ColorChangeListener_Package_References.ColorChangeListener_Access;
   function "=" (Left, Right : ColorChangeListener_Access) return Boolean renames org.allbinary.graphics.color.ColorChangeListener_Package_References."=";
   subtype ColorChangeListener_Access_Array is org.allbinary.graphics.color.ColorChangeListener_Package_References.ColorChangeListener_Access_Array;
   function "=" (Left, Right : ColorChangeListener_Access_Array) return Boolean renames org.allbinary.graphics.color.ColorChangeListener_Package_References."=";
   subtype ColorChangeListener_Access_Array_Access is org.allbinary.graphics.color.ColorChangeListener_Package_References.ColorChangeListener_Access_Array_Access;
   function "=" (Left, Right : ColorChangeListener_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.ColorChangeListener_Package_References."=";
   function Java_Box (Value : ColorChangeListener_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.color.ColorChangeListener_Package_References.Java_Box;
   function Java_Unbox_ColorChangeListener_Access_Array (Value : access Java_Object'Class) return ColorChangeListener_Access_Array_Access renames org.allbinary.graphics.color.ColorChangeListener_Package_References.Java_Unbox_ColorChangeListener_Access_Array;
   subtype ColorChangeListener_Access_Array_Access_Array is org.allbinary.graphics.color.ColorChangeListener_Package_References.ColorChangeListener_Access_Array_Access_Array;
   function "=" (Left, Right : ColorChangeListener_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.color.ColorChangeListener_Package_References."=";
   subtype ColorChangeListener_Access_Array_Access_Array_Access is org.allbinary.graphics.color.ColorChangeListener_Package_References.ColorChangeListener_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ColorChangeListener_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.ColorChangeListener_Package_References."=";
   function Java_Box (Value : ColorChangeListener_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.color.ColorChangeListener_Package_References.Java_Box;
   function Java_Unbox_ColorChangeListener_Access_Array_Access_Array (Value : access Java_Object'Class) return ColorChangeListener_Access_Array_Access_Array_Access renames org.allbinary.graphics.color.ColorChangeListener_Package_References.Java_Unbox_ColorChangeListener_Access_Array_Access_Array;
   function Java_Object_Access_From_ColorChangeListener (Value : ColorChangeListener_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));

end org.allbinary.graphics.color.ColorChangeListener_Package;


