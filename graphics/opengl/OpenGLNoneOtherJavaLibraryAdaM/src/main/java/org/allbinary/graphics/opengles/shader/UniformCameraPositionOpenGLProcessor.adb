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


   procedure Initialize (This : in out UniformCameraPositionOpenGLProcessor'Class; shaderComposite : ShaderComposite_Access; handleIndex : Integer) is
   begin
      OpenGLObject3dProcessor_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create (shaderComposite : ShaderComposite_Access; handleIndex : Integer) return UniformCameraPositionOpenGLProcessor_Access is
      This : constant UniformCameraPositionOpenGLProcessor_Access := new UniformCameraPositionOpenGLProcessor;
   begin
      Initialize (This.all, shaderComposite, handleIndex);
      return This;
   end Create;

   procedure process (This : in out UniformCameraPositionOpenGLProcessor; gl : GL10_Access; anyType : Java_Object_Access) is
   begin
        null;
   end process;

end org.allbinary.graphics.opengles.shader.UniformCameraPositionOpenGLProcessor_Package;


