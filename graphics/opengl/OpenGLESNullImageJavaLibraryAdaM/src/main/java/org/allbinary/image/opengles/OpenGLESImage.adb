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


with javax.microedition.lcdui.NullImage_Package; use javax.microedition.lcdui.NullImage_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;

package body org.allbinary.image.opengles.OpenGLESImage_Package is

   package NullImage_Package renames Standard.javax.microedition.lcdui.NullImage_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   procedure Initialize_Fields (This : in out OpenGLESImage'Class) is
   begin
      null;
      This.commonStrings := CommonStrings_Package.getInstance;
      
      
      This.openGLESImageProperties := OpenGLESImageProperties_Package.Create;
      This.imageProcessor := OpenGLESImageProcessor_Package.getInstance;
      This.openGLESImageTranslate := OpenGLESImageTranslate_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out OpenGLESImage'Class; image_Param : access Image_Package.Image'Class; bitmapFactory_Param : access PlatformBitmapBaseFactory_Package.PlatformBitmapBaseFactory'Class; textureFactory_Param : access PlatformTextureBaseFactory_Package.PlatformTextureBaseFactory'Class) is
      image : constant Image_Access := Image_Access (image_Param);
      bitmapFactory : constant PlatformBitmapBaseFactory_Access := PlatformBitmapBaseFactory_Access (bitmapFactory_Param);
      textureFactory : constant PlatformTextureBaseFactory_Access := PlatformTextureBaseFactory_Access (textureFactory_Param);
   begin
      Image_Package.Initialize (This);
      Initialize_Fields (This);
        This.openGLBitmap := bitmapFactory.createBitmap (image);
        This.textureFactory := textureFactory;
   end Initialize;

   function Create (image_Param : access Image_Package.Image'Class; bitmapFactory_Param : access PlatformBitmapBaseFactory_Package.PlatformBitmapBaseFactory'Class; textureFactory_Param : access PlatformTextureBaseFactory_Package.PlatformTextureBaseFactory'Class) return OpenGLESImage_Access is
      This : constant OpenGLESImage_Access := new OpenGLESImage;
   begin
      OpenGLESImage_Package.Initialize (This.all, image_Param, bitmapFactory_Param, textureFactory_Param);
      return This;
   end Create;

   --  throws Exception
   procedure set (This : in out OpenGLESImage; gl_Param : access GL_Package.GL'Class) is
      gl : constant GL_Access := GL_Access (gl_Param);
   begin
        Java_Throw (Java_New_Exception ("Exception", This.commonStrings.NOT_IMPLEMENTED));
   end set;

   function initTexture (This : in out OpenGLESImage; gl_Param : access GL10_Package.GL10'Class) return Boolean is
      gl : constant GL10_Access := GL10_Access (gl_Param);
   begin
        return False;
   end initTexture;

   procedure drawRegion (This : in out OpenGLESImage; gl_Param : access GL10_Package.GL10'Class; viewHeight : Integer; x_src : Float; y_src : Float; width : Float; height : Float; x : Integer; y : Integer; z : Integer) is
      gl : constant GL10_Access := GL10_Access (gl_Param);
   begin
        null;
   end drawRegion;

   procedure draw (This : in out OpenGLESImage; gl_Param : access GL10_Package.GL10'Class; x : Integer; y : Integer; z : Integer) is
      gl : constant GL10_Access := GL10_Access (gl_Param);
   begin
        null;
   end draw;

   function getType (This : in out OpenGLESImage) return Integer is
   begin
        return OpenGLESImage_Package.TYPE_Id;
   end getType;

   procedure initTexture (This : in out OpenGLESImage; gl_Param : access GL10_Package.GL10'Class) is
      Java_Result : constant Boolean := OpenGLESImage'Class (This).initTexture (gl_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end initTexture;

begin
   null;
   NULL_OPENGL_IMAGE := OpenGLESImage_Package.Create (NullImage_Package.NULL_IMAGE, PlatformBitmapBaseFactory_Package.NULL_PLATFORM_BITMAP_BASE_FACTORY, PlatformTextureBaseFactory_Package.NULL_PLATFORM_TEXTURE_BASE_FACTORY);
   texture2dList := BasicArrayList_Access (BasicArrayListD_Package.Create);
   TYPE_Id := 4;

end org.allbinary.image.opengles.OpenGLESImage_Package;


