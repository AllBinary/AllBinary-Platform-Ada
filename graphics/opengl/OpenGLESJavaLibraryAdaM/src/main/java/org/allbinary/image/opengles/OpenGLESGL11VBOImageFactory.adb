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


package body org.allbinary.image.opengles.OpenGLESGL11VBOImageFactory_Package is

   procedure Initialize_Fields (This : in out OpenGLESGL11VBOImageFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out OpenGLESGL11VBOImageFactory'Class) is
   begin
      OpenGLImageFactory_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return OpenGLESGL11VBOImageFactory_Access is
      This : constant OpenGLESGL11VBOImageFactory_Access := new OpenGLESGL11VBOImageFactory;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getInstance (This : in out OpenGLESGL11VBOImageFactory; image : Image_Access; bitmapFactory : PlatformBitmapBaseFactory_Access; textureFactory : PlatformTextureBaseFactory_Access) return Image_Access is
   begin
        return OpenGLESGL10Image_Package.Create (image, bitmapFactory, textureFactory);
   end getInstance;

   procedure getInstance (This : in out OpenGLESGL11VBOImageFactory; image : Image_Access; bitmapFactory : PlatformBitmapBaseFactory_Access; textureFactory : PlatformTextureBaseFactory_Access) is
      Java_Result : constant Image_Access := OpenGLESGL11VBOImageFactory'Class (This).getInstance (image, bitmapFactory, textureFactory);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.image.opengles.OpenGLESGL11VBOImageFactory_Package;


