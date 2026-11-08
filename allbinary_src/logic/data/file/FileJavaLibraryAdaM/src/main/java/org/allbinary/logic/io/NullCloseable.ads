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

limited with org.allbinary.logic.io.NullCloseable_Package;
package org.allbinary.logic.io.NullCloseable_Package_References is
   type NullCloseable_Access is access all org.allbinary.logic.io.NullCloseable_Package.NullCloseable'Class;
   type NullCloseable_Access_Array is array (Natural range <>) of NullCloseable_Access;
   type NullCloseable_Access_Array_Access is access all NullCloseable_Access_Array;
   type NullCloseable_Access_Array_Access_Array is array (Natural range <>) of NullCloseable_Access_Array_Access;
   type NullCloseable_Access_Array_Access_Array_Access is access all NullCloseable_Access_Array_Access_Array;
end org.allbinary.logic.io.NullCloseable_Package_References;

with org.allbinary.logic.io.NullCloseable_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.io.Closeable_Package; use java.io.Closeable_Package;
--  with java.io.IOException_Package; use java.io.IOException_Package;

package org.allbinary.logic.io.NullCloseable_Package is

   package Closeable_Package renames Standard.java.io.Closeable_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype NullCloseable_Access is org.allbinary.logic.io.NullCloseable_Package_References.NullCloseable_Access;
   function "=" (Left, Right : NullCloseable_Access) return Boolean renames org.allbinary.logic.io.NullCloseable_Package_References."=";
   subtype NullCloseable_Access_Array is org.allbinary.logic.io.NullCloseable_Package_References.NullCloseable_Access_Array;
   function "=" (Left, Right : NullCloseable_Access_Array) return Boolean renames org.allbinary.logic.io.NullCloseable_Package_References."=";
   subtype NullCloseable_Access_Array_Access is org.allbinary.logic.io.NullCloseable_Package_References.NullCloseable_Access_Array_Access;
   function "=" (Left, Right : NullCloseable_Access_Array_Access) return Boolean renames org.allbinary.logic.io.NullCloseable_Package_References."=";
   subtype NullCloseable_Access_Array_Access_Array is org.allbinary.logic.io.NullCloseable_Package_References.NullCloseable_Access_Array_Access_Array;
   function "=" (Left, Right : NullCloseable_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.io.NullCloseable_Package_References."=";
   subtype NullCloseable_Access_Array_Access_Array_Access is org.allbinary.logic.io.NullCloseable_Package_References.NullCloseable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NullCloseable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.io.NullCloseable_Package_References."=";

   type NullCloseable is new Java_Object and Closeable with null record;
   NULL_CLOSEABLE : NullCloseable_Access;

   procedure Initialize (This : in out NullCloseable'Class);
   function Create return NullCloseable_Access;
   procedure close (This : in out NullCloseable);

end org.allbinary.logic.io.NullCloseable_Package;


