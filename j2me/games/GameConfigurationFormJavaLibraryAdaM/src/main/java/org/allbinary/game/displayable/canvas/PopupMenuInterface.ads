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

limited with org.allbinary.game.displayable.canvas.PopupMenuInterface_Package;
package org.allbinary.game.displayable.canvas.PopupMenuInterface_Package_References is
   type PopupMenuInterface_Access is access all org.allbinary.game.displayable.canvas.PopupMenuInterface_Package.PopupMenuInterface'Class;
   type PopupMenuInterface_Access_Array is array (Natural range <>) of PopupMenuInterface_Access;
   type PopupMenuInterface_Access_Array_Access is access all PopupMenuInterface_Access_Array;
   type PopupMenuInterface_Access_Array_Access_Array is array (Natural range <>) of PopupMenuInterface_Access_Array_Access;
   type PopupMenuInterface_Access_Array_Access_Array_Access is access all PopupMenuInterface_Access_Array_Access_Array;
end org.allbinary.game.displayable.canvas.PopupMenuInterface_Package_References;

with org.allbinary.game.displayable.canvas.PopupMenuInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.game.displayable.canvas.PopupMenuInterface_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type PopupMenuInterface is interface;
   subtype PopupMenuInterface_Access is org.allbinary.game.displayable.canvas.PopupMenuInterface_Package_References.PopupMenuInterface_Access;
   function "=" (Left, Right : PopupMenuInterface_Access) return Boolean renames org.allbinary.game.displayable.canvas.PopupMenuInterface_Package_References."=";
   subtype PopupMenuInterface_Access_Array is org.allbinary.game.displayable.canvas.PopupMenuInterface_Package_References.PopupMenuInterface_Access_Array;
   function "=" (Left, Right : PopupMenuInterface_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.PopupMenuInterface_Package_References."=";
   subtype PopupMenuInterface_Access_Array_Access is org.allbinary.game.displayable.canvas.PopupMenuInterface_Package_References.PopupMenuInterface_Access_Array_Access;
   function "=" (Left, Right : PopupMenuInterface_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.PopupMenuInterface_Package_References."=";
   subtype PopupMenuInterface_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.PopupMenuInterface_Package_References.PopupMenuInterface_Access_Array_Access_Array;
   function "=" (Left, Right : PopupMenuInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.PopupMenuInterface_Package_References."=";
   subtype PopupMenuInterface_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.PopupMenuInterface_Package_References.PopupMenuInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PopupMenuInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.PopupMenuInterface_Package_References."=";
   function Java_Object_Access_From_PopupMenuInterface (Value : PopupMenuInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure popupMenu (This : in out PopupMenuInterface) is abstract;
   procedure closeMenu (This : in out PopupMenuInterface) is abstract;
   procedure toggleMenu (This : in out PopupMenuInterface) is abstract;

end org.allbinary.game.displayable.canvas.PopupMenuInterface_Package;


