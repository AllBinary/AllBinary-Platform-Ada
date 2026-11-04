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

limited with org.allbinary.logic.NullUtil_Package;
package org.allbinary.logic.NullUtil_Package_References is
   type NullUtil_Access is access all org.allbinary.logic.NullUtil_Package.NullUtil'Class;
   type NullUtil_Access_Array is array (Natural range <>) of NullUtil_Access;
   type NullUtil_Access_Array_Access is access all NullUtil_Access_Array;
   type NullUtil_Access_Array_Access_Array is array (Natural range <>) of NullUtil_Access_Array_Access;
   type NullUtil_Access_Array_Access_Array_Access is access all NullUtil_Access_Array_Access_Array;
end org.allbinary.logic.NullUtil_Package_References;

with org.allbinary.logic.NullUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.NullUtil_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype NullUtil_Access is org.allbinary.logic.NullUtil_Package_References.NullUtil_Access;
   function "=" (Left, Right : NullUtil_Access) return Boolean renames org.allbinary.logic.NullUtil_Package_References."=";
   subtype NullUtil_Access_Array is org.allbinary.logic.NullUtil_Package_References.NullUtil_Access_Array;
   function "=" (Left, Right : NullUtil_Access_Array) return Boolean renames org.allbinary.logic.NullUtil_Package_References."=";
   subtype NullUtil_Access_Array_Access is org.allbinary.logic.NullUtil_Package_References.NullUtil_Access_Array_Access;
   function "=" (Left, Right : NullUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.NullUtil_Package_References."=";
   subtype NullUtil_Access_Array_Access_Array is org.allbinary.logic.NullUtil_Package_References.NullUtil_Access_Array_Access_Array;
   function "=" (Left, Right : NullUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.NullUtil_Package_References."=";
   subtype NullUtil_Access_Array_Access_Array_Access is org.allbinary.logic.NullUtil_Package_References.NullUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NullUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.NullUtil_Package_References."=";

   type NullUtil is new Java_Object with record
      NULL_OBJECT : Java_Object_Access;
      NULL_CLASS : Ada.Tags.Tag;
      NULL_OBJECT_ARRAY : Java_Object_Access_Array_Access;
      NULL_CHAR_ARRAY : Character_Array_Access;
      NULL_BYTE_ARRAY : Short_Short_Integer_Array_Access;
      NULL_SHORT_ARRAY_ARRAY : Short_Integer_Array_Access_Array_Access;
      NULL_INT_ARRAY : Integer_Array_Access;
      NULL_INT_ARRAY_ARRAY : Integer_Array_Access_Array_Access;
      NULL_INT_ARRAY_ARRAY_ARRAY : Integer_Array_Access_Array_Access_Array_Access;
      NULL_FLOAT_ARRAY : Float_Array_Access;
   end record;
   instance : NullUtil_Access;

   procedure Initialize (This : in out NullUtil'Class);
   function Create return NullUtil_Access;
   function getInstance return NullUtil_Access;

end org.allbinary.logic.NullUtil_Package;


