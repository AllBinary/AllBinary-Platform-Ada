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

package org.allbinary.graphics.opengles.shader.UniformLightColorOpenGLProcessor_Package is


   type UniformLightColorOpenGLProcessor is tagged;
   type UniformLightColorOpenGLProcessor_Access is access all UniformLightColorOpenGLProcessor'Class;
   type UniformLightColorOpenGLProcessor_Access_Array is array (Natural range <>) of UniformLightColorOpenGLProcessor_Access;
   type UniformLightColorOpenGLProcessor_Access_Array_Access is access all UniformLightColorOpenGLProcessor_Access_Array;

   type UniformLightColorOpenGLProcessor is new OpenGLObject3dProcessor with null record;

   procedure Initialize (This : in out UniformLightColorOpenGLProcessor'Class; shaderComposite : ShaderComposite_Access; handleIndex : Integer);
   function Create (shaderComposite : ShaderComposite_Access; handleIndex : Integer) return UniformLightColorOpenGLProcessor_Access;
   procedure process (This : in out UniformLightColorOpenGLProcessor; gl : GL10_Access; unused : Java_Object_Access);

end org.allbinary.graphics.opengles.shader.UniformLightColorOpenGLProcessor_Package;


