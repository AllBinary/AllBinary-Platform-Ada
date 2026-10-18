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
with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
with org.allbinary.platform.graphics.PlatformBitmapBaseFactory_Package; use org.allbinary.platform.graphics.PlatformBitmapBaseFactory_Package;
with org.allbinary.platform.opengles.PlatformTextureBaseFactory_Package; use org.allbinary.platform.opengles.PlatformTextureBaseFactory_Package;
with org.allbinary.image.opengles.OpenGLImageFactory_Package; use org.allbinary.image.opengles.OpenGLImageFactory_Package;
with org.allbinary.image.opengles.OpenGLESGL10Image_Package; use org.allbinary.image.opengles.OpenGLESGL10Image_Package;

package org.allbinary.image.opengles.OpenGLESGL10ImageFactory_Package is

   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package PlatformBitmapBaseFactory_Package renames Standard.org.allbinary.platform.graphics.PlatformBitmapBaseFactory_Package;
   package PlatformTextureBaseFactory_Package renames Standard.org.allbinary.platform.opengles.PlatformTextureBaseFactory_Package;

   type OpenGLESGL10ImageFactory is tagged;
   type OpenGLESGL10ImageFactory_Access is access all OpenGLESGL10ImageFactory'Class;
   type OpenGLESGL10ImageFactory_Access_Array is array (Natural range <>) of OpenGLESGL10ImageFactory_Access;
   type OpenGLESGL10ImageFactory_Access_Array_Access is access all OpenGLESGL10ImageFactory_Access_Array;

   type OpenGLESGL10ImageFactory is new OpenGLImageFactory with null record;

   procedure Initialize (This : in out OpenGLESGL10ImageFactory'Class);
   function Create return OpenGLESGL10ImageFactory_Access;
   function getInstance (This : in out OpenGLESGL10ImageFactory; image_Param : access Image_Package.Image'Class; bitmapFactory_Param : access PlatformBitmapBaseFactory_Package.PlatformBitmapBaseFactory'Class; textureFactory_Param : access PlatformTextureBaseFactory_Package.PlatformTextureBaseFactory'Class) return Image_Access;
   procedure getInstance (This : in out OpenGLESGL10ImageFactory; image_Param : access Image_Package.Image'Class; bitmapFactory_Param : access PlatformBitmapBaseFactory_Package.PlatformBitmapBaseFactory'Class; textureFactory_Param : access PlatformTextureBaseFactory_Package.PlatformTextureBaseFactory'Class);

end org.allbinary.image.opengles.OpenGLESGL10ImageFactory_Package;


