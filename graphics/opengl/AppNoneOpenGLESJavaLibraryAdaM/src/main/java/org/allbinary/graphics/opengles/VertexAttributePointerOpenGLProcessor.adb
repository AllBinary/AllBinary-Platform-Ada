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


package body org.allbinary.graphics.opengles.VertexAttributePointerOpenGLProcessor_Package is

   procedure Initialize_Fields (This : in out VertexAttributePointerOpenGLProcessor'Class) is
   begin
      null;
   end Initialize_Fields;


   function getInstance return VertexAttributePointerOpenGLProcessor_Access is
   begin
        return VertexAttributePointerOpenGLProcessor_Package.instance;
   end getInstance;

   procedure Initialize (This : in out VertexAttributePointerOpenGLProcessor'Class) is
   begin
      ObjectThreedOpenGLProcessor_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return VertexAttributePointerOpenGLProcessor_Access is
      This : constant VertexAttributePointerOpenGLProcessor_Access := new VertexAttributePointerOpenGLProcessor;
   begin
      VertexAttributePointerOpenGLProcessor_Package.Initialize (This.all);
      return This;
   end Create;

   procedure process (This : in out VertexAttributePointerOpenGLProcessor; gl : GL10_Access; anyType : Java_Object_Access) is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end process;

begin
   null;
   instance := VertexAttributePointerOpenGLProcessor_Package.Create;

end org.allbinary.graphics.opengles.VertexAttributePointerOpenGLProcessor_Package;


