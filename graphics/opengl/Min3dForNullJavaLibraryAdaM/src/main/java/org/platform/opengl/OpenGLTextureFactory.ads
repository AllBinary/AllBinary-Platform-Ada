--  Generated Code Do Not Modify

with AllBinary_Java;
limited with org.platform.opengl.OpenGLTextureFactory_Package;
package org.platform.opengl.OpenGLTextureFactory_Package_References is
   type OpenGLTextureFactory_Access is access all org.platform.opengl.OpenGLTextureFactory_Package.OpenGLTextureFactory'Class;
   type OpenGLTextureFactory_Access_Array is array (Natural range <>) of OpenGLTextureFactory_Access;
   type OpenGLTextureFactory_Access_Array_Access is access all OpenGLTextureFactory_Access_Array;
   type OpenGLTextureFactory_Access_Array_Access_Array is array (Natural range <>) of OpenGLTextureFactory_Access_Array_Access;
   type OpenGLTextureFactory_Access_Array_Access_Array_Access is access all OpenGLTextureFactory_Access_Array_Access_Array;
   type OpenGLTextureFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : OpenGLTextureFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : OpenGLTextureFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new OpenGLTextureFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_OpenGLTextureFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return OpenGLTextureFactory_Access_Array_Access is (if Value /= null and then Value.all in OpenGLTextureFactory_Access_Array_Object'Class then OpenGLTextureFactory_Access_Array_Object'Class (Value.all).Value else null);
   type OpenGLTextureFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : OpenGLTextureFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : OpenGLTextureFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new OpenGLTextureFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_OpenGLTextureFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return OpenGLTextureFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in OpenGLTextureFactory_Access_Array_Access_Array_Object'Class then OpenGLTextureFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.platform.opengl.OpenGLTextureFactory_Package_References;

with org.platform.opengl.OpenGLTextureFactory_Package_References;
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
with org.allbinary.platform.opengles.PlatformTextureBaseFactory_Package; use org.allbinary.platform.opengles.PlatformTextureBaseFactory_Package;
limited with org.platform.opengl.OpenGLGLUUtils_Package;
with org.platform.opengl.OpenGLGLUUtils_Package_References;

package org.platform.opengl.OpenGLTextureFactory_Package is

   package GL10_Package renames Standard.javax.microedition.khronos.opengles.GL10_Package;
   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package PlatformTextureBaseFactory_Package renames Standard.org.allbinary.platform.opengles.PlatformTextureBaseFactory_Package;
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
   subtype OpenGLGLUUtils_Access is org.platform.opengl.OpenGLGLUUtils_Package_References.OpenGLGLUUtils_Access;
   use type OpenGLGLUUtils_Access;
   subtype OpenGLGLUUtils_Access_Array is org.platform.opengl.OpenGLGLUUtils_Package_References.OpenGLGLUUtils_Access_Array;
   use type OpenGLGLUUtils_Access_Array;
   subtype OpenGLGLUUtils_Access_Array_Access is org.platform.opengl.OpenGLGLUUtils_Package_References.OpenGLGLUUtils_Access_Array_Access;
   use type OpenGLGLUUtils_Access_Array_Access;
   subtype OpenGLGLUUtils_Access_Array_Access_Array is org.platform.opengl.OpenGLGLUUtils_Package_References.OpenGLGLUUtils_Access_Array_Access_Array;
   use type OpenGLGLUUtils_Access_Array_Access_Array;
   subtype OpenGLGLUUtils_Access_Array_Access_Array_Access is org.platform.opengl.OpenGLGLUUtils_Package_References.OpenGLGLUUtils_Access_Array_Access_Array_Access;
   use type OpenGLGLUUtils_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype OpenGLTextureFactory_Access is org.platform.opengl.OpenGLTextureFactory_Package_References.OpenGLTextureFactory_Access;
   function "=" (Left, Right : OpenGLTextureFactory_Access) return Boolean renames org.platform.opengl.OpenGLTextureFactory_Package_References."=";
   subtype OpenGLTextureFactory_Access_Array is org.platform.opengl.OpenGLTextureFactory_Package_References.OpenGLTextureFactory_Access_Array;
   function "=" (Left, Right : OpenGLTextureFactory_Access_Array) return Boolean renames org.platform.opengl.OpenGLTextureFactory_Package_References."=";
   subtype OpenGLTextureFactory_Access_Array_Access is org.platform.opengl.OpenGLTextureFactory_Package_References.OpenGLTextureFactory_Access_Array_Access;
   function "=" (Left, Right : OpenGLTextureFactory_Access_Array_Access) return Boolean renames org.platform.opengl.OpenGLTextureFactory_Package_References."=";
   function Java_Box (Value : OpenGLTextureFactory_Access_Array_Access) return Java_Object_Access renames org.platform.opengl.OpenGLTextureFactory_Package_References.Java_Box;
   function Java_Unbox_OpenGLTextureFactory_Access_Array (Value : access Java_Object'Class) return OpenGLTextureFactory_Access_Array_Access renames org.platform.opengl.OpenGLTextureFactory_Package_References.Java_Unbox_OpenGLTextureFactory_Access_Array;
   subtype OpenGLTextureFactory_Access_Array_Access_Array is org.platform.opengl.OpenGLTextureFactory_Package_References.OpenGLTextureFactory_Access_Array_Access_Array;
   function "=" (Left, Right : OpenGLTextureFactory_Access_Array_Access_Array) return Boolean renames org.platform.opengl.OpenGLTextureFactory_Package_References."=";
   subtype OpenGLTextureFactory_Access_Array_Access_Array_Access is org.platform.opengl.OpenGLTextureFactory_Package_References.OpenGLTextureFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OpenGLTextureFactory_Access_Array_Access_Array_Access) return Boolean renames org.platform.opengl.OpenGLTextureFactory_Package_References."=";
   function Java_Box (Value : OpenGLTextureFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.platform.opengl.OpenGLTextureFactory_Package_References.Java_Box;
   function Java_Unbox_OpenGLTextureFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return OpenGLTextureFactory_Access_Array_Access_Array_Access renames org.platform.opengl.OpenGLTextureFactory_Package_References.Java_Unbox_OpenGLTextureFactory_Access_Array_Access_Array;

   type OpenGLTextureFactory is new PlatformTextureBaseFactory with record
      gluUtils : OpenGLGLUUtils_Access;
   end record;
   instance : OpenGLTextureFactory_Access;

   procedure Initialize (This : in out OpenGLTextureFactory'Class);
   function Create return OpenGLTextureFactory_Access;
   function getInstance return OpenGLTextureFactory_Access;
   procedure load (This : in out OpenGLTextureFactory; gl_Param : access GL10_Package.GL10'Class; target : Integer; level : Integer; image_Param : access Image_Package.Image'Class; border : Integer; flip : Boolean);

end org.platform.opengl.OpenGLTextureFactory_Package;


