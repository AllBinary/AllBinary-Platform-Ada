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


package body org.allbinary.graphics.opengles.shader.UniformTextureOpenGLProcessor_Package is

   procedure Initialize_Fields (This : in out UniformTextureOpenGLProcessor'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out UniformTextureOpenGLProcessor'Class; shaderComposite_Param : access ShaderComposite'Class; handleIndex : Integer) is
      shaderComposite : ShaderComposite_Access := ShaderComposite_Access (shaderComposite_Param);
   begin
      OpenGLObject3dProcessor_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create (shaderComposite_Param : access ShaderComposite'Class; handleIndex : Integer) return UniformTextureOpenGLProcessor_Access is
      This : constant UniformTextureOpenGLProcessor_Access := new UniformTextureOpenGLProcessor;
   begin
      UniformTextureOpenGLProcessor_Package.Initialize (This.all, shaderComposite_Param, handleIndex);
      return This;
   end Create;

   procedure process (This : in out UniformTextureOpenGLProcessor; gl_Param : access GL10'Class; unused_Param : access Java_Object'Class; index : Integer) is
      gl : GL10_Access := GL10_Access (gl_Param);
      unused : Java_Object_Access := Java_Object_Access (unused_Param);
   begin
        null;
   end process;

end org.allbinary.graphics.opengles.shader.UniformTextureOpenGLProcessor_Package;


