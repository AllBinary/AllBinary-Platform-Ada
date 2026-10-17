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
--  with java.nio.ByteBuffer_Package; use java.nio.ByteBuffer_Package;
--  with java.nio.ByteOrder_Package; use java.nio.ByteOrder_Package;
--  with java.nio.FloatBuffer_Package; use java.nio.FloatBuffer_Package;
--  with javax.microedition.khronos.opengles.GL_Package; use javax.microedition.khronos.opengles.GL_Package;
--  with javax.microedition.khronos.opengles.GL10_Package; use javax.microedition.khronos.opengles.GL10_Package;
--  with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
with org.allbinary.graphics.opengles.OpenGLLogUtil_Package; use org.allbinary.graphics.opengles.OpenGLLogUtil_Package;
with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package; use org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
with org.allbinary.opengles.GLUtil_Package; use org.allbinary.opengles.GLUtil_Package;
with org.allbinary.platform.graphics.PlatformBitmapBaseFactory_Package; use org.allbinary.platform.graphics.PlatformBitmapBaseFactory_Package;
with org.allbinary.platform.opengles.PlatformTextureBaseFactory_Package; use org.allbinary.platform.opengles.PlatformTextureBaseFactory_Package;
with org.allbinary.image.opengles.OpenGLESImage_Package; use org.allbinary.image.opengles.OpenGLESImage_Package;

package org.allbinary.image.opengles.OpenGLESGL11VBOImage_Package is

   package OpenGLLogUtil_Package renames org.allbinary.graphics.opengles.OpenGLLogUtil_Package;
   package DisplayInfoSingleton_Package renames org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
   package GLUtil_Package renames org.allbinary.opengles.GLUtil_Package;
   package PlatformBitmapBaseFactory_Package renames org.allbinary.platform.graphics.PlatformBitmapBaseFactory_Package;
   package PlatformTextureBaseFactory_Package renames org.allbinary.platform.opengles.PlatformTextureBaseFactory_Package;

   type OpenGLESGL11VBOImage is tagged;
   type OpenGLESGL11VBOImage_Access is access all OpenGLESGL11VBOImage'Class;
   type OpenGLESGL11VBOImage_Access_Array is array (Natural range <>) of OpenGLESGL11VBOImage_Access;
   type OpenGLESGL11VBOImage_Access_Array_Access is access all OpenGLESGL11VBOImage_Access_Array;

   type OpenGLESGL11VBOImage is new OpenGLESImage with record
      glUtil : GLUtil_Access;
      textureVertexFloatBuffer : FloatBuffer_Access;
      regionRectangleFloatArray : Float_Array_Access;
      regionRectangleVertexFloatBuffer : FloatBuffer_Access;
      regionTextureRectangleFloatArray : Float_Array_Access;
      regionTextureVertexFloatBuffer : FloatBuffer_Access;
   end record;

   procedure Initialize (This : in out OpenGLESGL11VBOImage'Class; image : Image_Access; bitmapFactory : PlatformBitmapBaseFactory_Access; textureFactory : PlatformTextureBaseFactory_Access);
   function Create (image : Image_Access; bitmapFactory : PlatformBitmapBaseFactory_Access; textureFactory : PlatformTextureBaseFactory_Access) return OpenGLESGL11VBOImage_Access;
   procedure initVertices (This : in out OpenGLESGL11VBOImage);
   procedure set (This : in out OpenGLESGL11VBOImage; gl : GL_Access);
   procedure drawRegion (This : in out OpenGLESGL11VBOImage; gl : GL10_Access; viewHeight : Integer; x_src : Float; y_src : Float; width : Float; height : Float; x : Integer; y : Integer; z : Integer);
   procedure draw (This : in out OpenGLESGL11VBOImage; gl : GL10_Access; x : Integer; y : Integer; z : Integer);

end org.allbinary.image.opengles.OpenGLESGL11VBOImage_Package;


