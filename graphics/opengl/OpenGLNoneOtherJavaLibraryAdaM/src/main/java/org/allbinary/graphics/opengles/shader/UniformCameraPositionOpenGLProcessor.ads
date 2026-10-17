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

package org.allbinary.graphics.opengles.shader.UniformCameraPositionOpenGLProcessor_Package is


   type UniformCameraPositionOpenGLProcessor is tagged;
   type UniformCameraPositionOpenGLProcessor_Access is access all UniformCameraPositionOpenGLProcessor'Class;
   type UniformCameraPositionOpenGLProcessor_Access_Array is array (Natural range <>) of UniformCameraPositionOpenGLProcessor_Access;
   type UniformCameraPositionOpenGLProcessor_Access_Array_Access is access all UniformCameraPositionOpenGLProcessor_Access_Array;

   type UniformCameraPositionOpenGLProcessor is new OpenGLObject3dProcessor with null record;

   procedure Initialize (This : in out UniformCameraPositionOpenGLProcessor'Class; shaderComposite_Param : access ShaderComposite_Package.ShaderComposite'Class; handleIndex : Integer);
   function Create (shaderComposite_Param : access ShaderComposite_Package.ShaderComposite'Class; handleIndex : Integer) return UniformCameraPositionOpenGLProcessor_Access;
   procedure process (This : in out UniformCameraPositionOpenGLProcessor; gl_Param : access GL10_Package.GL10'Class; anyType_Param : access Java_Object'Class);

end org.allbinary.graphics.opengles.shader.UniformCameraPositionOpenGLProcessor_Package;


