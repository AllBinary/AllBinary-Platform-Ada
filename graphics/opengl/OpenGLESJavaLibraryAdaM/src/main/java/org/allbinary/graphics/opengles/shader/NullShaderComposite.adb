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


package body org.allbinary.graphics.opengles.shader.NullShaderComposite_Package is

   procedure Initialize_Fields (This : in out NullShaderComposite'Class) is
   begin
      null;
   end Initialize_Fields;


   function getInstance return ShaderComposite_Access is
   begin
        return NullShaderComposite_Package.instance;
   end getInstance;

   procedure Initialize (This : in out NullShaderComposite'Class; requiresOpenGLVersion : Unbounded_String; shaderArray : Shader_Access_Array_Access; compositeShaderUpdater_Param : access CompositeShaderUpdater'Class; shaderInitializer_Param : access ShaderInitializer'Class; modelViewProjection_Param : access ModelViewProjection'Class; colorOpenGLProcessor_Param : access OpenGLProcessor'Class; vertexOpenGLProcessor_Param : access OpenGLProcessor'Class; disableProgramShaderOpenGLProcessor_Param : access OpenGLProcessor'Class) is
      compositeShaderUpdater : CompositeShaderUpdater_Access := CompositeShaderUpdater_Access (compositeShaderUpdater_Param);
      shaderInitializer : ShaderInitializer_Access := ShaderInitializer_Access (shaderInitializer_Param);
      modelViewProjection : ModelViewProjection_Access := ModelViewProjection_Access (modelViewProjection_Param);
      colorOpenGLProcessor : OpenGLProcessor_Access := OpenGLProcessor_Access (colorOpenGLProcessor_Param);
      vertexOpenGLProcessor : OpenGLProcessor_Access := OpenGLProcessor_Access (vertexOpenGLProcessor_Param);
      disableProgramShaderOpenGLProcessor : OpenGLProcessor_Access := OpenGLProcessor_Access (disableProgramShaderOpenGLProcessor_Param);
   begin
        ShaderComposite_Package.Initialize (This, requiresOpenGLVersion, shaderArray, compositeShaderUpdater, shaderInitializer, modelViewProjection, colorOpenGLProcessor, vertexOpenGLProcessor, disableProgramShaderOpenGLProcessor);
        This.useProgramShaderOpenGLProcessor := NullOpenGLProcessorFactory_Package.getInstance;
   end Initialize;

   function Create (requiresOpenGLVersion : Unbounded_String; shaderArray : Shader_Access_Array_Access; compositeShaderUpdater_Param : access CompositeShaderUpdater'Class; shaderInitializer_Param : access ShaderInitializer'Class; modelViewProjection_Param : access ModelViewProjection'Class; colorOpenGLProcessor_Param : access OpenGLProcessor'Class; vertexOpenGLProcessor_Param : access OpenGLProcessor'Class; disableProgramShaderOpenGLProcessor_Param : access OpenGLProcessor'Class) return NullShaderComposite_Access is
      This : constant NullShaderComposite_Access := new NullShaderComposite;
   begin
      NullShaderComposite_Package.Initialize (This.all, requiresOpenGLVersion, shaderArray, compositeShaderUpdater_Param, shaderInitializer_Param, modelViewProjection_Param, colorOpenGLProcessor_Param, vertexOpenGLProcessor_Param, disableProgramShaderOpenGLProcessor_Param);
      return This;
   end Create;

begin
   null;
   instance := NullShaderComposite_Package.Create (OpenGLCapabilities_Package.getInstance.VERSION_2_0, new Shader_Access_Array'(Shader_Package.Create, Shader_Package.Create), CompositeShaderUpdater_Package.getInstance, ShaderInitializer_Package.getInstance, ModelViewProjection_Package.getInstance, null, null, NullOpenGLProcessorFactory_Package.getInstance)  --  Java anonymous class body: implement it as a named type
--          
--     procedure init (This : in out ; gl_Param : access GL10'Class) is
--        gl : GL10_Access := GL10_Access (gl_Param);
--     begin
--              null;
--     end init;
;

end org.allbinary.graphics.opengles.shader.NullShaderComposite_Package;


