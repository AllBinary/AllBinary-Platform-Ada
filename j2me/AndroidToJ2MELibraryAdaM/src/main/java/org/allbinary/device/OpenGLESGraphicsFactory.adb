-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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


package body org.allbinary.device.OpenGLESGraphicsFactory_Package is

   procedure Initialize_Fields (This : in out OpenGLESGraphicsFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out OpenGLESGraphicsFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return OpenGLESGraphicsFactory_Access is
      This : constant OpenGLESGraphicsFactory_Access := new OpenGLESGraphicsFactory;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getOpenGLESGraphicsInstance (This : in out OpenGLESGraphicsFactory) return OpenGLESGraphics_Access is
   begin
        return OpenGLESNullGraphicsFactory_Package.getInstance;
   end getOpenGLESGraphicsInstance;

   procedure getOpenGLESGraphicsInstance (This : in out OpenGLESGraphicsFactory) is
      Java_Result : constant OpenGLESGraphics_Access := OpenGLESGraphicsFactory'Class (This).getOpenGLESGraphicsInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getOpenGLESGraphicsInstance;

end org.allbinary.device.OpenGLESGraphicsFactory_Package;


