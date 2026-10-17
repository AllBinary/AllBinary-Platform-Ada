--  Generated Code Do Not Modify


package body org.allbinary.graphics.OpenGLBitmapFactory_Package is

   procedure Initialize_Fields (This : in out OpenGLBitmapFactory'Class) is
   begin
      null;
      This.ARGB_8888 := Config_Package.Create (null);
   end Initialize_Fields;

   procedure Initialize (This : in out OpenGLBitmapFactory'Class) is
   begin
      PlatformBitmapBaseFactory_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return OpenGLBitmapFactory_Access is
      This : constant OpenGLBitmapFactory_Access := new OpenGLBitmapFactory;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return OpenGLBitmapFactory_Access is
   begin
        return OpenGLBitmapFactory_Package.instance;
   end getInstance;

   function createBitmap (This : in out OpenGLBitmapFactory; width : Integer; height : Integer; config : Config_Access) return OpenGLBitmap_Access is
   begin
        return OpenGLBitmap_Package.Create (Image_Package.createImage (width, height));
   end createBitmap;

   --  throws Exception
   function decodeStream (This : in out OpenGLBitmapFactory; inputStream : InputStream_Access) return OpenGLBitmap_Access is
   begin
        return OpenGLBitmap_Package.Create (ImageFactory_Package.getInstance.createImageFromInputStream (inputStream));
   end decodeStream;

   function createBitmap (This : in out OpenGLBitmapFactory; image : Image_Access) return PlatformBitmapBase_Access is
   begin
        return OpenGLBitmap_Package.Create (image);
   end createBitmap;

   procedure getInstance is
      Java_Result : constant OpenGLBitmapFactory_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure createBitmap (This : in out OpenGLBitmapFactory; width : Integer; height : Integer; config : Config_Access) is
      Java_Result : constant OpenGLBitmap_Access := OpenGLBitmapFactory'Class (This).createBitmap (width, height, config);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createBitmap;

   procedure decodeStream (This : in out OpenGLBitmapFactory; inputStream : InputStream_Access) is
      Java_Result : constant OpenGLBitmap_Access := OpenGLBitmapFactory'Class (This).decodeStream (inputStream);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end decodeStream;

   procedure createBitmap (This : in out OpenGLBitmapFactory; image : Image_Access) is
      Java_Result : constant PlatformBitmapBase_Access := OpenGLBitmapFactory'Class (This).createBitmap (image);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createBitmap;

begin
   null;
   instance := OpenGLBitmapFactory_Package.Create;

end org.allbinary.graphics.OpenGLBitmapFactory_Package;


package body org.allbinary.graphics.Config_Package is

   procedure Initialize_Fields (This : in out Config'Class) is
   begin
      null;
      
   end Initialize_Fields;

    
   procedure Initialize (This : in out Config'Class; bitmapConfig : Java_Object_Access) is
   begin
      Initialize_Fields (This);
            This.bitmapConfig := bitmapConfig;
   end Initialize;

   function Create (bitmapConfig : Java_Object_Access) return Config_Access is
      This : constant Config_Access := new Config;
   begin
      Initialize (This.all, bitmapConfig);
      return This;
   end Create;

end org.allbinary.graphics.Config_Package;


