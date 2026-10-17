--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
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


package body org.allbinary.image.opengles.OpenGLESGL10ImageFactory_Package is

   procedure Initialize_Fields (This : in out OpenGLESGL10ImageFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out OpenGLESGL10ImageFactory'Class) is
   begin
      OpenGLImageFactory_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return OpenGLESGL10ImageFactory_Access is
      This : constant OpenGLESGL10ImageFactory_Access := new OpenGLESGL10ImageFactory;
   begin
      OpenGLESGL10ImageFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance (This : in out OpenGLESGL10ImageFactory; image_Param : access Image'Class; bitmapFactory_Param : access PlatformBitmapBaseFactory'Class; textureFactory_Param : access PlatformTextureBaseFactory'Class) return Image_Access is
      image : Image_Access := Image_Access (image_Param);
      bitmapFactory : PlatformBitmapBaseFactory_Access := PlatformBitmapBaseFactory_Access (bitmapFactory_Param);
      textureFactory : PlatformTextureBaseFactory_Access := PlatformTextureBaseFactory_Access (textureFactory_Param);
   begin
        return OpenGLESGL10Image_Package.Create (image, bitmapFactory, textureFactory);
   end getInstance;

   procedure getInstance (This : in out OpenGLESGL10ImageFactory; image_Param : access Image'Class; bitmapFactory_Param : access PlatformBitmapBaseFactory'Class; textureFactory_Param : access PlatformTextureBaseFactory'Class) is
      Java_Result : constant Image_Access := OpenGLESGL10ImageFactory'Class (This).getInstance (image_Param, bitmapFactory_Param, textureFactory_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.image.opengles.OpenGLESGL10ImageFactory_Package;


