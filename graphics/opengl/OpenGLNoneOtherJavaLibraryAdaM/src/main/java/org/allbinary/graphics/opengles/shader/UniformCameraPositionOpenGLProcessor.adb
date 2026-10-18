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



package body org.allbinary.graphics.opengles.shader.UniformCameraPositionOpenGLProcessor_Package is

   procedure Initialize_Fields (This : in out UniformCameraPositionOpenGLProcessor'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out UniformCameraPositionOpenGLProcessor'Class; shaderComposite_Param : access ShaderComposite_Package.ShaderComposite'Class; handleIndex : Integer) is
      shaderComposite : constant ShaderComposite_Access := ShaderComposite_Access (shaderComposite_Param);
   begin
      OpenGLObject3dProcessor_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create (shaderComposite_Param : access ShaderComposite_Package.ShaderComposite'Class; handleIndex : Integer) return UniformCameraPositionOpenGLProcessor_Access is
      This : constant UniformCameraPositionOpenGLProcessor_Access := new UniformCameraPositionOpenGLProcessor;
   begin
      UniformCameraPositionOpenGLProcessor_Package.Initialize (This.all, shaderComposite_Param, handleIndex);
      return This;
   end Create;

   procedure process (This : in out UniformCameraPositionOpenGLProcessor; gl_Param : access GL10_Package.GL10'Class; anyType_Param : access Java_Object'Class) is
      gl : constant GL10_Access := GL10_Access (gl_Param);
      anyType : constant Java_Object_Access := Java_Object_Access (anyType_Param);
   begin
        null;
   end process;

end org.allbinary.graphics.opengles.shader.UniformCameraPositionOpenGLProcessor_Package;


