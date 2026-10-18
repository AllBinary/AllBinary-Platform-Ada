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



package body org.allbinary.image.opengles.ModifierOpenGLESImageProcessor_Package is

   procedure Initialize_Fields (This : in out ModifierOpenGLESImageProcessor'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out ModifierOpenGLESImageProcessor'Class) is
   begin
      OpenGLESImageProcessor_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return ModifierOpenGLESImageProcessor_Access is
      This : constant ModifierOpenGLESImageProcessor_Access := new ModifierOpenGLESImageProcessor;
   begin
      ModifierOpenGLESImageProcessor_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return ModifierOpenGLESImageProcessor_Access is
   begin
        return ModifierOpenGLESImageProcessor_Package.instanceC;
   end getInstance;

   procedure colorMask (This : in out ModifierOpenGLESImageProcessor; gl_Param : access GL10_Package.GL10'Class; red : Float; green : Float; blue : Float; alpha : Float) is
      gl : constant GL10_Access := GL10_Access (gl_Param);
   begin
        gl.glColor4f (red, green, blue, alpha);
   end colorMask;

begin
   null;
   instanceC := ModifierOpenGLESImageProcessor_Package.Create;

end org.allbinary.image.opengles.ModifierOpenGLESImageProcessor_Package;


