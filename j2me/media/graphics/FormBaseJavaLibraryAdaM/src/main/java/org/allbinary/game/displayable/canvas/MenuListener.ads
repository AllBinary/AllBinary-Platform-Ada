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

limited with org.allbinary.game.displayable.canvas.MenuListener_Package;
package org.allbinary.game.displayable.canvas.MenuListener_Package_References is
   type MenuListener_Access is access all org.allbinary.game.displayable.canvas.MenuListener_Package.MenuListener'Class;
   type MenuListener_Access_Array is array (Natural range <>) of MenuListener_Access;
   type MenuListener_Access_Array_Access is access all MenuListener_Access_Array;
   type MenuListener_Access_Array_Access_Array is array (Natural range <>) of MenuListener_Access_Array_Access;
   type MenuListener_Access_Array_Access_Array_Access is access all MenuListener_Access_Array_Access_Array;
end org.allbinary.game.displayable.canvas.MenuListener_Package_References;

with org.allbinary.game.displayable.canvas.MenuListener_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.input.GameKeyEventSourceInterface_Package; use org.allbinary.game.input.GameKeyEventSourceInterface_Package;

package org.allbinary.game.displayable.canvas.MenuListener_Package is

   package GameKeyEventSourceInterface_Package renames Standard.org.allbinary.game.input.GameKeyEventSourceInterface_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type MenuListener is interface and GameKeyEventSourceInterface;
   subtype MenuListener_Access is org.allbinary.game.displayable.canvas.MenuListener_Package_References.MenuListener_Access;
   function "=" (Left, Right : MenuListener_Access) return Boolean renames org.allbinary.game.displayable.canvas.MenuListener_Package_References."=";
   subtype MenuListener_Access_Array is org.allbinary.game.displayable.canvas.MenuListener_Package_References.MenuListener_Access_Array;
   function "=" (Left, Right : MenuListener_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.MenuListener_Package_References."=";
   subtype MenuListener_Access_Array_Access is org.allbinary.game.displayable.canvas.MenuListener_Package_References.MenuListener_Access_Array_Access;
   function "=" (Left, Right : MenuListener_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.MenuListener_Package_References."=";
   subtype MenuListener_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.MenuListener_Package_References.MenuListener_Access_Array_Access_Array;
   function "=" (Left, Right : MenuListener_Access_Array_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.MenuListener_Package_References."=";
   subtype MenuListener_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.MenuListener_Package_References.MenuListener_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MenuListener_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.MenuListener_Package_References."=";
   function Java_Object_Access_From_MenuListener (Value : MenuListener_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure open (This : in out MenuListener) is abstract;
   procedure close (This : in out MenuListener) is abstract;

end org.allbinary.game.displayable.canvas.MenuListener_Package;


