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


package body org.allbinary.graphics.opengles.shader.NullOpenGLTextureProcessor_Package is

   procedure Initialize_Fields (This : in out NullOpenGLTextureProcessor'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out NullOpenGLTextureProcessor'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return NullOpenGLTextureProcessor_Access is
      This : constant NullOpenGLTextureProcessor_Access := new NullOpenGLTextureProcessor;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return OpenGLObject3dProcessor_Access is
   begin
        return NullOpenGLTextureProcessor_Package.instance;
   end getInstance;

   procedure getInstance is
      Java_Result : constant OpenGLObject3dProcessor_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := OpenGLObject3dProcessor_Package.Create;

end org.allbinary.graphics.opengles.shader.NullOpenGLTextureProcessor_Package;


