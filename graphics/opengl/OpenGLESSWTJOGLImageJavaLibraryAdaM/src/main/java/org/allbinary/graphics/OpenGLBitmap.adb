--  Generated Code Do Not Modify


with org.allbinary.DisposalUtil_Package; use org.allbinary.DisposalUtil_Package;
with org.microemu.device.swt.SwtImmutableImage_Package; use org.microemu.device.swt.SwtImmutableImage_Package;
with org.microemu.device.swt.SwtMutableImage_Package; use org.microemu.device.swt.SwtMutableImage_Package;

package body org.allbinary.graphics.OpenGLBitmap_Package is

   package DisposalUtil_Package renames Standard.org.allbinary.DisposalUtil_Package;
   package SwtImmutableImage_Package renames Standard.org.microemu.device.swt.SwtImmutableImage_Package;
   package SwtMutableImage_Package renames Standard.org.microemu.device.swt.SwtMutableImage_Package;
   procedure Initialize_Fields (This : in out OpenGLBitmap'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out OpenGLBitmap'Class; bitmap_Param : access Java_Object'Class) is
      bitmap : constant Java_Object_Access := Java_Object_Access (bitmap_Param);
   begin
      PlatformBitmapBase_Package.Initialize (This);
      Initialize_Fields (This);
        This.image := Image_Access (bitmap);
   end Initialize;

   function Create (bitmap_Param : access Java_Object'Class) return OpenGLBitmap_Access is
      This : constant OpenGLBitmap_Access := new OpenGLBitmap;
   begin
      OpenGLBitmap_Package.Initialize (This.all, bitmap_Param);
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

end org.allbinary.graphics.OpenGLBitmap_Package;


