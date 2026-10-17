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


package body org.allbinary.graphics.opengles.WithNormalAttributePointerOpenGLProcessor_Package is

   procedure Initialize_Fields (This : in out WithNormalAttributePointerOpenGLProcessor'Class) is
   begin
      null;
   end Initialize_Fields;


   function getInstance return WithNormalAttributePointerOpenGLProcessor_Access is
   begin
        return WithNormalAttributePointerOpenGLProcessor_Package.instance;
   end getInstance;

   procedure Initialize (This : in out WithNormalAttributePointerOpenGLProcessor'Class) is
   begin
      ObjectThreedOpenGLProcessor_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return WithNormalAttributePointerOpenGLProcessor_Access is
      This : constant WithNormalAttributePointerOpenGLProcessor_Access := new WithNormalAttributePointerOpenGLProcessor;
   begin
      WithNormalAttributePointerOpenGLProcessor_Package.Initialize (This.all);
      return This;
   end Create;

   procedure process (This : in out WithNormalAttributePointerOpenGLProcessor; gl_Param : access GL10_Package.GL10'Class; aObject3d_Param : access Java_Object'Class) is
      gl : constant GL10_Access := GL10_Access (gl_Param);
      aObject3d : constant Java_Object_Access := Java_Object_Access (aObject3d_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end process;

begin
   null;
   instance := WithNormalAttributePointerOpenGLProcessor_Package.Create;

end org.allbinary.graphics.opengles.WithNormalAttributePointerOpenGLProcessor_Package;


