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
limited with org.allbinary.logic.io.NullWriter_Package;
package org.allbinary.logic.io.NullWriter_Package_References is
   type NullWriter_Access is access all org.allbinary.logic.io.NullWriter_Package.NullWriter'Class;
   type NullWriter_Access_Array is array (Natural range <>) of NullWriter_Access;
   type NullWriter_Access_Array_Access is access all NullWriter_Access_Array;
   type NullWriter_Access_Array_Access_Array is array (Natural range <>) of NullWriter_Access_Array_Access;
   type NullWriter_Access_Array_Access_Array_Access is access all NullWriter_Access_Array_Access_Array;
   type NullWriter_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NullWriter_Access_Array_Access;
   end record;
   function Java_Box (Value : NullWriter_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NullWriter_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NullWriter_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NullWriter_Access_Array_Access is (if Value /= null and then Value.all in NullWriter_Access_Array_Object'Class then NullWriter_Access_Array_Object'Class (Value.all).Value else null);
   type NullWriter_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NullWriter_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : NullWriter_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NullWriter_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NullWriter_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NullWriter_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in NullWriter_Access_Array_Access_Array_Object'Class then NullWriter_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.io.NullWriter_Package_References;

with org.allbinary.logic.io.NullWriter_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.io.IOException_Package; use java.io.IOException_Package;
with java.io.Writer_Package; use java.io.Writer_Package;

package org.allbinary.logic.io.NullWriter_Package is

   package Writer_Package renames Standard.java.io.Writer_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype NullWriter_Access is org.allbinary.logic.io.NullWriter_Package_References.NullWriter_Access;
   function "=" (Left, Right : NullWriter_Access) return Boolean renames org.allbinary.logic.io.NullWriter_Package_References."=";
   subtype NullWriter_Access_Array is org.allbinary.logic.io.NullWriter_Package_References.NullWriter_Access_Array;
   function "=" (Left, Right : NullWriter_Access_Array) return Boolean renames org.allbinary.logic.io.NullWriter_Package_References."=";
   subtype NullWriter_Access_Array_Access is org.allbinary.logic.io.NullWriter_Package_References.NullWriter_Access_Array_Access;
   function "=" (Left, Right : NullWriter_Access_Array_Access) return Boolean renames org.allbinary.logic.io.NullWriter_Package_References."=";
   function Java_Box (Value : NullWriter_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.io.NullWriter_Package_References.Java_Box;
   function Java_Unbox_NullWriter_Access_Array (Value : access Java_Object'Class) return NullWriter_Access_Array_Access renames org.allbinary.logic.io.NullWriter_Package_References.Java_Unbox_NullWriter_Access_Array;
   subtype NullWriter_Access_Array_Access_Array is org.allbinary.logic.io.NullWriter_Package_References.NullWriter_Access_Array_Access_Array;
   function "=" (Left, Right : NullWriter_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.io.NullWriter_Package_References."=";
   subtype NullWriter_Access_Array_Access_Array_Access is org.allbinary.logic.io.NullWriter_Package_References.NullWriter_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NullWriter_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.io.NullWriter_Package_References."=";
   function Java_Box (Value : NullWriter_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.io.NullWriter_Package_References.Java_Box;
   function Java_Unbox_NullWriter_Access_Array_Access_Array (Value : access Java_Object'Class) return NullWriter_Access_Array_Access_Array_Access renames org.allbinary.logic.io.NullWriter_Package_References.Java_Unbox_NullWriter_Access_Array_Access_Array;

   type NullWriter is new Writer with null record;
   NULL_WRITER : NullWriter_Access;

   procedure Initialize (This : in out NullWriter'Class);
   function Create return NullWriter_Access;
   procedure write (This : in out NullWriter; c : Integer);
   procedure write (This : in out NullWriter; cbuf : Character_Array_Access; off : Integer; len : Integer);
   procedure write (This : in out NullWriter; str : Unbounded_String);
   procedure write (This : in out NullWriter; str : Unbounded_String; off : Integer; len : Integer);
   procedure flush (This : in out NullWriter);
   procedure close (This : in out NullWriter);

end org.allbinary.logic.io.NullWriter_Package;


