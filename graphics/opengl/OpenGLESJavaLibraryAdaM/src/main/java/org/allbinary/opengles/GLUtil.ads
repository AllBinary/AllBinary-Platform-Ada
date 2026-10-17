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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.nio.Buffer_Package; use java.nio.Buffer_Package;
--  with java.nio.ByteBuffer_Package; use java.nio.ByteBuffer_Package;
--  with java.nio.ByteOrder_Package; use java.nio.ByteOrder_Package;
--  with java.nio.FloatBuffer_Package; use java.nio.FloatBuffer_Package;

package org.allbinary.opengles.GLUtil_Package is


   type GLUtil is tagged;
   type GLUtil_Access is access all GLUtil'Class;
   type GLUtil_Access_Array is array (Natural range <>) of GLUtil_Access;
   type GLUtil_Access_Array_Access is access all GLUtil_Access_Array;

   type GLUtil is new Java_Object with record
      BYTES_PER_FLOAT : Integer;
   end record;
   instance : GLUtil_Access;

   procedure Initialize (This : in out GLUtil'Class);
   function Create return GLUtil_Access;
   function getInstance return GLUtil_Access;
   procedure getInstance;
   function makeFloatBuffer3 (This : in out GLUtil; p_a : Float; p_b : Float; p_c : Float) return FloatBuffer_Access;
   procedure makeFloatBuffer3 (This : in out GLUtil; p_a : Float; p_b : Float; p_c : Float);
   function makeFloatBuffer4 (This : in out GLUtil; p_a : Float; p_b : Float; p_c : Float; p_d : Float) return FloatBuffer_Access;
   procedure makeFloatBuffer4 (This : in out GLUtil; p_a : Float; p_b : Float; p_c : Float; p_d : Float);
   function makeFloatBuffer (This : in out GLUtil; byteBuffer : ByteBuffer_Access) return FloatBuffer_Access;
   procedure makeFloatBuffer (This : in out GLUtil; byteBuffer : ByteBuffer_Access);
   function position (This : in out GLUtil; buffer : Buffer_Access; newPosition : Integer) return Buffer_Access;
   procedure position (This : in out GLUtil; buffer : Buffer_Access; newPosition : Integer);
   procedure rotateUVs (This : in out GLUtil; uvs : Float_Array_Access; angleDegrees : Float; pivotU : Float; pivotV : Float);

end org.allbinary.opengles.GLUtil_Package;


