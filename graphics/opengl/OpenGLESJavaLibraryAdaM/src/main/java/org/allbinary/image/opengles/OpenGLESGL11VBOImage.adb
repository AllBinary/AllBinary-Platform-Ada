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


package body org.allbinary.image.opengles.OpenGLESGL11VBOImage_Package is

   procedure Initialize_Fields (This : in out OpenGLESGL11VBOImage'Class) is
   begin
      null;
      This.glUtil := GLUtil_Package.getInstance;
      This.textureVertexFloatBuffer := ByteBuffer_Package.allocateDirect (((4) * (4)) * (2)).order (ByteOrder_Package.nativeOrder).asFloatBuffer;
      This.regionRectangleFloatArray := new Float_Array'(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0);
      This.regionRectangleVertexFloatBuffer := ByteBuffer_Package.allocateDirect (((4) * (4)) * (3)).order (ByteOrder_Package.nativeOrder).asFloatBuffer;
      This.regionTextureRectangleFloatArray := new Float_Array'(0 .. (8) - 1 => 0.0);
      This.regionTextureVertexFloatBuffer := ByteBuffer_Package.allocateDirect (((4) * (4)) * (2)).order (ByteOrder_Package.nativeOrder).asFloatBuffer;
   end Initialize_Fields;


   procedure Initialize (This : in out OpenGLESGL11VBOImage'Class; image_Param : access Image'Class; bitmapFactory_Param : access PlatformBitmapBaseFactory'Class; textureFactory_Param : access PlatformTextureBaseFactory'Class) is
      image : Image_Access := Image_Access (image_Param);
      bitmapFactory : PlatformBitmapBaseFactory_Access := PlatformBitmapBaseFactory_Access (bitmapFactory_Param);
      textureFactory : PlatformTextureBaseFactory_Access := PlatformTextureBaseFactory_Access (textureFactory_Param);
   begin
        OpenGLESImage_Package.Initialize (This, image, bitmapFactory, textureFactory);
        Initialize_Fields (This);
        This.initVertices;
        This.regionRectangleVertexFloatBuffer.put (FloatBuffer_Package.wrap (This.regionRectangleFloatArray));
        This.regionTextureVertexFloatBuffer.put (FloatBuffer_Package.wrap (This.regionTextureRectangleFloatArray));
   end Initialize;

   function Create (image_Param : access Image'Class; bitmapFactory_Param : access PlatformBitmapBaseFactory'Class; textureFactory_Param : access PlatformTextureBaseFactory'Class) return OpenGLESGL11VBOImage_Access is
      This : constant OpenGLESGL11VBOImage_Access := new OpenGLESGL11VBOImage;
   begin
      OpenGLESGL11VBOImage_Package.Initialize (This.all, image_Param, bitmapFactory_Param, textureFactory_Param);
      return This;
   end Create;

   procedure initVertices (This : in out OpenGLESGL11VBOImage) is
   begin
        This.textureVertexFloatBuffer.put (0);
        This.textureVertexFloatBuffer.put (1);
        This.textureVertexFloatBuffer.put (1);
        This.textureVertexFloatBuffer.put (1);
        This.textureVertexFloatBuffer.put (0);
        This.textureVertexFloatBuffer.put (0);
        This.textureVertexFloatBuffer.put (1);
        This.textureVertexFloatBuffer.put (0);
        This.textureVertexFloatBuffer.rewind;
   end initVertices;

   procedure set (This : in out OpenGLESGL11VBOImage; gl_Param : access GL'Class) is
      gl : GL_Access := GL_Access (gl_Param);
      gl10 : GL10_Access;
   begin
        gl10 := GL10_Access (gl);
        if OpenGLESImage (This).initTexture (gl10) then
            This.textureFactory.load (gl10, GL10.GL_TEXTURE_2D, 0, OpenGLESGL11VBOImage_Access'(This'Unchecked_Access), 0, True);
            gl10.glDisable (GL10.GL_TEXTURE_2D);
            OpenGLLogUtil_Package.getInstance.logError (gl10, OpenGLESGL11VBOImage_Access'(This'Unchecked_Access));
        end if;
   end set;

   procedure drawRegion (This : in out OpenGLESGL11VBOImage; gl_Param : access GL10'Class; viewHeight : Integer; x_src : Float; y_src : Float; width : Float; height : Float; x : Integer; y : Integer; z : Integer) is
      gl : GL10_Access := GL10_Access (gl_Param);
   begin
        This.regionRectangleFloatArray (0) := Float (x);
        This.regionRectangleFloatArray (7) := Float ((viewHeight) - (y));
        This.regionRectangleFloatArray (1) := (This.regionRectangleFloatArray (7)) - (height);
        This.regionRectangleFloatArray (3) := (Float (x)) + (width);
        This.regionRectangleFloatArray (4) := This.regionRectangleFloatArray (1);
        This.regionRectangleFloatArray (6) := Float (x);
        This.regionRectangleFloatArray (9) := This.regionRectangleFloatArray (3);
        This.regionRectangleFloatArray (10) := This.regionRectangleFloatArray (7);
        This.regionTextureRectangleFloatArray (0) := (x_src) / (This.getWidth);
        This.regionTextureRectangleFloatArray (1) := ((((y_src) + (height)))) / (This.getHeight);
        This.regionTextureRectangleFloatArray (2) := ((((x_src) + (width)))) / (This.getWidth);
        This.regionTextureRectangleFloatArray (3) := This.regionTextureRectangleFloatArray (1);
        This.regionTextureRectangleFloatArray (4) := This.regionTextureRectangleFloatArray (0);
        This.regionTextureRectangleFloatArray (5) := (y_src) / (This.getHeight);
        This.regionTextureRectangleFloatArray (6) := This.regionTextureRectangleFloatArray (2);
        This.regionTextureRectangleFloatArray (7) := This.regionTextureRectangleFloatArray (5);
        This.glUtil.position (This.regionRectangleVertexFloatBuffer, 0);
        gl.glVertexPointer (3, GL10.GL_FLOAT, 0, This.regionRectangleVertexFloatBuffer);
        gl.glEnableClientState (GL10.GL_VERTEX_ARRAY);
        gl.glEnable (GL10.GL_TEXTURE_2D);
        gl.glBindTexture (GL10.GL_TEXTURE_2D, This.openGLESImageProperties.textureID);
        gl.glEnableClientState (GL10.GL_TEXTURE_COORD_ARRAY);
        This.glUtil.position (This.regionTextureVertexFloatBuffer, 0);
        gl.glTexCoordPointer (2, GL10.GL_FLOAT, 0, This.regionTextureVertexFloatBuffer);
        gl.glDrawArrays (GL10.GL_TRIANGLE_STRIP, 0, 4);
        gl.glDisableClientState (GL10.GL_VERTEX_ARRAY);
        gl.glDisableClientState (GL10.GL_TEXTURE_COORD_ARRAY);
        gl.glDisable (GL10.GL_TEXTURE_2D);
   end drawRegion;

   procedure draw (This : in out OpenGLESGL11VBOImage; gl_Param : access GL10'Class; x : Integer; y : Integer; z : Integer) is
      gl : GL10_Access := GL10_Access (gl_Param);
   begin
        This.regionRectangleFloatArray (0) := Float (x);
        This.regionRectangleFloatArray (7) := (DisplayInfoSingleton_Package.getInstance.getLastHeight) - (y);
        This.regionRectangleFloatArray (1) := (This.regionRectangleFloatArray (7)) - (This.getHeight);
        This.regionRectangleFloatArray (3) := (x) + (This.getWidth);
        This.regionRectangleFloatArray (4) := This.regionRectangleFloatArray (1);
        This.regionRectangleFloatArray (6) := Float (x);
        This.regionRectangleFloatArray (9) := This.regionRectangleFloatArray (3);
        This.regionRectangleFloatArray (10) := This.regionRectangleFloatArray (7);
        This.glUtil.position (This.regionRectangleVertexFloatBuffer, 0);
        gl.glVertexPointer (3, GL10.GL_FLOAT, 0, This.regionRectangleVertexFloatBuffer);
        gl.glEnableClientState (GL10.GL_VERTEX_ARRAY);
        gl.glEnable (GL10.GL_TEXTURE_2D);
        gl.glBindTexture (GL10.GL_TEXTURE_2D, This.openGLESImageProperties.textureID);
        gl.glEnableClientState (GL10.GL_TEXTURE_COORD_ARRAY);
        This.glUtil.position (This.textureVertexFloatBuffer, 0);
        gl.glTexCoordPointer (2, GL10.GL_FLOAT, 0, This.textureVertexFloatBuffer);
        gl.glDrawArrays (GL10.GL_TRIANGLE_STRIP, 0, 4);
        gl.glDisableClientState (GL10.GL_VERTEX_ARRAY);
        gl.glDisableClientState (GL10.GL_TEXTURE_COORD_ARRAY);
        gl.glDisable (GL10.GL_TEXTURE_2D);
   end draw;

end org.allbinary.image.opengles.OpenGLESGL11VBOImage_Package;


