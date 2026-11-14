--  Generated Code Do Not Modify

with AllBinary_Java;
limited with org.allbinary.graphics.opengles.OpenGLLogUtil_Package;
package org.allbinary.graphics.opengles.OpenGLLogUtil_Package_References is
   type OpenGLLogUtil_Access is access all org.allbinary.graphics.opengles.OpenGLLogUtil_Package.OpenGLLogUtil'Class;
   type OpenGLLogUtil_Access_Array is array (Natural range <>) of OpenGLLogUtil_Access;
   type OpenGLLogUtil_Access_Array_Access is access all OpenGLLogUtil_Access_Array;
   type OpenGLLogUtil_Access_Array_Access_Array is array (Natural range <>) of OpenGLLogUtil_Access_Array_Access;
   type OpenGLLogUtil_Access_Array_Access_Array_Access is access all OpenGLLogUtil_Access_Array_Access_Array;
   type OpenGLLogUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : OpenGLLogUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : OpenGLLogUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new OpenGLLogUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_OpenGLLogUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return OpenGLLogUtil_Access_Array_Access is (if Value /= null and then Value.all in OpenGLLogUtil_Access_Array_Object'Class then OpenGLLogUtil_Access_Array_Object'Class (Value.all).Value else null);
   type OpenGLLogUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : OpenGLLogUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : OpenGLLogUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new OpenGLLogUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_OpenGLLogUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return OpenGLLogUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in OpenGLLogUtil_Access_Array_Access_Array_Object'Class then OpenGLLogUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.opengles.OpenGLLogUtil_Package_References;

with org.allbinary.graphics.opengles.OpenGLLogUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.khronos.opengles.GL10_Package;
with javax.microedition.khronos.opengles.GL10_Package_References;
limited with javax.microedition.lcdui.Image_Package;
with javax.microedition.lcdui.Image_Package_References;

package org.allbinary.graphics.opengles.OpenGLLogUtil_Package is

   package GL10_Package renames Standard.javax.microedition.khronos.opengles.GL10_Package;
   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package Reference_Types is
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


   subtype OpenGLLogUtil_Access is org.allbinary.graphics.opengles.OpenGLLogUtil_Package_References.OpenGLLogUtil_Access;
   function "=" (Left, Right : OpenGLLogUtil_Access) return Boolean renames org.allbinary.graphics.opengles.OpenGLLogUtil_Package_References."=";
   subtype OpenGLLogUtil_Access_Array is org.allbinary.graphics.opengles.OpenGLLogUtil_Package_References.OpenGLLogUtil_Access_Array;
   function "=" (Left, Right : OpenGLLogUtil_Access_Array) return Boolean renames org.allbinary.graphics.opengles.OpenGLLogUtil_Package_References."=";
   subtype OpenGLLogUtil_Access_Array_Access is org.allbinary.graphics.opengles.OpenGLLogUtil_Package_References.OpenGLLogUtil_Access_Array_Access;
   function "=" (Left, Right : OpenGLLogUtil_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.OpenGLLogUtil_Package_References."=";
   function Java_Box (Value : OpenGLLogUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.opengles.OpenGLLogUtil_Package_References.Java_Box;
   function Java_Unbox_OpenGLLogUtil_Access_Array (Value : access Java_Object'Class) return OpenGLLogUtil_Access_Array_Access renames org.allbinary.graphics.opengles.OpenGLLogUtil_Package_References.Java_Unbox_OpenGLLogUtil_Access_Array;
   subtype OpenGLLogUtil_Access_Array_Access_Array is org.allbinary.graphics.opengles.OpenGLLogUtil_Package_References.OpenGLLogUtil_Access_Array_Access_Array;
   function "=" (Left, Right : OpenGLLogUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.opengles.OpenGLLogUtil_Package_References."=";
   subtype OpenGLLogUtil_Access_Array_Access_Array_Access is org.allbinary.graphics.opengles.OpenGLLogUtil_Package_References.OpenGLLogUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OpenGLLogUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.OpenGLLogUtil_Package_References."=";
   function Java_Box (Value : OpenGLLogUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.opengles.OpenGLLogUtil_Package_References.Java_Box;
   function Java_Unbox_OpenGLLogUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return OpenGLLogUtil_Access_Array_Access_Array_Access renames org.allbinary.graphics.opengles.OpenGLLogUtil_Package_References.Java_Unbox_OpenGLLogUtil_Access_Array_Access_Array;

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


