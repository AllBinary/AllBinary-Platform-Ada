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
limited with org.allbinary.game.displayable.canvas.MenuListener_Package;
package org.allbinary.game.displayable.canvas.MenuListener_Package_References is
   type MenuListener_Access is access all org.allbinary.game.displayable.canvas.MenuListener_Package.MenuListener'Class;
   type MenuListener_Access_Array is array (Natural range <>) of MenuListener_Access;
   type MenuListener_Access_Array_Access is access all MenuListener_Access_Array;
   type MenuListener_Access_Array_Access_Array is array (Natural range <>) of MenuListener_Access_Array_Access;
   type MenuListener_Access_Array_Access_Array_Access is access all MenuListener_Access_Array_Access_Array;
   type MenuListener_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MenuListener_Access_Array_Access;
   end record;
   function Java_Box (Value : MenuListener_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MenuListener_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MenuListener_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MenuListener_Access_Array_Access is (if Value /= null and then Value.all in MenuListener_Access_Array_Object'Class then MenuListener_Access_Array_Object'Class (Value.all).Value else null);
   type MenuListener_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MenuListener_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : MenuListener_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MenuListener_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MenuListener_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MenuListener_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in MenuListener_Access_Array_Access_Array_Object'Class then MenuListener_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
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
   function Java_Box (Value : MenuListener_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.displayable.canvas.MenuListener_Package_References.Java_Box;
   function Java_Unbox_MenuListener_Access_Array (Value : access Java_Object'Class) return MenuListener_Access_Array_Access renames org.allbinary.game.displayable.canvas.MenuListener_Package_References.Java_Unbox_MenuListener_Access_Array;
   subtype MenuListener_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.MenuListener_Package_References.MenuListener_Access_Array_Access_Array;
   function "=" (Left, Right : MenuListener_Access_Array_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.MenuListener_Package_References."=";
   subtype MenuListener_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.MenuListener_Package_References.MenuListener_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MenuListener_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.MenuListener_Package_References."=";
   function Java_Box (Value : MenuListener_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.displayable.canvas.MenuListener_Package_References.Java_Box;
   function Java_Unbox_MenuListener_Access_Array_Access_Array (Value : access Java_Object'Class) return MenuListener_Access_Array_Access_Array_Access renames org.allbinary.game.displayable.canvas.MenuListener_Package_References.Java_Unbox_MenuListener_Access_Array_Access_Array;
   function Java_Object_Access_From_MenuListener (Value : MenuListener_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure open (This : in out MenuListener) is abstract;
   procedure close (This : in out MenuListener) is abstract;

end org.allbinary.game.displayable.canvas.MenuListener_Package;


