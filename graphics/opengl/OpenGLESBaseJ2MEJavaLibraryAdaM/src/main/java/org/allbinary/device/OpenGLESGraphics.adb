--  Generated Code Do Not Modify


with javax.microedition.khronos.opengles.GL_Package; use javax.microedition.khronos.opengles.GL_Package;
with javax.microedition.khronos.opengles.GL_Package_References;
with javax.microedition.khronos.opengles.GL10_Package; use javax.microedition.khronos.opengles.GL10_Package;
with javax.microedition.khronos.opengles.GL10_Package_References;
with javax.microedition.lcdui.Font_Package; use javax.microedition.lcdui.Font_Package;
with javax.microedition.lcdui.Font_Package_References;
with org.allbinary.graphics.font.FontDebugBase_Package; use org.allbinary.graphics.font.FontDebugBase_Package;
with org.allbinary.graphics.font.FontDebugBase_Package_References;
with org.allbinary.image.opengles.OpenGLSurfaceChangedInterface_Package; use org.allbinary.image.opengles.OpenGLSurfaceChangedInterface_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with org.allbinary.device.NullGL10_Package; use org.allbinary.device.NullGL10_Package;
with org.allbinary.device.NullGL10_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;

package body org.allbinary.device.OpenGLESGraphics_Package is

   subtype GL_Access is javax.microedition.khronos.opengles.GL_Package_References.GL_Access;
   function "=" (Left, Right : GL_Access) return Boolean renames javax.microedition.khronos.opengles.GL_Package_References."=";
   subtype GL_Access_Array is javax.microedition.khronos.opengles.GL_Package_References.GL_Access_Array;
   function "=" (Left, Right : GL_Access_Array) return Boolean renames javax.microedition.khronos.opengles.GL_Package_References."=";
   subtype GL_Access_Array_Access is javax.microedition.khronos.opengles.GL_Package_References.GL_Access_Array_Access;
   function "=" (Left, Right : GL_Access_Array_Access) return Boolean renames javax.microedition.khronos.opengles.GL_Package_References."=";
   subtype GL_Access_Array_Access_Array is javax.microedition.khronos.opengles.GL_Package_References.GL_Access_Array_Access_Array;
   function "=" (Left, Right : GL_Access_Array_Access_Array) return Boolean renames javax.microedition.khronos.opengles.GL_Package_References."=";
   subtype GL_Access_Array_Access_Array_Access is javax.microedition.khronos.opengles.GL_Package_References.GL_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GL_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.khronos.opengles.GL_Package_References."=";
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
   subtype Font_Access is javax.microedition.lcdui.Font_Package_References.Font_Access;
   function "=" (Left, Right : Font_Access) return Boolean renames javax.microedition.lcdui.Font_Package_References."=";
   subtype Font_Access_Array is javax.microedition.lcdui.Font_Package_References.Font_Access_Array;
   function "=" (Left, Right : Font_Access_Array) return Boolean renames javax.microedition.lcdui.Font_Package_References."=";
   subtype Font_Access_Array_Access is javax.microedition.lcdui.Font_Package_References.Font_Access_Array_Access;
   function "=" (Left, Right : Font_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Font_Package_References."=";
   subtype Font_Access_Array_Access_Array is javax.microedition.lcdui.Font_Package_References.Font_Access_Array_Access_Array;
   function "=" (Left, Right : Font_Access_Array_Access_Array) return Boolean renames javax.microedition.lcdui.Font_Package_References."=";
   subtype Font_Access_Array_Access_Array_Access is javax.microedition.lcdui.Font_Package_References.Font_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Font_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Font_Package_References."=";
   subtype FontDebugBase_Access is org.allbinary.graphics.font.FontDebugBase_Package_References.FontDebugBase_Access;
   function "=" (Left, Right : FontDebugBase_Access) return Boolean renames org.allbinary.graphics.font.FontDebugBase_Package_References."=";
   subtype FontDebugBase_Access_Array is org.allbinary.graphics.font.FontDebugBase_Package_References.FontDebugBase_Access_Array;
   function "=" (Left, Right : FontDebugBase_Access_Array) return Boolean renames org.allbinary.graphics.font.FontDebugBase_Package_References."=";
   subtype FontDebugBase_Access_Array_Access is org.allbinary.graphics.font.FontDebugBase_Package_References.FontDebugBase_Access_Array_Access;
   function "=" (Left, Right : FontDebugBase_Access_Array_Access) return Boolean renames org.allbinary.graphics.font.FontDebugBase_Package_References."=";
   subtype FontDebugBase_Access_Array_Access_Array is org.allbinary.graphics.font.FontDebugBase_Package_References.FontDebugBase_Access_Array_Access_Array;
   function "=" (Left, Right : FontDebugBase_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.font.FontDebugBase_Package_References."=";
   subtype FontDebugBase_Access_Array_Access_Array_Access is org.allbinary.graphics.font.FontDebugBase_Package_References.FontDebugBase_Access_Array_Access_Array_Access;
   function "=" (Left, Right : FontDebugBase_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.font.FontDebugBase_Package_References."=";
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   function "=" (Left, Right : CommonStrings_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   procedure Initialize_Fields (This : in out OpenGLESGraphics'Class) is
   begin
      null;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.gl := GL10_Access (NullGL10_Package.NULL_GL10);
   end Initialize_Fields;


   procedure Initialize (This : in out OpenGLESGraphics'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return OpenGLESGraphics_Access is
      This : constant OpenGLESGraphics_Access := new OpenGLESGraphics;
   begin
      OpenGLESGraphics_Package.Initialize (This.all);
      return This;
   end Create;

   procedure updateGL (This : in out OpenGLESGraphics; gl_Param : access GL_Package.GL'Class) is
      gl : constant GL_Access := GL_Access (gl_Param);
   begin
        null;
   end updateGL;

   procedure set (This : in out OpenGLESGraphics; gl_Param : access GL_Package.GL'Class) is
      gl : constant GL_Access := GL_Access (gl_Param);
   begin
        null;
   end set;

   --  throws Exception
   procedure init (This : in out OpenGLESGraphics) is
   begin
        null;
   end init;

   --  throws Exception
   procedure update (This : in out OpenGLESGraphics) is
   begin
        null;
   end update;

   procedure setOrthoginalMode (This : in out OpenGLESGraphics) is
   begin
        null;
   end setOrthoginalMode;

   procedure setCameraMode (This : in out OpenGLESGraphics) is
   begin
        null;
   end setCameraMode;

   function getGlP (This : in out OpenGLESGraphics) return GL10_Access is
   begin
        return This.gl;
   end getGlP;

   procedure setFontDebug (This : in out OpenGLESGraphics; font_Param : access Font_Package.Font'Class; fontDebug_Param : access FontDebugBase_Package.FontDebugBase'Class) is
      font : constant Font_Access := Font_Access (font_Param);
      fontDebug : constant FontDebugBase_Access := FontDebugBase_Access (fontDebug_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end setFontDebug;

end org.allbinary.device.OpenGLESGraphics_Package;


