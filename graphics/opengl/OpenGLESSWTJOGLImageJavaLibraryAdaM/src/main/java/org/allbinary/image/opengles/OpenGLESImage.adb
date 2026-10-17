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
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      
      
      This.imageProcessor := OpenGLESImageProcessor_Package.getInstance;
      This.openGLESImageTranslate := OpenGLESImageTranslate_Package.getInstance;
      This.openGLESImageProperties := OpenGLESImageProperties_Package.Create;
   end Initialize_Fields;


   procedure Initialize (This : in out OpenGLESImage'Class; image_Param : access Image_Package.Image'Class; bitmapFactory_Param : access PlatformBitmapBaseFactory_Package.PlatformBitmapBaseFactory'Class; textureFactory_Param : access PlatformTextureBaseFactory_Package.PlatformTextureBaseFactory'Class) is
      image : constant Image_Access := Image_Access (image_Param);
      bitmapFactory : constant PlatformBitmapBaseFactory_Access := PlatformBitmapBaseFactory_Access (bitmapFactory_Param);
      textureFactory : constant PlatformTextureBaseFactory_Access := PlatformTextureBaseFactory_Access (textureFactory_Param);
   begin
        Image_Package.Initialize (This, image.getName, PostLoadImageProcessor_Package.NULL_POST_LOAD_IMAGE_PROCESSOR);
        Initialize_Fields (This);
        This.openGLBitmap := bitmapFactory.createBitmap (image);
        This.textureFactory := textureFactory;
        OpenGLImageCacheFactory_Package.getInstance.init (OpenGLESImage_Access'(This'Unchecked_Access));
        This.platformImage := OpenGLESPostLoadPlatformImage_Package.getInstance;
   end Initialize;

   function Create (image_Param : access Image_Package.Image'Class; bitmapFactory_Param : access PlatformBitmapBaseFactory_Package.PlatformBitmapBaseFactory'Class; textureFactory_Param : access PlatformTextureBaseFactory_Package.PlatformTextureBaseFactory'Class) return OpenGLESImage_Access is
      This : constant OpenGLESImage_Access := new OpenGLESImage;
   begin
      OpenGLESImage_Package.Initialize (This.all, image_Param, bitmapFactory_Param, textureFactory_Param);
      return This;
   end Create;

   function getHeight (This : in out OpenGLESImage) return Integer is
   begin
        return Integer (((This.openGLBitmap.getHeight) * (This.openGLESImageProperties.scaleY2)));
   end getHeight;

   function getWidth (This : in out OpenGLESImage) return Integer is
   begin
        return Integer (((This.openGLBitmap.getWidth) * (This.openGLESImageProperties.scaleX2)));
   end getWidth;

   --  throws Exception
   procedure set (This : in out OpenGLESImage; gl_Param : access GL_Package.GL'Class) is
      gl : constant GL_Access := GL_Access (gl_Param);
   begin
        Java_Throw (Java_New_Exception ("Exception", This.commonStrings.NOT_IMPLEMENTED));
   end set;

   function initTexture (This : in out OpenGLESImage; gl_Param : access GL10_Package.GL10'Class) return Boolean is
      gl : constant GL10_Access := GL10_Access (gl_Param);
      textures : Integer_Array_Access;
   begin
        if not (OpenGLESImage_Package.texture2dList.contains (OpenGLESImage_Access'(This'Unchecked_Access))) then
            OpenGLESImage_Package.texture2dList.add (OpenGLESImage_Access'(This'Unchecked_Access));
            textures := new Integer_Array'(0 .. (1) - 1 => 0);
            gl.glEnable (GL10.GL_TEXTURE_2D);
            if (This.openGLESImageProperties.textureID) /= (-(1)) then
                textures (0) := This.openGLESImageProperties.textureID;
                gl.glDeleteTextures (1, textures, 0);
            end if;
            gl.glGenTextures (1, textures, 0);
            This.openGLESImageProperties.textureID := textures (0);
            gl.glBindTexture (GL10.GL_TEXTURE_2D, This.openGLESImageProperties.textureID);
            gl.glTexParameterf (GL10.GL_TEXTURE_2D, GL10.GL_TEXTURE_MIN_FILTER, GL10.GL_NEAREST);
            gl.glTexParameterf (GL10.GL_TEXTURE_2D, GL10.GL_TEXTURE_WRAP_S, GL10.GL_CLAMP_TO_EDGE);
            gl.glTexParameterf (GL10.GL_TEXTURE_2D, GL10.GL_TEXTURE_WRAP_T, GL10.GL_CLAMP_TO_EDGE);
            return True;
        end if;
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

   function toString (This : in out OpenGLESImage) return Unbounded_String is
      graphicsStrings : GraphicsStrings_Access;
   begin
        graphicsStrings := GraphicsStrings_Package.getInstance;
        return StringMaker_Package.Create.append (This.getName).append (Image (This).toString).append (graphicsStrings.OPACITY).appendfloat (Float (This.openGLESImageProperties.alphaf)).toString;
   end toString;

   procedure initTexture (This : in out OpenGLESImage; gl_Param : access GL10_Package.GL10'Class) is
      Java_Result : constant Boolean := OpenGLESImage'Class (This).initTexture (gl_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end initTexture;

begin
   null;
   NULL_OPENGL_IMAGE := OpenGLESImage_Package.Create (NullImage_Package.NULL_IMAGE, PlatformBitmapBaseFactory_Package.NULL_PLATFORM_BITMAP_BASE_FACTORY, PlatformTextureBaseFactory_Package.NULL_PLATFORM_TEXTURE_BASE_FACTORY);
   texture2dList := BasicArrayListD_Package.Create;
   TYPE_Id := 4;

end org.allbinary.image.opengles.OpenGLESImage_Package;


