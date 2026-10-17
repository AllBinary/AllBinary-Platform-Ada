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
with org.allbinary.graphics.opengles.NullOpenGLProcessorFactory_Package; use org.allbinary.graphics.opengles.NullOpenGLProcessorFactory_Package;
with org.allbinary.graphics.opengles.OpenGLProcessor_Package; use org.allbinary.graphics.opengles.OpenGLProcessor_Package;
with org.allbinary.graphics.opengles.shader.ShaderComposite_Package; use org.allbinary.graphics.opengles.shader.ShaderComposite_Package;

package org.allbinary.graphics.opengles.shader.PlatformShaderComposite_Package is

   package NullOpenGLProcessorFactory_Package renames org.allbinary.graphics.opengles.NullOpenGLProcessorFactory_Package;
   package OpenGLProcessor_Package renames org.allbinary.graphics.opengles.OpenGLProcessor_Package;

   type PlatformShaderComposite is tagged;
   type PlatformShaderComposite_Access is access all PlatformShaderComposite'Class;
   type PlatformShaderComposite_Access_Array is array (Natural range <>) of PlatformShaderComposite_Access;
   type PlatformShaderComposite_Access_Array_Access is access all PlatformShaderComposite_Access_Array;

   type PlatformShaderComposite is new ShaderComposite with null record;

   procedure Initialize (This : in out PlatformShaderComposite'Class; requiresOpenGLVersion : Unbounded_String; shaderArray : Shader_Access_Array_Access; compositeShaderUpdater : CompositeShaderUpdater_Access; shaderInitializer : ShaderInitializer_Access; modelViewProjection : ModelViewProjection_Access; colorOpenGLProcessor : OpenGLProcessor_Access; vertexOpenGLProcessor : OpenGLProcessor_Access);
   function Create (requiresOpenGLVersion : Unbounded_String; shaderArray : Shader_Access_Array_Access; compositeShaderUpdater : CompositeShaderUpdater_Access; shaderInitializer : ShaderInitializer_Access; modelViewProjection : ModelViewProjection_Access; colorOpenGLProcessor : OpenGLProcessor_Access; vertexOpenGLProcessor : OpenGLProcessor_Access) return PlatformShaderComposite_Access;

end org.allbinary.graphics.opengles.shader.PlatformShaderComposite_Package;


