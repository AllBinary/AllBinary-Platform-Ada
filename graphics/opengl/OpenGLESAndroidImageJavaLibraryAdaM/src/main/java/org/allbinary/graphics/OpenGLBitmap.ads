--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with android.graphics.Bitmap_Package; use android.graphics.Bitmap_Package;
with org.allbinary.platform.graphics.PlatformBitmapBase_Package; use org.allbinary.platform.graphics.PlatformBitmapBase_Package;

package org.allbinary.graphics.OpenGLBitmap_Package is

   package Bitmap_Package renames Standard.android.graphics.Bitmap_Package;
   package PlatformBitmapBase_Package renames Standard.org.allbinary.platform.graphics.PlatformBitmapBase_Package;

   type OpenGLBitmap is tagged;
   type OpenGLBitmap_Access is access all OpenGLBitmap'Class;
   type OpenGLBitmap_Access_Array is array (Natural range <>) of OpenGLBitmap_Access;
   type OpenGLBitmap_Access_Array_Access is access all OpenGLBitmap_Access_Array;

   type OpenGLBitmap is new PlatformBitmapBase with record
      bitmap : Bitmap_Access;
   end record;

   procedure Initialize (This : in out OpenGLBitmap'Class; bitmap_Param : access Java_Object'Class);
   function Create (bitmap_Param : access Java_Object'Class) return OpenGLBitmap_Access;
   procedure getPixels (This : in out OpenGLBitmap; pixels : Integer_Array_Access; offset : Integer; stride : Integer; x : Integer; y : Integer; width : Integer; height : Integer);
   procedure setPixels (This : in out OpenGLBitmap; pixels : Integer_Array_Access; offset : Integer; stride : Integer; x : Integer; y : Integer; width : Integer; height : Integer);
   function getWidth (This : in out OpenGLBitmap) return Integer;
   function getHeight (This : in out OpenGLBitmap) return Integer;
   procedure recycle (This : in out OpenGLBitmap);

end org.allbinary.graphics.OpenGLBitmap_Package;


