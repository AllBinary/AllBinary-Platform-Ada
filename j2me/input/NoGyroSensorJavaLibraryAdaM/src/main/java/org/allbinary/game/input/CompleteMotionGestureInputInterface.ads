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
limited with org.allbinary.game.input.CompleteMotionGestureInputInterface_Package;
package org.allbinary.game.input.CompleteMotionGestureInputInterface_Package_References is
   type CompleteMotionGestureInputInterface_Access is access all org.allbinary.game.input.CompleteMotionGestureInputInterface_Package.CompleteMotionGestureInputInterface'Class;
   type CompleteMotionGestureInputInterface_Access_Array is array (Natural range <>) of CompleteMotionGestureInputInterface_Access;
   type CompleteMotionGestureInputInterface_Access_Array_Access is access all CompleteMotionGestureInputInterface_Access_Array;
   type CompleteMotionGestureInputInterface_Access_Array_Access_Array is array (Natural range <>) of CompleteMotionGestureInputInterface_Access_Array_Access;
   type CompleteMotionGestureInputInterface_Access_Array_Access_Array_Access is access all CompleteMotionGestureInputInterface_Access_Array_Access_Array;
   type CompleteMotionGestureInputInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CompleteMotionGestureInputInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : CompleteMotionGestureInputInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CompleteMotionGestureInputInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CompleteMotionGestureInputInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CompleteMotionGestureInputInterface_Access_Array_Access is (if Value /= null and then Value.all in CompleteMotionGestureInputInterface_Access_Array_Object'Class then CompleteMotionGestureInputInterface_Access_Array_Object'Class (Value.all).Value else null);
   type CompleteMotionGestureInputInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CompleteMotionGestureInputInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : CompleteMotionGestureInputInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CompleteMotionGestureInputInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CompleteMotionGestureInputInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CompleteMotionGestureInputInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in CompleteMotionGestureInputInterface_Access_Array_Access_Array_Object'Class then CompleteMotionGestureInputInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.input.CompleteMotionGestureInputInterface_Package_References;

with org.allbinary.game.input.CompleteMotionGestureInputInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.layer.NamedInterface_Package; use org.allbinary.layer.NamedInterface_Package;

package org.allbinary.game.input.CompleteMotionGestureInputInterface_Package is

   package NamedInterface_Package renames Standard.org.allbinary.layer.NamedInterface_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type CompleteMotionGestureInputInterface is interface and NamedInterface;
   subtype CompleteMotionGestureInputInterface_Access is org.allbinary.game.input.CompleteMotionGestureInputInterface_Package_References.CompleteMotionGestureInputInterface_Access;
   function "=" (Left, Right : CompleteMotionGestureInputInterface_Access) return Boolean renames org.allbinary.game.input.CompleteMotionGestureInputInterface_Package_References."=";
   subtype CompleteMotionGestureInputInterface_Access_Array is org.allbinary.game.input.CompleteMotionGestureInputInterface_Package_References.CompleteMotionGestureInputInterface_Access_Array;
   function "=" (Left, Right : CompleteMotionGestureInputInterface_Access_Array) return Boolean renames org.allbinary.game.input.CompleteMotionGestureInputInterface_Package_References."=";
   subtype CompleteMotionGestureInputInterface_Access_Array_Access is org.allbinary.game.input.CompleteMotionGestureInputInterface_Package_References.CompleteMotionGestureInputInterface_Access_Array_Access;
   function "=" (Left, Right : CompleteMotionGestureInputInterface_Access_Array_Access) return Boolean renames org.allbinary.game.input.CompleteMotionGestureInputInterface_Package_References."=";
   function Java_Box (Value : CompleteMotionGestureInputInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.CompleteMotionGestureInputInterface_Package_References.Java_Box;
   function Java_Unbox_CompleteMotionGestureInputInterface_Access_Array (Value : access Java_Object'Class) return CompleteMotionGestureInputInterface_Access_Array_Access renames org.allbinary.game.input.CompleteMotionGestureInputInterface_Package_References.Java_Unbox_CompleteMotionGestureInputInterface_Access_Array;
   subtype CompleteMotionGestureInputInterface_Access_Array_Access_Array is org.allbinary.game.input.CompleteMotionGestureInputInterface_Package_References.CompleteMotionGestureInputInterface_Access_Array_Access_Array;
   function "=" (Left, Right : CompleteMotionGestureInputInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.CompleteMotionGestureInputInterface_Package_References."=";
   subtype CompleteMotionGestureInputInterface_Access_Array_Access_Array_Access is org.allbinary.game.input.CompleteMotionGestureInputInterface_Package_References.CompleteMotionGestureInputInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CompleteMotionGestureInputInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.CompleteMotionGestureInputInterface_Package_References."=";
   function Java_Box (Value : CompleteMotionGestureInputInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.CompleteMotionGestureInputInterface_Package_References.Java_Box;
   function Java_Unbox_CompleteMotionGestureInputInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return CompleteMotionGestureInputInterface_Access_Array_Access_Array_Access renames org.allbinary.game.input.CompleteMotionGestureInputInterface_Package_References.Java_Unbox_CompleteMotionGestureInputInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_CompleteMotionGestureInputInterface (Value : CompleteMotionGestureInputInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));

end org.allbinary.game.input.CompleteMotionGestureInputInterface_Package;


