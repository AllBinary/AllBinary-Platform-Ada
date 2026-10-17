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


package body org.allbinary.image.opengles.OpenGLImageFactory_Package is

   procedure Initialize_Fields (This : in out OpenGLImageFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out OpenGLImageFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return OpenGLImageFactory_Access is
      This : constant OpenGLImageFactory_Access := new OpenGLImageFactory;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getInstance (This : in out OpenGLImageFactory; image : Image_Access; bitmapFactory : PlatformBitmapBaseFactory_Access; textureFactory : PlatformTextureBaseFactory_Access) return Image_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end getInstance;

   procedure getInstance (This : in out OpenGLImageFactory; image : Image_Access; bitmapFactory : PlatformBitmapBaseFactory_Access; textureFactory : PlatformTextureBaseFactory_Access) is
      Java_Result : constant Image_Access := OpenGLImageFactory'Class (This).getInstance (image, bitmapFactory, textureFactory);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   NULL_OPENGL_IMAGE_FACTORY := OpenGLImageFactory_Package.Create;

end org.allbinary.image.opengles.OpenGLImageFactory_Package;


