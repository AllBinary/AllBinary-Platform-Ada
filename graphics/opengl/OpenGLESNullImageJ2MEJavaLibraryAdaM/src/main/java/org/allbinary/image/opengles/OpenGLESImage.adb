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


package body org.allbinary.image.opengles.OpenGLESImage_Package is

   procedure Initialize_Fields (This : in out OpenGLESImage'Class) is
   begin
      null;
      This.commonStrings := CommonStrings_Package.getInstance;
      
      
      This.openGLESImageProperties := OpenGLESImageProperties_Package.Create;
   end Initialize_Fields;


   procedure Initialize (This : in out OpenGLESImage'Class; image : Image_Access; bitmapFactory : PlatformBitmapBaseFactory_Access; textureFactory : PlatformTextureBaseFactory_Access) is
   begin
      Initialize_Fields (This);
        This.openGLBitmap := bitmapFactory.createBitmap (image);
        This.textureFactory := textureFactory;
   end Initialize;

   function Create (image : Image_Access; bitmapFactory : PlatformBitmapBaseFactory_Access; textureFactory : PlatformTextureBaseFactory_Access) return OpenGLESImage_Access is
      This : constant OpenGLESImage_Access := new OpenGLESImage;
   begin
      Initialize (This.all, image, bitmapFactory, textureFactory);
      return This;
   end Create;

   --  throws Exception
   procedure set (This : in out OpenGLESImage; gl : GL_Access) is
   begin
        Java_Throw (Java_New_Exception ("Exception", This.commonStrings.NOT_IMPLEMENTED));
   end set;

   function initTexture (This : in out OpenGLESImage; gl : GL10_Access) return Boolean is
   begin
        return False;
   end initTexture;

   procedure drawRegion (This : in out OpenGLESImage; gl : GL10_Access; viewHeight : Integer; x_src : Float; y_src : Float; width : Float; height : Float; x : Integer; y : Integer; z : Integer) is
   begin
        null;
   end drawRegion;

   procedure draw (This : in out OpenGLESImage; gl : GL10_Access; x : Integer; y : Integer; z : Integer) is
   begin
        null;
   end draw;

   function getType (This : in out OpenGLESImage) return Integer is
   begin
        return OpenGLESImage_Package.TYPE_Id;
   end getType;

   procedure initTexture (This : in out OpenGLESImage; gl : GL10_Access) is
      Java_Result : constant Boolean := OpenGLESImage'Class (This).initTexture (gl);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end initTexture;

   procedure getType (This : in out OpenGLESImage) is
      Java_Result : constant Integer := OpenGLESImage'Class (This).getType;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getType;

begin
   null;
   NULL_OPENGL_IMAGE := OpenGLESImage_Package.Create (NullImage_Package.NULL_IMAGE, PlatformBitmapBaseFactory_Package.NULL_PLATFORM_BITMAP_BASE_FACTORY, PlatformTextureBaseFactory_Package.NULL_PLATFORM_TEXTURE_BASE_FACTORY);
   texture2dList := BasicArrayListD_Package.Create;
   TYPE_Id := 4;

end org.allbinary.image.opengles.OpenGLESImage_Package;


