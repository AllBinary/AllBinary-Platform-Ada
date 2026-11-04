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

limited with org.allbinary.game.displayable.canvas.NullDemoPaintable_Package;
package org.allbinary.game.displayable.canvas.NullDemoPaintable_Package_References is
   type NullDemoPaintable_Access is access all org.allbinary.game.displayable.canvas.NullDemoPaintable_Package.NullDemoPaintable'Class;
   type NullDemoPaintable_Access_Array is array (Natural range <>) of NullDemoPaintable_Access;
   type NullDemoPaintable_Access_Array_Access is access all NullDemoPaintable_Access_Array;
   type NullDemoPaintable_Access_Array_Access_Array is array (Natural range <>) of NullDemoPaintable_Access_Array_Access;
   type NullDemoPaintable_Access_Array_Access_Array_Access is access all NullDemoPaintable_Access_Array_Access_Array;
end org.allbinary.game.displayable.canvas.NullDemoPaintable_Package_References;

with org.allbinary.game.displayable.canvas.NullDemoPaintable_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.displayable.canvas.DemoPaintableInterface_Package; use org.allbinary.game.displayable.canvas.DemoPaintableInterface_Package;

package org.allbinary.game.displayable.canvas.NullDemoPaintable_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype NullDemoPaintable_Access is org.allbinary.game.displayable.canvas.NullDemoPaintable_Package_References.NullDemoPaintable_Access;
   function "=" (Left, Right : NullDemoPaintable_Access) return Boolean renames org.allbinary.game.displayable.canvas.NullDemoPaintable_Package_References."=";
   subtype NullDemoPaintable_Access_Array is org.allbinary.game.displayable.canvas.NullDemoPaintable_Package_References.NullDemoPaintable_Access_Array;
   function "=" (Left, Right : NullDemoPaintable_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.NullDemoPaintable_Package_References."=";
   subtype NullDemoPaintable_Access_Array_Access is org.allbinary.game.displayable.canvas.NullDemoPaintable_Package_References.NullDemoPaintable_Access_Array_Access;
   function "=" (Left, Right : NullDemoPaintable_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.NullDemoPaintable_Package_References."=";
   subtype NullDemoPaintable_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.NullDemoPaintable_Package_References.NullDemoPaintable_Access_Array_Access_Array;
   function "=" (Left, Right : NullDemoPaintable_Access_Array_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.NullDemoPaintable_Package_References."=";
   subtype NullDemoPaintable_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.NullDemoPaintable_Package_References.NullDemoPaintable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NullDemoPaintable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.NullDemoPaintable_Package_References."=";

   type NullDemoPaintable is new Java_Object and DemoPaintableInterface with null record;
   NULL_DEMO_PAINTABLE : NullDemoPaintable_Access;

   procedure Initialize (This : in out NullDemoPaintable'Class);
   function Create return NullDemoPaintable_Access;
   procedure showGamePaintable (This : in out NullDemoPaintable);

end org.allbinary.game.displayable.canvas.NullDemoPaintable_Package;


