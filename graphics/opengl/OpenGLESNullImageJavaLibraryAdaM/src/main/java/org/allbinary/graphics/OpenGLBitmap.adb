--  Generated Code Do Not Modify



package body org.allbinary.graphics.OpenGLBitmap_Package is

   procedure Initialize_Fields (This : in out OpenGLBitmap'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out OpenGLBitmap'Class; bitmap_Param : access Java_Object'Class) is
      bitmap : constant Java_Object_Access := Java_Object_Access (bitmap_Param);
   begin
      PlatformBitmapBase_Package.Initialize (This);
      Initialize_Fields (This);
        This.bitmap := bitmap;
   end Initialize;

   function Create (bitmap_Param : access Java_Object'Class) return OpenGLBitmap_Access is
      This : constant OpenGLBitmap_Access := new OpenGLBitmap;
   begin
      OpenGLBitmap_Package.Initialize (This.all, bitmap_Param);
      return This;
   end Create;

   procedure getPixels (This : in out OpenGLBitmap; pixels : Integer_Array_Access; offset : Integer; stride : Integer; x : Integer; y : Integer; width : Integer; height : Integer) is
   begin
        null;
   end getPixels;

   procedure setPixels (This : in out OpenGLBitmap; pixels : Integer_Array_Access; offset : Integer; stride : Integer; x : Integer; y : Integer; width : Integer; height : Integer) is
   begin
        null;
   end setPixels;

   procedure recycle (This : in out OpenGLBitmap) is
   begin
        null;
   end recycle;

end org.allbinary.graphics.OpenGLBitmap_Package;


