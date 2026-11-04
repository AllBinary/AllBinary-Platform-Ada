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

limited with org.allbinary.game.input.MotionLaptopGameInputMapping_Package;
package org.allbinary.game.input.MotionLaptopGameInputMapping_Package_References is
   type MotionLaptopGameInputMapping_Access is access all org.allbinary.game.input.MotionLaptopGameInputMapping_Package.MotionLaptopGameInputMapping'Class;
   type MotionLaptopGameInputMapping_Access_Array is array (Natural range <>) of MotionLaptopGameInputMapping_Access;
   type MotionLaptopGameInputMapping_Access_Array_Access is access all MotionLaptopGameInputMapping_Access_Array;
   type MotionLaptopGameInputMapping_Access_Array_Access_Array is array (Natural range <>) of MotionLaptopGameInputMapping_Access_Array_Access;
   type MotionLaptopGameInputMapping_Access_Array_Access_Array_Access is access all MotionLaptopGameInputMapping_Access_Array_Access_Array;
end org.allbinary.game.input.MotionLaptopGameInputMapping_Package_References;

with org.allbinary.game.input.MotionLaptopGameInputMapping_Package_References;
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

package org.allbinary.game.input.MotionLaptopGameInputMapping_Package is

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


   subtype MotionLaptopGameInputMapping_Access is org.allbinary.game.input.MotionLaptopGameInputMapping_Package_References.MotionLaptopGameInputMapping_Access;
   function "=" (Left, Right : MotionLaptopGameInputMapping_Access) return Boolean renames org.allbinary.game.input.MotionLaptopGameInputMapping_Package_References."=";
   subtype MotionLaptopGameInputMapping_Access_Array is org.allbinary.game.input.MotionLaptopGameInputMapping_Package_References.MotionLaptopGameInputMapping_Access_Array;
   function "=" (Left, Right : MotionLaptopGameInputMapping_Access_Array) return Boolean renames org.allbinary.game.input.MotionLaptopGameInputMapping_Package_References."=";
   subtype MotionLaptopGameInputMapping_Access_Array_Access is org.allbinary.game.input.MotionLaptopGameInputMapping_Package_References.MotionLaptopGameInputMapping_Access_Array_Access;
   function "=" (Left, Right : MotionLaptopGameInputMapping_Access_Array_Access) return Boolean renames org.allbinary.game.input.MotionLaptopGameInputMapping_Package_References."=";
   subtype MotionLaptopGameInputMapping_Access_Array_Access_Array is org.allbinary.game.input.MotionLaptopGameInputMapping_Package_References.MotionLaptopGameInputMapping_Access_Array_Access_Array;
   function "=" (Left, Right : MotionLaptopGameInputMapping_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.MotionLaptopGameInputMapping_Package_References."=";
   subtype MotionLaptopGameInputMapping_Access_Array_Access_Array_Access is org.allbinary.game.input.MotionLaptopGameInputMapping_Package_References.MotionLaptopGameInputMapping_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MotionLaptopGameInputMapping_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.MotionLaptopGameInputMapping_Package_References."=";

   type MotionLaptopGameInputMapping is new PCGameInputMapping with null record;

   procedure Initialize (This : in out MotionLaptopGameInputMapping'Class);
   function Create return MotionLaptopGameInputMapping_Access;
   function getDefault (This : in out MotionLaptopGameInputMapping) return InputToGameKeyMapping_Access;

end org.allbinary.game.input.MotionLaptopGameInputMapping_Package;


