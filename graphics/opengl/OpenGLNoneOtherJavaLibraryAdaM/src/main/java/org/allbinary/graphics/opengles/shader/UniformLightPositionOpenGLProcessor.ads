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
with org.allbinary.graphics.opengles.shader.ShaderComposite_Package; use org.allbinary.graphics.opengles.shader.ShaderComposite_Package;

package org.allbinary.graphics.opengles.shader.UniformLightPositionOpenGLProcessor_Package is


   type UniformLightPositionOpenGLProcessor is tagged;
   type UniformLightPositionOpenGLProcessor_Access is access all UniformLightPositionOpenGLProcessor'Class;
   type UniformLightPositionOpenGLProcessor_Access_Array is array (Natural range <>) of UniformLightPositionOpenGLProcessor_Access;
   type UniformLightPositionOpenGLProcessor_Access_Array_Access is access all UniformLightPositionOpenGLProcessor_Access_Array;

   type UniformLightPositionOpenGLProcessor is new OpenGLObject3dProcessor with null record;

   procedure Initialize (This : in out UniformLightPositionOpenGLProcessor'Class; shaderComposite_Param : access ShaderComposite_Package.ShaderComposite'Class; handleIndex : Integer);
   function Create (shaderComposite_Param : access ShaderComposite_Package.ShaderComposite'Class; handleIndex : Integer) return UniformLightPositionOpenGLProcessor_Access;
   procedure process (This : in out UniformLightPositionOpenGLProcessor; gl_Param : access GL10_Package.GL10'Class; unused_Param : access Java_Object'Class);

end org.allbinary.graphics.opengles.shader.UniformLightPositionOpenGLProcessor_Package;


