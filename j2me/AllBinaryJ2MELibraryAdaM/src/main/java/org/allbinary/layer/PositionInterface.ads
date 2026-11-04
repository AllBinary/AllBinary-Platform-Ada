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

limited with org.allbinary.layer.PositionInterface_Package;
package org.allbinary.layer.PositionInterface_Package_References is
   type PositionInterface_Access is access all org.allbinary.layer.PositionInterface_Package.PositionInterface'Class;
   type PositionInterface_Access_Array is array (Natural range <>) of PositionInterface_Access;
   type PositionInterface_Access_Array_Access is access all PositionInterface_Access_Array;
   type PositionInterface_Access_Array_Access_Array is array (Natural range <>) of PositionInterface_Access_Array_Access;
   type PositionInterface_Access_Array_Access_Array_Access is access all PositionInterface_Access_Array_Access_Array;
end org.allbinary.layer.PositionInterface_Package_References;

with org.allbinary.layer.PositionInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.layer.PositionInterface_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type PositionInterface is interface;
   subtype PositionInterface_Access is org.allbinary.layer.PositionInterface_Package_References.PositionInterface_Access;
   function "=" (Left, Right : PositionInterface_Access) return Boolean renames org.allbinary.layer.PositionInterface_Package_References."=";
   subtype PositionInterface_Access_Array is org.allbinary.layer.PositionInterface_Package_References.PositionInterface_Access_Array;
   function "=" (Left, Right : PositionInterface_Access_Array) return Boolean renames org.allbinary.layer.PositionInterface_Package_References."=";
   subtype PositionInterface_Access_Array_Access is org.allbinary.layer.PositionInterface_Package_References.PositionInterface_Access_Array_Access;
   function "=" (Left, Right : PositionInterface_Access_Array_Access) return Boolean renames org.allbinary.layer.PositionInterface_Package_References."=";
   subtype PositionInterface_Access_Array_Access_Array is org.allbinary.layer.PositionInterface_Package_References.PositionInterface_Access_Array_Access_Array;
   function "=" (Left, Right : PositionInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.layer.PositionInterface_Package_References."=";
   subtype PositionInterface_Access_Array_Access_Array_Access is org.allbinary.layer.PositionInterface_Package_References.PositionInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PositionInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.layer.PositionInterface_Package_References."=";
   function Java_Object_Access_From_PositionInterface (Value : PositionInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure setPosition (This : in out PositionInterface; x : Integer; y : Integer; z : Integer) is abstract;

end org.allbinary.layer.PositionInterface_Package;


