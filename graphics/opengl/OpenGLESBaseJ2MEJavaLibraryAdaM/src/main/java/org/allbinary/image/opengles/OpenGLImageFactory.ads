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
--  with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
with org.allbinary.platform.graphics.PlatformBitmapBaseFactory_Package; use org.allbinary.platform.graphics.PlatformBitmapBaseFactory_Package;
with org.allbinary.platform.opengles.PlatformTextureBaseFactory_Package; use org.allbinary.platform.opengles.PlatformTextureBaseFactory_Package;

package org.allbinary.image.opengles.OpenGLImageFactory_Package is

   package PlatformBitmapBaseFactory_Package renames org.allbinary.platform.graphics.PlatformBitmapBaseFactory_Package;
   package PlatformTextureBaseFactory_Package renames org.allbinary.platform.opengles.PlatformTextureBaseFactory_Package;

   type OpenGLImageFactory is tagged;
   type OpenGLImageFactory_Access is access all OpenGLImageFactory'Class;
   type OpenGLImageFactory_Access_Array is array (Natural range <>) of OpenGLImageFactory_Access;
   type OpenGLImageFactory_Access_Array_Access is access all OpenGLImageFactory_Access_Array;

   type OpenGLImageFactory is new Java_Object with null record;
   NULL_OPENGL_IMAGE_FACTORY : OpenGLImageFactory_Access;

   procedure Initialize (This : in out OpenGLImageFactory'Class);
   function Create return OpenGLImageFactory_Access;
   function getInstance (This : in out OpenGLImageFactory; image : Image_Access; bitmapFactory : PlatformBitmapBaseFactory_Access; textureFactory : PlatformTextureBaseFactory_Access) return Image_Access;
   procedure getInstance (This : in out OpenGLImageFactory; image : Image_Access; bitmapFactory : PlatformBitmapBaseFactory_Access; textureFactory : PlatformTextureBaseFactory_Access);

end org.allbinary.image.opengles.OpenGLImageFactory_Package;


