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


package body org.allbinary.graphics.opengles.shader.PlatformShaderComposite_Package is

   procedure Initialize_Fields (This : in out PlatformShaderComposite'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out PlatformShaderComposite'Class; requiresOpenGLVersion : Unbounded_String; shaderArray : Shader_Access_Array_Access; compositeShaderUpdater : CompositeShaderUpdater_Access; shaderInitializer : ShaderInitializer_Access; modelViewProjection : ModelViewProjection_Access; colorOpenGLProcessor : OpenGLProcessor_Access; vertexOpenGLProcessor : OpenGLProcessor_Access) is
   begin
        ShaderComposite_Package.Initialize (This, requiresOpenGLVersion, shaderArray, compositeShaderUpdater, shaderInitializer, modelViewProjection, colorOpenGLProcessor, vertexOpenGLProcessor, NullOpenGLProcessorFactory_Package.getInstance);
   end Initialize;

   function Create (requiresOpenGLVersion : Unbounded_String; shaderArray : Shader_Access_Array_Access; compositeShaderUpdater : CompositeShaderUpdater_Access; shaderInitializer : ShaderInitializer_Access; modelViewProjection : ModelViewProjection_Access; colorOpenGLProcessor : OpenGLProcessor_Access; vertexOpenGLProcessor : OpenGLProcessor_Access) return PlatformShaderComposite_Access is
      This : constant PlatformShaderComposite_Access := new PlatformShaderComposite;
   begin
      PlatformShaderComposite_Package.Initialize (This.all, requiresOpenGLVersion, shaderArray, compositeShaderUpdater, shaderInitializer, modelViewProjection, colorOpenGLProcessor, vertexOpenGLProcessor);
      return This;
   end Create;

end org.allbinary.graphics.opengles.shader.PlatformShaderComposite_Package;


