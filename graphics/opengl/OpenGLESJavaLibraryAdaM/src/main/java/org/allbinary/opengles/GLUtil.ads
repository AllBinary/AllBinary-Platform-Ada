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

with AllBinary_Java;
limited with org.allbinary.opengles.GLUtil_Package;
package org.allbinary.opengles.GLUtil_Package_References is
   type GLUtil_Access is access all org.allbinary.opengles.GLUtil_Package.GLUtil'Class;
   type GLUtil_Access_Array is array (Natural range <>) of GLUtil_Access;
   type GLUtil_Access_Array_Access is access all GLUtil_Access_Array;
   type GLUtil_Access_Array_Access_Array is array (Natural range <>) of GLUtil_Access_Array_Access;
   type GLUtil_Access_Array_Access_Array_Access is access all GLUtil_Access_Array_Access_Array;
   type GLUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GLUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : GLUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GLUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GLUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GLUtil_Access_Array_Access is (if Value /= null and then Value.all in GLUtil_Access_Array_Object'Class then GLUtil_Access_Array_Object'Class (Value.all).Value else null);
   type GLUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GLUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : GLUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GLUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GLUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GLUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in GLUtil_Access_Array_Access_Array_Object'Class then GLUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.opengles.GLUtil_Package_References;

with org.allbinary.opengles.GLUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.nio.Buffer_Package; use java.nio.Buffer_Package;
with java.nio.ByteBuffer_Package; use java.nio.ByteBuffer_Package;
--  with java.nio.ByteOrder_Package; use java.nio.ByteOrder_Package;
with java.nio.FloatBuffer_Package; use java.nio.FloatBuffer_Package;

package org.allbinary.opengles.GLUtil_Package is

   package Buffer_Package renames Standard.java.nio.Buffer_Package;
   package ByteBuffer_Package renames Standard.java.nio.ByteBuffer_Package;
   package FloatBuffer_Package renames Standard.java.nio.FloatBuffer_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype GLUtil_Access is org.allbinary.opengles.GLUtil_Package_References.GLUtil_Access;
   function "=" (Left, Right : GLUtil_Access) return Boolean renames org.allbinary.opengles.GLUtil_Package_References."=";
   subtype GLUtil_Access_Array is org.allbinary.opengles.GLUtil_Package_References.GLUtil_Access_Array;
   function "=" (Left, Right : GLUtil_Access_Array) return Boolean renames org.allbinary.opengles.GLUtil_Package_References."=";
   subtype GLUtil_Access_Array_Access is org.allbinary.opengles.GLUtil_Package_References.GLUtil_Access_Array_Access;
   function "=" (Left, Right : GLUtil_Access_Array_Access) return Boolean renames org.allbinary.opengles.GLUtil_Package_References."=";
   function Java_Box (Value : GLUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.opengles.GLUtil_Package_References.Java_Box;
   function Java_Unbox_GLUtil_Access_Array (Value : access Java_Object'Class) return GLUtil_Access_Array_Access renames org.allbinary.opengles.GLUtil_Package_References.Java_Unbox_GLUtil_Access_Array;
   subtype GLUtil_Access_Array_Access_Array is org.allbinary.opengles.GLUtil_Package_References.GLUtil_Access_Array_Access_Array;
   function "=" (Left, Right : GLUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.opengles.GLUtil_Package_References."=";
   subtype GLUtil_Access_Array_Access_Array_Access is org.allbinary.opengles.GLUtil_Package_References.GLUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GLUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.opengles.GLUtil_Package_References."=";
   function Java_Box (Value : GLUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.opengles.GLUtil_Package_References.Java_Box;
   function Java_Unbox_GLUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return GLUtil_Access_Array_Access_Array_Access renames org.allbinary.opengles.GLUtil_Package_References.Java_Unbox_GLUtil_Access_Array_Access_Array;

   type GLUtil is new Java_Object with record
      BYTES_PER_FLOAT : Integer;
      NULL_FLOAT_BUFFER : FloatBuffer_Access;
   end record;
   instance : GLUtil_Access;

   procedure Initialize (This : in out GLUtil'Class);
   function Create return GLUtil_Access;
   function getInstance return GLUtil_Access;
   function makeFloatBuffer3 (This : in out GLUtil; p_a : Float; p_b : Float; p_c : Float) return FloatBuffer_Access;
   procedure makeFloatBuffer3 (This : in out GLUtil; p_a : Float; p_b : Float; p_c : Float);
   function makeFloatBuffer4 (This : in out GLUtil; p_a : Float; p_b : Float; p_c : Float; p_d : Float) return FloatBuffer_Access;
   procedure makeFloatBuffer4 (This : in out GLUtil; p_a : Float; p_b : Float; p_c : Float; p_d : Float);
   function makeFloatBuffer (This : in out GLUtil; byteBuffer_Param : access ByteBuffer_Package.ByteBuffer'Class) return FloatBuffer_Access;
   procedure makeFloatBuffer (This : in out GLUtil; byteBuffer_Param : access ByteBuffer_Package.ByteBuffer'Class);
   function position (This : in out GLUtil; buffer_Param : access Buffer_Package.Buffer'Class; newPosition : Integer) return Buffer_Access;
   procedure position (This : in out GLUtil; buffer_Param : access Buffer_Package.Buffer'Class; newPosition : Integer);
   procedure rotateUVs (This : in out GLUtil; uvs : Float_Array_Access; angleDegrees : Float; pivotU : Float; pivotV : Float);

end org.allbinary.opengles.GLUtil_Package;


