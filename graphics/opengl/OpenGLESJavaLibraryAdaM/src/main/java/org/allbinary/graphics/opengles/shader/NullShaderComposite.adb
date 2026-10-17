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

   procedure Initialize (This : in out NullShaderComposite'Class; requiresOpenGLVersion : Unbounded_String; shaderArray : Shader_Access_Array_Access; compositeShaderUpdater : CompositeShaderUpdater_Access; shaderInitializer : ShaderInitializer_Access; modelViewProjection : ModelViewProjection_Access; colorOpenGLProcessor : OpenGLProcessor_Access; vertexOpenGLProcessor : OpenGLProcessor_Access; disableProgramShaderOpenGLProcessor : OpenGLProcessor_Access) is
   begin
        ShaderComposite_Package.Initialize (This, requiresOpenGLVersion, shaderArray, compositeShaderUpdater, shaderInitializer, modelViewProjection, colorOpenGLProcessor, vertexOpenGLProcessor, disableProgramShaderOpenGLProcessor);
        This.useProgramShaderOpenGLProcessor := NullOpenGLProcessorFactory_Package.getInstance;
   end Initialize;

   function Create (requiresOpenGLVersion : Unbounded_String; shaderArray : Shader_Access_Array_Access; compositeShaderUpdater : CompositeShaderUpdater_Access; shaderInitializer : ShaderInitializer_Access; modelViewProjection : ModelViewProjection_Access; colorOpenGLProcessor : OpenGLProcessor_Access; vertexOpenGLProcessor : OpenGLProcessor_Access; disableProgramShaderOpenGLProcessor : OpenGLProcessor_Access) return NullShaderComposite_Access is
      This : constant NullShaderComposite_Access := new NullShaderComposite;
   begin
      NullShaderComposite_Package.Initialize (This.all, requiresOpenGLVersion, shaderArray, compositeShaderUpdater, shaderInitializer, modelViewProjection, colorOpenGLProcessor, vertexOpenGLProcessor, disableProgramShaderOpenGLProcessor);
      return This;
   end Create;

begin
   null;
   instance := NullShaderComposite_Package.Create (OpenGLCapabilities_Package.getInstance.VERSION_2_0, new Shader_Access_Array'(Shader_Package.Create, Shader_Package.Create), CompositeShaderUpdater_Package.getInstance, ShaderInitializer_Package.getInstance, ModelViewProjection_Package.getInstance, null, null, NullOpenGLProcessorFactory_Package.getInstance)  --  Java anonymous class body: implement it as a named type
--          
--     procedure init (This : in out ; gl : GL10_Access) is
--     begin
--              null;
--     end init;
;

end org.allbinary.graphics.opengles.shader.NullShaderComposite_Package;


