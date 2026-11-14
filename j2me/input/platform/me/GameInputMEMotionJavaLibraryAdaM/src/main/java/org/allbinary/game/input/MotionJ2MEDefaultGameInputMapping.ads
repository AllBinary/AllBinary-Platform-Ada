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
limited with org.allbinary.game.input.MotionJ2MEDefaultGameInputMapping_Package;
package org.allbinary.game.input.MotionJ2MEDefaultGameInputMapping_Package_References is
   type MotionJ2MEDefaultGameInputMapping_Access is access all org.allbinary.game.input.MotionJ2MEDefaultGameInputMapping_Package.MotionJ2MEDefaultGameInputMapping'Class;
   type MotionJ2MEDefaultGameInputMapping_Access_Array is array (Natural range <>) of MotionJ2MEDefaultGameInputMapping_Access;
   type MotionJ2MEDefaultGameInputMapping_Access_Array_Access is access all MotionJ2MEDefaultGameInputMapping_Access_Array;
   type MotionJ2MEDefaultGameInputMapping_Access_Array_Access_Array is array (Natural range <>) of MotionJ2MEDefaultGameInputMapping_Access_Array_Access;
   type MotionJ2MEDefaultGameInputMapping_Access_Array_Access_Array_Access is access all MotionJ2MEDefaultGameInputMapping_Access_Array_Access_Array;
   type MotionJ2MEDefaultGameInputMapping_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MotionJ2MEDefaultGameInputMapping_Access_Array_Access;
   end record;
   function Java_Box (Value : MotionJ2MEDefaultGameInputMapping_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MotionJ2MEDefaultGameInputMapping_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MotionJ2MEDefaultGameInputMapping_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MotionJ2MEDefaultGameInputMapping_Access_Array_Access is (if Value /= null and then Value.all in MotionJ2MEDefaultGameInputMapping_Access_Array_Object'Class then MotionJ2MEDefaultGameInputMapping_Access_Array_Object'Class (Value.all).Value else null);
   type MotionJ2MEDefaultGameInputMapping_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MotionJ2MEDefaultGameInputMapping_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : MotionJ2MEDefaultGameInputMapping_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MotionJ2MEDefaultGameInputMapping_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MotionJ2MEDefaultGameInputMapping_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MotionJ2MEDefaultGameInputMapping_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in MotionJ2MEDefaultGameInputMapping_Access_Array_Access_Array_Object'Class then MotionJ2MEDefaultGameInputMapping_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.input.MotionJ2MEDefaultGameInputMapping_Package_References;

with org.allbinary.game.input.MotionJ2MEDefaultGameInputMapping_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.input.mapping.PersistentInputMapping_Package; use org.allbinary.game.input.mapping.PersistentInputMapping_Package;

package org.allbinary.game.input.MotionJ2MEDefaultGameInputMapping_Package is

   package PersistentInputMapping_Package renames Standard.org.allbinary.game.input.mapping.PersistentInputMapping_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype MotionJ2MEDefaultGameInputMapping_Access is org.allbinary.game.input.MotionJ2MEDefaultGameInputMapping_Package_References.MotionJ2MEDefaultGameInputMapping_Access;
   function "=" (Left, Right : MotionJ2MEDefaultGameInputMapping_Access) return Boolean renames org.allbinary.game.input.MotionJ2MEDefaultGameInputMapping_Package_References."=";
   subtype MotionJ2MEDefaultGameInputMapping_Access_Array is org.allbinary.game.input.MotionJ2MEDefaultGameInputMapping_Package_References.MotionJ2MEDefaultGameInputMapping_Access_Array;
   function "=" (Left, Right : MotionJ2MEDefaultGameInputMapping_Access_Array) return Boolean renames org.allbinary.game.input.MotionJ2MEDefaultGameInputMapping_Package_References."=";
   subtype MotionJ2MEDefaultGameInputMapping_Access_Array_Access is org.allbinary.game.input.MotionJ2MEDefaultGameInputMapping_Package_References.MotionJ2MEDefaultGameInputMapping_Access_Array_Access;
   function "=" (Left, Right : MotionJ2MEDefaultGameInputMapping_Access_Array_Access) return Boolean renames org.allbinary.game.input.MotionJ2MEDefaultGameInputMapping_Package_References."=";
   function Java_Box (Value : MotionJ2MEDefaultGameInputMapping_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.MotionJ2MEDefaultGameInputMapping_Package_References.Java_Box;
   function Java_Unbox_MotionJ2MEDefaultGameInputMapping_Access_Array (Value : access Java_Object'Class) return MotionJ2MEDefaultGameInputMapping_Access_Array_Access renames org.allbinary.game.input.MotionJ2MEDefaultGameInputMapping_Package_References.Java_Unbox_MotionJ2MEDefaultGameInputMapping_Access_Array;
   subtype MotionJ2MEDefaultGameInputMapping_Access_Array_Access_Array is org.allbinary.game.input.MotionJ2MEDefaultGameInputMapping_Package_References.MotionJ2MEDefaultGameInputMapping_Access_Array_Access_Array;
   function "=" (Left, Right : MotionJ2MEDefaultGameInputMapping_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.MotionJ2MEDefaultGameInputMapping_Package_References."=";
   subtype MotionJ2MEDefaultGameInputMapping_Access_Array_Access_Array_Access is org.allbinary.game.input.MotionJ2MEDefaultGameInputMapping_Package_References.MotionJ2MEDefaultGameInputMapping_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MotionJ2MEDefaultGameInputMapping_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.MotionJ2MEDefaultGameInputMapping_Package_References."=";
   function Java_Box (Value : MotionJ2MEDefaultGameInputMapping_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.MotionJ2MEDefaultGameInputMapping_Package_References.Java_Box;
   function Java_Unbox_MotionJ2MEDefaultGameInputMapping_Access_Array_Access_Array (Value : access Java_Object'Class) return MotionJ2MEDefaultGameInputMapping_Access_Array_Access_Array_Access renames org.allbinary.game.input.MotionJ2MEDefaultGameInputMapping_Package_References.Java_Unbox_MotionJ2MEDefaultGameInputMapping_Access_Array_Access_Array;

   type MotionJ2MEDefaultGameInputMapping is new PersistentInputMapping with null record;

   procedure Initialize (This : in out MotionJ2MEDefaultGameInputMapping'Class);
   function Create return MotionJ2MEDefaultGameInputMapping_Access;

end org.allbinary.game.input.MotionJ2MEDefaultGameInputMapping_Package;


