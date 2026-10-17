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
      
      
      
      
      
      
      
      
      This.useProgramShaderOpenGLProcessor := NullOpenGLProcessorFactory_Package.getInstance;
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


   procedure Initialize (This : in out ShaderComposite'Class; requiresOpenGLVersion : Unbounded_String; shaderArray : Shader_Access_Array_Access; compositeShaderUpdater_Param : access CompositeShaderUpdater'Class; shaderInitializer_Param : access ShaderInitializer'Class; modelViewProjection_Param : access ModelViewProjection'Class; colorOpenGLProcessor_Param : access OpenGLProcessor'Class; vertexOpenGLProcessor_Param : access OpenGLProcessor'Class; disableProgramShaderOpenGLProcessor_Param : access OpenGLProcessor'Class) is
      compositeShaderUpdater : CompositeShaderUpdater_Access := CompositeShaderUpdater_Access (compositeShaderUpdater_Param);
      shaderInitializer : ShaderInitializer_Access := ShaderInitializer_Access (shaderInitializer_Param);
      modelViewProjection : ModelViewProjection_Access := ModelViewProjection_Access (modelViewProjection_Param);
      colorOpenGLProcessor : OpenGLProcessor_Access := OpenGLProcessor_Access (colorOpenGLProcessor_Param);
      vertexOpenGLProcessor : OpenGLProcessor_Access := OpenGLProcessor_Access (vertexOpenGLProcessor_Param);
      disableProgramShaderOpenGLProcessor : OpenGLProcessor_Access := OpenGLProcessor_Access (disableProgramShaderOpenGLProcessor_Param);
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

   function Create (requiresOpenGLVersion : Unbounded_String; shaderArray : Shader_Access_Array_Access; compositeShaderUpdater_Param : access CompositeShaderUpdater'Class; shaderInitializer_Param : access ShaderInitializer'Class; modelViewProjection_Param : access ModelViewProjection'Class; colorOpenGLProcessor_Param : access OpenGLProcessor'Class; vertexOpenGLProcessor_Param : access OpenGLProcessor'Class; disableProgramShaderOpenGLProcessor_Param : access OpenGLProcessor'Class) return ShaderComposite_Access is
      This : constant ShaderComposite_Access := new ShaderComposite;
   begin
      ShaderComposite_Package.Initialize (This.all, requiresOpenGLVersion, shaderArray, compositeShaderUpdater_Param, shaderInitializer_Param, modelViewProjection_Param, colorOpenGLProcessor_Param, vertexOpenGLProcessor_Param, disableProgramShaderOpenGLProcessor_Param);
      return This;
   end Create;

   procedure init (This : in out ShaderComposite; gl_Param : access GL10'Class) is
      gl : GL10_Access := GL10_Access (gl_Param);
   begin
        This.programHandle := This.shaderInitializer.init (gl, This.shaderArray, StringUtil_Package.getInstance.getArrayInstance);
   end init;

end org.allbinary.graphics.opengles.shader.ShaderComposite_Package;


