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

limited with org.allbinary.input.motion.button.BasicTouchButtonCellPositionFactory_Package;
package org.allbinary.input.motion.button.BasicTouchButtonCellPositionFactory_Package_References is
   type BasicTouchButtonCellPositionFactory_Access is access all org.allbinary.input.motion.button.BasicTouchButtonCellPositionFactory_Package.BasicTouchButtonCellPositionFactory'Class;
   type BasicTouchButtonCellPositionFactory_Access_Array is array (Natural range <>) of BasicTouchButtonCellPositionFactory_Access;
   type BasicTouchButtonCellPositionFactory_Access_Array_Access is access all BasicTouchButtonCellPositionFactory_Access_Array;
   type BasicTouchButtonCellPositionFactory_Access_Array_Access_Array is array (Natural range <>) of BasicTouchButtonCellPositionFactory_Access_Array_Access;
   type BasicTouchButtonCellPositionFactory_Access_Array_Access_Array_Access is access all BasicTouchButtonCellPositionFactory_Access_Array_Access_Array;
end org.allbinary.input.motion.button.BasicTouchButtonCellPositionFactory_Package_References;

with org.allbinary.input.motion.button.BasicTouchButtonCellPositionFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.input.motion.button.BasicTouchButtonCellPositionFactory_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype BasicTouchButtonCellPositionFactory_Access is org.allbinary.input.motion.button.BasicTouchButtonCellPositionFactory_Package_References.BasicTouchButtonCellPositionFactory_Access;
   function "=" (Left, Right : BasicTouchButtonCellPositionFactory_Access) return Boolean renames org.allbinary.input.motion.button.BasicTouchButtonCellPositionFactory_Package_References."=";
   subtype BasicTouchButtonCellPositionFactory_Access_Array is org.allbinary.input.motion.button.BasicTouchButtonCellPositionFactory_Package_References.BasicTouchButtonCellPositionFactory_Access_Array;
   function "=" (Left, Right : BasicTouchButtonCellPositionFactory_Access_Array) return Boolean renames org.allbinary.input.motion.button.BasicTouchButtonCellPositionFactory_Package_References."=";
   subtype BasicTouchButtonCellPositionFactory_Access_Array_Access is org.allbinary.input.motion.button.BasicTouchButtonCellPositionFactory_Package_References.BasicTouchButtonCellPositionFactory_Access_Array_Access;
   function "=" (Left, Right : BasicTouchButtonCellPositionFactory_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.BasicTouchButtonCellPositionFactory_Package_References."=";
   subtype BasicTouchButtonCellPositionFactory_Access_Array_Access_Array is org.allbinary.input.motion.button.BasicTouchButtonCellPositionFactory_Package_References.BasicTouchButtonCellPositionFactory_Access_Array_Access_Array;
   function "=" (Left, Right : BasicTouchButtonCellPositionFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.input.motion.button.BasicTouchButtonCellPositionFactory_Package_References."=";
   subtype BasicTouchButtonCellPositionFactory_Access_Array_Access_Array_Access is org.allbinary.input.motion.button.BasicTouchButtonCellPositionFactory_Package_References.BasicTouchButtonCellPositionFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicTouchButtonCellPositionFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.BasicTouchButtonCellPositionFactory_Package_References."=";

   type BasicTouchButtonCellPositionFactory is new Java_Object with null record;

   procedure Initialize (This : in out BasicTouchButtonCellPositionFactory'Class);
   function Create return BasicTouchButtonCellPositionFactory_Access;
   procedure init;

end org.allbinary.input.motion.button.BasicTouchButtonCellPositionFactory_Package;


