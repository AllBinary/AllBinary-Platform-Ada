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

limited with org.allbinary.game.input.MotionJ2MEGameInputMapping_Package;
package org.allbinary.game.input.MotionJ2MEGameInputMapping_Package_References is
   type MotionJ2MEGameInputMapping_Access is access all org.allbinary.game.input.MotionJ2MEGameInputMapping_Package.MotionJ2MEGameInputMapping'Class;
   type MotionJ2MEGameInputMapping_Access_Array is array (Natural range <>) of MotionJ2MEGameInputMapping_Access;
   type MotionJ2MEGameInputMapping_Access_Array_Access is access all MotionJ2MEGameInputMapping_Access_Array;
   type MotionJ2MEGameInputMapping_Access_Array_Access_Array is array (Natural range <>) of MotionJ2MEGameInputMapping_Access_Array_Access;
   type MotionJ2MEGameInputMapping_Access_Array_Access_Array_Access is access all MotionJ2MEGameInputMapping_Access_Array_Access_Array;
end org.allbinary.game.input.MotionJ2MEGameInputMapping_Package_References;

with org.allbinary.game.input.MotionJ2MEGameInputMapping_Package_References;
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

package org.allbinary.game.input.MotionJ2MEGameInputMapping_Package is

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


   subtype MotionJ2MEGameInputMapping_Access is org.allbinary.game.input.MotionJ2MEGameInputMapping_Package_References.MotionJ2MEGameInputMapping_Access;
   function "=" (Left, Right : MotionJ2MEGameInputMapping_Access) return Boolean renames org.allbinary.game.input.MotionJ2MEGameInputMapping_Package_References."=";
   subtype MotionJ2MEGameInputMapping_Access_Array is org.allbinary.game.input.MotionJ2MEGameInputMapping_Package_References.MotionJ2MEGameInputMapping_Access_Array;
   function "=" (Left, Right : MotionJ2MEGameInputMapping_Access_Array) return Boolean renames org.allbinary.game.input.MotionJ2MEGameInputMapping_Package_References."=";
   subtype MotionJ2MEGameInputMapping_Access_Array_Access is org.allbinary.game.input.MotionJ2MEGameInputMapping_Package_References.MotionJ2MEGameInputMapping_Access_Array_Access;
   function "=" (Left, Right : MotionJ2MEGameInputMapping_Access_Array_Access) return Boolean renames org.allbinary.game.input.MotionJ2MEGameInputMapping_Package_References."=";
   subtype MotionJ2MEGameInputMapping_Access_Array_Access_Array is org.allbinary.game.input.MotionJ2MEGameInputMapping_Package_References.MotionJ2MEGameInputMapping_Access_Array_Access_Array;
   function "=" (Left, Right : MotionJ2MEGameInputMapping_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.MotionJ2MEGameInputMapping_Package_References."=";
   subtype MotionJ2MEGameInputMapping_Access_Array_Access_Array_Access is org.allbinary.game.input.MotionJ2MEGameInputMapping_Package_References.MotionJ2MEGameInputMapping_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MotionJ2MEGameInputMapping_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.MotionJ2MEGameInputMapping_Package_References."=";

   type MotionJ2MEGameInputMapping is new J2MEGameInputMapping with null record;

   procedure Initialize (This : in out MotionJ2MEGameInputMapping'Class);
   function Create return MotionJ2MEGameInputMapping_Access;
   function getDefault (This : in out MotionJ2MEGameInputMapping) return InputToGameKeyMapping_Access;

end org.allbinary.game.input.MotionJ2MEGameInputMapping_Package;


