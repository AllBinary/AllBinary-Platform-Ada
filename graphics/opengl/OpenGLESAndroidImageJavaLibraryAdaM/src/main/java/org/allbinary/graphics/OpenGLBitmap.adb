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
        This.bitmap := Bitmap_Access (bitmap);
   end Initialize;

   function Create (bitmap : Java_Object_Access) return OpenGLBitmap_Access is
      This : constant OpenGLBitmap_Access := new OpenGLBitmap;
   begin
      Initialize (This.all, bitmap);
      return This;
   end Create;

   procedure getPixels (This : in out OpenGLBitmap; pixels : Integer_Array_Access; offset : Integer; stride : Integer; x : Integer; y : Integer; width : Integer; height : Integer) is
   begin
        This.bitmap.getPixels (pixels, offset, stride, x, y, width, height);
   end getPixels;

   procedure setPixels (This : in out OpenGLBitmap; pixels : Integer_Array_Access; offset : Integer; stride : Integer; x : Integer; y : Integer; width : Integer; height : Integer) is
   begin
        This.bitmap.setPixels (pixels, offset, stride, x, y, width, height);
   end setPixels;

   function getWidth (This : in out OpenGLBitmap) return Integer is
   begin
        return This.bitmap.getWidth;
   end getWidth;

   function getHeight (This : in out OpenGLBitmap) return Integer is
   begin
        return This.bitmap.getHeight;
   end getHeight;

   procedure recycle (This : in out OpenGLBitmap) is
   begin
        This.bitmap.recycle;
   end recycle;

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


