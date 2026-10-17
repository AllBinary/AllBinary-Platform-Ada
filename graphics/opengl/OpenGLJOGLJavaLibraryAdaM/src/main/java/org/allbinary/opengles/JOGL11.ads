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
with com.jogamp.opengl.GL_Package; use com.jogamp.opengl.GL_Package;
with com.jogamp.opengl.GL2_Package; use com.jogamp.opengl.GL2_Package;
with org.allbinary.opengles.JOGL10_Package; use org.allbinary.opengles.JOGL10_Package;
with org.allbinary.opengles.GL11_Package; use org.allbinary.opengles.GL11_Package;

package org.allbinary.opengles.JOGL11_Package is

   package GL_Package renames Standard.com.jogamp.opengl.GL_Package;
   package GL2_Package renames Standard.com.jogamp.opengl.GL2_Package;

   type JOGL11 is tagged;
   type JOGL11_Access is access all JOGL11'Class;
   type JOGL11_Access_Array is array (Natural range <>) of JOGL11_Access;
   type JOGL11_Access_Array_Access is access all JOGL11_Access_Array;

   type JOGL11 is new JOGL10 and GL11 with record
      gl11 : GL2_Access;
   end record;

   procedure Initialize (This : in out JOGL11'Class; gl_Param : access GL_Package.GL'Class);
   function Create (gl_Param : access GL_Package.GL'Class) return JOGL11_Access;
   procedure Initialize (This : in out JOGL11'Class; gl_Param : access GL_Package.GL'Class; gl2_Param : access GL2_Package.GL2'Class);
   function Create (gl_Param : access GL_Package.GL'Class; gl2_Param : access GL2_Package.GL2'Class) return JOGL11_Access;
   procedure glBindBuffer (This : in out JOGL11; target : Integer; buffer : Integer);
   procedure glBufferData (This : in out JOGL11; target : Integer; size : Integer; data_Param : access Buffer_Package.Buffer'Class; usage : Integer);
   procedure glBufferSubData (This : in out JOGL11; target : Integer; offset : Integer; size : Integer; data_Param : access Buffer_Package.Buffer'Class);
   procedure glClipPlanef (This : in out JOGL11; plane : Integer; equation : Float_Array_Access; offset : Integer);
   procedure glClipPlanef (This : in out JOGL11; plane : Integer; equation_Param : access FloatBuffer_Package.FloatBuffer'Class);
   procedure glColor4ub (This : in out JOGL11; red : Short_Short_Integer; green : Short_Short_Integer; blue : Short_Short_Integer; alpha : Short_Short_Integer);
   procedure glColorPointer (This : in out JOGL11; size : Integer; type_Id : Integer; stride : Integer; offset : Integer);
   procedure glDeleteBuffers (This : in out JOGL11; n : Integer; buffers : Integer_Array_Access; offset : Integer);
   procedure glDeleteBuffers (This : in out JOGL11; n : Integer; buffers_Param : access IntBuffer_Package.IntBuffer'Class);
   procedure glDrawElements (This : in out JOGL11; mode : Integer; count : Integer; type_Id : Integer; offset : Integer);
   procedure glGenBuffers (This : in out JOGL11; n : Integer; buffers : Integer_Array_Access; offset : Integer);
   procedure glGenBuffers (This : in out JOGL11; n : Integer; buffers_Param : access IntBuffer_Package.IntBuffer'Class);
   procedure glGetBufferParameteriv (This : in out JOGL11; target : Integer; pname : Integer; params : Integer_Array_Access; offset : Integer);
   procedure glGetBufferParameteriv (This : in out JOGL11; target : Integer; pname : Integer; params_Param : access IntBuffer_Package.IntBuffer'Class);
   procedure glGetClipPlanef (This : in out JOGL11; pname : Integer; eqn : Float_Array_Access; offset : Integer);
   procedure glGetClipPlanef (This : in out JOGL11; pname : Integer; eqn_Param : access FloatBuffer_Package.FloatBuffer'Class);
   procedure glGetFloatv (This : in out JOGL11; pname : Integer; params : Float_Array_Access; offset : Integer);
   procedure glGetFloatv (This : in out JOGL11; pname : Integer; params_Param : access FloatBuffer_Package.FloatBuffer'Class);
   procedure glGetLightfv (This : in out JOGL11; light : Integer; pname : Integer; params : Float_Array_Access; offset : Integer);
   procedure glGetLightfv (This : in out JOGL11; light : Integer; pname : Integer; params_Param : access FloatBuffer_Package.FloatBuffer'Class);
   procedure glGetMaterialfv (This : in out JOGL11; face : Integer; pname : Integer; params : Float_Array_Access; offset : Integer);
   procedure glGetMaterialfv (This : in out JOGL11; face : Integer; pname : Integer; params_Param : access FloatBuffer_Package.FloatBuffer'Class);
   procedure glGetTexEnviv (This : in out JOGL11; env : Integer; pname : Integer; params : Integer_Array_Access; offset : Integer);
   procedure glGetTexEnviv (This : in out JOGL11; env : Integer; pname : Integer; params_Param : access IntBuffer_Package.IntBuffer'Class);
   procedure glGetTexParameterfv (This : in out JOGL11; target : Integer; pname : Integer; params : Float_Array_Access; offset : Integer);
   procedure glGetTexParameterfv (This : in out JOGL11; target : Integer; pname : Integer; params_Param : access FloatBuffer_Package.FloatBuffer'Class);
   procedure glGetTexParameteriv (This : in out JOGL11; target : Integer; pname : Integer; params : Integer_Array_Access; offset : Integer);
   procedure glGetTexParameteriv (This : in out JOGL11; target : Integer; pname : Integer; params_Param : access IntBuffer_Package.IntBuffer'Class);
   function glIsBuffer (This : in out JOGL11; buffer : Integer) return Boolean;
   procedure glIsBuffer (This : in out JOGL11; buffer : Integer);
   function glIsEnabled (This : in out JOGL11; cap : Integer) return Boolean;
   procedure glIsEnabled (This : in out JOGL11; cap : Integer);
   function glIsTexture (This : in out JOGL11; texture : Integer) return Boolean;
   procedure glIsTexture (This : in out JOGL11; texture : Integer);
   procedure glNormalPointer (This : in out JOGL11; type_Id : Integer; stride : Integer; offset : Integer);
   procedure glPointParameterf (This : in out JOGL11; pname : Integer; param : Float);
   procedure glPointParameterfv (This : in out JOGL11; pname : Integer; params : Float_Array_Access; offset : Integer);
   procedure glPointParameterfv (This : in out JOGL11; pname : Integer; params_Param : access FloatBuffer_Package.FloatBuffer'Class);
   procedure glTexCoordPointer (This : in out JOGL11; size : Integer; type_Id : Integer; stride : Integer; offset : Integer);
   procedure glTexEnvi (This : in out JOGL11; target : Integer; pname : Integer; param : Integer);
   procedure glTexEnviv (This : in out JOGL11; target : Integer; pname : Integer; params : Integer_Array_Access; offset : Integer);
   procedure glTexEnviv (This : in out JOGL11; target : Integer; pname : Integer; params_Param : access IntBuffer_Package.IntBuffer'Class);
   procedure glTexParameterfv (This : in out JOGL11; target : Integer; pname : Integer; params : Float_Array_Access; offset : Integer);
   procedure glTexParameterfv (This : in out JOGL11; target : Integer; pname : Integer; params_Param : access FloatBuffer_Package.FloatBuffer'Class);
   procedure glTexParameteri (This : in out JOGL11; target : Integer; pname : Integer; param : Integer);
   procedure glTexParameteriv (This : in out JOGL11; target : Integer; pname : Integer; params : Integer_Array_Access; offset : Integer);
   procedure glTexParameteriv (This : in out JOGL11; target : Integer; pname : Integer; params_Param : access IntBuffer_Package.IntBuffer'Class);
   procedure glTexParameterxv (This : in out JOGL11; target : Integer; pname : Integer; params : Integer_Array_Access; offset : Integer);
   procedure glVertexPointer (This : in out JOGL11; size : Integer; type_Id : Integer; stride : Integer; offset : Integer);

end org.allbinary.opengles.JOGL11_Package;


