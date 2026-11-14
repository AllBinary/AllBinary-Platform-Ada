--  Generated Code Do Not Modify

with AllBinary_Java;
limited with org.allbinary.graphics.OpenGLBitmapFactory_Package;
package org.allbinary.graphics.OpenGLBitmapFactory_Package_References is
   type OpenGLBitmapFactory_Access is access all org.allbinary.graphics.OpenGLBitmapFactory_Package.OpenGLBitmapFactory'Class;
   type OpenGLBitmapFactory_Access_Array is array (Natural range <>) of OpenGLBitmapFactory_Access;
   type OpenGLBitmapFactory_Access_Array_Access is access all OpenGLBitmapFactory_Access_Array;
   type OpenGLBitmapFactory_Access_Array_Access_Array is array (Natural range <>) of OpenGLBitmapFactory_Access_Array_Access;
   type OpenGLBitmapFactory_Access_Array_Access_Array_Access is access all OpenGLBitmapFactory_Access_Array_Access_Array;
   type OpenGLBitmapFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : OpenGLBitmapFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : OpenGLBitmapFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new OpenGLBitmapFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_OpenGLBitmapFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return OpenGLBitmapFactory_Access_Array_Access is (if Value /= null and then Value.all in OpenGLBitmapFactory_Access_Array_Object'Class then OpenGLBitmapFactory_Access_Array_Object'Class (Value.all).Value else null);
   type OpenGLBitmapFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : OpenGLBitmapFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : OpenGLBitmapFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new OpenGLBitmapFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_OpenGLBitmapFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return OpenGLBitmapFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in OpenGLBitmapFactory_Access_Array_Access_Array_Object'Class then OpenGLBitmapFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.OpenGLBitmapFactory_Package_References;

with org.allbinary.graphics.OpenGLBitmapFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.io.IOException_Package; use java.io.IOException_Package;
with java.io.InputStream_Package; use java.io.InputStream_Package;
limited with javax.microedition.lcdui.Image_Package;
with javax.microedition.lcdui.Image_Package_References;
limited with org.allbinary.platform.graphics.PlatformBitmapBase_Package;
with org.allbinary.platform.graphics.PlatformBitmapBase_Package_References;
with org.allbinary.platform.graphics.PlatformBitmapBaseFactory_Package; use org.allbinary.platform.graphics.PlatformBitmapBaseFactory_Package;
limited with org.allbinary.graphics.Config_Package;
with org.allbinary.graphics.Config_Package_References;
limited with org.allbinary.graphics.OpenGLBitmap_Package;
with org.allbinary.graphics.OpenGLBitmap_Package_References;

