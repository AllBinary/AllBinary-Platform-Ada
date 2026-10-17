--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
with org.allbinary.DisposalUtil_Package; use org.allbinary.DisposalUtil_Package;
with org.allbinary.platform.graphics.PlatformBitmapBase_Package; use org.allbinary.platform.graphics.PlatformBitmapBase_Package;
with org.microemu.device.swt.SwtImmutableImage_Package; use org.microemu.device.swt.SwtImmutableImage_Package;
with org.microemu.device.swt.SwtMutableImage_Package; use org.microemu.device.swt.SwtMutableImage_Package;

package org.allbinary.graphics.OpenGLBitmap_Package is

   package DisposalUtil_Package renames Standard.org.allbinary.DisposalUtil_Package;
   package PlatformBitmapBase_Package renames Standard.org.allbinary.platform.graphics.PlatformBitmapBase_Package;
   package SwtImmutableImage_Package renames Standard.org.microemu.device.swt.SwtImmutableImage_Package;
   package SwtMutableImage_Package renames Standard.org.microemu.device.swt.SwtMutableImage_Package;

   type OpenGLBitmap is tagged;
   type OpenGLBitmap_Access is access all OpenGLBitmap'Class;
   type OpenGLBitmap_Access_Array is array (Natural range <>) of OpenGLBitmap_Access;
   type OpenGLBitmap_Access_Array_Access is access all OpenGLBitmap_Access_Array;

   type OpenGLBitmap is new PlatformBitmapBase with record
      image : Image_Access;
   end record;

   procedure Initialize (This : in out OpenGLBitmap'Class; bitmap : Java_Object_Access);
   function Create (bitmap : Java_Object_Access) return OpenGLBitmap_Access;
   function getImage (This : in out OpenGLBitmap) return Image_Access;
   function getDepth (This : in out OpenGLBitmap) return Integer;
   procedure getPixels (This : in out OpenGLBitmap; pixels : Integer_Array_Access; offset : Integer; stride : Integer; x : Integer; y : Integer; width : Integer; height : Integer);
   procedure setPixels (This : in out OpenGLBitmap; pixels : Integer_Array_Access; offset : Integer; stride : Integer; x : Integer; y : Integer; width : Integer; height : Integer);
   function getWidth (This : in out OpenGLBitmap) return Integer;
   function getHeight (This : in out OpenGLBitmap) return Integer;
   procedure recycle (This : in out OpenGLBitmap);

end org.allbinary.graphics.OpenGLBitmap_Package;


