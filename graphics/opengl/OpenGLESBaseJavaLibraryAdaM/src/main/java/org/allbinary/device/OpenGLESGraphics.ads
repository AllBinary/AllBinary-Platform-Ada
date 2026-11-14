--  Generated Code Do Not Modify

with AllBinary_Java;
limited with org.allbinary.device.OpenGLESGraphics_Package;
package org.allbinary.device.OpenGLESGraphics_Package_References is
   type OpenGLESGraphics_Access is access all org.allbinary.device.OpenGLESGraphics_Package.OpenGLESGraphics'Class;
   type OpenGLESGraphics_Access_Array is array (Natural range <>) of OpenGLESGraphics_Access;
   type OpenGLESGraphics_Access_Array_Access is access all OpenGLESGraphics_Access_Array;
   type OpenGLESGraphics_Access_Array_Access_Array is array (Natural range <>) of OpenGLESGraphics_Access_Array_Access;
   type OpenGLESGraphics_Access_Array_Access_Array_Access is access all OpenGLESGraphics_Access_Array_Access_Array;
   type OpenGLESGraphics_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : OpenGLESGraphics_Access_Array_Access;
   end record;
   function Java_Box (Value : OpenGLESGraphics_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new OpenGLESGraphics_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_OpenGLESGraphics_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return OpenGLESGraphics_Access_Array_Access is (if Value /= null and then Value.all in OpenGLESGraphics_Access_Array_Object'Class then OpenGLESGraphics_Access_Array_Object'Class (Value.all).Value else null);
   type OpenGLESGraphics_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : OpenGLESGraphics_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : OpenGLESGraphics_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new OpenGLESGraphics_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_OpenGLESGraphics_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return OpenGLESGraphics_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in OpenGLESGraphics_Access_Array_Access_Array_Object'Class then OpenGLESGraphics_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.device.OpenGLESGraphics_Package_References;

with org.allbinary.device.OpenGLESGraphics_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.khronos.opengles.GL_Package;
with javax.microedition.khronos.opengles.GL_Package_References;
limited with javax.microedition.khronos.opengles.GL10_Package;
with javax.microedition.khronos.opengles.GL10_Package_References;
limited with javax.microedition.lcdui.Font_Package;
with javax.microedition.lcdui.Font_Package_References;
with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
limited with org.allbinary.graphics.font.FontDebugBase_Package;
with org.allbinary.graphics.font.FontDebugBase_Package_References;
with org.allbinary.image.opengles.OpenGLSurfaceChangedInterface_Package; use org.allbinary.image.opengles.OpenGLSurfaceChangedInterface_Package;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with org.allbinary.device.GraphicsInterface_Package; use org.allbinary.device.GraphicsInterface_Package;

package org.allbinary.device.OpenGLESGraphics_Package is

   package GL_Package renames Standard.javax.microedition.khronos.opengles.GL_Package;
   package GL10_Package renames Standard.javax.microedition.khronos.opengles.GL10_Package;
   package Font_Package renames Standard.javax.microedition.lcdui.Font_Package;
   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package FontDebugBase_Package renames Standard.org.allbinary.graphics.font.FontDebugBase_Package;
   package OpenGLSurfaceChangedInterface_Package renames Standard.org.allbinary.image.opengles.OpenGLSurfaceChangedInterface_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Reference_Types is
   subtype GL_Access is javax.microedition.khronos.opengles.GL_Package_References.GL_Access;
   use type GL_Access;
   subtype GL_Access_Array is javax.microedition.khronos.opengles.GL_Package_References.GL_Access_Array;
   use type GL_Access_Array;
   subtype GL_Access_Array_Access is javax.microedition.khronos.opengles.GL_Package_References.GL_Access_Array_Access;
   use type GL_Access_Array_Access;
   subtype GL_Access_Array_Access_Array is javax.microedition.khronos.opengles.GL_Package_References.GL_Access_Array_Access_Array;
   use type GL_Access_Array_Access_Array;
   subtype GL_Access_Array_Access_Array_Access is javax.microedition.khronos.opengles.GL_Package_References.GL_Access_Array_Access_Array_Access;
   use type GL_Access_Array_Access_Array_Access;
   subtype GL10_Access is javax.microedition.khronos.opengles.GL10_Package_References.GL10_Access;
   use type GL10_Access;
   subtype GL10_Access_Array is javax.microedition.khronos.opengles.GL10_Package_References.GL10_Access_Array;
   use type GL10_Access_Array;
   subtype GL10_Access_Array_Access is javax.microedition.khronos.opengles.GL10_Package_References.GL10_Access_Array_Access;
   use type GL10_Access_Array_Access;
   subtype GL10_Access_Array_Access_Array is javax.microedition.khronos.opengles.GL10_Package_References.GL10_Access_Array_Access_Array;
   use type GL10_Access_Array_Access_Array;
   subtype GL10_Access_Array_Access_Array_Access is javax.microedition.khronos.opengles.GL10_Package_References.GL10_Access_Array_Access_Array_Access;
   use type GL10_Access_Array_Access_Array_Access;
   subtype Font_Access is javax.microedition.lcdui.Font_Package_References.Font_Access;
   use type Font_Access;
   subtype Font_Access_Array is javax.microedition.lcdui.Font_Package_References.Font_Access_Array;
   use type Font_Access_Array;
   subtype Font_Access_Array_Access is javax.microedition.lcdui.Font_Package_References.Font_Access_Array_Access;
   use type Font_Access_Array_Access;
   subtype Font_Access_Array_Access_Array is javax.microedition.lcdui.Font_Package_References.Font_Access_Array_Access_Array;
   use type Font_Access_Array_Access_Array;
   subtype Font_Access_Array_Access_Array_Access is javax.microedition.lcdui.Font_Package_References.Font_Access_Array_Access_Array_Access;
   use type Font_Access_Array_Access_Array_Access;
   subtype FontDebugBase_Access is org.allbinary.graphics.font.FontDebugBase_Package_References.FontDebugBase_Access;
   use type FontDebugBase_Access;
   subtype FontDebugBase_Access_Array is org.allbinary.graphics.font.FontDebugBase_Package_References.FontDebugBase_Access_Array;
   use type FontDebugBase_Access_Array;
   subtype FontDebugBase_Access_Array_Access is org.allbinary.graphics.font.FontDebugBase_Package_References.FontDebugBase_Access_Array_Access;
   use type FontDebugBase_Access_Array_Access;
   subtype FontDebugBase_Access_Array_Access_Array is org.allbinary.graphics.font.FontDebugBase_Package_References.FontDebugBase_Access_Array_Access_Array;
   use type FontDebugBase_Access_Array_Access_Array;
   subtype FontDebugBase_Access_Array_Access_Array_Access is org.allbinary.graphics.font.FontDebugBase_Package_References.FontDebugBase_Access_Array_Access_Array_Access;
   use type FontDebugBase_Access_Array_Access_Array_Access;
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype OpenGLESGraphics_Access is org.allbinary.device.OpenGLESGraphics_Package_References.OpenGLESGraphics_Access;
   function "=" (Left, Right : OpenGLESGraphics_Access) return Boolean renames org.allbinary.device.OpenGLESGraphics_Package_References."=";
   subtype OpenGLESGraphics_Access_Array is org.allbinary.device.OpenGLESGraphics_Package_References.OpenGLESGraphics_Access_Array;
   function "=" (Left, Right : OpenGLESGraphics_Access_Array) return Boolean renames org.allbinary.device.OpenGLESGraphics_Package_References."=";
   subtype OpenGLESGraphics_Access_Array_Access is org.allbinary.device.OpenGLESGraphics_Package_References.OpenGLESGraphics_Access_Array_Access;
   function "=" (Left, Right : OpenGLESGraphics_Access_Array_Access) return Boolean renames org.allbinary.device.OpenGLESGraphics_Package_References."=";
   function Java_Box (Value : OpenGLESGraphics_Access_Array_Access) return Java_Object_Access renames org.allbinary.device.OpenGLESGraphics_Package_References.Java_Box;
   function Java_Unbox_OpenGLESGraphics_Access_Array (Value : access Java_Object'Class) return OpenGLESGraphics_Access_Array_Access renames org.allbinary.device.OpenGLESGraphics_Package_References.Java_Unbox_OpenGLESGraphics_Access_Array;
   subtype OpenGLESGraphics_Access_Array_Access_Array is org.allbinary.device.OpenGLESGraphics_Package_References.OpenGLESGraphics_Access_Array_Access_Array;
   function "=" (Left, Right : OpenGLESGraphics_Access_Array_Access_Array) return Boolean renames org.allbinary.device.OpenGLESGraphics_Package_References."=";
   subtype OpenGLESGraphics_Access_Array_Access_Array_Access is org.allbinary.device.OpenGLESGraphics_Package_References.OpenGLESGraphics_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OpenGLESGraphics_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.device.OpenGLESGraphics_Package_References."=";
   function Java_Box (Value : OpenGLESGraphics_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.device.OpenGLESGraphics_Package_References.Java_Box;
   function Java_Unbox_OpenGLESGraphics_Access_Array_Access_Array (Value : access Java_Object'Class) return OpenGLESGraphics_Access_Array_Access_Array_Access renames org.allbinary.device.OpenGLESGraphics_Package_References.Java_Unbox_OpenGLESGraphics_Access_Array_Access_Array;

   type OpenGLESGraphics is new Graphics_Package.Graphics and OpenGLSurfaceChangedInterface and GraphicsInterface with record
      commonStrings : CommonStrings_Access;
      gl : GL10_Access;
   end record;

   procedure Initialize (This : in out OpenGLESGraphics'Class);
   function Create return OpenGLESGraphics_Access;
   procedure updateGL (This : in out OpenGLESGraphics; gl_Param : access GL_Package.GL'Class);
   procedure set (This : in out OpenGLESGraphics; gl_Param : access GL_Package.GL'Class);
   procedure init (This : in out OpenGLESGraphics);
   procedure update (This : in out OpenGLESGraphics);
   procedure setOrthoginalMode (This : in out OpenGLESGraphics);
   procedure setCameraMode (This : in out OpenGLESGraphics);
   function getGl10 (This : in out OpenGLESGraphics) return GL10_Access;
   procedure setFontDebug (This : in out OpenGLESGraphics; font_Param : access Font_Package.Font'Class; fontDebug_Param : access FontDebugBase_Package.FontDebugBase'Class);

end org.allbinary.device.OpenGLESGraphics_Package;


