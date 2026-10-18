--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with javax.microedition.khronos.opengles.GL10_Package; use javax.microedition.khronos.opengles.GL10_Package;
with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;

package org.allbinary.graphics.opengles.OpenGLLogUtil_Package is

   package GL10_Package renames Standard.javax.microedition.khronos.opengles.GL10_Package;
   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;

   type OpenGLLogUtil is tagged;
   type OpenGLLogUtil_Access is access all OpenGLLogUtil'Class;
   type OpenGLLogUtil_Access_Array is array (Natural range <>) of OpenGLLogUtil_Access;
   type OpenGLLogUtil_Access_Array_Access is access all OpenGLLogUtil_Access_Array;
   type OpenGLLogUtil_Access_Array_Access_Array is array (Natural range <>) of OpenGLLogUtil_Access_Array_Access;
   type OpenGLLogUtil_Access_Array_Access_Array_Access is access all OpenGLLogUtil_Access_Array_Access_Array;

   type OpenGLLogUtil is new Java_Object with record
      MAX_TEXTURE : Unbounded_String;
      LOG_ERROR : Unbounded_String;
      IMAGE : Unbounded_String;
   end record;
   instance : OpenGLLogUtil_Access;

   procedure Initialize (This : in out OpenGLLogUtil'Class);
   function Create return OpenGLLogUtil_Access;
   function getInstance return OpenGLLogUtil_Access;
   procedure logError (This : in out OpenGLLogUtil; gl_Param : access GL10_Package.GL10'Class);
   procedure logError (This : in out OpenGLLogUtil; gl_Param : access GL10_Package.GL10'Class; image_Param : access Image_Package.Image'Class);

end org.allbinary.graphics.opengles.OpenGLLogUtil_Package;


