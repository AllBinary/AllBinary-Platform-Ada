-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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

limited with org.allbinary.game.displayable.canvas.DemoPaintableInterface_Package;
package org.allbinary.game.displayable.canvas.DemoPaintableInterface_Package_References is
   type DemoPaintableInterface_Access is access all org.allbinary.game.displayable.canvas.DemoPaintableInterface_Package.DemoPaintableInterface'Class;
   type DemoPaintableInterface_Access_Array is array (Natural range <>) of DemoPaintableInterface_Access;
   type DemoPaintableInterface_Access_Array_Access is access all DemoPaintableInterface_Access_Array;
   type DemoPaintableInterface_Access_Array_Access_Array is array (Natural range <>) of DemoPaintableInterface_Access_Array_Access;
   type DemoPaintableInterface_Access_Array_Access_Array_Access is access all DemoPaintableInterface_Access_Array_Access_Array;
end org.allbinary.game.displayable.canvas.DemoPaintableInterface_Package_References;

with org.allbinary.game.displayable.canvas.DemoPaintableInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.game.displayable.canvas.DemoPaintableInterface_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type DemoPaintableInterface is interface;
   subtype DemoPaintableInterface_Access is org.allbinary.game.displayable.canvas.DemoPaintableInterface_Package_References.DemoPaintableInterface_Access;
   function "=" (Left, Right : DemoPaintableInterface_Access) return Boolean renames org.allbinary.game.displayable.canvas.DemoPaintableInterface_Package_References."=";
   subtype DemoPaintableInterface_Access_Array is org.allbinary.game.displayable.canvas.DemoPaintableInterface_Package_References.DemoPaintableInterface_Access_Array;
   function "=" (Left, Right : DemoPaintableInterface_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.DemoPaintableInterface_Package_References."=";
   subtype DemoPaintableInterface_Access_Array_Access is org.allbinary.game.displayable.canvas.DemoPaintableInterface_Package_References.DemoPaintableInterface_Access_Array_Access;
   function "=" (Left, Right : DemoPaintableInterface_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.DemoPaintableInterface_Package_References."=";
   subtype DemoPaintableInterface_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.DemoPaintableInterface_Package_References.DemoPaintableInterface_Access_Array_Access_Array;
   function "=" (Left, Right : DemoPaintableInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.DemoPaintableInterface_Package_References."=";
   subtype DemoPaintableInterface_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.DemoPaintableInterface_Package_References.DemoPaintableInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DemoPaintableInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.DemoPaintableInterface_Package_References."=";
   function Java_Object_Access_From_DemoPaintableInterface (Value : DemoPaintableInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure showGamePaintable (This : in out DemoPaintableInterface) is abstract;

end org.allbinary.game.displayable.canvas.DemoPaintableInterface_Package;


