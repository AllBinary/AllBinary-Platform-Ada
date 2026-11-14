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
limited with org.allbinary.game.input.LaptopGameInputMapping_Package;
package org.allbinary.game.input.LaptopGameInputMapping_Package_References is
   type LaptopGameInputMapping_Access is access all org.allbinary.game.input.LaptopGameInputMapping_Package.LaptopGameInputMapping'Class;
   type LaptopGameInputMapping_Access_Array is array (Natural range <>) of LaptopGameInputMapping_Access;
   type LaptopGameInputMapping_Access_Array_Access is access all LaptopGameInputMapping_Access_Array;
   type LaptopGameInputMapping_Access_Array_Access_Array is array (Natural range <>) of LaptopGameInputMapping_Access_Array_Access;
   type LaptopGameInputMapping_Access_Array_Access_Array_Access is access all LaptopGameInputMapping_Access_Array_Access_Array;
   type LaptopGameInputMapping_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : LaptopGameInputMapping_Access_Array_Access;
   end record;
   function Java_Box (Value : LaptopGameInputMapping_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new LaptopGameInputMapping_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_LaptopGameInputMapping_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return LaptopGameInputMapping_Access_Array_Access is (if Value /= null and then Value.all in LaptopGameInputMapping_Access_Array_Object'Class then LaptopGameInputMapping_Access_Array_Object'Class (Value.all).Value else null);
   type LaptopGameInputMapping_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : LaptopGameInputMapping_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : LaptopGameInputMapping_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new LaptopGameInputMapping_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_LaptopGameInputMapping_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return LaptopGameInputMapping_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in LaptopGameInputMapping_Access_Array_Access_Array_Object'Class then LaptopGameInputMapping_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.input.LaptopGameInputMapping_Package_References;

with org.allbinary.game.input.LaptopGameInputMapping_Package_References;
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
with org.allbinary.game.input.PCGameInputMapping_Package; use org.allbinary.game.input.PCGameInputMapping_Package;

package org.allbinary.game.input.LaptopGameInputMapping_Package is

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


   subtype LaptopGameInputMapping_Access is org.allbinary.game.input.LaptopGameInputMapping_Package_References.LaptopGameInputMapping_Access;
   function "=" (Left, Right : LaptopGameInputMapping_Access) return Boolean renames org.allbinary.game.input.LaptopGameInputMapping_Package_References."=";
   subtype LaptopGameInputMapping_Access_Array is org.allbinary.game.input.LaptopGameInputMapping_Package_References.LaptopGameInputMapping_Access_Array;
   function "=" (Left, Right : LaptopGameInputMapping_Access_Array) return Boolean renames org.allbinary.game.input.LaptopGameInputMapping_Package_References."=";
   subtype LaptopGameInputMapping_Access_Array_Access is org.allbinary.game.input.LaptopGameInputMapping_Package_References.LaptopGameInputMapping_Access_Array_Access;
   function "=" (Left, Right : LaptopGameInputMapping_Access_Array_Access) return Boolean renames org.allbinary.game.input.LaptopGameInputMapping_Package_References."=";
   function Java_Box (Value : LaptopGameInputMapping_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.LaptopGameInputMapping_Package_References.Java_Box;
   function Java_Unbox_LaptopGameInputMapping_Access_Array (Value : access Java_Object'Class) return LaptopGameInputMapping_Access_Array_Access renames org.allbinary.game.input.LaptopGameInputMapping_Package_References.Java_Unbox_LaptopGameInputMapping_Access_Array;
   subtype LaptopGameInputMapping_Access_Array_Access_Array is org.allbinary.game.input.LaptopGameInputMapping_Package_References.LaptopGameInputMapping_Access_Array_Access_Array;
   function "=" (Left, Right : LaptopGameInputMapping_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.LaptopGameInputMapping_Package_References."=";
   subtype LaptopGameInputMapping_Access_Array_Access_Array_Access is org.allbinary.game.input.LaptopGameInputMapping_Package_References.LaptopGameInputMapping_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LaptopGameInputMapping_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.LaptopGameInputMapping_Package_References."=";
   function Java_Box (Value : LaptopGameInputMapping_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.LaptopGameInputMapping_Package_References.Java_Box;
   function Java_Unbox_LaptopGameInputMapping_Access_Array_Access_Array (Value : access Java_Object'Class) return LaptopGameInputMapping_Access_Array_Access_Array_Access renames org.allbinary.game.input.LaptopGameInputMapping_Package_References.Java_Unbox_LaptopGameInputMapping_Access_Array_Access_Array;

   type LaptopGameInputMapping is new PCGameInputMapping with null record;

   procedure Initialize (This : in out LaptopGameInputMapping'Class);
   function Create return LaptopGameInputMapping_Access;
   function getDefault (This : in out LaptopGameInputMapping) return InputToGameKeyMapping_Access;

end org.allbinary.game.input.LaptopGameInputMapping_Package;


