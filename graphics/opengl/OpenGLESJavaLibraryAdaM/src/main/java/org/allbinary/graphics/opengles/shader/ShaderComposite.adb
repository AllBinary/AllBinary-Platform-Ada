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


package body org.allbinary.graphics.opengles.shader.ShaderComposite_Package is

   procedure Initialize_Fields (This : in out ShaderComposite'Class) is
   begin
      null;
      
      
      
      
      
      
      
      
      This.useProgramShaderOpenGLProcessor := null;
      This.shaderMatrixOpenGLProcessor := NullOpenGLProcessorFactory_Package.getInstance;
      This.colorEnableVertexAttribArrayOpenGLProcessor := NullOpenGLProcessorFactory_Package.getInstance;
      This.normalEnableVertexAttribArrayOpenGLProcessor := NullOpenGLProcessorFactory_Package.getInstance;
      This.vertexEnableVertexAttribArrayOpenGLProcessor := NullOpenGLProcessorFactory_Package.getInstance;
      This.textureEnableVertexAttribArrayOpenGLProcessor := NullOpenGLProcessorFactory_Package.getInstance;
      This.colorDisableVertexAttribArrayOpenGLProcessor := NullOpenGLProcessorFactory_Package.getInstance;
      This.normalDisableVertexAttribArrayOpenGLProcessor := NullOpenGLProcessorFactory_Package.getInstance;
      This.vertexDisableVertexAttribArrayOpenGLProcessor := NullOpenGLProcessorFactory_Package.getInstance;
      This.textureDisableVertexAttribArrayOpenGLProcessor := NullOpenGLProcessorFactory_Package.getInstance;
      This.uniformLightPositionOpenGLProcessor := NullOpenGLTextureProcessor_Package.getInstance;
      This.uniformLightColorOpenGLProcessor := NullOpenGLTextureProcessor_Package.getInstance;
      This.uniformCameraPositionOpenGLProcessor := NullOpenGLTextureProcessor_Package.getInstance;
      This.uniformTextureUnitOpenGLProcessor := NullOpenGLTextureProcessor_Package.getInstance;
      This.programHandle := 0;
   end Initialize_Fields;


   procedure Initialize (This : in out ShaderComposite'Class; requiresOpenGLVersion : Unbounded_String; shaderArray : Shader_Access_Array_Access; compositeShaderUpdater : CompositeShaderUpdater_Access; shaderInitializer : ShaderInitializer_Access; modelViewProjection : ModelViewProjection_Access; colorOpenGLProcessor : OpenGLProcessor_Access; vertexOpenGLProcessor : OpenGLProcessor_Access; disableProgramShaderOpenGLProcessor : OpenGLProcessor_Access) is
   begin
      Initialize_Fields (This);
        This.requiresOpenGLVersion := requiresOpenGLVersion;
        This.shaderArray := shaderArray;
        This.shaderInitializer := shaderInitializer;
        This.compositeShaderUpdater := compositeShaderUpdater;
        This.modelViewProjection := modelViewProjection;
        This.colorOpenGLProcessor := colorOpenGLProcessor;
        This.vertexOpenGLProcessor := vertexOpenGLProcessor;
        This.disableProgramShaderOpenGLProcessor := disableProgramShaderOpenGLProcessor;
   end Initialize;

   function Create (requiresOpenGLVersion : Unbounded_String; shaderArray : Shader_Access_Array_Access; compositeShaderUpdater : CompositeShaderUpdater_Access; shaderInitializer : ShaderInitializer_Access; modelViewProjection : ModelViewProjection_Access; colorOpenGLProcessor : OpenGLProcessor_Access; vertexOpenGLProcessor : OpenGLProcessor_Access; disableProgramShaderOpenGLProcessor : OpenGLProcessor_Access) return ShaderComposite_Access is
      This : constant ShaderComposite_Access := new ShaderComposite;
   begin
      ShaderComposite_Package.Initialize (This.all, requiresOpenGLVersion, shaderArray, compositeShaderUpdater, shaderInitializer, modelViewProjection, colorOpenGLProcessor, vertexOpenGLProcessor, disableProgramShaderOpenGLProcessor);
      return This;
   end Create;

   procedure init (This : in out ShaderComposite; gl : GL10_Access) is
   begin
        This.programHandle := This.shaderInitializer.init (gl, This.shaderArray, This.compositeShaderUpdater.attributeArray);
   end init;

end org.allbinary.graphics.opengles.shader.ShaderComposite_Package;


