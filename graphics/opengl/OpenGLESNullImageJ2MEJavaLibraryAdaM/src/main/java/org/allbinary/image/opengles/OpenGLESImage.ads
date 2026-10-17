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
--  with javax.microedition.khronos.opengles.GL_Package; use javax.microedition.khronos.opengles.GL_Package;
--  with javax.microedition.khronos.opengles.GL10_Package; use javax.microedition.khronos.opengles.GL10_Package;
--  with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
--  with javax.microedition.lcdui.NullImage_Package; use javax.microedition.lcdui.NullImage_Package;
with org.allbinary.platform.graphics.PlatformBitmapBase_Package; use org.allbinary.platform.graphics.PlatformBitmapBase_Package;
with org.allbinary.platform.graphics.PlatformBitmapBaseFactory_Package; use org.allbinary.platform.graphics.PlatformBitmapBaseFactory_Package;
with org.allbinary.platform.opengles.PlatformTextureBaseFactory_Package; use org.allbinary.platform.opengles.PlatformTextureBaseFactory_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.image.opengles.OpenGLSurfaceChangedInterface_Package; use org.allbinary.image.opengles.OpenGLSurfaceChangedInterface_Package;

package org.allbinary.image.opengles.OpenGLESImage_Package is

   package PlatformBitmapBase_Package renames Standard.org.allbinary.platform.graphics.PlatformBitmapBase_Package;
   package PlatformBitmapBaseFactory_Package renames Standard.org.allbinary.platform.graphics.PlatformBitmapBaseFactory_Package;
   package PlatformTextureBaseFactory_Package renames Standard.org.allbinary.platform.opengles.PlatformTextureBaseFactory_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;

   type OpenGLESImage is tagged;
   type OpenGLESImage_Access is access all OpenGLESImage'Class;
   type OpenGLESImage_Access_Array is array (Natural range <>) of OpenGLESImage_Access;
   type OpenGLESImage_Access_Array_Access is access all OpenGLESImage_Access_Array;

   type OpenGLESImage is new OpenGLSurfaceChangedInterface with record
      commonStrings : CommonStrings_Access;
      textureFactory : PlatformTextureBaseFactory_Access;
      openGLBitmap : PlatformBitmapBase_Access;
      openGLESImageProperties : OpenGLESImageProperties_Access;
   end record;
   NULL_OPENGL_IMAGE : OpenGLESImage_Access;
   texture2dList : BasicArrayList_Access;
   TYPE_Id : Integer;

   procedure Initialize (This : in out OpenGLESImage'Class; image : Image_Access; bitmapFactory : PlatformBitmapBaseFactory_Access; textureFactory : PlatformTextureBaseFactory_Access);
   function Create (image : Image_Access; bitmapFactory : PlatformBitmapBaseFactory_Access; textureFactory : PlatformTextureBaseFactory_Access) return OpenGLESImage_Access;
   procedure set (This : in out OpenGLESImage; gl : GL_Access);
   function initTexture (This : in out OpenGLESImage; gl : GL10_Access) return Boolean;
   procedure initTexture (This : in out OpenGLESImage; gl : GL10_Access);
   procedure drawRegion (This : in out OpenGLESImage; gl : GL10_Access; viewHeight : Integer; x_src : Float; y_src : Float; width : Float; height : Float; x : Integer; y : Integer; z : Integer);
   procedure draw (This : in out OpenGLESImage; gl : GL10_Access; x : Integer; y : Integer; z : Integer);
   function getType (This : in out OpenGLESImage) return Integer;
   procedure getType (This : in out OpenGLESImage);

end org.allbinary.image.opengles.OpenGLESImage_Package;


