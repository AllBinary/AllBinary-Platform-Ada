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
with org.allbinary.graphics.opengles.NullOpenGLProcessorFactory_Package; use org.allbinary.graphics.opengles.NullOpenGLProcessorFactory_Package;
with org.allbinary.graphics.opengles.OpenGLProcessor_Package; use org.allbinary.graphics.opengles.OpenGLProcessor_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.graphics.opengles.shader.Shader_Package; use org.allbinary.graphics.opengles.shader.Shader_Package;
with org.allbinary.graphics.opengles.shader.ShaderInitializer_Package; use org.allbinary.graphics.opengles.shader.ShaderInitializer_Package;
with org.allbinary.graphics.opengles.shader.CompositeShaderUpdater_Package; use org.allbinary.graphics.opengles.shader.CompositeShaderUpdater_Package;
with org.allbinary.graphics.opengles.shader.ModelViewProjection_Package; use org.allbinary.graphics.opengles.shader.ModelViewProjection_Package;
with org.allbinary.graphics.opengles.shader.NullOpenGLTextureProcessor_Package; use org.allbinary.graphics.opengles.shader.NullOpenGLTextureProcessor_Package;
with org.allbinary.graphics.opengles.shader.OpenGLObject3dProcessor_Package; use org.allbinary.graphics.opengles.shader.OpenGLObject3dProcessor_Package;

package org.allbinary.graphics.opengles.shader.ShaderComposite_Package is

   package NullOpenGLProcessorFactory_Package renames Standard.org.allbinary.graphics.opengles.NullOpenGLProcessorFactory_Package;
   package OpenGLProcessor_Package renames Standard.org.allbinary.graphics.opengles.OpenGLProcessor_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;

   type ShaderComposite is tagged;
   type ShaderComposite_Access is access all ShaderComposite'Class;
   type ShaderComposite_Access_Array is array (Natural range <>) of ShaderComposite_Access;
   type ShaderComposite_Access_Array_Access is access all ShaderComposite_Access_Array;

   type ShaderComposite is new Java_Object with record
      disableProgramShaderOpenGLProcessor : OpenGLProcessor_Access;
      requiresOpenGLVersion : Unbounded_String;
      shaderArray : Shader_Access_Array_Access;
      shaderInitializer : ShaderInitializer_Access;
      compositeShaderUpdater : CompositeShaderUpdater_Access;
      modelViewProjection : ModelViewProjection_Access;
      colorOpenGLProcessor : OpenGLProcessor_Access;
      vertexOpenGLProcessor : OpenGLProcessor_Access;
      useProgramShaderOpenGLProcessor : OpenGLProcessor_Access;
      shaderMatrixOpenGLProcessor : OpenGLProcessor_Access;
      colorEnableVertexAttribArrayOpenGLProcessor : OpenGLProcessor_Access;
      normalEnableVertexAttribArrayOpenGLProcessor : OpenGLProcessor_Access;
      vertexEnableVertexAttribArrayOpenGLProcessor : OpenGLProcessor_Access;
      textureEnableVertexAttribArrayOpenGLProcessor : OpenGLProcessor_Access;
      colorDisableVertexAttribArrayOpenGLProcessor : OpenGLProcessor_Access;
      normalDisableVertexAttribArrayOpenGLProcessor : OpenGLProcessor_Access;
      vertexDisableVertexAttribArrayOpenGLProcessor : OpenGLProcessor_Access;
      textureDisableVertexAttribArrayOpenGLProcessor : OpenGLProcessor_Access;
      uniformLightPositionOpenGLProcessor : OpenGLObject3dProcessor_Access;
      uniformLightColorOpenGLProcessor : OpenGLObject3dProcessor_Access;
      uniformCameraPositionOpenGLProcessor : OpenGLObject3dProcessor_Access;
      uniformTextureUnitOpenGLProcessor : OpenGLObject3dProcessor_Access;
      programHandle : Integer;
   end record;

   procedure Initialize (This : in out ShaderComposite'Class; requiresOpenGLVersion : Unbounded_String; shaderArray : Shader_Access_Array_Access; compositeShaderUpdater : CompositeShaderUpdater_Access; shaderInitializer : ShaderInitializer_Access; modelViewProjection : ModelViewProjection_Access; colorOpenGLProcessor : OpenGLProcessor_Access; vertexOpenGLProcessor : OpenGLProcessor_Access; disableProgramShaderOpenGLProcessor : OpenGLProcessor_Access);
   function Create (requiresOpenGLVersion : Unbounded_String; shaderArray : Shader_Access_Array_Access; compositeShaderUpdater : CompositeShaderUpdater_Access; shaderInitializer : ShaderInitializer_Access; modelViewProjection : ModelViewProjection_Access; colorOpenGLProcessor : OpenGLProcessor_Access; vertexOpenGLProcessor : OpenGLProcessor_Access; disableProgramShaderOpenGLProcessor : OpenGLProcessor_Access) return ShaderComposite_Access;
   procedure init (This : in out ShaderComposite; gl : GL10_Access);

end org.allbinary.graphics.opengles.shader.ShaderComposite_Package;


