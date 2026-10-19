--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.nio.ByteBuffer_Package; use java.nio.ByteBuffer_Package;
with javax.microedition.khronos.opengles.GL10_Package; use javax.microedition.khronos.opengles.GL10_Package;
with org.allbinary.graphics.OpenGLBitmap_Package; use org.allbinary.graphics.OpenGLBitmap_Package;
with org.allbinary.image.opengles.OpenGLESImage_Package; use org.allbinary.image.opengles.OpenGLESImage_Package;

package org.platform.opengl.OpenGLGLUUtils_Package is

   package ByteBuffer_Package renames Standard.java.nio.ByteBuffer_Package;
   package GL10_Package renames Standard.javax.microedition.khronos.opengles.GL10_Package;
   package OpenGLBitmap_Package renames Standard.org.allbinary.graphics.OpenGLBitmap_Package;
   package OpenGLESImage_Package renames Standard.org.allbinary.image.opengles.OpenGLESImage_Package;

   type OpenGLGLUUtils is tagged;
   type OpenGLGLUUtils_Access is access all OpenGLGLUUtils'Class;
   type OpenGLGLUUtils_Access_Array is array (Natural range <>) of OpenGLGLUUtils_Access;
   type OpenGLGLUUtils_Access_Array_Access is access all OpenGLGLUUtils_Access_Array;
   type OpenGLGLUUtils_Access_Array_Access_Array is array (Natural range <>) of OpenGLGLUUtils_Access_Array_Access;
   type OpenGLGLUUtils_Access_Array_Access_Array_Access is access all OpenGLGLUUtils_Access_Array_Access_Array;

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


