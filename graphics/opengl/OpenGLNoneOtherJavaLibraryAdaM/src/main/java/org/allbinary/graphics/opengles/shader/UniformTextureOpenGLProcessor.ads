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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.microedition.khronos.opengles.GL10_Package; use javax.microedition.khronos.opengles.GL10_Package;
with org.allbinary.graphics.opengles.shader.OpenGLObject3dProcessor_Package; use org.allbinary.graphics.opengles.shader.OpenGLObject3dProcessor_Package;

package org.allbinary.graphics.opengles.shader.UniformTextureOpenGLProcessor_Package is


   type UniformTextureOpenGLProcessor is tagged;
   type UniformTextureOpenGLProcessor_Access is access all UniformTextureOpenGLProcessor'Class;
   type UniformTextureOpenGLProcessor_Access_Array is array (Natural range <>) of UniformTextureOpenGLProcessor_Access;
   type UniformTextureOpenGLProcessor_Access_Array_Access is access all UniformTextureOpenGLProcessor_Access_Array;

   type UniformTextureOpenGLProcessor is new OpenGLObject3dProcessor with null record;

   procedure Initialize (This : in out UniformTextureOpenGLProcessor'Class; shaderComposite : ShaderComposite_Access; handleIndex : Integer);
   function Create (shaderComposite : ShaderComposite_Access; handleIndex : Integer) return UniformTextureOpenGLProcessor_Access;
   procedure process (This : in out UniformTextureOpenGLProcessor; gl : GL10_Access; unused : Java_Object_Access; index : Integer);

end org.allbinary.graphics.opengles.shader.UniformTextureOpenGLProcessor_Package;


