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

limited with org.allbinary.init.UpdateInterface_Package;
package org.allbinary.init.UpdateInterface_Package_References is
   type UpdateInterface_Access is access all org.allbinary.init.UpdateInterface_Package.UpdateInterface'Class;
   type UpdateInterface_Access_Array is array (Natural range <>) of UpdateInterface_Access;
   type UpdateInterface_Access_Array_Access is access all UpdateInterface_Access_Array;
   type UpdateInterface_Access_Array_Access_Array is array (Natural range <>) of UpdateInterface_Access_Array_Access;
   type UpdateInterface_Access_Array_Access_Array_Access is access all UpdateInterface_Access_Array_Access_Array;
end org.allbinary.init.UpdateInterface_Package_References;

with org.allbinary.init.UpdateInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.init.UpdateInterface_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type UpdateInterface is interface;
   subtype UpdateInterface_Access is org.allbinary.init.UpdateInterface_Package_References.UpdateInterface_Access;
   function "=" (Left, Right : UpdateInterface_Access) return Boolean renames org.allbinary.init.UpdateInterface_Package_References."=";
   subtype UpdateInterface_Access_Array is org.allbinary.init.UpdateInterface_Package_References.UpdateInterface_Access_Array;
   function "=" (Left, Right : UpdateInterface_Access_Array) return Boolean renames org.allbinary.init.UpdateInterface_Package_References."=";
   subtype UpdateInterface_Access_Array_Access is org.allbinary.init.UpdateInterface_Package_References.UpdateInterface_Access_Array_Access;
   function "=" (Left, Right : UpdateInterface_Access_Array_Access) return Boolean renames org.allbinary.init.UpdateInterface_Package_References."=";
   subtype UpdateInterface_Access_Array_Access_Array is org.allbinary.init.UpdateInterface_Package_References.UpdateInterface_Access_Array_Access_Array;
   function "=" (Left, Right : UpdateInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.init.UpdateInterface_Package_References."=";
   subtype UpdateInterface_Access_Array_Access_Array_Access is org.allbinary.init.UpdateInterface_Package_References.UpdateInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : UpdateInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.init.UpdateInterface_Package_References."=";
   function Java_Object_Access_From_UpdateInterface (Value : UpdateInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure update (This : in out UpdateInterface) is abstract;

end org.allbinary.init.UpdateInterface_Package;


