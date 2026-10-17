--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
-- 
-- By agreeing to this license you and any business entity you represent are
-- legally bound to the AllBinary Open License Version 1 legal agreement.
-- 
-- You may obtain the AllBinary Open License Version 1 legal agreement from
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository.
-- 
-- Created By: Travis Berthelot
--  
--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.io.InputStream_Package; use java.io.InputStream_Package;
--  with javax.microedition.khronos.opengles.GL10_Package; use javax.microedition.khronos.opengles.GL10_Package;
--  with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
--  with javax.microedition.lcdui.NullImage_Package; use javax.microedition.lcdui.NullImage_Package;
with org.allbinary.device.NullGL10_Package; use org.allbinary.device.NullGL10_Package;
with org.allbinary.graphics.opengles.renderer.AllBinaryRendererBase3_Package; use org.allbinary.graphics.opengles.renderer.AllBinaryRendererBase3_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.image.ImageCache_Package; use org.allbinary.image.ImageCache_Package;
with org.allbinary.image.ImageCacheFactory_Package; use org.allbinary.image.ImageCacheFactory_Package;
with org.allbinary.image.PreResourceImageUtil_Package; use org.allbinary.image.PreResourceImageUtil_Package;
with org.allbinary.thread.SynchObject_Package; use org.allbinary.thread.SynchObject_Package;

package org.allbinary.image.opengles.OpenGLImageCache_Package is

   package NullGL10_Package renames org.allbinary.device.NullGL10_Package;
   package AllBinaryRendererBase3_Package renames org.allbinary.graphics.opengles.renderer.AllBinaryRendererBase3_Package;
   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames org.allbinary.util.BasicArrayListD_Package;
   package ImageCache_Package renames org.allbinary.image.ImageCache_Package;
   package ImageCacheFactory_Package renames org.allbinary.image.ImageCacheFactory_Package;
   package PreResourceImageUtil_Package renames org.allbinary.image.PreResourceImageUtil_Package;
   package SynchObject_Package renames org.allbinary.thread.SynchObject_Package;

   type OpenGLImageCache is tagged;
   type OpenGLImageCache_Access is access all OpenGLImageCache'Class;
   type OpenGLImageCache_Access_Array is array (Natural range <>) of OpenGLImageCache_Access;
   type OpenGLImageCache_Access_Array_Access is access all OpenGLImageCache_Access_Array;

   type OpenGLImageCache is new ImageCache with record
      imageCache : ImageCache_Access;
      preResourceImageUtil : PreResourceImageUtil_Access;
      gl : GL10_Access;
      lock : SynchObject_Access;
      list : BasicArrayList_Access;
      renderer : AllBinaryRendererBase3_Access;
   end record;

   procedure Initialize (This : in out OpenGLImageCache'Class);
   function Create return OpenGLImageCache_Access;
   procedure addListener (This : in out OpenGLImageCache; renderer : Java_Object_Access);
   procedure update (This : in out OpenGLImageCache; gl : GL10_Access);
   function createImage (This : in out OpenGLImageCache; caller : Unbounded_String; width : Integer; height : Integer) return Image_Access;
   procedure createImage (This : in out OpenGLImageCache; caller : Unbounded_String; width : Integer; height : Integer);
   function createImageFromInputStream (This : in out OpenGLImageCache; key : Java_Object_Access; inputStream : InputStream_Access) return Image_Access;
   procedure createImageFromInputStream (This : in out OpenGLImageCache; key : Java_Object_Access; inputStream : InputStream_Access);
   function getGlP (This : in out OpenGLImageCache) return GL10_Access;
   procedure getGlP (This : in out OpenGLImageCache);
   procedure init (This : in out OpenGLImageCache; image : Image_Access);

end org.allbinary.image.opengles.OpenGLImageCache_Package;


