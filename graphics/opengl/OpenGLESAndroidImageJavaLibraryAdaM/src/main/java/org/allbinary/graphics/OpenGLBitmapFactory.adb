--  Generated Code Do Not Modify


with android.graphics.BitmapFactory_Package; use android.graphics.BitmapFactory_Package;
with org.microemu.android.device.AndroidImageInterface_Package; use org.microemu.android.device.AndroidImageInterface_Package;

package body org.allbinary.graphics.OpenGLBitmapFactory_Package is

   package BitmapFactory_Package renames Standard.android.graphics.BitmapFactory_Package;
   package AndroidImageInterface_Package renames Standard.org.microemu.android.device.AndroidImageInterface_Package;
   procedure Initialize_Fields (This : in out OpenGLBitmapFactory'Class) is
   begin
      null;
      This.ARGB_8888 := Config_Package.Create (Bitmap_Package.Config.ARGB_8888);
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

   function createBitmap (This : in out OpenGLBitmapFactory; width : Integer; height : Integer; config_Var_Param : access Config_Package.Config'Class) return OpenGLBitmap_Access is
      config_Var : constant Config_Access := Config_Access (config_Var_Param);
   begin
        return OpenGLBitmap_Package.Create (Bitmap_Package.createBitmap (width, height, config_Var.bitmapConfig));
   end createBitmap;

   --  throws IOException
   function decodeStream (This : in out OpenGLBitmapFactory; inputStream_Param : access InputStream_Package.InputStream'Class) return OpenGLBitmap_Access is
      inputStream : constant InputStream_Access := InputStream_Access (inputStream_Param);
   begin
        return OpenGLBitmap_Package.Create (BitmapFactory_Package.decodeStream (inputStream));
   end decodeStream;

   function createBitmap (This : in out OpenGLBitmapFactory; image_Param : access Image_Package.Image'Class) return PlatformBitmapBase_Access is
      image : constant Image_Access := Image_Access (image_Param);
   begin
        return PlatformBitmapBase_Access (OpenGLBitmap_Package.Create ((AndroidImageInterface_Access (image)).getBitmap));
   end createBitmap;

   procedure createBitmap (This : in out OpenGLBitmapFactory; width : Integer; height : Integer; config_Var_Param : access Config_Package.Config'Class) is
      Java_Result : constant OpenGLBitmap_Access := OpenGLBitmapFactory'Class (This).createBitmap (width => width, height => height, config_Var_Param => config_Var_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createBitmap;

   procedure decodeStream (This : in out OpenGLBitmapFactory; inputStream_Param : access InputStream_Package.InputStream'Class) is
      Java_Result : constant OpenGLBitmap_Access := OpenGLBitmapFactory'Class (This).decodeStream (inputStream_Param => inputStream_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end decodeStream;

   procedure createBitmap (This : in out OpenGLBitmapFactory; image_Param : access Image_Package.Image'Class) is
      Java_Result : constant PlatformBitmapBase_Access := OpenGLBitmapFactory'Class (This).createBitmap (image_Param => image_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createBitmap;

begin
   null;
   instance := OpenGLBitmapFactory_Package.Create;

end org.allbinary.graphics.OpenGLBitmapFactory_Package;


with android.graphics.BitmapFactory_Package; use android.graphics.BitmapFactory_Package;
with org.microemu.android.device.AndroidImageInterface_Package; use org.microemu.android.device.AndroidImageInterface_Package;

package body org.allbinary.graphics.Config_Package is

   package BitmapFactory_Package renames Standard.android.graphics.BitmapFactory_Package;
   package AndroidImageInterface_Package renames Standard.org.microemu.android.device.AndroidImageInterface_Package;
   procedure Initialize_Fields (This : in out Config'Class) is
   begin
      null;
      
   end Initialize_Fields;

    
   procedure Initialize (This : in out Config'Class; bitmapConfig_Param : access Config_Package.Config'Class) is
      bitmapConfig : constant Config_Access := Config_Access (bitmapConfig_Param);
   begin
      Initialize_Fields (This);
            This.bitmapConfig := bitmapConfig;
   end Initialize;

   function Create (bitmapConfig_Param : access Config_Package.Config'Class) return Config_Access is
      This : constant Config_Access := new Config;
   begin
      Config_Package.Initialize (This.all, bitmapConfig_Param);
      return This;
   end Create;

end org.allbinary.graphics.Config_Package;


