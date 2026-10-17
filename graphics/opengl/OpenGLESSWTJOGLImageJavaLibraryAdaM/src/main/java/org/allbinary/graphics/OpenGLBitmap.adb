--  Generated Code Do Not Modify


package body org.allbinary.graphics.OpenGLBitmap_Package is

   procedure Initialize_Fields (This : in out OpenGLBitmap'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out OpenGLBitmap'Class; bitmap : Java_Object_Access) is
   begin
      PlatformBitmapBase_Package.Initialize (This);
      Initialize_Fields (This);
        This.image := Image_Access (bitmap);
   end Initialize;

   function Create (bitmap : Java_Object_Access) return OpenGLBitmap_Access is
      This : constant OpenGLBitmap_Access := new OpenGLBitmap;
   begin
      Initialize (This.all, bitmap);
      return This;
   end Create;

   function getImage (This : in out OpenGLBitmap) return Image_Access is
   begin
        return This.image;
   end getImage;

   function getDepth (This : in out OpenGLBitmap) return Integer is
      immutableImage : SwtImmutableImage_Access;
      mutableImage : SwtMutableImage_Access;
   begin
        if This.image.isMutable then
            mutableImage := SwtMutableImage_Access (This.image);
            return mutableImage.getDepth;
        else
            immutableImage := SwtImmutableImage_Access (This.image);
            return immutableImage.getDepth;
        end if;
   end getDepth;

   procedure getPixels (This : in out OpenGLBitmap; pixels : Integer_Array_Access; offset : Integer; stride : Integer; x : Integer; y : Integer; width : Integer; height : Integer) is
      immutableImage : SwtImmutableImage_Access;
      mutableImage : SwtMutableImage_Access;
   begin
        if This.image.isMutable then
            mutableImage := SwtMutableImage_Access (This.image);
            mutableImage.getRGB (pixels, offset, stride, x, y, width, height);
        else
            immutableImage := SwtImmutableImage_Access (This.image);
            immutableImage.getRGB (pixels, offset, stride, x, y, width, height);
        end if;
   end getPixels;

   procedure setPixels (This : in out OpenGLBitmap; pixels : Integer_Array_Access; offset : Integer; stride : Integer; x : Integer; y : Integer; width : Integer; height : Integer) is
   begin
        This.image.setRGB2 (pixels, offset, height, x, y, width, height);
   end setPixels;

   function getWidth (This : in out OpenGLBitmap) return Integer is
   begin
        return This.image.getWidth;
   end getWidth;

   function getHeight (This : in out OpenGLBitmap) return Integer is
   begin
        return This.image.getHeight;
   end getHeight;

   procedure recycle (This : in out OpenGLBitmap) is
   begin
        DisposalUtil_Package.getInstance.disposeImage (This.image);
   end recycle;

   procedure getImage (This : in out OpenGLBitmap) is
      Java_Result : constant Image_Access := OpenGLBitmap'Class (This).getImage;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getImage;

   procedure getDepth (This : in out OpenGLBitmap) is
      Java_Result : constant Integer := OpenGLBitmap'Class (This).getDepth;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getDepth;

   procedure getWidth (This : in out OpenGLBitmap) is
      Java_Result : constant Integer := OpenGLBitmap'Class (This).getWidth;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getWidth;

   procedure getHeight (This : in out OpenGLBitmap) is
      Java_Result : constant Integer := OpenGLBitmap'Class (This).getHeight;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getHeight;

end org.allbinary.graphics.OpenGLBitmap_Package;


