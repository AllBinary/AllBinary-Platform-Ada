--  Generated Code Do Not Modify


with javax.microedition.khronos.opengles.GL10_Package; use javax.microedition.khronos.opengles.GL10_Package;
with javax.microedition.khronos.opengles.GL10_Package_References;
with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
with javax.microedition.lcdui.Image_Package_References;
with org.allbinary.platform.opengles.PlatformTextureBaseFactory_Package; use org.allbinary.platform.opengles.PlatformTextureBaseFactory_Package;
with org.platform.opengl.OpenGLGLUUtils_Package; use org.platform.opengl.OpenGLGLUUtils_Package;
with org.platform.opengl.OpenGLGLUUtils_Package_References;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.string_Id.CommonStrings_Package;
with javax.microedition.lcdui.Font_Package;
with javax.microedition.khronos.opengles.GL_Package;
with javax.microedition.lcdui.Graphics_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.graphics.OpenGLBitmap_Package;
with org.allbinary.image.opengles.OpenGLESImage_Package;
with org.allbinary.image.opengles.OpenGLESImageProcessor_Package;
with org.allbinary.image.opengles.OpenGLESImageProperties_Package;
with org.allbinary.image.opengles.OpenGLESImageTranslate_Package;
with org.platform.opengl.OpenGLGLUUtils_Package;
with org.allbinary.platform.graphics.PlatformBitmapBase_Package;
with org.allbinary.platform.graphics.PlatformBitmapBaseFactory_Package;

package body org.platform.opengl.OpenGLTextureFactory_Package is

   subtype GL10_Access is javax.microedition.khronos.opengles.GL10_Package_References.GL10_Access;
   function "=" (Left, Right : GL10_Access) return Boolean renames javax.microedition.khronos.opengles.GL10_Package_References."=";
   subtype GL10_Access_Array is javax.microedition.khronos.opengles.GL10_Package_References.GL10_Access_Array;
   function "=" (Left, Right : GL10_Access_Array) return Boolean renames javax.microedition.khronos.opengles.GL10_Package_References."=";
   subtype GL10_Access_Array_Access is javax.microedition.khronos.opengles.GL10_Package_References.GL10_Access_Array_Access;
   function "=" (Left, Right : GL10_Access_Array_Access) return Boolean renames javax.microedition.khronos.opengles.GL10_Package_References."=";
   subtype GL10_Access_Array_Access_Array is javax.microedition.khronos.opengles.GL10_Package_References.GL10_Access_Array_Access_Array;
   function "=" (Left, Right : GL10_Access_Array_Access_Array) return Boolean renames javax.microedition.khronos.opengles.GL10_Package_References."=";
   subtype GL10_Access_Array_Access_Array_Access is javax.microedition.khronos.opengles.GL10_Package_References.GL10_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GL10_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.khronos.opengles.GL10_Package_References."=";
   subtype Image_Access is javax.microedition.lcdui.Image_Package_References.Image_Access;
   function "=" (Left, Right : Image_Access) return Boolean renames javax.microedition.lcdui.Image_Package_References."=";
   subtype Image_Access_Array is javax.microedition.lcdui.Image_Package_References.Image_Access_Array;
   function "=" (Left, Right : Image_Access_Array) return Boolean renames javax.microedition.lcdui.Image_Package_References."=";
   subtype Image_Access_Array_Access is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access;
   function "=" (Left, Right : Image_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Image_Package_References."=";
   subtype Image_Access_Array_Access_Array is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access_Array;
   function "=" (Left, Right : Image_Access_Array_Access_Array) return Boolean renames javax.microedition.lcdui.Image_Package_References."=";
   subtype Image_Access_Array_Access_Array_Access is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Image_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Image_Package_References."=";
   subtype OpenGLGLUUtils_Access is org.platform.opengl.OpenGLGLUUtils_Package_References.OpenGLGLUUtils_Access;
   function "=" (Left, Right : OpenGLGLUUtils_Access) return Boolean renames org.platform.opengl.OpenGLGLUUtils_Package_References."=";
   subtype OpenGLGLUUtils_Access_Array is org.platform.opengl.OpenGLGLUUtils_Package_References.OpenGLGLUUtils_Access_Array;
   function "=" (Left, Right : OpenGLGLUUtils_Access_Array) return Boolean renames org.platform.opengl.OpenGLGLUUtils_Package_References."=";
   subtype OpenGLGLUUtils_Access_Array_Access is org.platform.opengl.OpenGLGLUUtils_Package_References.OpenGLGLUUtils_Access_Array_Access;
   function "=" (Left, Right : OpenGLGLUUtils_Access_Array_Access) return Boolean renames org.platform.opengl.OpenGLGLUUtils_Package_References."=";
   subtype OpenGLGLUUtils_Access_Array_Access_Array is org.platform.opengl.OpenGLGLUUtils_Package_References.OpenGLGLUUtils_Access_Array_Access_Array;
   function "=" (Left, Right : OpenGLGLUUtils_Access_Array_Access_Array) return Boolean renames org.platform.opengl.OpenGLGLUUtils_Package_References."=";
   subtype OpenGLGLUUtils_Access_Array_Access_Array_Access is org.platform.opengl.OpenGLGLUUtils_Package_References.OpenGLGLUUtils_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OpenGLGLUUtils_Access_Array_Access_Array_Access) return Boolean renames org.platform.opengl.OpenGLGLUUtils_Package_References."=";
   procedure Initialize_Fields (This : in out OpenGLTextureFactory'Class) is
   begin
      null;
      This.gluUtils := OpenGLGLUUtils_Package.getInstance;
   end Initialize_Fields;


   function getInstance return OpenGLTextureFactory_Access is
   begin
        return OpenGLTextureFactory_Package.instance;
   end getInstance;

   procedure Initialize (This : in out OpenGLTextureFactory'Class) is
   begin
      PlatformTextureBaseFactory_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return OpenGLTextureFactory_Access is
      This : constant OpenGLTextureFactory_Access := new OpenGLTextureFactory;
   begin
      OpenGLTextureFactory_Package.Initialize (This.all);
      return This;
   end Create;

   procedure load (This : in out OpenGLTextureFactory; gl_Param : access GL10_Package.GL10'Class; target : Integer; level : Integer; image_Param : access Image_Package.Image'Class; border : Integer; flip : Boolean) is
      gl : constant GL10_Access := GL10_Access (gl_Param);
      image : constant Image_Access := Image_Access (image_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end load;

begin
   null;
   instance := OpenGLTextureFactory_Package.Create;

end org.platform.opengl.OpenGLTextureFactory_Package;


