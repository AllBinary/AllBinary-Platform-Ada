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

limited with org.allbinary.input.motion.OnlyTouchButtonRecognizer_Package;
package org.allbinary.input.motion.OnlyTouchButtonRecognizer_Package_References is
   type OnlyTouchButtonRecognizer_Access is access all org.allbinary.input.motion.OnlyTouchButtonRecognizer_Package.OnlyTouchButtonRecognizer'Class;
   type OnlyTouchButtonRecognizer_Access_Array is array (Natural range <>) of OnlyTouchButtonRecognizer_Access;
   type OnlyTouchButtonRecognizer_Access_Array_Access is access all OnlyTouchButtonRecognizer_Access_Array;
   type OnlyTouchButtonRecognizer_Access_Array_Access_Array is array (Natural range <>) of OnlyTouchButtonRecognizer_Access_Array_Access;
   type OnlyTouchButtonRecognizer_Access_Array_Access_Array_Access is access all OnlyTouchButtonRecognizer_Access_Array_Access_Array;
end org.allbinary.input.motion.OnlyTouchButtonRecognizer_Package_References;

with org.allbinary.input.motion.OnlyTouchButtonRecognizer_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.input.motion.button.TouchButtonRecognizer_Package;
with org.allbinary.input.motion.button.TouchButtonRecognizer_Package_References;
with org.allbinary.input.motion.MotionRecognizer_Package; use org.allbinary.input.motion.MotionRecognizer_Package;

package org.allbinary.input.motion.OnlyTouchButtonRecognizer_Package is

   package TouchButtonRecognizer_Package renames Standard.org.allbinary.input.motion.button.TouchButtonRecognizer_Package;
   package Reference_Types is
   subtype TouchButtonRecognizer_Access is org.allbinary.input.motion.button.TouchButtonRecognizer_Package_References.TouchButtonRecognizer_Access;
   use type TouchButtonRecognizer_Access;
   subtype TouchButtonRecognizer_Access_Array is org.allbinary.input.motion.button.TouchButtonRecognizer_Package_References.TouchButtonRecognizer_Access_Array;
   use type TouchButtonRecognizer_Access_Array;
   subtype TouchButtonRecognizer_Access_Array_Access is org.allbinary.input.motion.button.TouchButtonRecognizer_Package_References.TouchButtonRecognizer_Access_Array_Access;
   use type TouchButtonRecognizer_Access_Array_Access;
   subtype TouchButtonRecognizer_Access_Array_Access_Array is org.allbinary.input.motion.button.TouchButtonRecognizer_Package_References.TouchButtonRecognizer_Access_Array_Access_Array;
   use type TouchButtonRecognizer_Access_Array_Access_Array;
   subtype TouchButtonRecognizer_Access_Array_Access_Array_Access is org.allbinary.input.motion.button.TouchButtonRecognizer_Package_References.TouchButtonRecognizer_Access_Array_Access_Array_Access;
   use type TouchButtonRecognizer_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype OnlyTouchButtonRecognizer_Access is org.allbinary.input.motion.OnlyTouchButtonRecognizer_Package_References.OnlyTouchButtonRecognizer_Access;
   function "=" (Left, Right : OnlyTouchButtonRecognizer_Access) return Boolean renames org.allbinary.input.motion.OnlyTouchButtonRecognizer_Package_References."=";
   subtype OnlyTouchButtonRecognizer_Access_Array is org.allbinary.input.motion.OnlyTouchButtonRecognizer_Package_References.OnlyTouchButtonRecognizer_Access_Array;
   function "=" (Left, Right : OnlyTouchButtonRecognizer_Access_Array) return Boolean renames org.allbinary.input.motion.OnlyTouchButtonRecognizer_Package_References."=";
   subtype OnlyTouchButtonRecognizer_Access_Array_Access is org.allbinary.input.motion.OnlyTouchButtonRecognizer_Package_References.OnlyTouchButtonRecognizer_Access_Array_Access;
   function "=" (Left, Right : OnlyTouchButtonRecognizer_Access_Array_Access) return Boolean renames org.allbinary.input.motion.OnlyTouchButtonRecognizer_Package_References."=";
   subtype OnlyTouchButtonRecognizer_Access_Array_Access_Array is org.allbinary.input.motion.OnlyTouchButtonRecognizer_Package_References.OnlyTouchButtonRecognizer_Access_Array_Access_Array;
   function "=" (Left, Right : OnlyTouchButtonRecognizer_Access_Array_Access_Array) return Boolean renames org.allbinary.input.motion.OnlyTouchButtonRecognizer_Package_References."=";
   subtype OnlyTouchButtonRecognizer_Access_Array_Access_Array_Access is org.allbinary.input.motion.OnlyTouchButtonRecognizer_Package_References.OnlyTouchButtonRecognizer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OnlyTouchButtonRecognizer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.motion.OnlyTouchButtonRecognizer_Package_References."=";

   type OnlyTouchButtonRecognizer is new MotionRecognizer with record
      touchButtonRecognizer : TouchButtonRecognizer_Access;
      touchButtonProcessing : Boolean;
   end record;

   procedure Initialize (This : in out OnlyTouchButtonRecognizer'Class);
   function Create return OnlyTouchButtonRecognizer_Access;
   procedure processStartMotionEvent (This : in out OnlyTouchButtonRecognizer; x : Integer; y : Integer; deviceId : Integer; modifiers : Integer);
   procedure processEndMotionEvent (This : in out OnlyTouchButtonRecognizer; x : Integer; y : Integer; deviceId : Integer; modifiers : Integer);
   procedure processDraggedMotionEvent (This : in out OnlyTouchButtonRecognizer; x : Integer; y : Integer; deviceId : Integer; modifiers : Integer);

end org.allbinary.input.motion.OnlyTouchButtonRecognizer_Package;


