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



package body org.allbinary.image.opengles.OpenGLESImageProcessor_Package is

   procedure Initialize_Fields (This : in out OpenGLESImageProcessor'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out OpenGLESImageProcessor'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return OpenGLESImageProcessor_Access is
      This : constant OpenGLESImageProcessor_Access := new OpenGLESImageProcessor;
   begin
      OpenGLESImageProcessor_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return OpenGLESImageProcessor_Access is
   begin
        return OpenGLESImageProcessor_Package.instance;
   end getInstance;

   procedure translate (This : in out OpenGLESImageProcessor; gl_Param : access GL10_Package.GL10'Class; translateX : Float; translateY : Float) is
      gl : constant GL10_Access := GL10_Access (gl_Param);
   begin
        gl.glTranslatef (translateX, translateY, 0);
   end translate;

   procedure rotate (This : in out OpenGLESImageProcessor; gl_Param : access GL10_Package.GL10'Class; angle : Float) is
      gl : constant GL10_Access := GL10_Access (gl_Param);
   begin
        gl.glRotatef (-(angle), 0, 0, 1);
   end rotate;

   procedure scale (This : in out OpenGLESImageProcessor; gl_Param : access GL10_Package.GL10'Class; scaleX : Float; scaleY : Float) is
      gl : constant GL10_Access := GL10_Access (gl_Param);
   begin
        gl.glScalef (scaleX, scaleY, 1);
   end scale;

   procedure colorMask (This : in out OpenGLESImageProcessor; gl_Param : access GL10_Package.GL10'Class; red : Float; green : Float; blue : Float; alpha : Float) is
      gl : constant GL10_Access := GL10_Access (gl_Param);
   begin
        null;
   end colorMask;

begin
   null;
   instance := OpenGLESImageProcessor_Package.Create;

end org.allbinary.image.opengles.OpenGLESImageProcessor_Package;


