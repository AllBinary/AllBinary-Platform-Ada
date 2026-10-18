--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with javax.microedition.khronos.opengles.GL_Package; use javax.microedition.khronos.opengles.GL_Package;
with javax.microedition.khronos.opengles.GL10_Package; use javax.microedition.khronos.opengles.GL10_Package;
with javax.microedition.lcdui.Font_Package; use javax.microedition.lcdui.Font_Package;
with org.allbinary.graphics.font.FontDebugBase_Package; use org.allbinary.graphics.font.FontDebugBase_Package;
with org.allbinary.image.opengles.OpenGLSurfaceChangedInterface_Package; use org.allbinary.image.opengles.OpenGLSurfaceChangedInterface_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.device.GraphicsInterface_Package; use org.allbinary.device.GraphicsInterface_Package;

package org.allbinary.device.OpenGLESGraphics_Package is

   package GL_Package renames Standard.javax.microedition.khronos.opengles.GL_Package;
   package GL10_Package renames Standard.javax.microedition.khronos.opengles.GL10_Package;
   package Font_Package renames Standard.javax.microedition.lcdui.Font_Package;
   package FontDebugBase_Package renames Standard.org.allbinary.graphics.font.FontDebugBase_Package;
   package OpenGLSurfaceChangedInterface_Package renames Standard.org.allbinary.image.opengles.OpenGLSurfaceChangedInterface_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type OpenGLESGraphics is tagged;
   type OpenGLESGraphics_Access is access all OpenGLESGraphics'Class;
   type OpenGLESGraphics_Access_Array is array (Natural range <>) of OpenGLESGraphics_Access;
   type OpenGLESGraphics_Access_Array_Access is access all OpenGLESGraphics_Access_Array;
   type OpenGLESGraphics_Access_Array_Access_Array is array (Natural range <>) of OpenGLESGraphics_Access_Array_Access;
   type OpenGLESGraphics_Access_Array_Access_Array_Access is access all OpenGLESGraphics_Access_Array_Access_Array;

   type OpenGLESGraphics is new Java_Object and OpenGLSurfaceChangedInterface and GraphicsInterface with record
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
   function getGlP (This : in out OpenGLESGraphics) return GL10_Access;
   procedure setFontDebug (This : in out OpenGLESGraphics; font_Param : access Font_Package.Font'Class; fontDebug_Param : access FontDebugBase_Package.FontDebugBase'Class);

end org.allbinary.device.OpenGLESGraphics_Package;


