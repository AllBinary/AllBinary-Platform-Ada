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

limited with org.allbinary.game.input.DesktopGameInputMapping_Package;
package org.allbinary.game.input.DesktopGameInputMapping_Package_References is
   type DesktopGameInputMapping_Access is access all org.allbinary.game.input.DesktopGameInputMapping_Package.DesktopGameInputMapping'Class;
   type DesktopGameInputMapping_Access_Array is array (Natural range <>) of DesktopGameInputMapping_Access;
   type DesktopGameInputMapping_Access_Array_Access is access all DesktopGameInputMapping_Access_Array;
   type DesktopGameInputMapping_Access_Array_Access_Array is array (Natural range <>) of DesktopGameInputMapping_Access_Array_Access;
   type DesktopGameInputMapping_Access_Array_Access_Array_Access is access all DesktopGameInputMapping_Access_Array_Access_Array;
end org.allbinary.game.input.DesktopGameInputMapping_Package_References;

with org.allbinary.game.input.DesktopGameInputMapping_Package_References;
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

package org.allbinary.game.input.DesktopGameInputMapping_Package is

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


   subtype DesktopGameInputMapping_Access is org.allbinary.game.input.DesktopGameInputMapping_Package_References.DesktopGameInputMapping_Access;
   function "=" (Left, Right : DesktopGameInputMapping_Access) return Boolean renames org.allbinary.game.input.DesktopGameInputMapping_Package_References."=";
   subtype DesktopGameInputMapping_Access_Array is org.allbinary.game.input.DesktopGameInputMapping_Package_References.DesktopGameInputMapping_Access_Array;
   function "=" (Left, Right : DesktopGameInputMapping_Access_Array) return Boolean renames org.allbinary.game.input.DesktopGameInputMapping_Package_References."=";
   subtype DesktopGameInputMapping_Access_Array_Access is org.allbinary.game.input.DesktopGameInputMapping_Package_References.DesktopGameInputMapping_Access_Array_Access;
   function "=" (Left, Right : DesktopGameInputMapping_Access_Array_Access) return Boolean renames org.allbinary.game.input.DesktopGameInputMapping_Package_References."=";
   subtype DesktopGameInputMapping_Access_Array_Access_Array is org.allbinary.game.input.DesktopGameInputMapping_Package_References.DesktopGameInputMapping_Access_Array_Access_Array;
   function "=" (Left, Right : DesktopGameInputMapping_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.DesktopGameInputMapping_Package_References."=";
   subtype DesktopGameInputMapping_Access_Array_Access_Array_Access is org.allbinary.game.input.DesktopGameInputMapping_Package_References.DesktopGameInputMapping_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DesktopGameInputMapping_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.DesktopGameInputMapping_Package_References."=";

   type DesktopGameInputMapping is new PCGameInputMapping with null record;

   procedure Initialize (This : in out DesktopGameInputMapping'Class);
   function Create return DesktopGameInputMapping_Access;
   function getDefault (This : in out DesktopGameInputMapping) return InputToGameKeyMapping_Access;

end org.allbinary.game.input.DesktopGameInputMapping_Package;