package org.allbinary.graphics.OpenGLBitmapFactory_Package is

   package InputStream_Package renames Standard.java.io.InputStream_Package;
   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package PlatformBitmapBase_Package renames Standard.org.allbinary.platform.graphics.PlatformBitmapBase_Package;
   package PlatformBitmapBaseFactory_Package renames Standard.org.allbinary.platform.graphics.PlatformBitmapBaseFactory_Package;
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
   subtype PlatformBitmapBase_Access is org.allbinary.platform.graphics.PlatformBitmapBase_Package_References.PlatformBitmapBase_Access;
   use type PlatformBitmapBase_Access;
   subtype PlatformBitmapBase_Access_Array is org.allbinary.platform.graphics.PlatformBitmapBase_Package_References.PlatformBitmapBase_Access_Array;
   use type PlatformBitmapBase_Access_Array;
   subtype PlatformBitmapBase_Access_Array_Access is org.allbinary.platform.graphics.PlatformBitmapBase_Package_References.PlatformBitmapBase_Access_Array_Access;
   use type PlatformBitmapBase_Access_Array_Access;
   subtype PlatformBitmapBase_Access_Array_Access_Array is org.allbinary.platform.graphics.PlatformBitmapBase_Package_References.PlatformBitmapBase_Access_Array_Access_Array;
   use type PlatformBitmapBase_Access_Array_Access_Array;
   subtype PlatformBitmapBase_Access_Array_Access_Array_Access is org.allbinary.platform.graphics.PlatformBitmapBase_Package_References.PlatformBitmapBase_Access_Array_Access_Array_Access;
   use type PlatformBitmapBase_Access_Array_Access_Array_Access;
   subtype Config_Access is org.allbinary.graphics.Config_Package_References.Config_Access;
   use type Config_Access;
   subtype Config_Access_Array is org.allbinary.graphics.Config_Package_References.Config_Access_Array;
   use type Config_Access_Array;
   subtype Config_Access_Array_Access is org.allbinary.graphics.Config_Package_References.Config_Access_Array_Access;
   use type Config_Access_Array_Access;
   subtype Config_Access_Array_Access_Array is org.allbinary.graphics.Config_Package_References.Config_Access_Array_Access_Array;
   use type Config_Access_Array_Access_Array;
   subtype Config_Access_Array_Access_Array_Access is org.allbinary.graphics.Config_Package_References.Config_Access_Array_Access_Array_Access;
   use type Config_Access_Array_Access_Array_Access;
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
   end Reference_Types;
   use Reference_Types;


   subtype OpenGLBitmapFactory_Access is org.allbinary.graphics.OpenGLBitmapFactory_Package_References.OpenGLBitmapFactory_Access;
   function "=" (Left, Right : OpenGLBitmapFactory_Access) return Boolean renames org.allbinary.graphics.OpenGLBitmapFactory_Package_References."=";
   subtype OpenGLBitmapFactory_Access_Array is org.allbinary.graphics.OpenGLBitmapFactory_Package_References.OpenGLBitmapFactory_Access_Array;
   function "=" (Left, Right : OpenGLBitmapFactory_Access_Array) return Boolean renames org.allbinary.graphics.OpenGLBitmapFactory_Package_References."=";
   subtype OpenGLBitmapFactory_Access_Array_Access is org.allbinary.graphics.OpenGLBitmapFactory_Package_References.OpenGLBitmapFactory_Access_Array_Access;
   function "=" (Left, Right : OpenGLBitmapFactory_Access_Array_Access) return Boolean renames org.allbinary.graphics.OpenGLBitmapFactory_Package_References."=";
   function Java_Box (Value : OpenGLBitmapFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.OpenGLBitmapFactory_Package_References.Java_Box;
   function Java_Unbox_OpenGLBitmapFactory_Access_Array (Value : access Java_Object'Class) return OpenGLBitmapFactory_Access_Array_Access renames org.allbinary.graphics.OpenGLBitmapFactory_Package_References.Java_Unbox_OpenGLBitmapFactory_Access_Array;
   subtype OpenGLBitmapFactory_Access_Array_Access_Array is org.allbinary.graphics.OpenGLBitmapFactory_Package_References.OpenGLBitmapFactory_Access_Array_Access_Array;
   function "=" (Left, Right : OpenGLBitmapFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.OpenGLBitmapFactory_Package_References."=";
   subtype OpenGLBitmapFactory_Access_Array_Access_Array_Access is org.allbinary.graphics.OpenGLBitmapFactory_Package_References.OpenGLBitmapFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OpenGLBitmapFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.OpenGLBitmapFactory_Package_References."=";
   function Java_Box (Value : OpenGLBitmapFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.OpenGLBitmapFactory_Package_References.Java_Box;
   function Java_Unbox_OpenGLBitmapFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return OpenGLBitmapFactory_Access_Array_Access_Array_Access renames org.allbinary.graphics.OpenGLBitmapFactory_Package_References.Java_Unbox_OpenGLBitmapFactory_Access_Array_Access_Array;

   type OpenGLBitmapFactory is new PlatformBitmapBaseFactory with record
      ARGB_8888 : Config_Access;
   end record;
   instance : OpenGLBitmapFactory_Access;

   procedure Initialize (This : in out OpenGLBitmapFactory'Class);
   function Create return OpenGLBitmapFactory_Access;
   function getInstance return OpenGLBitmapFactory_Access;
   function createBitmap (This : in out OpenGLBitmapFactory; width : Integer; height : Integer; config_Var_Param : access Config_Package.Config'Class) return OpenGLBitmap_Access;
   procedure createBitmap (This : in out OpenGLBitmapFactory; width : Integer; height : Integer; config_Var_Param : access Config_Package.Config'Class);
   function decodeStream (This : in out OpenGLBitmapFactory; inputStream_Param : access InputStream_Package.InputStream'Class) return OpenGLBitmap_Access;
   procedure decodeStream (This : in out OpenGLBitmapFactory; inputStream_Param : access InputStream_Package.InputStream'Class);
   function createBitmap (This : in out OpenGLBitmapFactory; image_Param : access Image_Package.Image'Class) return PlatformBitmapBase_Access;
   procedure createBitmap (This : in out OpenGLBitmapFactory; image_Param : access Image_Package.Image'Class);

end org.allbinary.graphics.OpenGLBitmapFactory_Package;

with AllBinary_Java;
limited with org.allbinary.graphics.Config_Package;
package org.allbinary.graphics.Config_Package_References is
   type Config_Access is access all org.allbinary.graphics.Config_Package.Config'Class;
   type Config_Access_Array is array (Natural range <>) of Config_Access;
   type Config_Access_Array_Access is access all Config_Access_Array;
   type Config_Access_Array_Access_Array is array (Natural range <>) of Config_Access_Array_Access;
   type Config_Access_Array_Access_Array_Access is access all Config_Access_Array_Access_Array;
   type Config_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : Config_Access_Array_Access;
   end record;
   function Java_Box (Value : Config_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new Config_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_Config_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return Config_Access_Array_Access is (if Value /= null and then Value.all in Config_Access_Array_Object'Class then Config_Access_Array_Object'Class (Value.all).Value else null);
   type Config_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : Config_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : Config_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new Config_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_Config_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return Config_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in Config_Access_Array_Access_Array_Object'Class then Config_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.Config_Package_References;

with org.allbinary.graphics.Config_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.io.IOException_Package; use java.io.IOException_Package;
with java.io.InputStream_Package; use java.io.InputStream_Package;
limited with javax.microedition.lcdui.Image_Package;
with javax.microedition.lcdui.Image_Package_References;
limited with org.allbinary.platform.graphics.PlatformBitmapBase_Package;
with org.allbinary.platform.graphics.PlatformBitmapBase_Package_References;
with org.allbinary.platform.graphics.PlatformBitmapBaseFactory_Package; use org.allbinary.platform.graphics.PlatformBitmapBaseFactory_Package;
limited with org.allbinary.graphics.OpenGLBitmapFactory_Package;
with org.allbinary.graphics.OpenGLBitmapFactory_Package_References;
limited with org.allbinary.graphics.OpenGLBitmap_Package;
with org.allbinary.graphics.OpenGLBitmap_Package_References;

package org.allbinary.graphics.Config_Package is

   package InputStream_Package renames Standard.java.io.InputStream_Package;
   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package PlatformBitmapBase_Package renames Standard.org.allbinary.platform.graphics.PlatformBitmapBase_Package;
   package PlatformBitmapBaseFactory_Package renames Standard.org.allbinary.platform.graphics.PlatformBitmapBaseFactory_Package;
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
   subtype PlatformBitmapBase_Access is org.allbinary.platform.graphics.PlatformBitmapBase_Package_References.PlatformBitmapBase_Access;
   use type PlatformBitmapBase_Access;
   subtype PlatformBitmapBase_Access_Array is org.allbinary.platform.graphics.PlatformBitmapBase_Package_References.PlatformBitmapBase_Access_Array;
   use type PlatformBitmapBase_Access_Array;
   subtype PlatformBitmapBase_Access_Array_Access is org.allbinary.platform.graphics.PlatformBitmapBase_Package_References.PlatformBitmapBase_Access_Array_Access;
   use type PlatformBitmapBase_Access_Array_Access;
   subtype PlatformBitmapBase_Access_Array_Access_Array is org.allbinary.platform.graphics.PlatformBitmapBase_Package_References.PlatformBitmapBase_Access_Array_Access_Array;
   use type PlatformBitmapBase_Access_Array_Access_Array;
   subtype PlatformBitmapBase_Access_Array_Access_Array_Access is org.allbinary.platform.graphics.PlatformBitmapBase_Package_References.PlatformBitmapBase_Access_Array_Access_Array_Access;
   use type PlatformBitmapBase_Access_Array_Access_Array_Access;
   subtype OpenGLBitmapFactory_Access is org.allbinary.graphics.OpenGLBitmapFactory_Package_References.OpenGLBitmapFactory_Access;
   use type OpenGLBitmapFactory_Access;
   subtype OpenGLBitmapFactory_Access_Array is org.allbinary.graphics.OpenGLBitmapFactory_Package_References.OpenGLBitmapFactory_Access_Array;
   use type OpenGLBitmapFactory_Access_Array;
   subtype OpenGLBitmapFactory_Access_Array_Access is org.allbinary.graphics.OpenGLBitmapFactory_Package_References.OpenGLBitmapFactory_Access_Array_Access;
   use type OpenGLBitmapFactory_Access_Array_Access;
   subtype OpenGLBitmapFactory_Access_Array_Access_Array is org.allbinary.graphics.OpenGLBitmapFactory_Package_References.OpenGLBitmapFactory_Access_Array_Access_Array;
   use type OpenGLBitmapFactory_Access_Array_Access_Array;
   subtype OpenGLBitmapFactory_Access_Array_Access_Array_Access is org.allbinary.graphics.OpenGLBitmapFactory_Package_References.OpenGLBitmapFactory_Access_Array_Access_Array_Access;
   use type OpenGLBitmapFactory_Access_Array_Access_Array_Access;
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
   end Reference_Types;
   use Reference_Types;


   subtype Config_Access is org.allbinary.graphics.Config_Package_References.Config_Access;
   function "=" (Left, Right : Config_Access) return Boolean renames org.allbinary.graphics.Config_Package_References."=";
   subtype Config_Access_Array is org.allbinary.graphics.Config_Package_References.Config_Access_Array;
   function "=" (Left, Right : Config_Access_Array) return Boolean renames org.allbinary.graphics.Config_Package_References."=";
   subtype Config_Access_Array_Access is org.allbinary.graphics.Config_Package_References.Config_Access_Array_Access;
   function "=" (Left, Right : Config_Access_Array_Access) return Boolean renames org.allbinary.graphics.Config_Package_References."=";
   function Java_Box (Value : Config_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.Config_Package_References.Java_Box;
   function Java_Unbox_Config_Access_Array (Value : access Java_Object'Class) return Config_Access_Array_Access renames org.allbinary.graphics.Config_Package_References.Java_Unbox_Config_Access_Array;
   subtype Config_Access_Array_Access_Array is org.allbinary.graphics.Config_Package_References.Config_Access_Array_Access_Array;
   function "=" (Left, Right : Config_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.Config_Package_References."=";
   subtype Config_Access_Array_Access_Array_Access is org.allbinary.graphics.Config_Package_References.Config_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Config_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.Config_Package_References."=";
   function Java_Box (Value : Config_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.Config_Package_References.Java_Box;
   function Java_Unbox_Config_Access_Array_Access_Array (Value : access Java_Object'Class) return Config_Access_Array_Access_Array_Access renames org.allbinary.graphics.Config_Package_References.Java_Unbox_Config_Access_Array_Access_Array;

   type Config is new Java_Object with record
      bitmapConfig : Java_Object_Access;
   end record;

   procedure Initialize (This : in out Config'Class; bitmapConfig_Param : access Java_Object'Class);
   function Create (bitmapConfig_Param : access Java_Object'Class) return Config_Access;

end org.allbinary.graphics.Config_Package;


