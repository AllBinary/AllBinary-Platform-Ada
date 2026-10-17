--  Generated Code Do Not Modify


package body org.allbinary.graphics.OpenGLBitmapFactory_Package is

   procedure Initialize_Fields (This : in out OpenGLBitmapFactory'Class) is
   begin
      null;
      This.ARGB_8888 := Config_Package.Create (NullUtil_Package.getInstance.NULL_OBJECT);
   end Initialize_Fields;

   procedure Initialize (This : in out OpenGLBitmapFactory'Class) is
   begin
      PlatformBitmapBaseFactory_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return OpenGLBitmapFactory_Access is
      This : constant OpenGLBitmapFactory_Access := new OpenGLBitmapFactory;
   begin
      OpenGLBitmapFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return OpenGLBitmapFactory_Access is
   begin
        return OpenGLBitmapFactory_Package.instance;
   end getInstance;

   function createBitmap (This : in out OpenGLBitmapFactory; width : Integer; height : Integer; config_Param : access Config'Class) return OpenGLBitmap_Access is
      config : Config_Access := Config_Access (config_Param);
   begin
        return OpenGLBitmap_Package.Create (NullUtil_Package.getInstance.NULL_OBJECT);
   end createBitmap;

   --  throws IOException
   function decodeStream (This : in out OpenGLBitmapFactory; inputStream_Param : access InputStream'Class) return OpenGLBitmap_Access is
      inputStream : InputStream_Access := InputStream_Access (inputStream_Param);
   begin
        return OpenGLBitmap_Package.Create (NullUtil_Package.getInstance.NULL_OBJECT);
   end decodeStream;

   function createBitmap (This : in out OpenGLBitmapFactory; image_Param : access Image'Class) return PlatformBitmapBase_Access is
      image : Image_Access := Image_Access (image_Param);
   begin
        return OpenGLBitmap_Package.Create (NullUtil_Package.getInstance.NULL_OBJECT);
   end createBitmap;

   procedure createBitmap (This : in out OpenGLBitmapFactory; width : Integer; height : Integer; config_Param : access Config'Class) is
      Java_Result : constant OpenGLBitmap_Access := OpenGLBitmapFactory'Class (This).createBitmap (width, height, config_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createBitmap;

   procedure decodeStream (This : in out OpenGLBitmapFactory; inputStream_Param : access InputStream'Class) is
      Java_Result : constant OpenGLBitmap_Access := OpenGLBitmapFactory'Class (This).decodeStream (inputStream_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end decodeStream;

   procedure createBitmap (This : in out OpenGLBitmapFactory; image_Param : access Image'Class) is
      Java_Result : constant PlatformBitmapBase_Access := OpenGLBitmapFactory'Class (This).createBitmap (image_Param);
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

    
   procedure Initialize (This : in out Config'Class; bitmapConfig_Param : access Java_Object'Class) is
      bitmapConfig : Java_Object_Access := Java_Object_Access (bitmapConfig_Param);
   begin
      Initialize_Fields (This);
            This.bitmapConfig := bitmapConfig;
   end Initialize;

   function Create (bitmapConfig_Param : access Java_Object'Class) return Config_Access is
      This : constant Config_Access := new Config;
   begin
      Config_Package.Initialize (This.all, bitmapConfig_Param);
      return This;
   end Create;

end org.allbinary.graphics.Config_Package;


