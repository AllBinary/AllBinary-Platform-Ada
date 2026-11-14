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
limited with org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingletonDebug_Package;
package org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingletonDebug_Package_References is
   type CurrentlyPressedTouchButtonSingletonDebug_Access is access all org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingletonDebug_Package.CurrentlyPressedTouchButtonSingletonDebug'Class;
   type CurrentlyPressedTouchButtonSingletonDebug_Access_Array is array (Natural range <>) of CurrentlyPressedTouchButtonSingletonDebug_Access;
   type CurrentlyPressedTouchButtonSingletonDebug_Access_Array_Access is access all CurrentlyPressedTouchButtonSingletonDebug_Access_Array;
   type CurrentlyPressedTouchButtonSingletonDebug_Access_Array_Access_Array is array (Natural range <>) of CurrentlyPressedTouchButtonSingletonDebug_Access_Array_Access;
   type CurrentlyPressedTouchButtonSingletonDebug_Access_Array_Access_Array_Access is access all CurrentlyPressedTouchButtonSingletonDebug_Access_Array_Access_Array;
   type CurrentlyPressedTouchButtonSingletonDebug_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CurrentlyPressedTouchButtonSingletonDebug_Access_Array_Access;
   end record;
   function Java_Box (Value : CurrentlyPressedTouchButtonSingletonDebug_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CurrentlyPressedTouchButtonSingletonDebug_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CurrentlyPressedTouchButtonSingletonDebug_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CurrentlyPressedTouchButtonSingletonDebug_Access_Array_Access is (if Value /= null and then Value.all in CurrentlyPressedTouchButtonSingletonDebug_Access_Array_Object'Class then CurrentlyPressedTouchButtonSingletonDebug_Access_Array_Object'Class (Value.all).Value else null);
   type CurrentlyPressedTouchButtonSingletonDebug_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CurrentlyPressedTouchButtonSingletonDebug_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : CurrentlyPressedTouchButtonSingletonDebug_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CurrentlyPressedTouchButtonSingletonDebug_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CurrentlyPressedTouchButtonSingletonDebug_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CurrentlyPressedTouchButtonSingletonDebug_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in CurrentlyPressedTouchButtonSingletonDebug_Access_Array_Access_Array_Object'Class then CurrentlyPressedTouchButtonSingletonDebug_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingletonDebug_Package_References;

with org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingletonDebug_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingleton_Package; use org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingleton_Package;
limited with org.allbinary.input.motion.button.TouchButtonInput_Package;
with org.allbinary.input.motion.button.TouchButtonInput_Package_References;

package org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingletonDebug_Package is

   package Reference_Types is
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


   subtype CurrentlyPressedTouchButtonSingletonDebug_Access is org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingletonDebug_Package_References.CurrentlyPressedTouchButtonSingletonDebug_Access;
   function "=" (Left, Right : CurrentlyPressedTouchButtonSingletonDebug_Access) return Boolean renames org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingletonDebug_Package_References."=";
   subtype CurrentlyPressedTouchButtonSingletonDebug_Access_Array is org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingletonDebug_Package_References.CurrentlyPressedTouchButtonSingletonDebug_Access_Array;
   function "=" (Left, Right : CurrentlyPressedTouchButtonSingletonDebug_Access_Array) return Boolean renames org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingletonDebug_Package_References."=";
   subtype CurrentlyPressedTouchButtonSingletonDebug_Access_Array_Access is org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingletonDebug_Package_References.CurrentlyPressedTouchButtonSingletonDebug_Access_Array_Access;
   function "=" (Left, Right : CurrentlyPressedTouchButtonSingletonDebug_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingletonDebug_Package_References."=";
   function Java_Box (Value : CurrentlyPressedTouchButtonSingletonDebug_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingletonDebug_Package_References.Java_Box;
   function Java_Unbox_CurrentlyPressedTouchButtonSingletonDebug_Access_Array (Value : access Java_Object'Class) return CurrentlyPressedTouchButtonSingletonDebug_Access_Array_Access renames org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingletonDebug_Package_References.Java_Unbox_CurrentlyPressedTouchButtonSingletonDebug_Access_Array;
   subtype CurrentlyPressedTouchButtonSingletonDebug_Access_Array_Access_Array is org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingletonDebug_Package_References.CurrentlyPressedTouchButtonSingletonDebug_Access_Array_Access_Array;
   function "=" (Left, Right : CurrentlyPressedTouchButtonSingletonDebug_Access_Array_Access_Array) return Boolean renames org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingletonDebug_Package_References."=";
   subtype CurrentlyPressedTouchButtonSingletonDebug_Access_Array_Access_Array_Access is org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingletonDebug_Package_References.CurrentlyPressedTouchButtonSingletonDebug_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CurrentlyPressedTouchButtonSingletonDebug_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingletonDebug_Package_References."=";
   function Java_Box (Value : CurrentlyPressedTouchButtonSingletonDebug_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingletonDebug_Package_References.Java_Box;
   function Java_Unbox_CurrentlyPressedTouchButtonSingletonDebug_Access_Array_Access_Array (Value : access Java_Object'Class) return CurrentlyPressedTouchButtonSingletonDebug_Access_Array_Access_Array_Access renames org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingletonDebug_Package_References.Java_Unbox_CurrentlyPressedTouchButtonSingletonDebug_Access_Array_Access_Array;

   type CurrentlyPressedTouchButtonSingletonDebug is new CurrentlyPressedTouchButtonSingleton with record
      string_Id : Unbounded_String;
      listString : Unbounded_String;
      appendText : Unbounded_String;
      PRESSED_AND_FIRED : Unbounded_String;
      PRESSED_AND_NOT_FIRED : Unbounded_String;
      ASSOCIATED_RELEASED_AND_FIRED : Unbounded_String;
      RELEASED_AND_FIRED : Unbounded_String;
      RELEASED_AND_FIRED_2 : Unbounded_String;
      RELEASED_AND_NOT_FIRED : Unbounded_String;
   end record;
   instanceC : CurrentlyPressedTouchButtonSingletonDebug_Access;

   procedure Initialize (This : in out CurrentlyPressedTouchButtonSingletonDebug'Class);
   function Create return CurrentlyPressedTouchButtonSingletonDebug_Access;
   function getInstance return CurrentlyPressedTouchButtonSingleton_Access;
   procedure appendTouchButtonInput (This : in out CurrentlyPressedTouchButtonSingletonDebug; append : Unbounded_String; touchButtonInput_Param : access TouchButtonInput_Package.TouchButtonInput'Class);
   procedure append (This : in out CurrentlyPressedTouchButtonSingletonDebug; append : Unbounded_String);
   procedure clearLog (This : in out CurrentlyPressedTouchButtonSingletonDebug; x : Integer; y : Integer);
   procedure releaseAndNotFired (This : in out CurrentlyPressedTouchButtonSingletonDebug);
   procedure releaseAndFired (This : in out CurrentlyPressedTouchButtonSingletonDebug; touchButtonInput_Param : access TouchButtonInput_Package.TouchButtonInput'Class);
   procedure releaseAndFired2 (This : in out CurrentlyPressedTouchButtonSingletonDebug; touchButtonInput_Param : access TouchButtonInput_Package.TouchButtonInput'Class);
   procedure releaseAndFiredAssociated (This : in out CurrentlyPressedTouchButtonSingletonDebug; touchButtonInput_Param : access TouchButtonInput_Package.TouchButtonInput'Class);
   procedure pressedAndFired (This : in out CurrentlyPressedTouchButtonSingletonDebug; touchButtonInput_Param : access TouchButtonInput_Package.TouchButtonInput'Class);
   procedure pressedAndNotFired (This : in out CurrentlyPressedTouchButtonSingletonDebug; touchButtonInput_Param : access TouchButtonInput_Package.TouchButtonInput'Class);
   function removeAt (This : in out CurrentlyPressedTouchButtonSingletonDebug; index : Integer) return TouchButtonInput_Access;
   procedure removeAt (This : in out CurrentlyPressedTouchButtonSingletonDebug; index : Integer);
   function remove (This : in out CurrentlyPressedTouchButtonSingletonDebug; touchButtonInput_Param : access TouchButtonInput_Package.TouchButtonInput'Class) return Boolean;
   procedure remove (This : in out CurrentlyPressedTouchButtonSingletonDebug; touchButtonInput_Param : access TouchButtonInput_Package.TouchButtonInput'Class);
   procedure add (This : in out CurrentlyPressedTouchButtonSingletonDebug; touchButtonInput_Param : access TouchButtonInput_Package.TouchButtonInput'Class);
   function toString (This : in out CurrentlyPressedTouchButtonSingletonDebug) return Unbounded_String;

end org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingletonDebug_Package;


