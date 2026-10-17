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


   procedure Initialize (This : in out OpenGLESImage'Class; image : Image_Access; bitmapFactory : PlatformBitmapBaseFactory_Access; textureFactory : PlatformTextureBaseFactory_Access) is
   begin
        Image_Package.Initialize (This, image.getName, PostLoadImageProcessor_Package.NULL_POST_LOAD_IMAGE_PROCESSOR);
        Initialize_Fields (This);
        This.openGLBitmap := bitmapFactory.createBitmap (image);
        This.textureFactory := textureFactory;
        OpenGLImageCacheFactory_Package.getInstance.init (This'Unchecked_Access);
        This.platformImage := OpenGLESPostLoadPlatformImage_Package.getInstance;
   end Initialize;

   function Create (image : Image_Access; bitmapFactory : PlatformBitmapBaseFactory_Access; textureFactory : PlatformTextureBaseFactory_Access) return OpenGLESImage_Access is
      This : constant OpenGLESImage_Access := new OpenGLESImage;
   begin
      Initialize (This.all, image, bitmapFactory, textureFactory);
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
   procedure set (This : in out OpenGLESImage; gl : GL_Access) is
   begin
        Java_Throw (Java_New_Exception ("Exception", This.commonStrings.NOT_IMPLEMENTED));
   end set;

   function initTexture (This : in out OpenGLESImage; gl : GL10_Access) return Boolean is
      textures : Integer_Array_Access;
   begin
        if not (OpenGLESImage_Package.texture2dList.contains (This'Unchecked_Access)) then
            OpenGLESImage_Package.texture2dList.add (This'Unchecked_Access);
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

   function toString (This : in out OpenGLESImage) return Unbounded_String is
      graphicsStrings : GraphicsStrings_Access;
   begin
        graphicsStrings := GraphicsStrings_Package.getInstance;
        return StringMaker_Package.Create.append (This.getName).append (Image (This).toString).append (graphicsStrings.OPACITY).appendfloat (Float (This.openGLESImageProperties.alphaf)).toString;
   end toString;

   procedure getHeight (This : in out OpenGLESImage) is
      Java_Result : constant Integer := OpenGLESImage'Class (This).getHeight;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getHeight;

   procedure getWidth (This : in out OpenGLESImage) is
      Java_Result : constant Integer := OpenGLESImage'Class (This).getWidth;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getWidth;

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

   procedure toString (This : in out OpenGLESImage) is
      Java_Result : constant Unbounded_String := OpenGLESImage'Class (This).toString;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toString;

begin
   null;
   NULL_OPENGL_IMAGE := OpenGLESImage_Package.Create (NullImage_Package.NULL_IMAGE, PlatformBitmapBaseFactory_Package.NULL_PLATFORM_BITMAP_BASE_FACTORY, PlatformTextureBaseFactory_Package.NULL_PLATFORM_TEXTURE_BASE_FACTORY);
   texture2dList := BasicArrayListD_Package.Create;
   TYPE_Id := 4;

end org.allbinary.image.opengles.OpenGLESImage_Package;


