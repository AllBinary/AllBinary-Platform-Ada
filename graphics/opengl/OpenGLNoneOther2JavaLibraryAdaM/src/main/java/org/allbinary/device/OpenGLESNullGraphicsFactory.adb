--  Generated Code Do Not Modify


with org.allbinary.device.OpenGLESGraphics_Package; use org.allbinary.device.OpenGLESGraphics_Package;
with org.allbinary.device.OpenGLESGraphics_Package_References;
with org.allbinary.string_Id.CommonStrings_Package;
with javax.microedition.lcdui.Font_Package;
with org.allbinary.graphics.font.FontDebugBase_Package;
with javax.microedition.khronos.opengles.GL_Package;
with javax.microedition.khronos.opengles.GL10_Package;
with javax.microedition.lcdui.Graphics_Package;
with org.allbinary.device.GraphicsInterface_Package;
with javax.microedition.lcdui.Image_Package;
with org.allbinary.device.OpenGLESGraphics_Package;
with org.allbinary.image.opengles.OpenGLSurfaceChangedInterface_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;

package body org.allbinary.device.OpenGLESNullGraphicsFactory_Package is

   subtype OpenGLESGraphics_Access is org.allbinary.device.OpenGLESGraphics_Package_References.OpenGLESGraphics_Access;
   function "=" (Left, Right : OpenGLESGraphics_Access) return Boolean renames org.allbinary.device.OpenGLESGraphics_Package_References."=";
   subtype OpenGLESGraphics_Access_Array is org.allbinary.device.OpenGLESGraphics_Package_References.OpenGLESGraphics_Access_Array;
   function "=" (Left, Right : OpenGLESGraphics_Access_Array) return Boolean renames org.allbinary.device.OpenGLESGraphics_Package_References."=";
   subtype OpenGLESGraphics_Access_Array_Access is org.allbinary.device.OpenGLESGraphics_Package_References.OpenGLESGraphics_Access_Array_Access;
   function "=" (Left, Right : OpenGLESGraphics_Access_Array_Access) return Boolean renames org.allbinary.device.OpenGLESGraphics_Package_References."=";
   subtype OpenGLESGraphics_Access_Array_Access_Array is org.allbinary.device.OpenGLESGraphics_Package_References.OpenGLESGraphics_Access_Array_Access_Array;
   function "=" (Left, Right : OpenGLESGraphics_Access_Array_Access_Array) return Boolean renames org.allbinary.device.OpenGLESGraphics_Package_References."=";
   subtype OpenGLESGraphics_Access_Array_Access_Array_Access is org.allbinary.device.OpenGLESGraphics_Package_References.OpenGLESGraphics_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OpenGLESGraphics_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.device.OpenGLESGraphics_Package_References."=";
   procedure Initialize_Fields (This : in out OpenGLESNullGraphicsFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out OpenGLESNullGraphicsFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return OpenGLESNullGraphicsFactory_Access is
      This : constant OpenGLESNullGraphicsFactory_Access := new OpenGLESNullGraphicsFactory;
   begin
      OpenGLESNullGraphicsFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return OpenGLESGraphics_Access is
   begin
        return OpenGLESGraphics_Access (OpenGLESNullGraphicsFactory_Package.instance);
   end getInstance;

begin
   null;
   instance := OpenGLESGraphics_Package.Create;

end org.allbinary.device.OpenGLESNullGraphicsFactory_Package;


