-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
limited with org.allbinary.animation.text.TextInterface_Package;
package org.allbinary.animation.text.TextInterface_Package_References is
   type TextInterface_Access is access all org.allbinary.animation.text.TextInterface_Package.TextInterface'Class;
   type TextInterface_Access_Array is array (Natural range <>) of TextInterface_Access;
   type TextInterface_Access_Array_Access is access all TextInterface_Access_Array;
   type TextInterface_Access_Array_Access_Array is array (Natural range <>) of TextInterface_Access_Array_Access;
   type TextInterface_Access_Array_Access_Array_Access is access all TextInterface_Access_Array_Access_Array;
   type TextInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TextInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : TextInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TextInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TextInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TextInterface_Access_Array_Access is (if Value /= null and then Value.all in TextInterface_Access_Array_Object'Class then TextInterface_Access_Array_Object'Class (Value.all).Value else null);
   type TextInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TextInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : TextInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TextInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TextInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TextInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in TextInterface_Access_Array_Access_Array_Object'Class then TextInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.animation.text.TextInterface_Package_References;

with org.allbinary.animation.text.TextInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.animation.text.TextChangeListener_Package;
with org.allbinary.animation.text.TextChangeListener_Package_References;

package org.allbinary.animation.text.TextInterface_Package is

   package Reference_Types is
   subtype TextChangeListener_Access is org.allbinary.animation.text.TextChangeListener_Package_References.TextChangeListener_Access;
   use type TextChangeListener_Access;
   subtype TextChangeListener_Access_Array is org.allbinary.animation.text.TextChangeListener_Package_References.TextChangeListener_Access_Array;
   use type TextChangeListener_Access_Array;
   subtype TextChangeListener_Access_Array_Access is org.allbinary.animation.text.TextChangeListener_Package_References.TextChangeListener_Access_Array_Access;
   use type TextChangeListener_Access_Array_Access;
   subtype TextChangeListener_Access_Array_Access_Array is org.allbinary.animation.text.TextChangeListener_Package_References.TextChangeListener_Access_Array_Access_Array;
   use type TextChangeListener_Access_Array_Access_Array;
   subtype TextChangeListener_Access_Array_Access_Array_Access is org.allbinary.animation.text.TextChangeListener_Package_References.TextChangeListener_Access_Array_Access_Array_Access;
   use type TextChangeListener_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type TextInterface is interface;
   subtype TextInterface_Access is org.allbinary.animation.text.TextInterface_Package_References.TextInterface_Access;
   function "=" (Left, Right : TextInterface_Access) return Boolean renames org.allbinary.animation.text.TextInterface_Package_References."=";
   subtype TextInterface_Access_Array is org.allbinary.animation.text.TextInterface_Package_References.TextInterface_Access_Array;
   function "=" (Left, Right : TextInterface_Access_Array) return Boolean renames org.allbinary.animation.text.TextInterface_Package_References."=";
   subtype TextInterface_Access_Array_Access is org.allbinary.animation.text.TextInterface_Package_References.TextInterface_Access_Array_Access;
   function "=" (Left, Right : TextInterface_Access_Array_Access) return Boolean renames org.allbinary.animation.text.TextInterface_Package_References."=";
   function Java_Box (Value : TextInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.text.TextInterface_Package_References.Java_Box;
   function Java_Unbox_TextInterface_Access_Array (Value : access Java_Object'Class) return TextInterface_Access_Array_Access renames org.allbinary.animation.text.TextInterface_Package_References.Java_Unbox_TextInterface_Access_Array;
   subtype TextInterface_Access_Array_Access_Array is org.allbinary.animation.text.TextInterface_Package_References.TextInterface_Access_Array_Access_Array;
   function "=" (Left, Right : TextInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.text.TextInterface_Package_References."=";
   subtype TextInterface_Access_Array_Access_Array_Access is org.allbinary.animation.text.TextInterface_Package_References.TextInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TextInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.text.TextInterface_Package_References."=";
   function Java_Box (Value : TextInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.text.TextInterface_Package_References.Java_Box;
   function Java_Unbox_TextInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return TextInterface_Access_Array_Access_Array_Access renames org.allbinary.animation.text.TextInterface_Package_References.Java_Unbox_TextInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_TextInterface (Value : TextInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure setTextWithOnMeasure (This : in out TextInterface; text : Unbounded_String; textChangeListener_Param : access TextChangeListener_Package.TextChangeListener'Class) is abstract;
   function getText (This : in out TextInterface) return Unbounded_String is abstract;
   procedure setText (This : in out TextInterface; text : Unbounded_String) is abstract;
   function getFontHeight (This : in out TextInterface) return Integer is abstract;
   function getWidth (This : in out TextInterface) return Integer is abstract;

end org.allbinary.animation.text.TextInterface_Package;


