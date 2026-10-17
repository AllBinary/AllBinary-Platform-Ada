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


package body org.allbinary.image.opengles.OpenGLESGL11ExtImage_Package is

   procedure Initialize_Fields (This : in out OpenGLESGL11ExtImage'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.a := 0;
      
   end Initialize_Fields;


   procedure Initialize (This : in out OpenGLESGL11ExtImage'Class; image_Param : access Image'Class; bitmapFactory_Param : access PlatformBitmapBaseFactory'Class; textureFactory_Param : access PlatformTextureBaseFactory'Class) is
      image : Image_Access := Image_Access (image_Param);
      bitmapFactory : PlatformBitmapBaseFactory_Access := PlatformBitmapBaseFactory_Access (bitmapFactory_Param);
      textureFactory : PlatformTextureBaseFactory_Access := PlatformTextureBaseFactory_Access (textureFactory_Param);
   begin
        OpenGLESImage_Package.Initialize (This, image, bitmapFactory, textureFactory);
        Initialize_Fields (This);
        This.onDisplayChangeEvent (null);
        This.rectangle := new Integer_Array'(0, This.getHeight, This.getWidth, -(This.getHeight));
   end Initialize;

   function Create (image_Param : access Image'Class; bitmapFactory_Param : access PlatformBitmapBaseFactory'Class; textureFactory_Param : access PlatformTextureBaseFactory'Class) return OpenGLESGL11ExtImage_Access is
      This : constant OpenGLESGL11ExtImage_Access := new OpenGLESGL11ExtImage;
   begin
      OpenGLESGL11ExtImage_Package.Initialize (This.all, image_Param, bitmapFactory_Param, textureFactory_Param);
      return This;
   end Create;

   procedure onDisplayChangeEvent (This : in out OpenGLESGL11ExtImage; displayChangeEvent_Param : access DisplayChangeEvent'Class) is
      displayChangeEvent : DisplayChangeEvent_Access := DisplayChangeEvent_Access (displayChangeEvent_Param);
   begin
        begin
            This.logUtil.putF (This.commonStrings.START, OpenGLESGL11ExtImage_Access'(This'Unchecked_Access), To_Unbounded_String ("onResize"));
            This.a := (DisplayInfoSingleton_Package.getInstance.getLastHeight) - (This.getHeight);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, OpenGLESGL11ExtImage_Access'(This'Unchecked_Access), To_Unbounded_String ("onResize"), e);
                end;
        end;
   end onDisplayChangeEvent;

   procedure set (This : in out OpenGLESGL11ExtImage; gl_Param : access GL'Class) is
      gl : GL_Access := GL_Access (gl_Param);
      gl11 : GL11_Access;
   begin
        This.onDisplayChangeEvent (null);
        gl11 := GL11_Access (gl);
        if OpenGLESImage (This).initTexture (gl11) then
            This.textureFactory.load (gl11, GL10.GL_TEXTURE_2D, 0, OpenGLESGL11ExtImage_Access'(This'Unchecked_Access), 0, True);
            gl11.glTexParameteriv (GL10.GL_TEXTURE_2D, GL11Ext_Package.GL_TEXTURE_CROP_RECT_OES, This.rectangle, 0);
            gl11.glDisable (GL10.GL_TEXTURE_2D);
            OpenGLLogUtil_Package.getInstance.logError (gl11, OpenGLESGL11ExtImage_Access'(This'Unchecked_Access));
        end if;
   end set;

   procedure draw (This : in out OpenGLESGL11ExtImage; gl_Param : access GL10'Class; x : Integer; y : Integer; z : Integer) is
      gl : GL10_Access := GL10_Access (gl_Param);
   begin
        gl.glEnable (GL10.GL_TEXTURE_2D);
        gl.glBindTexture (GL10.GL_TEXTURE_2D, This.openGLESImageProperties.textureID);
        (GL11Ext_Access (gl)).glDrawTexfOES (x, (This.a) - (y), z, This.getWidth, This.getHeight);
        gl.glDisable (GL10.GL_TEXTURE_2D);
   end draw;

end org.allbinary.image.opengles.OpenGLESGL11ExtImage_Package;


