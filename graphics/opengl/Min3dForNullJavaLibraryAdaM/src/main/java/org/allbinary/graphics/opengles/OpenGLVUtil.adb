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


package body org.allbinary.graphics.opengles.OpenGLVUtil_Package is

   procedure Initialize_Fields (This : in out OpenGLVUtil'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out OpenGLVUtil'Class) is
   begin
      OpenGLVUtilBase_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return OpenGLVUtil_Access is
      This : constant OpenGLVUtil_Access := new OpenGLVUtil;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return OpenGLVUtil_Access is
   begin
        return OpenGLVUtil_Package.instance;
   end getInstance;

   procedure getInstance is
      Java_Result : constant OpenGLVUtil_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := OpenGLVUtil_Package.Create;

end org.allbinary.graphics.opengles.OpenGLVUtil_Package;


