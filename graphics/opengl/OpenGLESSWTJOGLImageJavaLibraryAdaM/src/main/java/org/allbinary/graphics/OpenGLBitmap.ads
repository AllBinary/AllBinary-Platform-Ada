--  Generated Code Do Not Modify

with AllBinary_Java;
limited with org.allbinary.graphics.OpenGLBitmap_Package;
package org.allbinary.graphics.OpenGLBitmap_Package_References is
   type OpenGLBitmap_Access is access all org.allbinary.graphics.OpenGLBitmap_Package.OpenGLBitmap'Class;
   type OpenGLBitmap_Access_Array is array (Natural range <>) of OpenGLBitmap_Access;
   type OpenGLBitmap_Access_Array_Access is access all OpenGLBitmap_Access_Array;
   type OpenGLBitmap_Access_Array_Access_Array is array (Natural range <>) of OpenGLBitmap_Access_Array_Access;
   type OpenGLBitmap_Access_Array_Access_Array_Access is access all OpenGLBitmap_Access_Array_Access_Array;
   type OpenGLBitmap_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : OpenGLBitmap_Access_Array_Access;
   end record;
   function Java_Box (Value : OpenGLBitmap_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new OpenGLBitmap_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_OpenGLBitmap_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return OpenGLBitmap_Access_Array_Access is (if Value /= null and then Value.all in OpenGLBitmap_Access_Array_Object'Class then OpenGLBitmap_Access_Array_Object'Class (Value.all).Value else null);
   type OpenGLBitmap_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : OpenGLBitmap_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : OpenGLBitmap_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new OpenGLBitmap_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_OpenGLBitmap_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return OpenGLBitmap_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in OpenGLBitmap_Access_Array_Access_Array_Object'Class then OpenGLBitmap_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.OpenGLBitmap_Package_References;

with org.allbinary.graphics.OpenGLBitmap_Package_References;
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
with org.allbinary.platform.graphics.PlatformBitmapBase_Package; use org.allbinary.platform.graphics.PlatformBitmapBase_Package;

package org.allbinary.graphics.OpenGLBitmap_Package is

   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package PlatformBitmapBase_Package renames Standard.org.allbinary.platform.graphics.PlatformBitmapBase_Package;
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


   subtype OpenGLBitmap_Access is org.allbinary.graphics.OpenGLBitmap_Package_References.OpenGLBitmap_Access;
   function "=" (Left, Right : OpenGLBitmap_Access) return Boolean renames org.allbinary.graphics.OpenGLBitmap_Package_References."=";
   subtype OpenGLBitmap_Access_Array is org.allbinary.graphics.OpenGLBitmap_Package_References.OpenGLBitmap_Access_Array;
   function "=" (Left, Right : OpenGLBitmap_Access_Array) return Boolean renames org.allbinary.graphics.OpenGLBitmap_Package_References."=";
   subtype OpenGLBitmap_Access_Array_Access is org.allbinary.graphics.OpenGLBitmap_Package_References.OpenGLBitmap_Access_Array_Access;
   function "=" (Left, Right : OpenGLBitmap_Access_Array_Access) return Boolean renames org.allbinary.graphics.OpenGLBitmap_Package_References."=";
   function Java_Box (Value : OpenGLBitmap_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.OpenGLBitmap_Package_References.Java_Box;
   function Java_Unbox_OpenGLBitmap_Access_Array (Value : access Java_Object'Class) return OpenGLBitmap_Access_Array_Access renames org.allbinary.graphics.OpenGLBitmap_Package_References.Java_Unbox_OpenGLBitmap_Access_Array;
   subtype OpenGLBitmap_Access_Array_Access_Array is org.allbinary.graphics.OpenGLBitmap_Package_References.OpenGLBitmap_Access_Array_Access_Array;
   function "=" (Left, Right : OpenGLBitmap_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.OpenGLBitmap_Package_References."=";
   subtype OpenGLBitmap_Access_Array_Access_Array_Access is org.allbinary.graphics.OpenGLBitmap_Package_References.OpenGLBitmap_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OpenGLBitmap_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.OpenGLBitmap_Package_References."=";
   function Java_Box (Value : OpenGLBitmap_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.OpenGLBitmap_Package_References.Java_Box;
   function Java_Unbox_OpenGLBitmap_Access_Array_Access_Array (Value : access Java_Object'Class) return OpenGLBitmap_Access_Array_Access_Array_Access renames org.allbinary.graphics.OpenGLBitmap_Package_References.Java_Unbox_OpenGLBitmap_Access_Array_Access_Array;

   type OpenGLBitmap is new PlatformBitmapBase with record
      image : Image_Access;
   end record;

   procedure Initialize (This : in out OpenGLBitmap'Class; bitmap_Param : access Java_Object'Class);
   function Create (bitmap_Param : access Java_Object'Class) return OpenGLBitmap_Access;
   function getImage (This : in out OpenGLBitmap) return Image_Access;
   function getDepth (This : in out OpenGLBitmap) return Integer;
   procedure getPixels (This : in out OpenGLBitmap; pixels : Integer_Array_Access; offset : Integer; stride : Integer; x : Integer; y : Integer; width : Integer; height : Integer);
   procedure setPixels (This : in out OpenGLBitmap; pixels : Integer_Array_Access; offset : Integer; stride : Integer; x : Integer; y : Integer; width : Integer; height : Integer);
   function getWidth (This : in out OpenGLBitmap) return Integer;
   function getHeight (This : in out OpenGLBitmap) return Integer;
   procedure recycle (This : in out OpenGLBitmap);

end org.allbinary.graphics.OpenGLBitmap_Package;


