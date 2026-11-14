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
limited with org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingleton_Package;
package org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingleton_Package_References is
   type CurrentlyPressedTouchButtonSingleton_Access is access all org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingleton_Package.CurrentlyPressedTouchButtonSingleton'Class;
   type CurrentlyPressedTouchButtonSingleton_Access_Array is array (Natural range <>) of CurrentlyPressedTouchButtonSingleton_Access;
   type CurrentlyPressedTouchButtonSingleton_Access_Array_Access is access all CurrentlyPressedTouchButtonSingleton_Access_Array;
   type CurrentlyPressedTouchButtonSingleton_Access_Array_Access_Array is array (Natural range <>) of CurrentlyPressedTouchButtonSingleton_Access_Array_Access;
   type CurrentlyPressedTouchButtonSingleton_Access_Array_Access_Array_Access is access all CurrentlyPressedTouchButtonSingleton_Access_Array_Access_Array;
   type CurrentlyPressedTouchButtonSingleton_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CurrentlyPressedTouchButtonSingleton_Access_Array_Access;
   end record;
   function Java_Box (Value : CurrentlyPressedTouchButtonSingleton_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CurrentlyPressedTouchButtonSingleton_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CurrentlyPressedTouchButtonSingleton_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CurrentlyPressedTouchButtonSingleton_Access_Array_Access is (if Value /= null and then Value.all in CurrentlyPressedTouchButtonSingleton_Access_Array_Object'Class then CurrentlyPressedTouchButtonSingleton_Access_Array_Object'Class (Value.all).Value else null);
   type CurrentlyPressedTouchButtonSingleton_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CurrentlyPressedTouchButtonSingleton_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : CurrentlyPressedTouchButtonSingleton_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CurrentlyPressedTouchButtonSingleton_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CurrentlyPressedTouchButtonSingleton_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CurrentlyPressedTouchButtonSingleton_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in CurrentlyPressedTouchButtonSingleton_Access_Array_Access_Array_Object'Class then CurrentlyPressedTouchButtonSingleton_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingleton_Package_References;

with org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingleton_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.input.motion.button.TouchButtonInput_Package;
with org.allbinary.input.motion.button.TouchButtonInput_Package_References;

package org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingleton_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Reference_Types is
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   subtype TouchButtonInput_Access is org.allbinary.input.motion.button.TouchButtonInput_Package_References.TouchButtonInput_Access;
   use type TouchButtonInput_Access;
   subtype TouchButtonInput_Access_Array is org.allbinary.input.motion.button.TouchButtonInput_Package_References.TouchButtonInput_Access_Array;
   use type TouchButtonInput_Access_Array;
   subtype TouchButtonInput_Access_Array_Access is org.allbinary.input.motion.button.TouchButtonInput_Package_References.TouchButtonInput_Access_Array_Access;
   use type TouchButtonInput_Access_Array_Access;
   subtype TouchButtonInput_Access_Array_Access_Array is org.allbinary.input.motion.button.TouchButtonInput_Package_References.TouchButtonInput_Access_Array_Access_Array;
   use type TouchButtonInput_Access_Array_Access_Array;
   subtype TouchButtonInput_Access_Array_Access_Array_Access is org.allbinary.input.motion.button.TouchButtonInput_Package_References.TouchButtonInput_Access_Array_Access_Array_Access;
   use type TouchButtonInput_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype CurrentlyPressedTouchButtonSingleton_Access is org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingleton_Package_References.CurrentlyPressedTouchButtonSingleton_Access;
   function "=" (Left, Right : CurrentlyPressedTouchButtonSingleton_Access) return Boolean renames org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingleton_Package_References."=";
   subtype CurrentlyPressedTouchButtonSingleton_Access_Array is org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingleton_Package_References.CurrentlyPressedTouchButtonSingleton_Access_Array;
   function "=" (Left, Right : CurrentlyPressedTouchButtonSingleton_Access_Array) return Boolean renames org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingleton_Package_References."=";
   subtype CurrentlyPressedTouchButtonSingleton_Access_Array_Access is org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingleton_Package_References.CurrentlyPressedTouchButtonSingleton_Access_Array_Access;
   function "=" (Left, Right : CurrentlyPressedTouchButtonSingleton_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingleton_Package_References."=";
   function Java_Box (Value : CurrentlyPressedTouchButtonSingleton_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingleton_Package_References.Java_Box;
   function Java_Unbox_CurrentlyPressedTouchButtonSingleton_Access_Array (Value : access Java_Object'Class) return CurrentlyPressedTouchButtonSingleton_Access_Array_Access renames org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingleton_Package_References.Java_Unbox_CurrentlyPressedTouchButtonSingleton_Access_Array;
   subtype CurrentlyPressedTouchButtonSingleton_Access_Array_Access_Array is org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingleton_Package_References.CurrentlyPressedTouchButtonSingleton_Access_Array_Access_Array;
   function "=" (Left, Right : CurrentlyPressedTouchButtonSingleton_Access_Array_Access_Array) return Boolean renames org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingleton_Package_References."=";
   subtype CurrentlyPressedTouchButtonSingleton_Access_Array_Access_Array_Access is org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingleton_Package_References.CurrentlyPressedTouchButtonSingleton_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CurrentlyPressedTouchButtonSingleton_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingleton_Package_References."=";
   function Java_Box (Value : CurrentlyPressedTouchButtonSingleton_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingleton_Package_References.Java_Box;
   function Java_Unbox_CurrentlyPressedTouchButtonSingleton_Access_Array_Access_Array (Value : access Java_Object'Class) return CurrentlyPressedTouchButtonSingleton_Access_Array_Access_Array_Access renames org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingleton_Package_References.Java_Unbox_CurrentlyPressedTouchButtonSingleton_Access_Array_Access_Array;

   type CurrentlyPressedTouchButtonSingleton is new Java_Object with record
      list : BasicArrayList_Access;
   end record;
   instance : CurrentlyPressedTouchButtonSingleton_Access;

   procedure Initialize (This : in out CurrentlyPressedTouchButtonSingleton'Class);
   function Create return CurrentlyPressedTouchButtonSingleton_Access;
   function getInstance return CurrentlyPressedTouchButtonSingleton_Access;
   function size (This : in out CurrentlyPressedTouchButtonSingleton) return Integer;
   function removeAt (This : in out CurrentlyPressedTouchButtonSingleton; index : Integer) return TouchButtonInput_Access;
   procedure removeAt (This : in out CurrentlyPressedTouchButtonSingleton; index : Integer);
   function remove (This : in out CurrentlyPressedTouchButtonSingleton; touchButtonInput_Param : access TouchButtonInput_Package.TouchButtonInput'Class) return Boolean;
   procedure remove (This : in out CurrentlyPressedTouchButtonSingleton; touchButtonInput_Param : access TouchButtonInput_Package.TouchButtonInput'Class);
   function get (This : in out CurrentlyPressedTouchButtonSingleton; index : Integer) return TouchButtonInput_Access;
   procedure get (This : in out CurrentlyPressedTouchButtonSingleton; index : Integer);
   function contains (This : in out CurrentlyPressedTouchButtonSingleton; touchButtonInput_Param : access TouchButtonInput_Package.TouchButtonInput'Class) return Boolean;
   procedure contains (This : in out CurrentlyPressedTouchButtonSingleton; touchButtonInput_Param : access TouchButtonInput_Package.TouchButtonInput'Class);
   procedure add (This : in out CurrentlyPressedTouchButtonSingleton; touchButtonInput_Param : access TouchButtonInput_Package.TouchButtonInput'Class);

end org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingleton_Package;


