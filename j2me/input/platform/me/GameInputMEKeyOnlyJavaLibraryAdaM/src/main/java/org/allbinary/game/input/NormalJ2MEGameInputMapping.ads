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
limited with org.allbinary.game.input.NormalJ2MEGameInputMapping_Package;
package org.allbinary.game.input.NormalJ2MEGameInputMapping_Package_References is
   type NormalJ2MEGameInputMapping_Access is access all org.allbinary.game.input.NormalJ2MEGameInputMapping_Package.NormalJ2MEGameInputMapping'Class;
   type NormalJ2MEGameInputMapping_Access_Array is array (Natural range <>) of NormalJ2MEGameInputMapping_Access;
   type NormalJ2MEGameInputMapping_Access_Array_Access is access all NormalJ2MEGameInputMapping_Access_Array;
   type NormalJ2MEGameInputMapping_Access_Array_Access_Array is array (Natural range <>) of NormalJ2MEGameInputMapping_Access_Array_Access;
   type NormalJ2MEGameInputMapping_Access_Array_Access_Array_Access is access all NormalJ2MEGameInputMapping_Access_Array_Access_Array;
   type NormalJ2MEGameInputMapping_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NormalJ2MEGameInputMapping_Access_Array_Access;
   end record;
   function Java_Box (Value : NormalJ2MEGameInputMapping_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NormalJ2MEGameInputMapping_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NormalJ2MEGameInputMapping_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NormalJ2MEGameInputMapping_Access_Array_Access is (if Value /= null and then Value.all in NormalJ2MEGameInputMapping_Access_Array_Object'Class then NormalJ2MEGameInputMapping_Access_Array_Object'Class (Value.all).Value else null);
   type NormalJ2MEGameInputMapping_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NormalJ2MEGameInputMapping_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : NormalJ2MEGameInputMapping_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NormalJ2MEGameInputMapping_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NormalJ2MEGameInputMapping_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NormalJ2MEGameInputMapping_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in NormalJ2MEGameInputMapping_Access_Array_Access_Array_Object'Class then NormalJ2MEGameInputMapping_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.input.NormalJ2MEGameInputMapping_Package_References;

with org.allbinary.game.input.NormalJ2MEGameInputMapping_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.input.mapping.InputToGameKeyMapping_Package;
with org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References;
with org.allbinary.game.input.J2MEGameInputMapping_Package; use org.allbinary.game.input.J2MEGameInputMapping_Package;

package org.allbinary.game.input.NormalJ2MEGameInputMapping_Package is

   package InputToGameKeyMapping_Package renames Standard.org.allbinary.game.input.mapping.InputToGameKeyMapping_Package;
   package Reference_Types is
   subtype InputToGameKeyMapping_Access is org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References.InputToGameKeyMapping_Access;
   use type InputToGameKeyMapping_Access;
   subtype InputToGameKeyMapping_Access_Array is org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References.InputToGameKeyMapping_Access_Array;
   use type InputToGameKeyMapping_Access_Array;
   subtype InputToGameKeyMapping_Access_Array_Access is org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References.InputToGameKeyMapping_Access_Array_Access;
   use type InputToGameKeyMapping_Access_Array_Access;
   subtype InputToGameKeyMapping_Access_Array_Access_Array is org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References.InputToGameKeyMapping_Access_Array_Access_Array;
   use type InputToGameKeyMapping_Access_Array_Access_Array;
   subtype InputToGameKeyMapping_Access_Array_Access_Array_Access is org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References.InputToGameKeyMapping_Access_Array_Access_Array_Access;
   use type InputToGameKeyMapping_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype NormalJ2MEGameInputMapping_Access is org.allbinary.game.input.NormalJ2MEGameInputMapping_Package_References.NormalJ2MEGameInputMapping_Access;
   function "=" (Left, Right : NormalJ2MEGameInputMapping_Access) return Boolean renames org.allbinary.game.input.NormalJ2MEGameInputMapping_Package_References."=";
   subtype NormalJ2MEGameInputMapping_Access_Array is org.allbinary.game.input.NormalJ2MEGameInputMapping_Package_References.NormalJ2MEGameInputMapping_Access_Array;
   function "=" (Left, Right : NormalJ2MEGameInputMapping_Access_Array) return Boolean renames org.allbinary.game.input.NormalJ2MEGameInputMapping_Package_References."=";
   subtype NormalJ2MEGameInputMapping_Access_Array_Access is org.allbinary.game.input.NormalJ2MEGameInputMapping_Package_References.NormalJ2MEGameInputMapping_Access_Array_Access;
   function "=" (Left, Right : NormalJ2MEGameInputMapping_Access_Array_Access) return Boolean renames org.allbinary.game.input.NormalJ2MEGameInputMapping_Package_References."=";
   function Java_Box (Value : NormalJ2MEGameInputMapping_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.NormalJ2MEGameInputMapping_Package_References.Java_Box;
   function Java_Unbox_NormalJ2MEGameInputMapping_Access_Array (Value : access Java_Object'Class) return NormalJ2MEGameInputMapping_Access_Array_Access renames org.allbinary.game.input.NormalJ2MEGameInputMapping_Package_References.Java_Unbox_NormalJ2MEGameInputMapping_Access_Array;
   subtype NormalJ2MEGameInputMapping_Access_Array_Access_Array is org.allbinary.game.input.NormalJ2MEGameInputMapping_Package_References.NormalJ2MEGameInputMapping_Access_Array_Access_Array;
   function "=" (Left, Right : NormalJ2MEGameInputMapping_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.NormalJ2MEGameInputMapping_Package_References."=";
   subtype NormalJ2MEGameInputMapping_Access_Array_Access_Array_Access is org.allbinary.game.input.NormalJ2MEGameInputMapping_Package_References.NormalJ2MEGameInputMapping_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NormalJ2MEGameInputMapping_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.NormalJ2MEGameInputMapping_Package_References."=";
   function Java_Box (Value : NormalJ2MEGameInputMapping_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.NormalJ2MEGameInputMapping_Package_References.Java_Box;
   function Java_Unbox_NormalJ2MEGameInputMapping_Access_Array_Access_Array (Value : access Java_Object'Class) return NormalJ2MEGameInputMapping_Access_Array_Access_Array_Access renames org.allbinary.game.input.NormalJ2MEGameInputMapping_Package_References.Java_Unbox_NormalJ2MEGameInputMapping_Access_Array_Access_Array;

   type NormalJ2MEGameInputMapping is new J2MEGameInputMapping with null record;

   procedure Initialize (This : in out NormalJ2MEGameInputMapping'Class);
   function Create return NormalJ2MEGameInputMapping_Access;
   function getDefault (This : in out NormalJ2MEGameInputMapping) return InputToGameKeyMapping_Access;

end org.allbinary.game.input.NormalJ2MEGameInputMapping_Package;


