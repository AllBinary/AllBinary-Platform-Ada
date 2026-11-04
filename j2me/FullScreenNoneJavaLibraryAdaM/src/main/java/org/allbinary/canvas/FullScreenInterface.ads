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

limited with org.allbinary.canvas.FullScreenInterface_Package;
package org.allbinary.canvas.FullScreenInterface_Package_References is
   type FullScreenInterface_Access is access all org.allbinary.canvas.FullScreenInterface_Package.FullScreenInterface'Class;
   type FullScreenInterface_Access_Array is array (Natural range <>) of FullScreenInterface_Access;
   type FullScreenInterface_Access_Array_Access is access all FullScreenInterface_Access_Array;
   type FullScreenInterface_Access_Array_Access_Array is array (Natural range <>) of FullScreenInterface_Access_Array_Access;
   type FullScreenInterface_Access_Array_Access_Array_Access is access all FullScreenInterface_Access_Array_Access_Array;
end org.allbinary.canvas.FullScreenInterface_Package_References;

with org.allbinary.canvas.FullScreenInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.canvas.FullScreenInterface_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type FullScreenInterface is interface;
   subtype FullScreenInterface_Access is org.allbinary.canvas.FullScreenInterface_Package_References.FullScreenInterface_Access;
   function "=" (Left, Right : FullScreenInterface_Access) return Boolean renames org.allbinary.canvas.FullScreenInterface_Package_References."=";
   subtype FullScreenInterface_Access_Array is org.allbinary.canvas.FullScreenInterface_Package_References.FullScreenInterface_Access_Array;
   function "=" (Left, Right : FullScreenInterface_Access_Array) return Boolean renames org.allbinary.canvas.FullScreenInterface_Package_References."=";
   subtype FullScreenInterface_Access_Array_Access is org.allbinary.canvas.FullScreenInterface_Package_References.FullScreenInterface_Access_Array_Access;
   function "=" (Left, Right : FullScreenInterface_Access_Array_Access) return Boolean renames org.allbinary.canvas.FullScreenInterface_Package_References."=";
   subtype FullScreenInterface_Access_Array_Access_Array is org.allbinary.canvas.FullScreenInterface_Package_References.FullScreenInterface_Access_Array_Access_Array;
   function "=" (Left, Right : FullScreenInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.canvas.FullScreenInterface_Package_References."=";
   subtype FullScreenInterface_Access_Array_Access_Array_Access is org.allbinary.canvas.FullScreenInterface_Package_References.FullScreenInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : FullScreenInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.canvas.FullScreenInterface_Package_References."=";
   function Java_Object_Access_From_FullScreenInterface (Value : FullScreenInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));

end org.allbinary.canvas.FullScreenInterface_Package;


