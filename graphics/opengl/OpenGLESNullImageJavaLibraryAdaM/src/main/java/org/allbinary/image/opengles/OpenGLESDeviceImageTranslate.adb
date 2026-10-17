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


package body org.allbinary.image.opengles.OpenGLESDeviceImageTranslate_Package is

   procedure Initialize_Fields (This : in out OpenGLESDeviceImageTranslate'Class) is
   begin
      null;
      This.translateX := 0.0;
      This.translateY := 0.0;
      This.translateX2 := 0.0;
      This.translateY2 := 0.0;
   end Initialize_Fields;

   procedure Initialize (This : in out OpenGLESDeviceImageTranslate'Class) is
   begin
      OpenGLESImageTranslate_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return OpenGLESDeviceImageTranslate_Access is
      This : constant OpenGLESDeviceImageTranslate_Access := new OpenGLESDeviceImageTranslate;
   begin
      OpenGLESDeviceImageTranslate_Package.Initialize (This.all);
      return This;
   end Create;


   procedure translate (This : in out OpenGLESDeviceImageTranslate; gl_Param : access GL10'Class; openGLESImage_Param : access OpenGLESImage'Class; x : Float; y : Float) is
      gl : GL10_Access := GL10_Access (gl_Param);
      openGLESImage : OpenGLESImage_Access := OpenGLESImage_Access (openGLESImage_Param);
   begin
        openGLESImage.imageProcessor.translate (gl, (This.translateX) + (((openGLESImage.openGLESImageProperties.scaleX) * (x))), (This.translateY) + (((openGLESImage.openGLESImageProperties.scaleY) * (y))));
   end translate;

   procedure translate2 (This : in out OpenGLESDeviceImageTranslate; gl_Param : access GL10'Class; openGLESImage_Param : access OpenGLESImage'Class) is
      gl : GL10_Access := GL10_Access (gl_Param);
      openGLESImage : OpenGLESImage_Access := OpenGLESImage_Access (openGLESImage_Param);
   begin
        openGLESImage.imageProcessor.translate (gl, This.translateX2, This.translateY2);
   end translate2;

end org.allbinary.image.opengles.OpenGLESDeviceImageTranslate_Package;


