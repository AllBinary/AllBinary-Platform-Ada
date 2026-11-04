--  Generated Code Do Not Modify

limited with org.allbinary.graphics.opengles.OpenGLUtil_Package;
package org.allbinary.graphics.opengles.OpenGLUtil_Package_References is
   type OpenGLUtil_Access is access all org.allbinary.graphics.opengles.OpenGLUtil_Package.OpenGLUtil'Class;
   type OpenGLUtil_Access_Array is array (Natural range <>) of OpenGLUtil_Access;
   type OpenGLUtil_Access_Array_Access is access all OpenGLUtil_Access_Array;
   type OpenGLUtil_Access_Array_Access_Array is array (Natural range <>) of OpenGLUtil_Access_Array_Access;
   type OpenGLUtil_Access_Array_Access_Array_Access is access all OpenGLUtil_Access_Array_Access_Array;
end org.allbinary.graphics.opengles.OpenGLUtil_Package_References;

with org.allbinary.graphics.opengles.OpenGLUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.lcdui.Image_Package;
with javax.microedition.lcdui.Image_Package_References;
with java.lang.Runnable_Package; use java.lang.Runnable_Package;

package org.allbinary.graphics.opengles.OpenGLUtil_Package is

   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package Runnable_Package renames Standard.java.lang.Runnable_Package;
   package Reference_Types is
   subtype Image_Access is javax.microedition.lcdui.Image_Package_References.Image_Access;
   use type Image_Access;
   subtype Image_Access_Array is javax.microedition.lcdui.Image_Package_References.Image_Access_Array;
   use type Image_Access_Array;
   subtype Image_Access_Array_Access is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access;
   use type Image_Access_Array_Access;
   subtype Image_Access_Array_Access_Array is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access_Array;
   use type Image_Access_Array_Access_Array;
   subtype Image_Access_Array_Access_Array_Access is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access_Array_Access;
   use type Image_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype OpenGLUtil_Access is org.allbinary.graphics.opengles.OpenGLUtil_Package_References.OpenGLUtil_Access;
   function "=" (Left, Right : OpenGLUtil_Access) return Boolean renames org.allbinary.graphics.opengles.OpenGLUtil_Package_References."=";
   subtype OpenGLUtil_Access_Array is org.allbinary.graphics.opengles.OpenGLUtil_Package_References.OpenGLUtil_Access_Array;
   function "=" (Left, Right : OpenGLUtil_Access_Array) return Boolean renames org.allbinary.graphics.opengles.OpenGLUtil_Package_References."=";
   subtype OpenGLUtil_Access_Array_Access is org.allbinary.graphics.opengles.OpenGLUtil_Package_References.OpenGLUtil_Access_Array_Access;
   function "=" (Left, Right : OpenGLUtil_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.OpenGLUtil_Package_References."=";
   subtype OpenGLUtil_Access_Array_Access_Array is org.allbinary.graphics.opengles.OpenGLUtil_Package_References.OpenGLUtil_Access_Array_Access_Array;
   function "=" (Left, Right : OpenGLUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.opengles.OpenGLUtil_Package_References."=";
   subtype OpenGLUtil_Access_Array_Access_Array_Access is org.allbinary.graphics.opengles.OpenGLUtil_Package_References.OpenGLUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OpenGLUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.OpenGLUtil_Package_References."=";

   type OpenGLUtil is new Java_Object with null record;
   instance : OpenGLUtil_Access;

   procedure Initialize (This : in out OpenGLUtil'Class);
   function Create return OpenGLUtil_Access;
   function getInstance return OpenGLUtil_Access;
   function addImage (This : in out OpenGLUtil; image_Param : access Image_Package.Image'Class) return Image_Access;
   procedure addImage (This : in out OpenGLUtil; image_Param : access Image_Package.Image'Class);
   procedure clear (This : in out OpenGLUtil);
   procedure addRunnable (This : in out OpenGLUtil; runnable_Param : access Runnable_Package.Runnable'Class);

end org.allbinary.graphics.opengles.OpenGLUtil_Package;


