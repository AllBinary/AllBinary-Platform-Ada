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


package body org.allbinary.image.opengles.OpenGLESImageDraw_Package is

   procedure Initialize_Fields (This : in out OpenGLESImageDraw'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out OpenGLESImageDraw'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return OpenGLESImageDraw_Access is
      This : constant OpenGLESImageDraw_Access := new OpenGLESImageDraw;
   begin
      OpenGLESImageDraw_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return OpenGLESImageDraw_Access is
   begin
        return OpenGLESImageDraw_Package.instance;
   end getInstance;

   procedure drawRegion (This : in out OpenGLESImageDraw; gl_Param : access GL10_Package.GL10'Class; viewHeight : Integer; x_src : Float; y_src : Float; width : Float; height : Float; x : Integer; y : Integer; z : Integer) is
      gl : constant GL10_Access := GL10_Access (gl_Param);
   begin
        null;
   end drawRegion;

   procedure draw (This : in out OpenGLESImageDraw; gl_Param : access GL10_Package.GL10'Class; x : Integer; y : Integer; z : Integer) is
      gl : constant GL10_Access := GL10_Access (gl_Param);
   begin
        null;
   end draw;

begin
   null;
   instance := OpenGLESImageDraw_Package.Create;

end org.allbinary.image.opengles.OpenGLESImageDraw_Package;


