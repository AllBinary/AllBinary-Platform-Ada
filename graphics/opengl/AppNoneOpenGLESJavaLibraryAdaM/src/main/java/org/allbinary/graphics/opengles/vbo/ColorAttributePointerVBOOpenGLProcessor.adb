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


package body org.allbinary.graphics.opengles.vbo.ColorAttributePointerVBOOpenGLProcessor_Package is

   procedure Initialize_Fields (This : in out ColorAttributePointerVBOOpenGLProcessor'Class) is
   begin
      null;
   end Initialize_Fields;


   function getInstance return ColorAttributePointerVBOOpenGLProcessor_Access is
   begin
        return ColorAttributePointerVBOOpenGLProcessor_Package.instance;
   end getInstance;

   procedure Initialize (This : in out ColorAttributePointerVBOOpenGLProcessor'Class) is
   begin
      ObjectThreedOpenGLProcessor_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return ColorAttributePointerVBOOpenGLProcessor_Access is
      This : constant ColorAttributePointerVBOOpenGLProcessor_Access := new ColorAttributePointerVBOOpenGLProcessor;
   begin
      ColorAttributePointerVBOOpenGLProcessor_Package.Initialize (This.all);
      return This;
   end Create;

   procedure process (This : in out ColorAttributePointerVBOOpenGLProcessor; gl : GL10_Access; anyType : Java_Object_Access) is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end process;

begin
   null;
   instance := ColorAttributePointerVBOOpenGLProcessor_Package.Create;

end org.allbinary.graphics.opengles.vbo.ColorAttributePointerVBOOpenGLProcessor_Package;


