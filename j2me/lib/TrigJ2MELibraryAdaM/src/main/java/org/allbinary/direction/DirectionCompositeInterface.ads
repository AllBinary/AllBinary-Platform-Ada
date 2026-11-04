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

limited with org.allbinary.direction.DirectionCompositeInterface_Package;
package org.allbinary.direction.DirectionCompositeInterface_Package_References is
   type DirectionCompositeInterface_Access is access all org.allbinary.direction.DirectionCompositeInterface_Package.DirectionCompositeInterface'Class;
   type DirectionCompositeInterface_Access_Array is array (Natural range <>) of DirectionCompositeInterface_Access;
   type DirectionCompositeInterface_Access_Array_Access is access all DirectionCompositeInterface_Access_Array;
   type DirectionCompositeInterface_Access_Array_Access_Array is array (Natural range <>) of DirectionCompositeInterface_Access_Array_Access;
   type DirectionCompositeInterface_Access_Array_Access_Array_Access is access all DirectionCompositeInterface_Access_Array_Access_Array;
end org.allbinary.direction.DirectionCompositeInterface_Package_References;

with org.allbinary.direction.DirectionCompositeInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.direction.Direction_Package;
with org.allbinary.direction.Direction_Package_References;

package org.allbinary.direction.DirectionCompositeInterface_Package is

   package Reference_Types is
   subtype Direction_Access is org.allbinary.direction.Direction_Package_References.Direction_Access;
   use type Direction_Access;
   subtype Direction_Access_Array is org.allbinary.direction.Direction_Package_References.Direction_Access_Array;
   use type Direction_Access_Array;
   subtype Direction_Access_Array_Access is org.allbinary.direction.Direction_Package_References.Direction_Access_Array_Access;
   use type Direction_Access_Array_Access;
   subtype Direction_Access_Array_Access_Array is org.allbinary.direction.Direction_Package_References.Direction_Access_Array_Access_Array;
   use type Direction_Access_Array_Access_Array;
   subtype Direction_Access_Array_Access_Array_Access is org.allbinary.direction.Direction_Package_References.Direction_Access_Array_Access_Array_Access;
   use type Direction_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type DirectionCompositeInterface is interface;
   subtype DirectionCompositeInterface_Access is org.allbinary.direction.DirectionCompositeInterface_Package_References.DirectionCompositeInterface_Access;
   function "=" (Left, Right : DirectionCompositeInterface_Access) return Boolean renames org.allbinary.direction.DirectionCompositeInterface_Package_References."=";
   subtype DirectionCompositeInterface_Access_Array is org.allbinary.direction.DirectionCompositeInterface_Package_References.DirectionCompositeInterface_Access_Array;
   function "=" (Left, Right : DirectionCompositeInterface_Access_Array) return Boolean renames org.allbinary.direction.DirectionCompositeInterface_Package_References."=";
   subtype DirectionCompositeInterface_Access_Array_Access is org.allbinary.direction.DirectionCompositeInterface_Package_References.DirectionCompositeInterface_Access_Array_Access;
   function "=" (Left, Right : DirectionCompositeInterface_Access_Array_Access) return Boolean renames org.allbinary.direction.DirectionCompositeInterface_Package_References."=";
   subtype DirectionCompositeInterface_Access_Array_Access_Array is org.allbinary.direction.DirectionCompositeInterface_Package_References.DirectionCompositeInterface_Access_Array_Access_Array;
   function "=" (Left, Right : DirectionCompositeInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.direction.DirectionCompositeInterface_Package_References."=";
   subtype DirectionCompositeInterface_Access_Array_Access_Array_Access is org.allbinary.direction.DirectionCompositeInterface_Package_References.DirectionCompositeInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DirectionCompositeInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.direction.DirectionCompositeInterface_Package_References."=";
   function Java_Object_Access_From_DirectionCompositeInterface (Value : DirectionCompositeInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getDirection (This : in out DirectionCompositeInterface) return Direction_Access is abstract;

end org.allbinary.direction.DirectionCompositeInterface_Package;


