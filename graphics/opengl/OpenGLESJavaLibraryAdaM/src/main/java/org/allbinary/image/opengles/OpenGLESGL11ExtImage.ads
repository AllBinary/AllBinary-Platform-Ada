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
with org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package; use org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.platform.graphics.PlatformBitmapBaseFactory_Package; use org.allbinary.platform.graphics.PlatformBitmapBaseFactory_Package;
with org.allbinary.platform.opengles.PlatformTextureBaseFactory_Package; use org.allbinary.platform.opengles.PlatformTextureBaseFactory_Package;
with org.allbinary.image.opengles.OpenGLESImage_Package; use org.allbinary.image.opengles.OpenGLESImage_Package;

package org.allbinary.image.opengles.OpenGLESGL11ExtImage_Package is

   package GL_Package renames Standard.javax.microedition.khronos.opengles.GL_Package;
   package GL10_Package renames Standard.javax.microedition.khronos.opengles.GL10_Package;
   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package DisplayChangeEvent_Package renames Standard.org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package PlatformBitmapBaseFactory_Package renames Standard.org.allbinary.platform.graphics.PlatformBitmapBaseFactory_Package;
   package PlatformTextureBaseFactory_Package renames Standard.org.allbinary.platform.opengles.PlatformTextureBaseFactory_Package;

   type OpenGLESGL11ExtImage is tagged;
   type OpenGLESGL11ExtImage_Access is access all OpenGLESGL11ExtImage'Class;
   type OpenGLESGL11ExtImage_Access_Array is array (Natural range <>) of OpenGLESGL11ExtImage_Access;
   type OpenGLESGL11ExtImage_Access_Array_Access is access all OpenGLESGL11ExtImage_Access_Array;
   type OpenGLESGL11ExtImage_Access_Array_Access_Array is array (Natural range <>) of OpenGLESGL11ExtImage_Access_Array_Access;
   type OpenGLESGL11ExtImage_Access_Array_Access_Array_Access is access all OpenGLESGL11ExtImage_Access_Array_Access_Array;

   type OpenGLESGL11ExtImage is new OpenGLESImage with record
      logUtil : LogUtil_Access;
      a : Integer;
      rectangle : Integer_Array_Access;
   end record;

   procedure Initialize (This : in out OpenGLESGL11ExtImage'Class; image_Param : access Image_Package.Image'Class; bitmapFactory_Param : access PlatformBitmapBaseFactory_Package.PlatformBitmapBaseFactory'Class; textureFactory_Param : access PlatformTextureBaseFactory_Package.PlatformTextureBaseFactory'Class);
   function Create (image_Param : access Image_Package.Image'Class; bitmapFactory_Param : access PlatformBitmapBaseFactory_Package.PlatformBitmapBaseFactory'Class; textureFactory_Param : access PlatformTextureBaseFactory_Package.PlatformTextureBaseFactory'Class) return OpenGLESGL11ExtImage_Access;
   procedure onDisplayChangeEvent (This : in out OpenGLESGL11ExtImage; displayChangeEvent_Param : access DisplayChangeEvent_Package.DisplayChangeEvent'Class);
   procedure set (This : in out OpenGLESGL11ExtImage; gl_Param : access GL_Package.GL'Class);
   procedure draw (This : in out OpenGLESGL11ExtImage; gl_Param : access GL10_Package.GL10'Class; x : Integer; y : Integer; z : Integer);

end org.allbinary.image.opengles.OpenGLESGL11ExtImage_Package;


