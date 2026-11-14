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

with AllBinary_Java;
limited with org.allbinary.logic.io.NullOutputStream_Package;
package org.allbinary.logic.io.NullOutputStream_Package_References is
   type NullOutputStream_Access is access all org.allbinary.logic.io.NullOutputStream_Package.NullOutputStream'Class;
   type NullOutputStream_Access_Array is array (Natural range <>) of NullOutputStream_Access;
   type NullOutputStream_Access_Array_Access is access all NullOutputStream_Access_Array;
   type NullOutputStream_Access_Array_Access_Array is array (Natural range <>) of NullOutputStream_Access_Array_Access;
   type NullOutputStream_Access_Array_Access_Array_Access is access all NullOutputStream_Access_Array_Access_Array;
   type NullOutputStream_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NullOutputStream_Access_Array_Access;
   end record;
   function Java_Box (Value : NullOutputStream_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NullOutputStream_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NullOutputStream_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NullOutputStream_Access_Array_Access is (if Value /= null and then Value.all in NullOutputStream_Access_Array_Object'Class then NullOutputStream_Access_Array_Object'Class (Value.all).Value else null);
   type NullOutputStream_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NullOutputStream_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : NullOutputStream_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NullOutputStream_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NullOutputStream_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NullOutputStream_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in NullOutputStream_Access_Array_Access_Array_Object'Class then NullOutputStream_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.io.NullOutputStream_Package_References;

with org.allbinary.logic.io.NullOutputStream_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.io.IOException_Package; use java.io.IOException_Package;
with java.io.OutputStream_Package; use java.io.OutputStream_Package;

package org.allbinary.logic.io.NullOutputStream_Package is

   package OutputStream_Package renames Standard.java.io.OutputStream_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype NullOutputStream_Access is org.allbinary.logic.io.NullOutputStream_Package_References.NullOutputStream_Access;
   function "=" (Left, Right : NullOutputStream_Access) return Boolean renames org.allbinary.logic.io.NullOutputStream_Package_References."=";
   subtype NullOutputStream_Access_Array is org.allbinary.logic.io.NullOutputStream_Package_References.NullOutputStream_Access_Array;
   function "=" (Left, Right : NullOutputStream_Access_Array) return Boolean renames org.allbinary.logic.io.NullOutputStream_Package_References."=";
   subtype NullOutputStream_Access_Array_Access is org.allbinary.logic.io.NullOutputStream_Package_References.NullOutputStream_Access_Array_Access;
   function "=" (Left, Right : NullOutputStream_Access_Array_Access) return Boolean renames org.allbinary.logic.io.NullOutputStream_Package_References."=";
   function Java_Box (Value : NullOutputStream_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.io.NullOutputStream_Package_References.Java_Box;
   function Java_Unbox_NullOutputStream_Access_Array (Value : access Java_Object'Class) return NullOutputStream_Access_Array_Access renames org.allbinary.logic.io.NullOutputStream_Package_References.Java_Unbox_NullOutputStream_Access_Array;
   subtype NullOutputStream_Access_Array_Access_Array is org.allbinary.logic.io.NullOutputStream_Package_References.NullOutputStream_Access_Array_Access_Array;
   function "=" (Left, Right : NullOutputStream_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.io.NullOutputStream_Package_References."=";
   subtype NullOutputStream_Access_Array_Access_Array_Access is org.allbinary.logic.io.NullOutputStream_Package_References.NullOutputStream_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NullOutputStream_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.io.NullOutputStream_Package_References."=";
   function Java_Box (Value : NullOutputStream_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.io.NullOutputStream_Package_References.Java_Box;
   function Java_Unbox_NullOutputStream_Access_Array_Access_Array (Value : access Java_Object'Class) return NullOutputStream_Access_Array_Access_Array_Access renames org.allbinary.logic.io.NullOutputStream_Package_References.Java_Unbox_NullOutputStream_Access_Array_Access_Array;

   type NullOutputStream is new OutputStream with null record;
   NULL_OUTPUT_STREAM : NullOutputStream_Access;

   procedure Initialize (This : in out NullOutputStream'Class);
   function Create return NullOutputStream_Access;
   procedure write (This : in out NullOutputStream; b : Integer);
   procedure write (This : in out NullOutputStream; b : Short_Short_Integer_Array_Access; off : Integer; len : Integer);
   procedure close (This : in out NullOutputStream);

end org.allbinary.logic.io.NullOutputStream_Package;


