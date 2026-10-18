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
with javax.microedition.khronos.opengles.GL_Package; use javax.microedition.khronos.opengles.GL_Package;
with javax.microedition.khronos.opengles.GL10_Package; use javax.microedition.khronos.opengles.GL10_Package;
with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
with org.allbinary.platform.graphics.PlatformBitmapBase_Package; use org.allbinary.platform.graphics.PlatformBitmapBase_Package;
with org.allbinary.platform.graphics.PlatformBitmapBaseFactory_Package; use org.allbinary.platform.graphics.PlatformBitmapBaseFactory_Package;
with org.allbinary.platform.opengles.PlatformTextureBaseFactory_Package; use org.allbinary.platform.opengles.PlatformTextureBaseFactory_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.image.opengles.OpenGLSurfaceChangedInterface_Package; use org.allbinary.image.opengles.OpenGLSurfaceChangedInterface_Package;
with org.allbinary.image.opengles.OpenGLESImageProperties_Package; use org.allbinary.image.opengles.OpenGLESImageProperties_Package;

package org.allbinary.image.opengles.OpenGLESImage_Package is

   package GL_Package renames Standard.javax.microedition.khronos.opengles.GL_Package;
   package GL10_Package renames Standard.javax.microedition.khronos.opengles.GL10_Package;
   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package PlatformBitmapBase_Package renames Standard.org.allbinary.platform.graphics.PlatformBitmapBase_Package;
   package PlatformBitmapBaseFactory_Package renames Standard.org.allbinary.platform.graphics.PlatformBitmapBaseFactory_Package;
   package PlatformTextureBaseFactory_Package renames Standard.org.allbinary.platform.opengles.PlatformTextureBaseFactory_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;

   type OpenGLESImage is tagged;
   type OpenGLESImage_Access is access all OpenGLESImage'Class;
   type OpenGLESImage_Access_Array is array (Natural range <>) of OpenGLESImage_Access;
   type OpenGLESImage_Access_Array_Access is access all OpenGLESImage_Access_Array;
   type OpenGLESImage_Access_Array_Access_Array is array (Natural range <>) of OpenGLESImage_Access_Array_Access;
   type OpenGLESImage_Access_Array_Access_Array_Access is access all OpenGLESImage_Access_Array_Access_Array;

   type OpenGLESImage is new Java_Object and OpenGLSurfaceChangedInterface with record
      commonStrings : CommonStrings_Access;
      textureFactory : PlatformTextureBaseFactory_Access;
      openGLBitmap : PlatformBitmapBase_Access;
      openGLESImageProperties : OpenGLESImageProperties_Access;
   end record;
   NULL_OPENGL_IMAGE : OpenGLESImage_Access;
   texture2dList : BasicArrayList_Access;
   TYPE_Id : Integer;

   procedure Initialize (This : in out OpenGLESImage'Class; image_Param : access Image_Package.Image'Class; bitmapFactory_Param : access PlatformBitmapBaseFactory_Package.PlatformBitmapBaseFactory'Class; textureFactory_Param : access PlatformTextureBaseFactory_Package.PlatformTextureBaseFactory'Class);
   function Create (image_Param : access Image_Package.Image'Class; bitmapFactory_Param : access PlatformBitmapBaseFactory_Package.PlatformBitmapBaseFactory'Class; textureFactory_Param : access PlatformTextureBaseFactory_Package.PlatformTextureBaseFactory'Class) return OpenGLESImage_Access;
   procedure set (This : in out OpenGLESImage; gl_Param : access GL_Package.GL'Class);
   function initTexture (This : in out OpenGLESImage; gl_Param : access GL10_Package.GL10'Class) return Boolean;
   procedure initTexture (This : in out OpenGLESImage; gl_Param : access GL10_Package.GL10'Class);
   procedure drawRegion (This : in out OpenGLESImage; gl_Param : access GL10_Package.GL10'Class; viewHeight : Integer; x_src : Float; y_src : Float; width : Float; height : Float; x : Integer; y : Integer; z : Integer);
   procedure draw (This : in out OpenGLESImage; gl_Param : access GL10_Package.GL10'Class; x : Integer; y : Integer; z : Integer);
   function getType (This : in out OpenGLESImage) return Integer;

end org.allbinary.image.opengles.OpenGLESImage_Package;


