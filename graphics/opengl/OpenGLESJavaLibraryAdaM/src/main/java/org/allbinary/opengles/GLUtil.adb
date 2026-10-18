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



package body org.allbinary.opengles.GLUtil_Package is

   procedure Initialize_Fields (This : in out GLUtil'Class) is
   begin
      null;
      This.BYTES_PER_FLOAT := 4;
   end Initialize_Fields;

   procedure Initialize (This : in out GLUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return GLUtil_Access is
      This : constant GLUtil_Access := new GLUtil;
   begin
      GLUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return GLUtil_Access is
   begin
        return GLUtil_Package.instance;
   end getInstance;

   function makeFloatBuffer3 (This : in out GLUtil; p_a : Float; p_b : Float; p_c : Float) return FloatBuffer_Access is
      b : ByteBuffer_Access;
      buffer : FloatBuffer_Access;
   begin
        b := ByteBuffer_Package.allocateDirect ((3) * (This.BYTES_PER_FLOAT));
        b.order (ByteOrder_Package.nativeOrder);
        buffer := b.asFloatBuffer;
        buffer.put (p_a);
        buffer.put (p_b);
        buffer.put (p_c);
        GLUtil'Class (This).position (buffer, 0);
        return buffer;
   end makeFloatBuffer3;

   function makeFloatBuffer4 (This : in out GLUtil; p_a : Float; p_b : Float; p_c : Float; p_d : Float) return FloatBuffer_Access is
      b : ByteBuffer_Access;
      buffer : FloatBuffer_Access;
   begin
        b := ByteBuffer_Package.allocateDirect ((4) * (This.BYTES_PER_FLOAT));
        b.order (ByteOrder_Package.nativeOrder);
        buffer := b.asFloatBuffer;
        buffer.put (p_a);
        buffer.put (p_b);
        buffer.put (p_c);
        buffer.put (p_d);
        GLUtil'Class (This).position (buffer, 0);
        return buffer;
   end makeFloatBuffer4;

   function makeFloatBuffer (This : in out GLUtil; byteBuffer_Param : access ByteBuffer_Package.ByteBuffer'Class) return FloatBuffer_Access is
      byteBuffer : constant ByteBuffer_Access := ByteBuffer_Access (byteBuffer_Param);
      b : ByteBuffer_Access;
      buffer : FloatBuffer_Access;
      unsigned : Integer;
      v : Float;
   begin
        b := ByteBuffer_Package.allocateDirect ((byteBuffer.limit) * (This.BYTES_PER_FLOAT));
        b.order (ByteOrder_Package.nativeOrder);
        buffer := b.asFloatBuffer;
        unsigned := 0;
        v := 0.0;
        while byteBuffer.hasRemaining loop
            unsigned := Java_And (byteBuffer.get, 16#FF#);
            v := ((Float (unsigned))) / (255.0);
            buffer.put (v);
        end loop;
        GLUtil'Class (This).position (buffer, 0);
        return buffer;
   end makeFloatBuffer;

   function position (This : in out GLUtil; buffer_Param : access Buffer_Package.Buffer'Class; newPosition : Integer) return Buffer_Access is
      buffer : constant Buffer_Access := Buffer_Access (buffer_Param);
   begin
        return buffer.position (newPosition);
   end position;

   procedure rotateUVs (This : in out GLUtil; uvs : Float_Array_Access; angleDegrees : Float; pivotU : Float; pivotV : Float) is
      angleRad : Long_Float;
      cosA : Long_Float;
      sinA : Long_Float;
      u : Float;
      v : Float;
      du : Float;
      dv : Float;
      ru : Float;
      rv : Float;
      i : Integer;
   begin
        angleRad := Ada.Numerics.Long_Elementary_Functions.ToRadians (angleDegrees);
        cosA := Ada.Numerics.Long_Elementary_Functions.Cos (angleRad);
        sinA := Ada.Numerics.Long_Elementary_Functions.Sin (angleRad);
        i := 0;
        while (i) < (uvs'Length) loop
            u := uvs (i);
            v := uvs ((i) + (1));
            du := (u) - (pivotU);
            dv := (v) - (pivotV);
            ru := (Float ((((Long_Float (du)) * (cosA)) - ((Long_Float (dv)) * (sinA))))) + (pivotU);
            rv := (Float ((((Long_Float (du)) * (sinA)) + ((Long_Float (dv)) * (cosA))))) + (pivotV);
            uvs (i) := ru;
            uvs ((i) + (1)) := rv;
            i := (i) + (2);
        end loop;
   end rotateUVs;

   procedure makeFloatBuffer3 (This : in out GLUtil; p_a : Float; p_b : Float; p_c : Float) is
      Java_Result : constant FloatBuffer_Access := GLUtil'Class (This).makeFloatBuffer3 (p_a => p_a, p_b => p_b, p_c => p_c);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end makeFloatBuffer3;

   procedure makeFloatBuffer4 (This : in out GLUtil; p_a : Float; p_b : Float; p_c : Float; p_d : Float) is
      Java_Result : constant FloatBuffer_Access := GLUtil'Class (This).makeFloatBuffer4 (p_a => p_a, p_b => p_b, p_c => p_c, p_d => p_d);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end makeFloatBuffer4;

   procedure makeFloatBuffer (This : in out GLUtil; byteBuffer_Param : access ByteBuffer_Package.ByteBuffer'Class) is
      Java_Result : constant FloatBuffer_Access := GLUtil'Class (This).makeFloatBuffer (byteBuffer_Param => byteBuffer_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end makeFloatBuffer;

   procedure position (This : in out GLUtil; buffer_Param : access Buffer_Package.Buffer'Class; newPosition : Integer) is
      Java_Result : constant Buffer_Access := GLUtil'Class (This).position (buffer_Param => buffer_Param, newPosition => newPosition);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end position;

begin
   null;
   instance := GLUtil_Package.Create;

end org.allbinary.opengles.GLUtil_Package;


