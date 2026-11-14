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

with AllBinary_Java;
limited with org.allbinary.image.opengles.OpenGLImageCache_Package;
package org.allbinary.image.opengles.OpenGLImageCache_Package_References is
   type OpenGLImageCache_Access is access all org.allbinary.image.opengles.OpenGLImageCache_Package.OpenGLImageCache'Class;
   type OpenGLImageCache_Access_Array is array (Natural range <>) of OpenGLImageCache_Access;
   type OpenGLImageCache_Access_Array_Access is access all OpenGLImageCache_Access_Array;
   type OpenGLImageCache_Access_Array_Access_Array is array (Natural range <>) of OpenGLImageCache_Access_Array_Access;
   type OpenGLImageCache_Access_Array_Access_Array_Access is access all OpenGLImageCache_Access_Array_Access_Array;
   type OpenGLImageCache_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : OpenGLImageCache_Access_Array_Access;
   end record;
   function Java_Box (Value : OpenGLImageCache_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new OpenGLImageCache_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_OpenGLImageCache_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return OpenGLImageCache_Access_Array_Access is (if Value /= null and then Value.all in OpenGLImageCache_Access_Array_Object'Class then OpenGLImageCache_Access_Array_Object'Class (Value.all).Value else null);
   type OpenGLImageCache_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : OpenGLImageCache_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : OpenGLImageCache_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new OpenGLImageCache_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_OpenGLImageCache_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return OpenGLImageCache_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in OpenGLImageCache_Access_Array_Access_Array_Object'Class then OpenGLImageCache_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.image.opengles.OpenGLImageCache_Package_References;

with org.allbinary.image.opengles.OpenGLImageCache_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.io.InputStream_Package; use java.io.InputStream_Package;
limited with javax.microedition.khronos.opengles.GL10_Package;
with javax.microedition.khronos.opengles.GL10_Package_References;
limited with javax.microedition.lcdui.Image_Package;
with javax.microedition.lcdui.Image_Package_References;
limited with org.allbinary.graphics.opengles.renderer.AllBinaryRendererBase3_Package;
with org.allbinary.graphics.opengles.renderer.AllBinaryRendererBase3_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.image.ImageCache_Package; use org.allbinary.image.ImageCache_Package;
limited with org.allbinary.image.PreResourceImageUtil_Package;
with org.allbinary.image.PreResourceImageUtil_Package_References;
limited with org.allbinary.thread.SynchObject_Package;
with org.allbinary.thread.SynchObject_Package_References;

package org.allbinary.image.opengles.OpenGLImageCache_Package is

   package InputStream_Package renames Standard.java.io.InputStream_Package;
   package GL10_Package renames Standard.javax.microedition.khronos.opengles.GL10_Package;
   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package AllBinaryRendererBase3_Package renames Standard.org.allbinary.graphics.opengles.renderer.AllBinaryRendererBase3_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package ImageCache_Package renames Standard.org.allbinary.image.ImageCache_Package;
   package PreResourceImageUtil_Package renames Standard.org.allbinary.image.PreResourceImageUtil_Package;
   package SynchObject_Package renames Standard.org.allbinary.thread.SynchObject_Package;
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
   subtype AllBinaryRendererBase3_Access is org.allbinary.graphics.opengles.renderer.AllBinaryRendererBase3_Package_References.AllBinaryRendererBase3_Access;
   use type AllBinaryRendererBase3_Access;
   subtype AllBinaryRendererBase3_Access_Array is org.allbinary.graphics.opengles.renderer.AllBinaryRendererBase3_Package_References.AllBinaryRendererBase3_Access_Array;
   use type AllBinaryRendererBase3_Access_Array;
   subtype AllBinaryRendererBase3_Access_Array_Access is org.allbinary.graphics.opengles.renderer.AllBinaryRendererBase3_Package_References.AllBinaryRendererBase3_Access_Array_Access;
   use type AllBinaryRendererBase3_Access_Array_Access;
   subtype AllBinaryRendererBase3_Access_Array_Access_Array is org.allbinary.graphics.opengles.renderer.AllBinaryRendererBase3_Package_References.AllBinaryRendererBase3_Access_Array_Access_Array;
   use type AllBinaryRendererBase3_Access_Array_Access_Array;
   subtype AllBinaryRendererBase3_Access_Array_Access_Array_Access is org.allbinary.graphics.opengles.renderer.AllBinaryRendererBase3_Package_References.AllBinaryRendererBase3_Access_Array_Access_Array_Access;
   use type AllBinaryRendererBase3_Access_Array_Access_Array_Access;
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   subtype PreResourceImageUtil_Access is org.allbinary.image.PreResourceImageUtil_Package_References.PreResourceImageUtil_Access;
   use type PreResourceImageUtil_Access;
   subtype PreResourceImageUtil_Access_Array is org.allbinary.image.PreResourceImageUtil_Package_References.PreResourceImageUtil_Access_Array;
   use type PreResourceImageUtil_Access_Array;
   subtype PreResourceImageUtil_Access_Array_Access is org.allbinary.image.PreResourceImageUtil_Package_References.PreResourceImageUtil_Access_Array_Access;
   use type PreResourceImageUtil_Access_Array_Access;
   subtype PreResourceImageUtil_Access_Array_Access_Array is org.allbinary.image.PreResourceImageUtil_Package_References.PreResourceImageUtil_Access_Array_Access_Array;
   use type PreResourceImageUtil_Access_Array_Access_Array;
   subtype PreResourceImageUtil_Access_Array_Access_Array_Access is org.allbinary.image.PreResourceImageUtil_Package_References.PreResourceImageUtil_Access_Array_Access_Array_Access;
   use type PreResourceImageUtil_Access_Array_Access_Array_Access;
   subtype SynchObject_Access is org.allbinary.thread.SynchObject_Package_References.SynchObject_Access;
   use type SynchObject_Access;
   subtype SynchObject_Access_Array is org.allbinary.thread.SynchObject_Package_References.SynchObject_Access_Array;
   use type SynchObject_Access_Array;
   subtype SynchObject_Access_Array_Access is org.allbinary.thread.SynchObject_Package_References.SynchObject_Access_Array_Access;
   use type SynchObject_Access_Array_Access;
   subtype SynchObject_Access_Array_Access_Array is org.allbinary.thread.SynchObject_Package_References.SynchObject_Access_Array_Access_Array;
   use type SynchObject_Access_Array_Access_Array;
   subtype SynchObject_Access_Array_Access_Array_Access is org.allbinary.thread.SynchObject_Package_References.SynchObject_Access_Array_Access_Array_Access;
   use type SynchObject_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype OpenGLImageCache_Access is org.allbinary.image.opengles.OpenGLImageCache_Package_References.OpenGLImageCache_Access;
   function "=" (Left, Right : OpenGLImageCache_Access) return Boolean renames org.allbinary.image.opengles.OpenGLImageCache_Package_References."=";
   subtype OpenGLImageCache_Access_Array is org.allbinary.image.opengles.OpenGLImageCache_Package_References.OpenGLImageCache_Access_Array;
   function "=" (Left, Right : OpenGLImageCache_Access_Array) return Boolean renames org.allbinary.image.opengles.OpenGLImageCache_Package_References."=";
   subtype OpenGLImageCache_Access_Array_Access is org.allbinary.image.opengles.OpenGLImageCache_Package_References.OpenGLImageCache_Access_Array_Access;
   function "=" (Left, Right : OpenGLImageCache_Access_Array_Access) return Boolean renames org.allbinary.image.opengles.OpenGLImageCache_Package_References."=";
   function Java_Box (Value : OpenGLImageCache_Access_Array_Access) return Java_Object_Access renames org.allbinary.image.opengles.OpenGLImageCache_Package_References.Java_Box;
   function Java_Unbox_OpenGLImageCache_Access_Array (Value : access Java_Object'Class) return OpenGLImageCache_Access_Array_Access renames org.allbinary.image.opengles.OpenGLImageCache_Package_References.Java_Unbox_OpenGLImageCache_Access_Array;
   subtype OpenGLImageCache_Access_Array_Access_Array is org.allbinary.image.opengles.OpenGLImageCache_Package_References.OpenGLImageCache_Access_Array_Access_Array;
   function "=" (Left, Right : OpenGLImageCache_Access_Array_Access_Array) return Boolean renames org.allbinary.image.opengles.OpenGLImageCache_Package_References."=";
   subtype OpenGLImageCache_Access_Array_Access_Array_Access is org.allbinary.image.opengles.OpenGLImageCache_Package_References.OpenGLImageCache_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OpenGLImageCache_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.image.opengles.OpenGLImageCache_Package_References."=";
   function Java_Box (Value : OpenGLImageCache_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.image.opengles.OpenGLImageCache_Package_References.Java_Box;
   function Java_Unbox_OpenGLImageCache_Access_Array_Access_Array (Value : access Java_Object'Class) return OpenGLImageCache_Access_Array_Access_Array_Access renames org.allbinary.image.opengles.OpenGLImageCache_Package_References.Java_Unbox_OpenGLImageCache_Access_Array_Access_Array;

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
   procedure addListener (This : in out OpenGLImageCache; renderer_Param : access Java_Object'Class);
   procedure update (This : in out OpenGLImageCache; gl_Param : access GL10_Package.GL10'Class);
   function createImage (This : in out OpenGLImageCache; caller : Unbounded_String; width_Param : Integer; height_Param : Integer) return Image_Access;
   procedure createImage (This : in out OpenGLImageCache; caller : Unbounded_String; width_Param : Integer; height_Param : Integer);
   function createImageFromInputStream (This : in out OpenGLImageCache; key_Param : access Java_Object'Class; inputStream_Param : access InputStream_Package.InputStream'Class) return Image_Access;
   procedure createImageFromInputStream (This : in out OpenGLImageCache; key_Param : access Java_Object'Class; inputStream_Param : access InputStream_Package.InputStream'Class);
   function getGlP (This : in out OpenGLImageCache) return GL10_Access;
   procedure init (This : in out OpenGLImageCache; image_Param : access Image_Package.Image'Class);
   procedure addListener (This : in out OpenGLImageCache; Value : Unbounded_String);

end org.allbinary.image.opengles.OpenGLImageCache_Package;


