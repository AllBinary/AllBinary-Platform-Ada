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
limited with org.allbinary.graphics.color.ColorChangeEventHandler_Package;
package org.allbinary.graphics.color.ColorChangeEventHandler_Package_References is
   type ColorChangeEventHandler_Access is access all org.allbinary.graphics.color.ColorChangeEventHandler_Package.ColorChangeEventHandler'Class;
   type ColorChangeEventHandler_Access_Array is array (Natural range <>) of ColorChangeEventHandler_Access;
   type ColorChangeEventHandler_Access_Array_Access is access all ColorChangeEventHandler_Access_Array;
   type ColorChangeEventHandler_Access_Array_Access_Array is array (Natural range <>) of ColorChangeEventHandler_Access_Array_Access;
   type ColorChangeEventHandler_Access_Array_Access_Array_Access is access all ColorChangeEventHandler_Access_Array_Access_Array;
   type ColorChangeEventHandler_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ColorChangeEventHandler_Access_Array_Access;
   end record;
   function Java_Box (Value : ColorChangeEventHandler_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ColorChangeEventHandler_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ColorChangeEventHandler_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ColorChangeEventHandler_Access_Array_Access is (if Value /= null and then Value.all in ColorChangeEventHandler_Access_Array_Object'Class then ColorChangeEventHandler_Access_Array_Object'Class (Value.all).Value else null);
   type ColorChangeEventHandler_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ColorChangeEventHandler_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ColorChangeEventHandler_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ColorChangeEventHandler_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ColorChangeEventHandler_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ColorChangeEventHandler_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ColorChangeEventHandler_Access_Array_Access_Array_Object'Class then ColorChangeEventHandler_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.color.ColorChangeEventHandler_Package_References;

with org.allbinary.graphics.color.ColorChangeEventHandler_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.util.event.handler.BasicEventHandler_Package; use org.allbinary.logic.util.event.handler.BasicEventHandler_Package;

package org.allbinary.graphics.color.ColorChangeEventHandler_Package is

   package BasicEventHandler_Package renames Standard.org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype ColorChangeEventHandler_Access is org.allbinary.graphics.color.ColorChangeEventHandler_Package_References.ColorChangeEventHandler_Access;
   function "=" (Left, Right : ColorChangeEventHandler_Access) return Boolean renames org.allbinary.graphics.color.ColorChangeEventHandler_Package_References."=";
   subtype ColorChangeEventHandler_Access_Array is org.allbinary.graphics.color.ColorChangeEventHandler_Package_References.ColorChangeEventHandler_Access_Array;
   function "=" (Left, Right : ColorChangeEventHandler_Access_Array) return Boolean renames org.allbinary.graphics.color.ColorChangeEventHandler_Package_References."=";
   subtype ColorChangeEventHandler_Access_Array_Access is org.allbinary.graphics.color.ColorChangeEventHandler_Package_References.ColorChangeEventHandler_Access_Array_Access;
   function "=" (Left, Right : ColorChangeEventHandler_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.ColorChangeEventHandler_Package_References."=";
   function Java_Box (Value : ColorChangeEventHandler_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.color.ColorChangeEventHandler_Package_References.Java_Box;
   function Java_Unbox_ColorChangeEventHandler_Access_Array (Value : access Java_Object'Class) return ColorChangeEventHandler_Access_Array_Access renames org.allbinary.graphics.color.ColorChangeEventHandler_Package_References.Java_Unbox_ColorChangeEventHandler_Access_Array;
   subtype ColorChangeEventHandler_Access_Array_Access_Array is org.allbinary.graphics.color.ColorChangeEventHandler_Package_References.ColorChangeEventHandler_Access_Array_Access_Array;
   function "=" (Left, Right : ColorChangeEventHandler_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.color.ColorChangeEventHandler_Package_References."=";
   subtype ColorChangeEventHandler_Access_Array_Access_Array_Access is org.allbinary.graphics.color.ColorChangeEventHandler_Package_References.ColorChangeEventHandler_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ColorChangeEventHandler_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.ColorChangeEventHandler_Package_References."=";
   function Java_Box (Value : ColorChangeEventHandler_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.color.ColorChangeEventHandler_Package_References.Java_Box;
   function Java_Unbox_ColorChangeEventHandler_Access_Array_Access_Array (Value : access Java_Object'Class) return ColorChangeEventHandler_Access_Array_Access_Array_Access renames org.allbinary.graphics.color.ColorChangeEventHandler_Package_References.Java_Unbox_ColorChangeEventHandler_Access_Array_Access_Array;

   type ColorChangeEventHandler is new BasicEventHandler with null record;
   eventHandler : ColorChangeEventHandler_Access;

   procedure Initialize (This : in out ColorChangeEventHandler'Class);
   function Create return ColorChangeEventHandler_Access;
   function getInstance return ColorChangeEventHandler_Access;

end org.allbinary.graphics.color.ColorChangeEventHandler_Package;


