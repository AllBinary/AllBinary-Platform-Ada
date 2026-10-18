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



package body org.allbinary.image.opengles.OpenGLESImageProperties_Package is

   procedure Initialize_Fields (This : in out OpenGLESImageProperties'Class) is
   begin
      null;
      This.textureID := -(1);
      This.scaleX := 1.0;
      This.scaleY := 1.0;
      This.scaleX2 := 1.0;
      This.scaleY2 := 1.0;
      This.angle := 0;
      This.redf := 1.0;
      This.greenf := 1.0;
      This.bluef := 1.0;
      This.alphaf := 1.0;
   end Initialize_Fields;

   procedure Initialize (This : in out OpenGLESImageProperties'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return OpenGLESImageProperties_Access is
      This : constant OpenGLESImageProperties_Access := new OpenGLESImageProperties;
   begin
      OpenGLESImageProperties_Package.Initialize (This.all);
      return This;
   end Create;


end org.allbinary.image.opengles.OpenGLESImageProperties_Package;


