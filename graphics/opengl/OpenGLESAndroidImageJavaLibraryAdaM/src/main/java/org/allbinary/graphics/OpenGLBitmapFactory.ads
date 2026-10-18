--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.io.InputStream_Package; use java.io.InputStream_Package;
with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
with android.graphics.Bitmap_Package; use android.graphics.Bitmap_Package;
with android.graphics.BitmapFactory_Package; use android.graphics.BitmapFactory_Package;
--  with java.io.IOException_Package; use java.io.IOException_Package;
with org.allbinary.platform.graphics.PlatformBitmapBaseFactory_Package; use org.allbinary.platform.graphics.PlatformBitmapBaseFactory_Package;
with org.allbinary.platform.graphics.PlatformBitmapBase_Package; use org.allbinary.platform.graphics.PlatformBitmapBase_Package;
with org.microemu.android.device.AndroidImageInterface_Package; use org.microemu.android.device.AndroidImageInterface_Package;
with org.allbinary.graphics.OpenGLBitmap_Package; use org.allbinary.graphics.OpenGLBitmap_Package;

package org.allbinary.graphics.OpenGLBitmapFactory_Package is

   package InputStream_Package renames Standard.java.io.InputStream_Package;
   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package Bitmap_Package renames Standard.android.graphics.Bitmap_Package;
   package BitmapFactory_Package renames Standard.android.graphics.BitmapFactory_Package;
   package PlatformBitmapBaseFactory_Package renames Standard.org.allbinary.platform.graphics.PlatformBitmapBaseFactory_Package;
   package PlatformBitmapBase_Package renames Standard.org.allbinary.platform.graphics.PlatformBitmapBase_Package;
   package AndroidImageInterface_Package renames Standard.org.microemu.android.device.AndroidImageInterface_Package;

   type OpenGLBitmapFactory is tagged;
   type OpenGLBitmapFactory_Access is access all OpenGLBitmapFactory'Class;
   type OpenGLBitmapFactory_Access_Array is array (Natural range <>) of OpenGLBitmapFactory_Access;
   type OpenGLBitmapFactory_Access_Array_Access is access all OpenGLBitmapFactory_Access_Array;

   type OpenGLBitmapFactory is new PlatformBitmapBaseFactory with record
      ARGB_8888 : Config_Access;
   end record;
   instance : OpenGLBitmapFactory_Access;

   procedure Initialize (This : in out OpenGLBitmapFactory'Class);
   function Create return OpenGLBitmapFactory_Access;
   function getInstance return OpenGLBitmapFactory_Access;
   function createBitmap (This : in out OpenGLBitmapFactory; width : Integer; height : Integer; config_Param : access Config_Package.Config'Class) return OpenGLBitmap_Access;
   procedure createBitmap (This : in out OpenGLBitmapFactory; width : Integer; height : Integer; config_Param : access Config_Package.Config'Class);
   function decodeStream (This : in out OpenGLBitmapFactory; inputStream_Param : access InputStream_Package.InputStream'Class) return OpenGLBitmap_Access;
   procedure decodeStream (This : in out OpenGLBitmapFactory; inputStream_Param : access InputStream_Package.InputStream'Class);
   function createBitmap (This : in out OpenGLBitmapFactory; image_Param : access Image_Package.Image'Class) return PlatformBitmapBase_Access;
   procedure createBitmap (This : in out OpenGLBitmapFactory; image_Param : access Image_Package.Image'Class);

end org.allbinary.graphics.OpenGLBitmapFactory_Package;

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.io.InputStream_Package; use java.io.InputStream_Package;
with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
with android.graphics.Bitmap_Package; use android.graphics.Bitmap_Package;
with android.graphics.BitmapFactory_Package; use android.graphics.BitmapFactory_Package;
--  with java.io.IOException_Package; use java.io.IOException_Package;
with org.allbinary.platform.graphics.PlatformBitmapBaseFactory_Package; use org.allbinary.platform.graphics.PlatformBitmapBaseFactory_Package;
with org.allbinary.platform.graphics.PlatformBitmapBase_Package; use org.allbinary.platform.graphics.PlatformBitmapBase_Package;
with org.microemu.android.device.AndroidImageInterface_Package; use org.microemu.android.device.AndroidImageInterface_Package;
with org.allbinary.graphics.OpenGLBitmap_Package; use org.allbinary.graphics.OpenGLBitmap_Package;

package org.allbinary.graphics.Config_Package is

   package InputStream_Package renames Standard.java.io.InputStream_Package;
   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package Bitmap_Package renames Standard.android.graphics.Bitmap_Package;
   package BitmapFactory_Package renames Standard.android.graphics.BitmapFactory_Package;
   package PlatformBitmapBaseFactory_Package renames Standard.org.allbinary.platform.graphics.PlatformBitmapBaseFactory_Package;
   package PlatformBitmapBase_Package renames Standard.org.allbinary.platform.graphics.PlatformBitmapBase_Package;
   package AndroidImageInterface_Package renames Standard.org.microemu.android.device.AndroidImageInterface_Package;

   type Config is tagged;
   type Config_Access is access all Config'Class;
   type Config_Access_Array is array (Natural range <>) of Config_Access;
   type Config_Access_Array_Access is access all Config_Access_Array;

   type Config is new Java_Object with record
      bitmapConfig : Config_Access;
   end record;

   procedure Initialize (This : in out Config'Class; bitmapConfig_Param : access Config_Package.Config'Class);
   function Create (bitmapConfig_Param : access Config_Package.Config'Class) return Config_Access;

end org.allbinary.graphics.Config_Package;


