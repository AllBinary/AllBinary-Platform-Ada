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

limited with org.allbinary.game.input.NormalJ2MEDefaultGameInputMapping_Package;
package org.allbinary.game.input.NormalJ2MEDefaultGameInputMapping_Package_References is
   type NormalJ2MEDefaultGameInputMapping_Access is access all org.allbinary.game.input.NormalJ2MEDefaultGameInputMapping_Package.NormalJ2MEDefaultGameInputMapping'Class;
   type NormalJ2MEDefaultGameInputMapping_Access_Array is array (Natural range <>) of NormalJ2MEDefaultGameInputMapping_Access;
   type NormalJ2MEDefaultGameInputMapping_Access_Array_Access is access all NormalJ2MEDefaultGameInputMapping_Access_Array;
   type NormalJ2MEDefaultGameInputMapping_Access_Array_Access_Array is array (Natural range <>) of NormalJ2MEDefaultGameInputMapping_Access_Array_Access;
   type NormalJ2MEDefaultGameInputMapping_Access_Array_Access_Array_Access is access all NormalJ2MEDefaultGameInputMapping_Access_Array_Access_Array;
end org.allbinary.game.input.NormalJ2MEDefaultGameInputMapping_Package_References;

with org.allbinary.game.input.NormalJ2MEDefaultGameInputMapping_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.input.mapping.PersistentInputMapping_Package; use org.allbinary.game.input.mapping.PersistentInputMapping_Package;

package org.allbinary.game.input.NormalJ2MEDefaultGameInputMapping_Package is

   package PersistentInputMapping_Package renames Standard.org.allbinary.game.input.mapping.PersistentInputMapping_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype NormalJ2MEDefaultGameInputMapping_Access is org.allbinary.game.input.NormalJ2MEDefaultGameInputMapping_Package_References.NormalJ2MEDefaultGameInputMapping_Access;
   function "=" (Left, Right : NormalJ2MEDefaultGameInputMapping_Access) return Boolean renames org.allbinary.game.input.NormalJ2MEDefaultGameInputMapping_Package_References."=";
   subtype NormalJ2MEDefaultGameInputMapping_Access_Array is org.allbinary.game.input.NormalJ2MEDefaultGameInputMapping_Package_References.NormalJ2MEDefaultGameInputMapping_Access_Array;
   function "=" (Left, Right : NormalJ2MEDefaultGameInputMapping_Access_Array) return Boolean renames org.allbinary.game.input.NormalJ2MEDefaultGameInputMapping_Package_References."=";
   subtype NormalJ2MEDefaultGameInputMapping_Access_Array_Access is org.allbinary.game.input.NormalJ2MEDefaultGameInputMapping_Package_References.NormalJ2MEDefaultGameInputMapping_Access_Array_Access;
   function "=" (Left, Right : NormalJ2MEDefaultGameInputMapping_Access_Array_Access) return Boolean renames org.allbinary.game.input.NormalJ2MEDefaultGameInputMapping_Package_References."=";
   subtype NormalJ2MEDefaultGameInputMapping_Access_Array_Access_Array is org.allbinary.game.input.NormalJ2MEDefaultGameInputMapping_Package_References.NormalJ2MEDefaultGameInputMapping_Access_Array_Access_Array;
   function "=" (Left, Right : NormalJ2MEDefaultGameInputMapping_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.NormalJ2MEDefaultGameInputMapping_Package_References."=";
   subtype NormalJ2MEDefaultGameInputMapping_Access_Array_Access_Array_Access is org.allbinary.game.input.NormalJ2MEDefaultGameInputMapping_Package_References.NormalJ2MEDefaultGameInputMapping_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NormalJ2MEDefaultGameInputMapping_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.NormalJ2MEDefaultGameInputMapping_Package_References."=";

   type NormalJ2MEDefaultGameInputMapping is new PersistentInputMapping with null record;

   procedure Initialize (This : in out NormalJ2MEDefaultGameInputMapping'Class);
   function Create return NormalJ2MEDefaultGameInputMapping_Access;

end org.allbinary.game.input.NormalJ2MEDefaultGameInputMapping_Package;


