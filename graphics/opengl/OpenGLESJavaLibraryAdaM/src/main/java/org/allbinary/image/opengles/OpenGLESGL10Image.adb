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


package body org.allbinary.image.opengles.OpenGLESGL10Image_Package is

   procedure Initialize_Fields (This : in out OpenGLESGL10Image'Class) is
   begin
      null;
      This.textureVertexFloatBuffer := ByteBuffer_Package.allocateDirect (((4) * (4)) * (2)).order (ByteOrder_Package.nativeOrder).asFloatBuffer;
      This.realOpenGLESImageDraw := OpenGLESImageDraw_Package.Create  --  Java anonymous class body: implement it as a named type
--          This.glUtil := GLUtil_Package.getInstance;
--          This.displayInfoSingleton := DisplayInfoSingleton_Package.getInstance;
--          This.textureVertexFloatBuffer := This.textureVertexFloatBuffer;
--          This.regionTextureRectangleFloatArray := new Float_Array'(0 .. (8) - 1 => 0.0);
--          This.regionTextureVertexFloatBuffer := ByteBuffer_Package.allocateDirect (((4) * (4)) * (2)).order (ByteOrder_Package.nativeOrder).asFloatBuffer;
--          This.regionRectangleFloatArray := new Float_Array'(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0);
--          This.regionRectangleVertexFloatBuffer := ByteBuffer_Package.allocateDirect (((4) * (4)) * (3)).order (ByteOrder_Package.nativeOrder).asFloatBuffer;
--          This.openGLESImageProperties := This.openGLESImageProperties;
--          
--     procedure drawRegion (This : in out ; gl : GL10_Access; viewHeight : Integer; x_src : Float; y_src : Float; width : Float; height : Float; x : Integer; y : Integer; z : Integer) is
--        imageWidth : Integer;
--        imageHeight : Integer;
--        u_center : Float;
--        v_center : Float;
--        imageProcessor : OpenGLESImageProcessor_Access;
--     begin
--              imageWidth := This.getWidth;
--              imageHeight := This.getHeight;
--              This.regionRectangleFloatArray (7) := viewHeight;
--              This.regionRectangleFloatArray (1) := (This.regionRectangleFloatArray (7)) - (height);
--              This.regionRectangleFloatArray (3) := width;
--              This.regionRectangleFloatArray (4) := This.regionRectangleFloatArray (1);
--              This.regionRectangleFloatArray (9) := This.regionRectangleFloatArray (3);
--              This.regionRectangleFloatArray (10) := This.regionRectangleFloatArray (7);
--              This.regionTextureRectangleFloatArray (0) := (x_src) / (imageWidth);
--              This.regionTextureRectangleFloatArray (1) := ((((y_src) + (height)))) / (imageHeight);
--              This.regionTextureRectangleFloatArray (2) := ((((x_src) + (width)))) / (imageWidth);
--              This.regionTextureRectangleFloatArray (3) := This.regionTextureRectangleFloatArray (1);
--              This.regionTextureRectangleFloatArray (4) := This.regionTextureRectangleFloatArray (0);
--              This.regionTextureRectangleFloatArray (5) := (y_src) / (imageHeight);
--              This.regionTextureRectangleFloatArray (6) := This.regionTextureRectangleFloatArray (2);
--              This.regionTextureRectangleFloatArray (7) := This.regionTextureRectangleFloatArray (5);
--              u_center := (((This.regionTextureRectangleFloatArray (0)) + (This.regionTextureRectangleFloatArray (2)))) / (2.0);
--              v_center := (((This.regionTextureRectangleFloatArray (5)) + (This.regionTextureRectangleFloatArray (1)))) / (2.0);
--              This.glUtil.rotateUVs (This.regionTextureRectangleFloatArray, -(This.openGLESImageProperties.angle), u_center, v_center);
--              gl.glPushMatrix;
--              imageProcessor := This.imageProcessor;
--              This.openGLESImageTranslate.translate (gl, This'Unchecked_Access, x, -(y));
--              imageProcessor.scale (gl, This.openGLESImageProperties.scaleX, This.openGLESImageProperties.scaleY);
--              imageProcessor.colorMask (gl, This.openGLESImageProperties.redf, This.openGLESImageProperties.greenf, This.openGLESImageProperties.bluef, This.openGLESImageProperties.alphaf);
--              This.openGLESImageTranslate.translate2 (gl, This'Unchecked_Access);
--              This.regionRectangleVertexFloatBuffer.put (This.regionRectangleFloatArray);
--              This.glUtil.position (This.regionRectangleVertexFloatBuffer, 0);
--              gl.glVertexPointer (3, GL10.GL_FLOAT, 0, This.regionRectangleVertexFloatBuffer);
--              gl.glEnableClientState (GL10.GL_VERTEX_ARRAY);
--              gl.glEnable (GL10.GL_TEXTURE_2D);
--              gl.glBindTexture (GL10.GL_TEXTURE_2D, This.openGLESImageProperties.textureID);
--              gl.glEnableClientState (GL10.GL_TEXTURE_COORD_ARRAY);
--              This.regionTextureVertexFloatBuffer.put (This.regionTextureRectangleFloatArray);
--              This.glUtil.position (This.regionTextureVertexFloatBuffer, 0);
--              gl.glTexCoordPointer (2, GL10.GL_FLOAT, 0, This.regionTextureVertexFloatBuffer);
--              gl.glDrawArrays (GL10.GL_TRIANGLE_STRIP, 0, 4);
--              gl.glDisableClientState (GL10.GL_VERTEX_ARRAY);
--              gl.glDisableClientState (GL10.GL_TEXTURE_COORD_ARRAY);
--              gl.glDisable (GL10.GL_TEXTURE_2D);
--              gl.glPopMatrix;
--     end drawRegion;
--          
--     procedure draw (This : in out ; gl : GL10_Access; x : Integer; y : Integer; z : Integer) is
--        width : Integer;
--        height : Integer;
--        imageProcessor : OpenGLESImageProcessor_Access;
--     begin
--              width := This.getWidth;
--              height := This.getHeight;
--              This.regionRectangleFloatArray (7) := This.displayInfoSingleton.getLastHeight;
--              This.regionRectangleFloatArray (1) := (This.regionRectangleFloatArray (7)) - (height);
--              This.regionRectangleFloatArray (3) := width;
--              This.regionRectangleFloatArray (4) := This.regionRectangleFloatArray (1);
--              This.regionRectangleFloatArray (9) := This.regionRectangleFloatArray (3);
--              This.regionRectangleFloatArray (10) := This.regionRectangleFloatArray (7);
--              This.regionTextureRectangleFloatArray (0) := 0;
--              This.regionTextureRectangleFloatArray (1) := 1;
--              This.regionTextureRectangleFloatArray (2) := 1;
--              This.regionTextureRectangleFloatArray (3) := 1;
--              This.regionTextureRectangleFloatArray (4) := 0;
--              This.regionTextureRectangleFloatArray (5) := 0;
--              This.regionTextureRectangleFloatArray (6) := 1;
--              This.regionTextureRectangleFloatArray (7) := 0;
--              gl.glPushMatrix;
--              This.openGLESImageTranslate.translate (gl, This'Unchecked_Access, x, -(y));
--              imageProcessor := This.imageProcessor;
--              imageProcessor.scale (gl, This.openGLESImageProperties.scaleX, This.openGLESImageProperties.scaleY);
--              imageProcessor.colorMask (gl, This.openGLESImageProperties.redf, This.openGLESImageProperties.greenf, This.openGLESImageProperties.bluef, This.openGLESImageProperties.alphaf);
--              This.openGLESImageTranslate.translate2 (gl, This'Unchecked_Access);
--              This.regionRectangleVertexFloatBuffer.put (This.regionRectangleFloatArray);
--              This.glUtil.position (This.regionRectangleVertexFloatBuffer, 0);
--              gl.glVertexPointer (3, GL10.GL_FLOAT, 0, This.regionRectangleVertexFloatBuffer);
--              gl.glEnableClientState (GL10.GL_VERTEX_ARRAY);
--              gl.glEnable (GL10.GL_TEXTURE_2D);
--              gl.glBindTexture (GL10.GL_TEXTURE_2D, This.openGLESImageProperties.textureID);
--              gl.glEnableClientState (GL10.GL_TEXTURE_COORD_ARRAY);
--              This.glUtil.rotateUVs (This.regionTextureRectangleFloatArray, -(This.openGLESImageProperties.angle), 0.5, 0.5);
--              This.glUtil.position (This.textureVertexFloatBuffer, 0);
--              This.textureVertexFloatBuffer.put (This.regionTextureRectangleFloatArray);
--              This.glUtil.position (This.textureVertexFloatBuffer, 0);
--              gl.glTexCoordPointer (2, GL10.GL_FLOAT, 0, This.textureVertexFloatBuffer);
--              gl.glDrawArrays (GL10.GL_TRIANGLE_STRIP, 0, 4);
--              gl.glDisableClientState (GL10.GL_VERTEX_ARRAY);
--              gl.glDisableClientState (GL10.GL_TEXTURE_COORD_ARRAY);
--              gl.glDisable (GL10.GL_TEXTURE_2D);
--              gl.glPopMatrix;
--     end draw;
;
      This.openGLESImageDraw := OpenGLESImageDraw_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out OpenGLESGL10Image'Class; image : Image_Access; bitmapFactory : PlatformBitmapBaseFactory_Access; textureFactory : PlatformTextureBaseFactory_Access) is
   begin
        OpenGLESImage_Package.Initialize (This, image, bitmapFactory, textureFactory);
        Initialize_Fields (This);
        This.initVertices;
   end Initialize;

   function Create (image : Image_Access; bitmapFactory : PlatformBitmapBaseFactory_Access; textureFactory : PlatformTextureBaseFactory_Access) return OpenGLESGL10Image_Access is
      This : constant OpenGLESGL10Image_Access := new OpenGLESGL10Image;
   begin
      Initialize (This.all, image, bitmapFactory, textureFactory);
      return This;
   end Create;

   procedure initVertices (This : in out OpenGLESGL10Image) is
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

   procedure set (This : in out OpenGLESGL10Image; gl : GL_Access) is
      gl10 : GL10_Access;
   begin
        gl10 := GL10_Access (gl);
        if OpenGLESImage (This).initTexture (gl10) then
            This.textureFactory.load (gl10, GL10.GL_TEXTURE_2D, 0, This'Unchecked_Access, 0, True);
            gl10.glDisable (GL10.GL_TEXTURE_2D);
            This.openGLESImageDraw := This.realOpenGLESImageDraw;
            OpenGLLogUtil_Package.getInstance.logError (gl10, This'Unchecked_Access);
        end if;
   end set;

   procedure drawRegion (This : in out OpenGLESGL10Image; gl : GL10_Access; viewHeight : Integer; x_src : Float; y_src : Float; width : Float; height : Float; x : Integer; y : Integer; z : Integer) is
   begin
        This.openGLESImageDraw.drawRegion (gl, viewHeight, x_src, y_src, width, height, x, y, z);
   end drawRegion;

   procedure draw (This : in out OpenGLESGL10Image; gl : GL10_Access; x : Integer; y : Integer; z : Integer) is
   begin
        This.openGLESImageDraw.draw (gl, x, y, z);
   end draw;

end org.allbinary.image.opengles.OpenGLESGL10Image_Package;


