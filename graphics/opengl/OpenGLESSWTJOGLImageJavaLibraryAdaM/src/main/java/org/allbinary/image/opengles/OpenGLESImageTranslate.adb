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


package body org.allbinary.image.opengles.OpenGLESImageTranslate_Package is

   procedure Initialize_Fields (This : in out OpenGLESImageTranslate'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out OpenGLESImageTranslate'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return OpenGLESImageTranslate_Access is
      This : constant OpenGLESImageTranslate_Access := new OpenGLESImageTranslate;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return OpenGLESImageTranslate_Access is
   begin
        return OpenGLESImageTranslate_Package.instance;
   end getInstance;

   procedure translate (This : in out OpenGLESImageTranslate; gl : GL10_Access; openGLESImage : OpenGLESImage_Access; x : Float; y : Float) is
   begin
        openGLESImage.imageProcessor.translate (gl, x, y);
   end translate;

   procedure translate2 (This : in out OpenGLESImageTranslate; gl : GL10_Access; openGLESImage : OpenGLESImage_Access) is
   begin
        null;
   end translate2;

   procedure getInstance is
      Java_Result : constant OpenGLESImageTranslate_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := OpenGLESImageTranslate_Package.Create;

end org.allbinary.image.opengles.OpenGLESImageTranslate_Package;


