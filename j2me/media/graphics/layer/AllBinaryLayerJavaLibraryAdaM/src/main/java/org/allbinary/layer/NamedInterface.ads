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

limited with org.allbinary.layer.NamedInterface_Package;
package org.allbinary.layer.NamedInterface_Package_References is
   type NamedInterface_Access is access all org.allbinary.layer.NamedInterface_Package.NamedInterface'Class;
   type NamedInterface_Access_Array is array (Natural range <>) of NamedInterface_Access;
   type NamedInterface_Access_Array_Access is access all NamedInterface_Access_Array;
   type NamedInterface_Access_Array_Access_Array is array (Natural range <>) of NamedInterface_Access_Array_Access;
   type NamedInterface_Access_Array_Access_Array_Access is access all NamedInterface_Access_Array_Access_Array;
end org.allbinary.layer.NamedInterface_Package_References;

with org.allbinary.layer.NamedInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.layer.NamedInterface_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type NamedInterface is interface;
   subtype NamedInterface_Access is org.allbinary.layer.NamedInterface_Package_References.NamedInterface_Access;
   function "=" (Left, Right : NamedInterface_Access) return Boolean renames org.allbinary.layer.NamedInterface_Package_References."=";
   subtype NamedInterface_Access_Array is org.allbinary.layer.NamedInterface_Package_References.NamedInterface_Access_Array;
   function "=" (Left, Right : NamedInterface_Access_Array) return Boolean renames org.allbinary.layer.NamedInterface_Package_References."=";
   subtype NamedInterface_Access_Array_Access is org.allbinary.layer.NamedInterface_Package_References.NamedInterface_Access_Array_Access;
   function "=" (Left, Right : NamedInterface_Access_Array_Access) return Boolean renames org.allbinary.layer.NamedInterface_Package_References."=";
   subtype NamedInterface_Access_Array_Access_Array is org.allbinary.layer.NamedInterface_Package_References.NamedInterface_Access_Array_Access_Array;
   function "=" (Left, Right : NamedInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.layer.NamedInterface_Package_References."=";
   subtype NamedInterface_Access_Array_Access_Array_Access is org.allbinary.layer.NamedInterface_Package_References.NamedInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NamedInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.layer.NamedInterface_Package_References."=";
   function Java_Object_Access_From_NamedInterface (Value : NamedInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getName (This : in out NamedInterface) return Unbounded_String is abstract;

end org.allbinary.layer.NamedInterface_Package;


