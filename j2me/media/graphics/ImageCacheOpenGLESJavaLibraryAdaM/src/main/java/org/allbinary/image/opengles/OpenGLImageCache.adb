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
with org.allbinary.device.NullGL10_Package; use org.allbinary.device.NullGL10_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.image.ImageCacheFactory_Package; use org.allbinary.image.ImageCacheFactory_Package;
with org.allbinary.image.opengles.OpenGLESImage_Package; use org.allbinary.image.opengles.OpenGLESImage_Package;

package body org.allbinary.image.opengles.OpenGLImageCache_Package is

   package NullImage_Package renames Standard.javax.microedition.lcdui.NullImage_Package;
   package NullGL10_Package renames Standard.org.allbinary.device.NullGL10_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package ImageCacheFactory_Package renames Standard.org.allbinary.image.ImageCacheFactory_Package;
   procedure Initialize_Fields (This : in out OpenGLImageCache'Class) is
   begin
      null;
      This.imageCache := ImageCacheFactory_Package.getInstance;
      This.preResourceImageUtil := PreResourceImageUtil_Package.getInstance;
      This.gl := NullGL10_Package.NULL_GL10;
      This.lock := SynchObject_Package.Create;
      This.list := BasicArrayList_Access (BasicArrayListD_Package.Create);
      This.renderer := AllBinaryRendererBase3_Package.Create;
   end Initialize_Fields;


   procedure Initialize (This : in out OpenGLImageCache'Class) is
   begin
      ImageCache_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return OpenGLImageCache_Access is
      This : constant OpenGLImageCache_Access := new OpenGLImageCache;
   begin
      OpenGLImageCache_Package.Initialize (This.all);
      return This;
   end Create;

   procedure addListener (This : in out OpenGLImageCache; renderer_Param : access Java_Object'Class) is
      renderer : constant Java_Object_Access := Java_Object_Access (renderer_Param);
   begin
        This.renderer := AllBinaryRendererBase3_Access (renderer);
   end addListener;

   --  throws Exception
   procedure update (This : in out OpenGLImageCache; gl_Param : access GL10_Package.GL10'Class) is
      gl : constant GL10_Access := GL10_Access (gl_Param);
      openGLESImage : OpenGLESImage_Access;
      index : Integer;
   begin
        This.gl := gl;
        begin  --  synchronized
            for index in reverse 0 .. (This.list.size) - (1) loop
                openGLESImage := (OpenGLESImage_Access (This.list.objectArray (index)));
                if (openGLESImage) /= (OpenGLESImage_Package.NULL_OPENGL_IMAGE) then
                    openGLESImage.set (gl);
                end if;
            end loop;
        end;
   end update;

   --  throws Exception
   function createImage (This : in out OpenGLImageCache; caller : Unbounded_String; width_Param : Integer; height_Param : Integer) return Image_Access is
      width : Integer := width_Param;
      height : Integer := height_Param;
      textureSize : Integer;
      image2 : Image_Access;
      image : Image_Access;
   begin
        textureSize := width;
        if (height) > (width) then
            textureSize := height;
        end if;
        while (((textureSize) rem (4))) /= (0) loop
            textureSize := textureSize + 1;
        end loop;
        width := textureSize;
        height := textureSize;
        image2 := This.imageCache.get (caller, width, height);
        image := This.preResourceImageUtil.encapsulate (image2);
        begin  --  synchronized
            if (image) /= (NullImage_Package.NULL_IMAGE) then
                This.list.add (Java_Object_Access (image));
            end if;
        end;
        return image;
   end createImage;

   --  throws Exception
   function createImageFromInputStream (This : in out OpenGLImageCache; key_Param : access Java_Object'Class; inputStream_Param : access InputStream_Package.InputStream'Class) return Image_Access is
      key : constant Java_Object_Access := Java_Object_Access (key_Param);
      inputStream : constant InputStream_Access := InputStream_Access (inputStream_Param);
      cachedImage : Image_Access;
      image : Image_Access;
   begin
        cachedImage := This.imageCache.getWithKey (key);
        image := This.preResourceImageUtil.encapsulate (cachedImage);
        begin  --  synchronized
            if (image) /= (NullImage_Package.NULL_IMAGE) then
                This.list.add (Java_Object_Access (image));
            end if;
        end;
        return image;
   end createImageFromInputStream;

   function getGlP (This : in out OpenGLImageCache) return GL10_Access is
   begin
        return This.gl;
   end getGlP;

   procedure init (This : in out OpenGLImageCache; image_Param : access Image_Package.Image'Class) is
      image : constant Image_Access := Image_Access (image_Param);
   begin
        begin
            begin  --  synchronized
                if This.list.contains (Java_Object_Access (image)) then
                    Java_Throw (Java_New_Exception ("RuntimeException"));
                end if;
                This.list.add (Java_Object_Access (image));
            end;
            This.renderer.add (image);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, OpenGLImageCache_Access'(This'Unchecked_Access), This.commonStrings.INIT, e);
                end;
        end;
   end init;

   procedure createImage (This : in out OpenGLImageCache; caller : Unbounded_String; width_Param : Integer; height_Param : Integer) is
      Java_Result : constant Image_Access := OpenGLImageCache'Class (This).createImage (caller => caller, width_Param => width_Param, height_Param => height_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createImage;

   procedure createImageFromInputStream (This : in out OpenGLImageCache; key_Param : access Java_Object'Class; inputStream_Param : access InputStream_Package.InputStream'Class) is
      Java_Result : constant Image_Access := OpenGLImageCache'Class (This).createImageFromInputStream (key_Param => key_Param, inputStream_Param => inputStream_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createImageFromInputStream;

   procedure addListener (This : in out OpenGLImageCache; Value : Unbounded_String) is
   begin
      OpenGLImageCache'Class (This).addListener (Java_Box (Value));
   end addListener;

end org.allbinary.image.opengles.OpenGLImageCache_Package;


