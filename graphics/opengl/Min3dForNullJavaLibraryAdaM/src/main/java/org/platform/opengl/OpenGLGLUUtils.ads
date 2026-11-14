--  Generated Code Do Not Modify

with AllBinary_Java;
limited with org.platform.opengl.OpenGLGLUUtils_Package;
package org.platform.opengl.OpenGLGLUUtils_Package_References is
   type OpenGLGLUUtils_Access is access all org.platform.opengl.OpenGLGLUUtils_Package.OpenGLGLUUtils'Class;
   type OpenGLGLUUtils_Access_Array is array (Natural range <>) of OpenGLGLUUtils_Access;
   type OpenGLGLUUtils_Access_Array_Access is access all OpenGLGLUUtils_Access_Array;
   type OpenGLGLUUtils_Access_Array_Access_Array is array (Natural range <>) of OpenGLGLUUtils_Access_Array_Access;
   type OpenGLGLUUtils_Access_Array_Access_Array_Access is access all OpenGLGLUUtils_Access_Array_Access_Array;
   type OpenGLGLUUtils_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : OpenGLGLUUtils_Access_Array_Access;
   end record;
   function Java_Box (Value : OpenGLGLUUtils_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new OpenGLGLUUtils_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_OpenGLGLUUtils_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return OpenGLGLUUtils_Access_Array_Access is (if Value /= null and then Value.all in OpenGLGLUUtils_Access_Array_Object'Class then OpenGLGLUUtils_Access_Array_Object'Class (Value.all).Value else null);
   type OpenGLGLUUtils_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : OpenGLGLUUtils_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : OpenGLGLUUtils_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new OpenGLGLUUtils_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_OpenGLGLUUtils_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return OpenGLGLUUtils_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in OpenGLGLUUtils_Access_Array_Access_Array_Object'Class then OpenGLGLUUtils_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.platform.opengl.OpenGLGLUUtils_Package_References;

with org.platform.opengl.OpenGLGLUUtils_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.nio.ByteBuffer_Package; use java.nio.ByteBuffer_Package;
limited with javax.microedition.khronos.opengles.GL10_Package;
with javax.microedition.khronos.opengles.GL10_Package_References;
limited with org.allbinary.graphics.OpenGLBitmap_Package;
with org.allbinary.graphics.OpenGLBitmap_Package_References;
limited with org.allbinary.image.opengles.OpenGLESImage_Package;
with org.allbinary.image.opengles.OpenGLESImage_Package_References;

package org.platform.opengl.OpenGLGLUUtils_Package is

   package ByteBuffer_Package renames Standard.java.nio.ByteBuffer_Package;
   package GL10_Package renames Standard.javax.microedition.khronos.opengles.GL10_Package;
   package OpenGLBitmap_Package renames Standard.org.allbinary.graphics.OpenGLBitmap_Package;
   package OpenGLESImage_Package renames Standard.org.allbinary.image.opengles.OpenGLESImage_Package;
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
   subtype OpenGLBitmap_Access is org.allbinary.graphics.OpenGLBitmap_Package_References.OpenGLBitmap_Access;
   use type OpenGLBitmap_Access;
   subtype OpenGLBitmap_Access_Array is org.allbinary.graphics.OpenGLBitmap_Package_References.OpenGLBitmap_Access_Array;
   use type OpenGLBitmap_Access_Array;
   subtype OpenGLBitmap_Access_Array_Access is org.allbinary.graphics.OpenGLBitmap_Package_References.OpenGLBitmap_Access_Array_Access;
   use type OpenGLBitmap_Access_Array_Access;
   subtype OpenGLBitmap_Access_Array_Access_Array is org.allbinary.graphics.OpenGLBitmap_Package_References.OpenGLBitmap_Access_Array_Access_Array;
   use type OpenGLBitmap_Access_Array_Access_Array;
   subtype OpenGLBitmap_Access_Array_Access_Array_Access is org.allbinary.graphics.OpenGLBitmap_Package_References.OpenGLBitmap_Access_Array_Access_Array_Access;
   use type OpenGLBitmap_Access_Array_Access_Array_Access;
   subtype OpenGLESImage_Access is org.allbinary.image.opengles.OpenGLESImage_Package_References.OpenGLESImage_Access;
   use type OpenGLESImage_Access;
   subtype OpenGLESImage_Access_Array is org.allbinary.image.opengles.OpenGLESImage_Package_References.OpenGLESImage_Access_Array;
   use type OpenGLESImage_Access_Array;
   subtype OpenGLESImage_Access_Array_Access is org.allbinary.image.opengles.OpenGLESImage_Package_References.OpenGLESImage_Access_Array_Access;
   use type OpenGLESImage_Access_Array_Access;
   subtype OpenGLESImage_Access_Array_Access_Array is org.allbinary.image.opengles.OpenGLESImage_Package_References.OpenGLESImage_Access_Array_Access_Array;
   use type OpenGLESImage_Access_Array_Access_Array;
   subtype OpenGLESImage_Access_Array_Access_Array_Access is org.allbinary.image.opengles.OpenGLESImage_Package_References.OpenGLESImage_Access_Array_Access_Array_Access;
   use type OpenGLESImage_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype OpenGLGLUUtils_Access is org.platform.opengl.OpenGLGLUUtils_Package_References.OpenGLGLUUtils_Access;
   function "=" (Left, Right : OpenGLGLUUtils_Access) return Boolean renames org.platform.opengl.OpenGLGLUUtils_Package_References."=";
   subtype OpenGLGLUUtils_Access_Array is org.platform.opengl.OpenGLGLUUtils_Package_References.OpenGLGLUUtils_Access_Array;
   function "=" (Left, Right : OpenGLGLUUtils_Access_Array) return Boolean renames org.platform.opengl.OpenGLGLUUtils_Package_References."=";
   subtype OpenGLGLUUtils_Access_Array_Access is org.platform.opengl.OpenGLGLUUtils_Package_References.OpenGLGLUUtils_Access_Array_Access;
   function "=" (Left, Right : OpenGLGLUUtils_Access_Array_Access) return Boolean renames org.platform.opengl.OpenGLGLUUtils_Package_References."=";
   function Java_Box (Value : OpenGLGLUUtils_Access_Array_Access) return Java_Object_Access renames org.platform.opengl.OpenGLGLUUtils_Package_References.Java_Box;
   function Java_Unbox_OpenGLGLUUtils_Access_Array (Value : access Java_Object'Class) return OpenGLGLUUtils_Access_Array_Access renames org.platform.opengl.OpenGLGLUUtils_Package_References.Java_Unbox_OpenGLGLUUtils_Access_Array;
   subtype OpenGLGLUUtils_Access_Array_Access_Array is org.platform.opengl.OpenGLGLUUtils_Package_References.OpenGLGLUUtils_Access_Array_Access_Array;
   function "=" (Left, Right : OpenGLGLUUtils_Access_Array_Access_Array) return Boolean renames org.platform.opengl.OpenGLGLUUtils_Package_References."=";
   subtype OpenGLGLUUtils_Access_Array_Access_Array_Access is org.platform.opengl.OpenGLGLUUtils_Package_References.OpenGLGLUUtils_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OpenGLGLUUtils_Access_Array_Access_Array_Access) return Boolean renames org.platform.opengl.OpenGLGLUUtils_Package_References."=";
   function Java_Box (Value : OpenGLGLUUtils_Access_Array_Access_Array_Access) return Java_Object_Access renames org.platform.opengl.OpenGLGLUUtils_Package_References.Java_Box;
   function Java_Unbox_OpenGLGLUUtils_Access_Array_Access_Array (Value : access Java_Object'Class) return OpenGLGLUUtils_Access_Array_Access_Array_Access renames org.platform.opengl.OpenGLGLUUtils_Package_References.Java_Unbox_OpenGLGLUUtils_Access_Array_Access_Array;

   type OpenGLGLUUtils is new Java_Object with null record;
   instance : OpenGLGLUUtils_Access;

   procedure Initialize (This : in out OpenGLGLUUtils'Class);
   function Create return OpenGLGLUUtils_Access;
   function getInstance return OpenGLGLUUtils_Access;
   function makeByteBuffer (This : in out OpenGLGLUUtils; bmp_Param : access OpenGLBitmap_Package.OpenGLBitmap'Class; flip : Boolean) return ByteBuffer_Access;
   procedure makeByteBuffer (This : in out OpenGLGLUUtils; bmp_Param : access OpenGLBitmap_Package.OpenGLBitmap'Class; flip : Boolean);
   procedure texImage2D (This : in out OpenGLGLUUtils; gl_Param : access GL10_Package.GL10'Class; glVersion : Unbounded_String; target : Integer; level : Integer; generateMipMap : Boolean; openGLESImage_Param : access OpenGLESImage_Package.OpenGLESImage'Class; border : Integer; flip : Boolean);
   procedure texImage2D (This : in out OpenGLGLUUtils; gl_Param : access GL10_Package.GL10'Class; glVersion : Unbounded_String; target : Integer; level : Integer; generateMipMap : Boolean; bitmap_Param : access OpenGLBitmap_Package.OpenGLBitmap'Class; border : Integer; flip : Boolean);

end org.platform.opengl.OpenGLGLUUtils_Package;


