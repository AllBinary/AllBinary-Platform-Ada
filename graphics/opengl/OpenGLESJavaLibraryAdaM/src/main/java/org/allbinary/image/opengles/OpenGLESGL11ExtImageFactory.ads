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
with org.allbinary.image.opengles.OpenGLImageFactory_Package; use org.allbinary.image.opengles.OpenGLImageFactory_Package;

package org.allbinary.image.opengles.OpenGLESGL11ExtImageFactory_Package is

   package PlatformBitmapBaseFactory_Package renames Standard.org.allbinary.platform.graphics.PlatformBitmapBaseFactory_Package;
   package PlatformTextureBaseFactory_Package renames Standard.org.allbinary.platform.opengles.PlatformTextureBaseFactory_Package;

   type OpenGLESGL11ExtImageFactory is tagged;
   type OpenGLESGL11ExtImageFactory_Access is access all OpenGLESGL11ExtImageFactory'Class;
   type OpenGLESGL11ExtImageFactory_Access_Array is array (Natural range <>) of OpenGLESGL11ExtImageFactory_Access;
   type OpenGLESGL11ExtImageFactory_Access_Array_Access is access all OpenGLESGL11ExtImageFactory_Access_Array;

   type OpenGLESGL11ExtImageFactory is new OpenGLImageFactory with null record;

   procedure Initialize (This : in out OpenGLESGL11ExtImageFactory'Class);
   function Create return OpenGLESGL11ExtImageFactory_Access;
   function getInstance (This : in out OpenGLESGL11ExtImageFactory; image : Image_Access; bitmapFactory : PlatformBitmapBaseFactory_Access; textureFactory : PlatformTextureBaseFactory_Access) return Image_Access;
   procedure getInstance (This : in out OpenGLESGL11ExtImageFactory; image : Image_Access; bitmapFactory : PlatformBitmapBaseFactory_Access; textureFactory : PlatformTextureBaseFactory_Access);

end org.allbinary.image.opengles.OpenGLESGL11ExtImageFactory_Package;


