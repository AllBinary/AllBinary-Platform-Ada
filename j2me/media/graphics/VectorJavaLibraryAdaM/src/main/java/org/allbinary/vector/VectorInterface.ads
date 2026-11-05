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

limited with org.allbinary.vector.VectorInterface_Package;
package org.allbinary.vector.VectorInterface_Package_References is
   type VectorInterface_Access is access all org.allbinary.vector.VectorInterface_Package.VectorInterface'Class;
   type VectorInterface_Access_Array is array (Natural range <>) of VectorInterface_Access;
   type VectorInterface_Access_Array_Access is access all VectorInterface_Access_Array;
   type VectorInterface_Access_Array_Access_Array is array (Natural range <>) of VectorInterface_Access_Array_Access;
   type VectorInterface_Access_Array_Access_Array_Access is access all VectorInterface_Access_Array_Access_Array;
end org.allbinary.vector.VectorInterface_Package_References;

with org.allbinary.vector.VectorInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.vector.VectorInterface_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type VectorInterface is interface;
   subtype VectorInterface_Access is org.allbinary.vector.VectorInterface_Package_References.VectorInterface_Access;
   function "=" (Left, Right : VectorInterface_Access) return Boolean renames org.allbinary.vector.VectorInterface_Package_References."=";
   subtype VectorInterface_Access_Array is org.allbinary.vector.VectorInterface_Package_References.VectorInterface_Access_Array;
   function "=" (Left, Right : VectorInterface_Access_Array) return Boolean renames org.allbinary.vector.VectorInterface_Package_References."=";
   subtype VectorInterface_Access_Array_Access is org.allbinary.vector.VectorInterface_Package_References.VectorInterface_Access_Array_Access;
   function "=" (Left, Right : VectorInterface_Access_Array_Access) return Boolean renames org.allbinary.vector.VectorInterface_Package_References."=";
   subtype VectorInterface_Access_Array_Access_Array is org.allbinary.vector.VectorInterface_Package_References.VectorInterface_Access_Array_Access_Array;
   function "=" (Left, Right : VectorInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.vector.VectorInterface_Package_References."=";
   subtype VectorInterface_Access_Array_Access_Array_Access is org.allbinary.vector.VectorInterface_Package_References.VectorInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : VectorInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.vector.VectorInterface_Package_References."=";
   function Java_Object_Access_From_VectorInterface (Value : VectorInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getPoints (This : in out VectorInterface; frame : Integer) return Integer_Array_Access_Array_Access is abstract;
   procedure getPoints (This : in out VectorInterface; frame : Integer) is abstract;
   procedure setPoints (This : in out VectorInterface; currentPoints : Integer_Array_Access_Array_Access_Array_Access) is abstract;

end org.allbinary.vector.VectorInterface_Package;


