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


with javax.microedition.khronos.opengles.GL_Package; use javax.microedition.khronos.opengles.GL_Package;
with javax.microedition.khronos.opengles.GL_Package_References;
with javax.microedition.khronos.opengles.GL10_Package; use javax.microedition.khronos.opengles.GL10_Package;
with javax.microedition.khronos.opengles.GL10_Package_References;
with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
with javax.microedition.lcdui.NullImage_Package; use javax.microedition.lcdui.NullImage_Package;
with javax.microedition.lcdui.OpenGLESPostLoadPlatformImage_Package; use javax.microedition.lcdui.OpenGLESPostLoadPlatformImage_Package;
with javax.microedition.lcdui.PostLoadImageProcessor_Package; use javax.microedition.lcdui.PostLoadImageProcessor_Package;
with org.allbinary.graphics.GraphicsStrings_Package; use org.allbinary.graphics.GraphicsStrings_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.platform.graphics.PlatformBitmapBase_Package; use org.allbinary.platform.graphics.PlatformBitmapBase_Package;
with org.allbinary.platform.graphics.PlatformBitmapBase_Package_References;
with org.allbinary.platform.graphics.PlatformBitmapBaseFactory_Package; use org.allbinary.platform.graphics.PlatformBitmapBaseFactory_Package;
with org.allbinary.platform.graphics.PlatformBitmapBaseFactory_Package_References;
with org.allbinary.platform.opengles.PlatformTextureBaseFactory_Package; use org.allbinary.platform.opengles.PlatformTextureBaseFactory_Package;
with org.allbinary.platform.opengles.PlatformTextureBaseFactory_Package_References;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.image.opengles.OpenGLESImageProcessor_Package; use org.allbinary.image.opengles.OpenGLESImageProcessor_Package;
with org.allbinary.image.opengles.OpenGLESImageProcessor_Package_References;
with org.allbinary.image.opengles.OpenGLESImageTranslate_Package; use org.allbinary.image.opengles.OpenGLESImageTranslate_Package;
with org.allbinary.image.opengles.OpenGLESImageTranslate_Package_References;
with org.allbinary.image.opengles.OpenGLESImageProperties_Package; use org.allbinary.image.opengles.OpenGLESImageProperties_Package;
with org.allbinary.image.opengles.OpenGLESImageProperties_Package_References;
with org.allbinary.image.opengles.OpenGLImageCacheFactory_Package; use org.allbinary.image.opengles.OpenGLImageCacheFactory_Package;
with org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.util.BasicArrayListS_Package;
with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.image.opengles.OpenGLESImageProcessor_Package;
with org.allbinary.image.opengles.OpenGLESImageProperties_Package;
with org.allbinary.image.opengles.OpenGLESImageTranslate_Package;
with org.allbinary.image.opengles.OpenGLImageCacheFactory_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.image.opengles.OpenGLESImage_Package is

   package NullImage_Package renames Standard.javax.microedition.lcdui.NullImage_Package;
   package OpenGLESPostLoadPlatformImage_Package renames Standard.javax.microedition.lcdui.OpenGLESPostLoadPlatformImage_Package;
   package PostLoadImageProcessor_Package renames Standard.javax.microedition.lcdui.PostLoadImageProcessor_Package;
   package GraphicsStrings_Package renames Standard.org.allbinary.graphics.GraphicsStrings_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   subtype GL_Access is javax.microedition.khronos.opengles.GL_Package_References.GL_Access;
   function "=" (Left, Right : GL_Access) return Boolean renames javax.microedition.khronos.opengles.GL_Package_References."=";
   subtype GL_Access_Array is javax.microedition.khronos.opengles.GL_Package_References.GL_Access_Array;
   function "=" (Left, Right : GL_Access_Array) return Boolean renames javax.microedition.khronos.opengles.GL_Package_References."=";
   subtype GL_Access_Array_Access is javax.microedition.khronos.opengles.GL_Package_References.GL_Access_Array_Access;
   function "=" (Left, Right : GL_Access_Array_Access) return Boolean renames javax.microedition.khronos.opengles.GL_Package_References."=";
   subtype GL_Access_Array_Access_Array is javax.microedition.khronos.opengles.GL_Package_References.GL_Access_Array_Access_Array;
   function "=" (Left, Right : GL_Access_Array_Access_Array) return Boolean renames javax.microedition.khronos.opengles.GL_Package_References."=";
   subtype GL_Access_Array_Access_Array_Access is javax.microedition.khronos.opengles.GL_Package_References.GL_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GL_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.khronos.opengles.GL_Package_References."=";
   subtype GL10_Access is javax.microedition.khronos.opengles.GL10_Package_References.GL10_Access;
   function "=" (Left, Right : GL10_Access) return Boolean renames javax.microedition.khronos.opengles.GL10_Package_References."=";
   subtype GL10_Access_Array is javax.microedition.khronos.opengles.GL10_Package_References.GL10_Access_Array;
   function "=" (Left, Right : GL10_Access_Array) return Boolean renames javax.microedition.khronos.opengles.GL10_Package_References."=";
   subtype GL10_Access_Array_Access is javax.microedition.khronos.opengles.GL10_Package_References.GL10_Access_Array_Access;
   function "=" (Left, Right : GL10_Access_Array_Access) return Boolean renames javax.microedition.khronos.opengles.GL10_Package_References."=";
   subtype GL10_Access_Array_Access_Array is javax.microedition.khronos.opengles.GL10_Package_References.GL10_Access_Array_Access_Array;
   function "=" (Left, Right : GL10_Access_Array_Access_Array) return Boolean renames javax.microedition.khronos.opengles.GL10_Package_References."=";
   subtype GL10_Access_Array_Access_Array_Access is javax.microedition.khronos.opengles.GL10_Package_References.GL10_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GL10_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.khronos.opengles.GL10_Package_References."=";
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   function "=" (Left, Right : LogUtil_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype PlatformBitmapBase_Access is org.allbinary.platform.graphics.PlatformBitmapBase_Package_References.PlatformBitmapBase_Access;
   function "=" (Left, Right : PlatformBitmapBase_Access) return Boolean renames org.allbinary.platform.graphics.PlatformBitmapBase_Package_References."=";
   subtype PlatformBitmapBase_Access_Array is org.allbinary.platform.graphics.PlatformBitmapBase_Package_References.PlatformBitmapBase_Access_Array;
   function "=" (Left, Right : PlatformBitmapBase_Access_Array) return Boolean renames org.allbinary.platform.graphics.PlatformBitmapBase_Package_References."=";
   subtype PlatformBitmapBase_Access_Array_Access is org.allbinary.platform.graphics.PlatformBitmapBase_Package_References.PlatformBitmapBase_Access_Array_Access;
   function "=" (Left, Right : PlatformBitmapBase_Access_Array_Access) return Boolean renames org.allbinary.platform.graphics.PlatformBitmapBase_Package_References."=";
   subtype PlatformBitmapBase_Access_Array_Access_Array is org.allbinary.platform.graphics.PlatformBitmapBase_Package_References.PlatformBitmapBase_Access_Array_Access_Array;
   function "=" (Left, Right : PlatformBitmapBase_Access_Array_Access_Array) return Boolean renames org.allbinary.platform.graphics.PlatformBitmapBase_Package_References."=";
   subtype PlatformBitmapBase_Access_Array_Access_Array_Access is org.allbinary.platform.graphics.PlatformBitmapBase_Package_References.PlatformBitmapBase_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PlatformBitmapBase_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.platform.graphics.PlatformBitmapBase_Package_References."=";
   subtype PlatformBitmapBaseFactory_Access is org.allbinary.platform.graphics.PlatformBitmapBaseFactory_Package_References.PlatformBitmapBaseFactory_Access;
   function "=" (Left, Right : PlatformBitmapBaseFactory_Access) return Boolean renames org.allbinary.platform.graphics.PlatformBitmapBaseFactory_Package_References."=";
   subtype PlatformBitmapBaseFactory_Access_Array is org.allbinary.platform.graphics.PlatformBitmapBaseFactory_Package_References.PlatformBitmapBaseFactory_Access_Array;
   function "=" (Left, Right : PlatformBitmapBaseFactory_Access_Array) return Boolean renames org.allbinary.platform.graphics.PlatformBitmapBaseFactory_Package_References."=";
   subtype PlatformBitmapBaseFactory_Access_Array_Access is org.allbinary.platform.graphics.PlatformBitmapBaseFactory_Package_References.PlatformBitmapBaseFactory_Access_Array_Access;
   function "=" (Left, Right : PlatformBitmapBaseFactory_Access_Array_Access) return Boolean renames org.allbinary.platform.graphics.PlatformBitmapBaseFactory_Package_References."=";
   subtype PlatformBitmapBaseFactory_Access_Array_Access_Array is org.allbinary.platform.graphics.PlatformBitmapBaseFactory_Package_References.PlatformBitmapBaseFactory_Access_Array_Access_Array;
   function "=" (Left, Right : PlatformBitmapBaseFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.platform.graphics.PlatformBitmapBaseFactory_Package_References."=";
   subtype PlatformBitmapBaseFactory_Access_Array_Access_Array_Access is org.allbinary.platform.graphics.PlatformBitmapBaseFactory_Package_References.PlatformBitmapBaseFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PlatformBitmapBaseFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.platform.graphics.PlatformBitmapBaseFactory_Package_References."=";
   subtype PlatformTextureBaseFactory_Access is org.allbinary.platform.opengles.PlatformTextureBaseFactory_Package_References.PlatformTextureBaseFactory_Access;
   function "=" (Left, Right : PlatformTextureBaseFactory_Access) return Boolean renames org.allbinary.platform.opengles.PlatformTextureBaseFactory_Package_References."=";
   subtype PlatformTextureBaseFactory_Access_Array is org.allbinary.platform.opengles.PlatformTextureBaseFactory_Package_References.PlatformTextureBaseFactory_Access_Array;
   function "=" (Left, Right : PlatformTextureBaseFactory_Access_Array) return Boolean renames org.allbinary.platform.opengles.PlatformTextureBaseFactory_Package_References."=";
   subtype PlatformTextureBaseFactory_Access_Array_Access is org.allbinary.platform.opengles.PlatformTextureBaseFactory_Package_References.PlatformTextureBaseFactory_Access_Array_Access;
   function "=" (Left, Right : PlatformTextureBaseFactory_Access_Array_Access) return Boolean renames org.allbinary.platform.opengles.PlatformTextureBaseFactory_Package_References."=";
   subtype PlatformTextureBaseFactory_Access_Array_Access_Array is org.allbinary.platform.opengles.PlatformTextureBaseFactory_Package_References.PlatformTextureBaseFactory_Access_Array_Access_Array;
   function "=" (Left, Right : PlatformTextureBaseFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.platform.opengles.PlatformTextureBaseFactory_Package_References."=";
   subtype PlatformTextureBaseFactory_Access_Array_Access_Array_Access is org.allbinary.platform.opengles.PlatformTextureBaseFactory_Package_References.PlatformTextureBaseFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PlatformTextureBaseFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.platform.opengles.PlatformTextureBaseFactory_Package_References."=";
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   function "=" (Left, Right : CommonStrings_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   function "=" (Left, Right : BasicArrayList_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype OpenGLESImageProcessor_Access is org.allbinary.image.opengles.OpenGLESImageProcessor_Package_References.OpenGLESImageProcessor_Access;
   function "=" (Left, Right : OpenGLESImageProcessor_Access) return Boolean renames org.allbinary.image.opengles.OpenGLESImageProcessor_Package_References."=";
   subtype OpenGLESImageProcessor_Access_Array is org.allbinary.image.opengles.OpenGLESImageProcessor_Package_References.OpenGLESImageProcessor_Access_Array;
   function "=" (Left, Right : OpenGLESImageProcessor_Access_Array) return Boolean renames org.allbinary.image.opengles.OpenGLESImageProcessor_Package_References."=";
   subtype OpenGLESImageProcessor_Access_Array_Access is org.allbinary.image.opengles.OpenGLESImageProcessor_Package_References.OpenGLESImageProcessor_Access_Array_Access;
   function "=" (Left, Right : OpenGLESImageProcessor_Access_Array_Access) return Boolean renames org.allbinary.image.opengles.OpenGLESImageProcessor_Package_References."=";
   subtype OpenGLESImageProcessor_Access_Array_Access_Array is org.allbinary.image.opengles.OpenGLESImageProcessor_Package_References.OpenGLESImageProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : OpenGLESImageProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.image.opengles.OpenGLESImageProcessor_Package_References."=";
   subtype OpenGLESImageProcessor_Access_Array_Access_Array_Access is org.allbinary.image.opengles.OpenGLESImageProcessor_Package_References.OpenGLESImageProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OpenGLESImageProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.image.opengles.OpenGLESImageProcessor_Package_References."=";
   subtype OpenGLESImageTranslate_Access is org.allbinary.image.opengles.OpenGLESImageTranslate_Package_References.OpenGLESImageTranslate_Access;
   function "=" (Left, Right : OpenGLESImageTranslate_Access) return Boolean renames org.allbinary.image.opengles.OpenGLESImageTranslate_Package_References."=";
   subtype OpenGLESImageTranslate_Access_Array is org.allbinary.image.opengles.OpenGLESImageTranslate_Package_References.OpenGLESImageTranslate_Access_Array;
   function "=" (Left, Right : OpenGLESImageTranslate_Access_Array) return Boolean renames org.allbinary.image.opengles.OpenGLESImageTranslate_Package_References."=";
   subtype OpenGLESImageTranslate_Access_Array_Access is org.allbinary.image.opengles.OpenGLESImageTranslate_Package_References.OpenGLESImageTranslate_Access_Array_Access;
   function "=" (Left, Right : OpenGLESImageTranslate_Access_Array_Access) return Boolean renames org.allbinary.image.opengles.OpenGLESImageTranslate_Package_References."=";
   subtype OpenGLESImageTranslate_Access_Array_Access_Array is org.allbinary.image.opengles.OpenGLESImageTranslate_Package_References.OpenGLESImageTranslate_Access_Array_Access_Array;
   function "=" (Left, Right : OpenGLESImageTranslate_Access_Array_Access_Array) return Boolean renames org.allbinary.image.opengles.OpenGLESImageTranslate_Package_References."=";
   subtype OpenGLESImageTranslate_Access_Array_Access_Array_Access is org.allbinary.image.opengles.OpenGLESImageTranslate_Package_References.OpenGLESImageTranslate_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OpenGLESImageTranslate_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.image.opengles.OpenGLESImageTranslate_Package_References."=";
   subtype OpenGLESImageProperties_Access is org.allbinary.image.opengles.OpenGLESImageProperties_Package_References.OpenGLESImageProperties_Access;
   function "=" (Left, Right : OpenGLESImageProperties_Access) return Boolean renames org.allbinary.image.opengles.OpenGLESImageProperties_Package_References."=";
   subtype OpenGLESImageProperties_Access_Array is org.allbinary.image.opengles.OpenGLESImageProperties_Package_References.OpenGLESImageProperties_Access_Array;
   function "=" (Left, Right : OpenGLESImageProperties_Access_Array) return Boolean renames org.allbinary.image.opengles.OpenGLESImageProperties_Package_References."=";
   subtype OpenGLESImageProperties_Access_Array_Access is org.allbinary.image.opengles.OpenGLESImageProperties_Package_References.OpenGLESImageProperties_Access_Array_Access;
   function "=" (Left, Right : OpenGLESImageProperties_Access_Array_Access) return Boolean renames org.allbinary.image.opengles.OpenGLESImageProperties_Package_References."=";
   subtype OpenGLESImageProperties_Access_Array_Access_Array is org.allbinary.image.opengles.OpenGLESImageProperties_Package_References.OpenGLESImageProperties_Access_Array_Access_Array;
   function "=" (Left, Right : OpenGLESImageProperties_Access_Array_Access_Array) return Boolean renames org.allbinary.image.opengles.OpenGLESImageProperties_Package_References."=";
   subtype OpenGLESImageProperties_Access_Array_Access_Array_Access is org.allbinary.image.opengles.OpenGLESImageProperties_Package_References.OpenGLESImageProperties_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OpenGLESImageProperties_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.image.opengles.OpenGLESImageProperties_Package_References."=";
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
        return Integer (((Float (This.openGLBitmap.getHeight)) * (This.openGLESImageProperties.scaleY2)));
   end getHeight;

   function getWidth (This : in out OpenGLESImage) return Integer is
   begin
        return Integer (((Float (This.openGLBitmap.getWidth)) * (This.openGLESImageProperties.scaleX2)));
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
            gl.glEnable (GL10_Package.GL_TEXTURE_2D);
            if (This.openGLESImageProperties.textureID) /= (-(1)) then
                textures (0) := This.openGLESImageProperties.textureID;
                gl.glDeleteTextures (1, textures, 0);
            end if;
            gl.glGenTextures (1, textures, 0);
            This.openGLESImageProperties.textureID := textures (0);
            gl.glBindTexture (GL10_Package.GL_TEXTURE_2D, This.openGLESImageProperties.textureID);
            gl.glTexParameterf (GL10_Package.GL_TEXTURE_2D, GL10_Package.GL_TEXTURE_MIN_FILTER, GL10_Package.GL_NEAREST);
            gl.glTexParameterf (GL10_Package.GL_TEXTURE_2D, GL10_Package.GL_TEXTURE_WRAP_S, GL10_Package.GL_CLAMP_TO_EDGE);
            gl.glTexParameterf (GL10_Package.GL_TEXTURE_2D, GL10_Package.GL_TEXTURE_WRAP_T, GL10_Package.GL_CLAMP_TO_EDGE);
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
        return StringMaker_Package.Create.append (OpenGLESImage'Class (This).getName).append (Image_Package.Image (This).toString).append (graphicsStrings.OPACITY).appendfloat (This.openGLESImageProperties.alphaf).toString;
   end toString;

   procedure initTexture (This : in out OpenGLESImage; gl_Param : access GL10_Package.GL10'Class) is
      Java_Result : constant Boolean := OpenGLESImage'Class (This).initTexture (gl_Param => gl_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end initTexture;

begin
   null;
   NULL_OPENGL_IMAGE := OpenGLESImage_Package.Create (NullImage_Package.NULL_IMAGE, PlatformBitmapBaseFactory_Package.NULL_PLATFORM_BITMAP_BASE_FACTORY, PlatformTextureBaseFactory_Package.NULL_PLATFORM_TEXTURE_BASE_FACTORY);
   texture2dList := BasicArrayList_Access (BasicArrayListD_Package.Create);
   

end org.allbinary.image.opengles.OpenGLESImage_Package;


