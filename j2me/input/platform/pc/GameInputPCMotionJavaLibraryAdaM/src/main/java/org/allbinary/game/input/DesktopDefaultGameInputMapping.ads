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

limited with org.allbinary.game.input.DesktopDefaultGameInputMapping_Package;
package org.allbinary.game.input.DesktopDefaultGameInputMapping_Package_References is
   type DesktopDefaultGameInputMapping_Access is access all org.allbinary.game.input.DesktopDefaultGameInputMapping_Package.DesktopDefaultGameInputMapping'Class;
   type DesktopDefaultGameInputMapping_Access_Array is array (Natural range <>) of DesktopDefaultGameInputMapping_Access;
   type DesktopDefaultGameInputMapping_Access_Array_Access is access all DesktopDefaultGameInputMapping_Access_Array;
   type DesktopDefaultGameInputMapping_Access_Array_Access_Array is array (Natural range <>) of DesktopDefaultGameInputMapping_Access_Array_Access;
   type DesktopDefaultGameInputMapping_Access_Array_Access_Array_Access is access all DesktopDefaultGameInputMapping_Access_Array_Access_Array;
end org.allbinary.game.input.DesktopDefaultGameInputMapping_Package_References;

with org.allbinary.game.input.DesktopDefaultGameInputMapping_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.input.mapping.PersistentInputMapping_Package; use org.allbinary.game.input.mapping.PersistentInputMapping_Package;

package org.allbinary.game.input.DesktopDefaultGameInputMapping_Package is

   package PersistentInputMapping_Package renames Standard.org.allbinary.game.input.mapping.PersistentInputMapping_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype DesktopDefaultGameInputMapping_Access is org.allbinary.game.input.DesktopDefaultGameInputMapping_Package_References.DesktopDefaultGameInputMapping_Access;
   function "=" (Left, Right : DesktopDefaultGameInputMapping_Access) return Boolean renames org.allbinary.game.input.DesktopDefaultGameInputMapping_Package_References."=";
   subtype DesktopDefaultGameInputMapping_Access_Array is org.allbinary.game.input.DesktopDefaultGameInputMapping_Package_References.DesktopDefaultGameInputMapping_Access_Array;
   function "=" (Left, Right : DesktopDefaultGameInputMapping_Access_Array) return Boolean renames org.allbinary.game.input.DesktopDefaultGameInputMapping_Package_References."=";
   subtype DesktopDefaultGameInputMapping_Access_Array_Access is org.allbinary.game.input.DesktopDefaultGameInputMapping_Package_References.DesktopDefaultGameInputMapping_Access_Array_Access;
   function "=" (Left, Right : DesktopDefaultGameInputMapping_Access_Array_Access) return Boolean renames org.allbinary.game.input.DesktopDefaultGameInputMapping_Package_References."=";
   subtype DesktopDefaultGameInputMapping_Access_Array_Access_Array is org.allbinary.game.input.DesktopDefaultGameInputMapping_Package_References.DesktopDefaultGameInputMapping_Access_Array_Access_Array;
   function "=" (Left, Right : DesktopDefaultGameInputMapping_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.DesktopDefaultGameInputMapping_Package_References."=";
   subtype DesktopDefaultGameInputMapping_Access_Array_Access_Array_Access is org.allbinary.game.input.DesktopDefaultGameInputMapping_Package_References.DesktopDefaultGameInputMapping_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DesktopDefaultGameInputMapping_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.DesktopDefaultGameInputMapping_Package_References."=";

   type DesktopDefaultGameInputMapping is new PersistentInputMapping with null record;

   procedure Initialize (This : in out DesktopDefaultGameInputMapping'Class);
   function Create return DesktopDefaultGameInputMapping_Access;

end org.allbinary.game.input.DesktopDefaultGameInputMapping_Package;


