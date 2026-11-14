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
limited with org.allbinary.logic.io.NullReader_Package;
package org.allbinary.logic.io.NullReader_Package_References is
   type NullReader_Access is access all org.allbinary.logic.io.NullReader_Package.NullReader'Class;
   type NullReader_Access_Array is array (Natural range <>) of NullReader_Access;
   type NullReader_Access_Array_Access is access all NullReader_Access_Array;
   type NullReader_Access_Array_Access_Array is array (Natural range <>) of NullReader_Access_Array_Access;
   type NullReader_Access_Array_Access_Array_Access is access all NullReader_Access_Array_Access_Array;
   type NullReader_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NullReader_Access_Array_Access;
   end record;
   function Java_Box (Value : NullReader_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NullReader_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NullReader_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NullReader_Access_Array_Access is (if Value /= null and then Value.all in NullReader_Access_Array_Object'Class then NullReader_Access_Array_Object'Class (Value.all).Value else null);
   type NullReader_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NullReader_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : NullReader_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NullReader_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NullReader_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NullReader_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in NullReader_Access_Array_Access_Array_Object'Class then NullReader_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.io.NullReader_Package_References;

with org.allbinary.logic.io.NullReader_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.io.IOException_Package; use java.io.IOException_Package;
with java.io.Reader_Package; use java.io.Reader_Package;

package org.allbinary.logic.io.NullReader_Package is

   package Reader_Package renames Standard.java.io.Reader_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype NullReader_Access is org.allbinary.logic.io.NullReader_Package_References.NullReader_Access;
   function "=" (Left, Right : NullReader_Access) return Boolean renames org.allbinary.logic.io.NullReader_Package_References."=";
   subtype NullReader_Access_Array is org.allbinary.logic.io.NullReader_Package_References.NullReader_Access_Array;
   function "=" (Left, Right : NullReader_Access_Array) return Boolean renames org.allbinary.logic.io.NullReader_Package_References."=";
   subtype NullReader_Access_Array_Access is org.allbinary.logic.io.NullReader_Package_References.NullReader_Access_Array_Access;
   function "=" (Left, Right : NullReader_Access_Array_Access) return Boolean renames org.allbinary.logic.io.NullReader_Package_References."=";
   function Java_Box (Value : NullReader_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.io.NullReader_Package_References.Java_Box;
   function Java_Unbox_NullReader_Access_Array (Value : access Java_Object'Class) return NullReader_Access_Array_Access renames org.allbinary.logic.io.NullReader_Package_References.Java_Unbox_NullReader_Access_Array;
   subtype NullReader_Access_Array_Access_Array is org.allbinary.logic.io.NullReader_Package_References.NullReader_Access_Array_Access_Array;
   function "=" (Left, Right : NullReader_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.io.NullReader_Package_References."=";
   subtype NullReader_Access_Array_Access_Array_Access is org.allbinary.logic.io.NullReader_Package_References.NullReader_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NullReader_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.io.NullReader_Package_References."=";
   function Java_Box (Value : NullReader_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.io.NullReader_Package_References.Java_Box;
   function Java_Unbox_NullReader_Access_Array_Access_Array (Value : access Java_Object'Class) return NullReader_Access_Array_Access_Array_Access renames org.allbinary.logic.io.NullReader_Package_References.Java_Unbox_NullReader_Access_Array_Access_Array;

   type NullReader is new Reader with null record;
   NULL_READER : NullReader_Access;

   procedure Initialize (This : in out NullReader'Class);
   function Create return NullReader_Access;
   function read (This : in out NullReader) return Integer;
   function read (This : in out NullReader; cbuf : Character_Array_Access; off : Integer; len : Integer) return Integer;
   procedure read (This : in out NullReader; cbuf : Character_Array_Access; off : Integer; len : Integer);
   function ready (This : in out NullReader) return Boolean;
   function skip (This : in out NullReader; n : Long_Long_Integer) return Long_Long_Integer;
   procedure skip (This : in out NullReader; n : Long_Long_Integer);
   procedure close (This : in out NullReader);

end org.allbinary.logic.io.NullReader_Package;


