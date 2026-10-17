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
with org.allbinary.graphics.opengles.shader.ShaderUpdater_Package; use org.allbinary.graphics.opengles.shader.ShaderUpdater_Package;
with org.allbinary.graphics.opengles.shader.ShaderComposite_Package; use org.allbinary.graphics.opengles.shader.ShaderComposite_Package;
with org.allbinary.graphics.opengles.shader.ShaderOpenGLProcessor_Package; use org.allbinary.graphics.opengles.shader.ShaderOpenGLProcessor_Package;

package org.allbinary.graphics.opengles.shader.AppRendererShaderUpdaterFactory_Package is


   type AppRendererShaderUpdaterFactory is tagged;
   type AppRendererShaderUpdaterFactory_Access is access all AppRendererShaderUpdaterFactory'Class;
   type AppRendererShaderUpdaterFactory_Access_Array is array (Natural range <>) of AppRendererShaderUpdaterFactory_Access;
   type AppRendererShaderUpdaterFactory_Access_Array_Access is access all AppRendererShaderUpdaterFactory_Access_Array;

   type AppRendererShaderUpdaterFactory is new ShaderUpdater with record
      NULL_SHADER_COMPOSITE_ARRAY : ShaderComposite_Access_Array_Access;
      shaderCompositeArray : ShaderComposite_Access_Array_Access;
      shaderOpenGLProcessorArray : ShaderOpenGLProcessor_Access_Array_Access;
   end record;
   instanceC : AppRendererShaderUpdaterFactory_Access;

   procedure Initialize (This : in out AppRendererShaderUpdaterFactory'Class);
   function Create return AppRendererShaderUpdaterFactory_Access;
   function getInstance return AppRendererShaderUpdaterFactory_Access;
   function getTestShaders (This : in out AppRendererShaderUpdaterFactory) return ShaderOpenGLProcessor_Access_Array_Access;
   procedure setShaderComposite (This : in out AppRendererShaderUpdaterFactory; object3d : Java_Object_Access);

end org.allbinary.graphics.opengles.shader.AppRendererShaderUpdaterFactory_Package;


