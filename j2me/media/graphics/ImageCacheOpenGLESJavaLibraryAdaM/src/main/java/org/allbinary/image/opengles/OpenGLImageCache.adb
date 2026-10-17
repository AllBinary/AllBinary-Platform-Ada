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


package body org.allbinary.image.opengles.OpenGLImageCache_Package is

   procedure Initialize_Fields (This : in out OpenGLImageCache'Class) is
   begin
      null;
      This.imageCache := ImageCacheFactory_Package.getInstance;
      This.preResourceImageUtil := PreResourceImageUtil_Package.getInstance;
      This.gl := NullGL10_Package.NULL_GL10;
      This.lock := SynchObject_Package.Create;
      This.list := BasicArrayListD_Package.Create;
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
      Initialize (This.all);
      return This;
   end Create;

   procedure addListener (This : in out OpenGLImageCache; renderer : Java_Object_Access) is
   begin
        This.renderer := AllBinaryRendererBase3_Access (renderer);
   end addListener;

   --  throws Exception
   procedure update (This : in out OpenGLImageCache; gl : GL10_Access) is
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
   function createImage (This : in out OpenGLImageCache; caller : Unbounded_String; width : Integer; height : Integer) return Image_Access is
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
                This.list.add (image);
            end if;
        end;
        return image;
   end createImage;

   --  throws Exception
   function createImageFromInputStream (This : in out OpenGLImageCache; key : Java_Object_Access; inputStream : InputStream_Access) return Image_Access is
      cachedImage : Image_Access;
      image : Image_Access;
   begin
        cachedImage := This.imageCache.getWithKey (key);
        image := This.preResourceImageUtil.encapsulate (cachedImage);
        begin  --  synchronized
            if (image) /= (NullImage_Package.NULL_IMAGE) then
                This.list.add (image);
            end if;
        end;
        return image;
   end createImageFromInputStream;

   function getGlP (This : in out OpenGLImageCache) return GL10_Access is
   begin
        return This.gl;
   end getGlP;

   procedure init (This : in out OpenGLImageCache; image : Image_Access) is
   begin
        begin
            begin  --  synchronized
                if This.list.contains (image) then
                    Java_Throw (Java_New_Exception ("RuntimeException"));
                end if;
                This.list.add (image);
            end;
            This.renderer.add (image);
        exception
            when e : others =>
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, This.commonStrings.INIT, e);
        end;
   end init;

   procedure createImage (This : in out OpenGLImageCache; caller : Unbounded_String; width : Integer; height : Integer) is
      Java_Result : constant Image_Access := OpenGLImageCache'Class (This).createImage (caller, width, height);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createImage;

   procedure createImageFromInputStream (This : in out OpenGLImageCache; key : Java_Object_Access; inputStream : InputStream_Access) is
      Java_Result : constant Image_Access := OpenGLImageCache'Class (This).createImageFromInputStream (key, inputStream);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createImageFromInputStream;

   procedure getGlP (This : in out OpenGLImageCache) is
      Java_Result : constant GL10_Access := OpenGLImageCache'Class (This).getGlP;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getGlP;

end org.allbinary.image.opengles.OpenGLImageCache_Package;


