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


package body org.allbinary.graphics.opengles.vbo.TextureAttributePointerVBOOpenGLProcessor_Package is

   procedure Initialize_Fields (This : in out TextureAttributePointerVBOOpenGLProcessor'Class) is
   begin
      null;
   end Initialize_Fields;


   function getInstance return TextureAttributePointerVBOOpenGLProcessor_Access is
   begin
        return TextureAttributePointerVBOOpenGLProcessor_Package.instance;
   end getInstance;

   procedure Initialize (This : in out TextureAttributePointerVBOOpenGLProcessor'Class) is
   begin
      ObjectThreedOpenGLProcessor_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return TextureAttributePointerVBOOpenGLProcessor_Access is
      This : constant TextureAttributePointerVBOOpenGLProcessor_Access := new TextureAttributePointerVBOOpenGLProcessor;
   begin
      Initialize (This.all);
      return This;
   end Create;

   procedure process (This : in out TextureAttributePointerVBOOpenGLProcessor; gl : GL10_Access; anyType : Java_Object_Access) is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end process;

   procedure getInstance is
      Java_Result : constant TextureAttributePointerVBOOpenGLProcessor_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := TextureAttributePointerVBOOpenGLProcessor_Package.Create;

end org.allbinary.graphics.opengles.vbo.TextureAttributePointerVBOOpenGLProcessor_Package;


