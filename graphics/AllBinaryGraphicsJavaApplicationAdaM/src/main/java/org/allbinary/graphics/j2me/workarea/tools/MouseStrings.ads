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
limited with org.allbinary.graphics.j2me.workarea.tools.MouseStrings_Package;
package org.allbinary.graphics.j2me.workarea.tools.MouseStrings_Package_References is
   type MouseStrings_Access is access all org.allbinary.graphics.j2me.workarea.tools.MouseStrings_Package.MouseStrings'Class;
   type MouseStrings_Access_Array is array (Natural range <>) of MouseStrings_Access;
   type MouseStrings_Access_Array_Access is access all MouseStrings_Access_Array;
   type MouseStrings_Access_Array_Access_Array is array (Natural range <>) of MouseStrings_Access_Array_Access;
   type MouseStrings_Access_Array_Access_Array_Access is access all MouseStrings_Access_Array_Access_Array;
   type MouseStrings_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MouseStrings_Access_Array_Access;
   end record;
   function Java_Box (Value : MouseStrings_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MouseStrings_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MouseStrings_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MouseStrings_Access_Array_Access is (if Value /= null and then Value.all in MouseStrings_Access_Array_Object'Class then MouseStrings_Access_Array_Object'Class (Value.all).Value else null);
   type MouseStrings_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MouseStrings_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : MouseStrings_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MouseStrings_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MouseStrings_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MouseStrings_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in MouseStrings_Access_Array_Access_Array_Object'Class then MouseStrings_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.j2me.workarea.tools.MouseStrings_Package_References;

with org.allbinary.graphics.j2me.workarea.tools.MouseStrings_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.graphics.j2me.workarea.tools.MouseStrings_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype MouseStrings_Access is org.allbinary.graphics.j2me.workarea.tools.MouseStrings_Package_References.MouseStrings_Access;
   function "=" (Left, Right : MouseStrings_Access) return Boolean renames org.allbinary.graphics.j2me.workarea.tools.MouseStrings_Package_References."=";
   subtype MouseStrings_Access_Array is org.allbinary.graphics.j2me.workarea.tools.MouseStrings_Package_References.MouseStrings_Access_Array;
   function "=" (Left, Right : MouseStrings_Access_Array) return Boolean renames org.allbinary.graphics.j2me.workarea.tools.MouseStrings_Package_References."=";
   subtype MouseStrings_Access_Array_Access is org.allbinary.graphics.j2me.workarea.tools.MouseStrings_Package_References.MouseStrings_Access_Array_Access;
   function "=" (Left, Right : MouseStrings_Access_Array_Access) return Boolean renames org.allbinary.graphics.j2me.workarea.tools.MouseStrings_Package_References."=";
   function Java_Box (Value : MouseStrings_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.j2me.workarea.tools.MouseStrings_Package_References.Java_Box;
   function Java_Unbox_MouseStrings_Access_Array (Value : access Java_Object'Class) return MouseStrings_Access_Array_Access renames org.allbinary.graphics.j2me.workarea.tools.MouseStrings_Package_References.Java_Unbox_MouseStrings_Access_Array;
   subtype MouseStrings_Access_Array_Access_Array is org.allbinary.graphics.j2me.workarea.tools.MouseStrings_Package_References.MouseStrings_Access_Array_Access_Array;
   function "=" (Left, Right : MouseStrings_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.j2me.workarea.tools.MouseStrings_Package_References."=";
   subtype MouseStrings_Access_Array_Access_Array_Access is org.allbinary.graphics.j2me.workarea.tools.MouseStrings_Package_References.MouseStrings_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MouseStrings_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.j2me.workarea.tools.MouseStrings_Package_References."=";
   function Java_Box (Value : MouseStrings_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.j2me.workarea.tools.MouseStrings_Package_References.Java_Box;
   function Java_Unbox_MouseStrings_Access_Array_Access_Array (Value : access Java_Object'Class) return MouseStrings_Access_Array_Access_Array_Access renames org.allbinary.graphics.j2me.workarea.tools.MouseStrings_Package_References.Java_Unbox_MouseStrings_Access_Array_Access_Array;

   type MouseStrings is new Java_Object with record
      MOUSE_PRESSED : Unbounded_String;
      MOUSE_RELEASED : Unbounded_String;
      MOUSE_CLICKED : Unbounded_String;
      MOUSE_DRAGGED : Unbounded_String;
      MOUSE_MOVED : Unbounded_String;
      MOUSE_PRESSED_LABEL : Unbounded_String;
      MOUSE_RELEASED_LABEL : Unbounded_String;
      MOUSE_CLICKED_LABEL : Unbounded_String;
      MOUSE_DRAGGED_LABEL : Unbounded_String;
      MOUSE_MOVED_LABEL : Unbounded_String;
   end record;
   instance : MouseStrings_Access;

   procedure Initialize (This : in out MouseStrings'Class);
   function Create return MouseStrings_Access;
   function getInstance return MouseStrings_Access;

end org.allbinary.graphics.j2me.workarea.tools.MouseStrings_Package;


