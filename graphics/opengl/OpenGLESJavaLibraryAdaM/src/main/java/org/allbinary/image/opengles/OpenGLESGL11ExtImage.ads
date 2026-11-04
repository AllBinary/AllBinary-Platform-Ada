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

limited with org.allbinary.image.opengles.OpenGLESGL11ExtImage_Package;
package org.allbinary.image.opengles.OpenGLESGL11ExtImage_Package_References is
   type OpenGLESGL11ExtImage_Access is access all org.allbinary.image.opengles.OpenGLESGL11ExtImage_Package.OpenGLESGL11ExtImage'Class;
   type OpenGLESGL11ExtImage_Access_Array is array (Natural range <>) of OpenGLESGL11ExtImage_Access;
   type OpenGLESGL11ExtImage_Access_Array_Access is access all OpenGLESGL11ExtImage_Access_Array;
   type OpenGLESGL11ExtImage_Access_Array_Access_Array is array (Natural range <>) of OpenGLESGL11ExtImage_Access_Array_Access;
   type OpenGLESGL11ExtImage_Access_Array_Access_Array_Access is access all OpenGLESGL11ExtImage_Access_Array_Access_Array;
end org.allbinary.image.opengles.OpenGLESGL11ExtImage_Package_References;

with org.allbinary.image.opengles.OpenGLESGL11ExtImage_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.khronos.opengles.GL_Package;
with javax.microedition.khronos.opengles.GL_Package_References;
limited with javax.microedition.khronos.opengles.GL10_Package;
with javax.microedition.khronos.opengles.GL10_Package_References;
limited with javax.microedition.lcdui.Image_Package;
with javax.microedition.lcdui.Image_Package_References;
limited with org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package;
with org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.platform.graphics.PlatformBitmapBaseFactory_Package;
with org.allbinary.platform.graphics.PlatformBitmapBaseFactory_Package_References;
limited with org.allbinary.platform.opengles.PlatformTextureBaseFactory_Package;
with org.allbinary.platform.opengles.PlatformTextureBaseFactory_Package_References;
with org.allbinary.image.opengles.OpenGLESImage_Package; use org.allbinary.image.opengles.OpenGLESImage_Package;

package org.allbinary.image.opengles.OpenGLESGL11ExtImage_Package is

   package GL_Package renames Standard.javax.microedition.khronos.opengles.GL_Package;
   package GL10_Package renames Standard.javax.microedition.khronos.opengles.GL10_Package;
   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package DisplayChangeEvent_Package renames Standard.org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package PlatformBitmapBaseFactory_Package renames Standard.org.allbinary.platform.graphics.PlatformBitmapBaseFactory_Package;
   package PlatformTextureBaseFactory_Package renames Standard.org.allbinary.platform.opengles.PlatformTextureBaseFactory_Package;
   package Reference_Types is
   subtype GL_Access is javax.microedition.khronos.opengles.GL_Package_References.GL_Access;
   use type GL_Access;
   subtype GL_Access_Array is javax.microedition.khronos.opengles.GL_Package_References.GL_Access_Array;
   use type GL_Access_Array;
   subtype GL_Access_Array_Access is javax.microedition.khronos.opengles.GL_Package_References.GL_Access_Array_Access;
   use type GL_Access_Array_Access;
   subtype GL_Access_Array_Access_Array is javax.microedition.khronos.opengles.GL_Package_References.GL_Access_Array_Access_Array;
   use type GL_Access_Array_Access_Array;
   subtype GL_Access_Array_Access_Array_Access is javax.microedition.khronos.opengles.GL_Package_References.GL_Access_Array_Access_Array_Access;
   use type GL_Access_Array_Access_Array_Access;
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
   subtype DisplayChangeEvent_Access is org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package_References.DisplayChangeEvent_Access;
   use type DisplayChangeEvent_Access;
   subtype DisplayChangeEvent_Access_Array is org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package_References.DisplayChangeEvent_Access_Array;
   use type DisplayChangeEvent_Access_Array;
   subtype DisplayChangeEvent_Access_Array_Access is org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package_References.DisplayChangeEvent_Access_Array_Access;
   use type DisplayChangeEvent_Access_Array_Access;
   subtype DisplayChangeEvent_Access_Array_Access_Array is org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package_References.DisplayChangeEvent_Access_Array_Access_Array;
   use type DisplayChangeEvent_Access_Array_Access_Array;
   subtype DisplayChangeEvent_Access_Array_Access_Array_Access is org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package_References.DisplayChangeEvent_Access_Array_Access_Array_Access;
   use type DisplayChangeEvent_Access_Array_Access_Array_Access;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype PlatformBitmapBaseFactory_Access is org.allbinary.platform.graphics.PlatformBitmapBaseFactory_Package_References.PlatformBitmapBaseFactory_Access;
   use type PlatformBitmapBaseFactory_Access;
   subtype PlatformBitmapBaseFactory_Access_Array is org.allbinary.platform.graphics.PlatformBitmapBaseFactory_Package_References.PlatformBitmapBaseFactory_Access_Array;
   use type PlatformBitmapBaseFactory_Access_Array;
   subtype PlatformBitmapBaseFactory_Access_Array_Access is org.allbinary.platform.graphics.PlatformBitmapBaseFactory_Package_References.PlatformBitmapBaseFactory_Access_Array_Access;
   use type PlatformBitmapBaseFactory_Access_Array_Access;
   subtype PlatformBitmapBaseFactory_Access_Array_Access_Array is org.allbinary.platform.graphics.PlatformBitmapBaseFactory_Package_References.PlatformBitmapBaseFactory_Access_Array_Access_Array;
   use type PlatformBitmapBaseFactory_Access_Array_Access_Array;
   subtype PlatformBitmapBaseFactory_Access_Array_Access_Array_Access is org.allbinary.platform.graphics.PlatformBitmapBaseFactory_Package_References.PlatformBitmapBaseFactory_Access_Array_Access_Array_Access;
   use type PlatformBitmapBaseFactory_Access_Array_Access_Array_Access;
   subtype PlatformTextureBaseFactory_Access is org.allbinary.platform.opengles.PlatformTextureBaseFactory_Package_References.PlatformTextureBaseFactory_Access;
   use type PlatformTextureBaseFactory_Access;
   subtype PlatformTextureBaseFactory_Access_Array is org.allbinary.platform.opengles.PlatformTextureBaseFactory_Package_References.PlatformTextureBaseFactory_Access_Array;
   use type PlatformTextureBaseFactory_Access_Array;
   subtype PlatformTextureBaseFactory_Access_Array_Access is org.allbinary.platform.opengles.PlatformTextureBaseFactory_Package_References.PlatformTextureBaseFactory_Access_Array_Access;
   use type PlatformTextureBaseFactory_Access_Array_Access;
   subtype PlatformTextureBaseFactory_Access_Array_Access_Array is org.allbinary.platform.opengles.PlatformTextureBaseFactory_Package_References.PlatformTextureBaseFactory_Access_Array_Access_Array;
   use type PlatformTextureBaseFactory_Access_Array_Access_Array;
   subtype PlatformTextureBaseFactory_Access_Array_Access_Array_Access is org.allbinary.platform.opengles.PlatformTextureBaseFactory_Package_References.PlatformTextureBaseFactory_Access_Array_Access_Array_Access;
   use type PlatformTextureBaseFactory_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype OpenGLESGL11ExtImage_Access is org.allbinary.image.opengles.OpenGLESGL11ExtImage_Package_References.OpenGLESGL11ExtImage_Access;
   function "=" (Left, Right : OpenGLESGL11ExtImage_Access) return Boolean renames org.allbinary.image.opengles.OpenGLESGL11ExtImage_Package_References."=";
   subtype OpenGLESGL11ExtImage_Access_Array is org.allbinary.image.opengles.OpenGLESGL11ExtImage_Package_References.OpenGLESGL11ExtImage_Access_Array;
   function "=" (Left, Right : OpenGLESGL11ExtImage_Access_Array) return Boolean renames org.allbinary.image.opengles.OpenGLESGL11ExtImage_Package_References."=";
   subtype OpenGLESGL11ExtImage_Access_Array_Access is org.allbinary.image.opengles.OpenGLESGL11ExtImage_Package_References.OpenGLESGL11ExtImage_Access_Array_Access;
   function "=" (Left, Right : OpenGLESGL11ExtImage_Access_Array_Access) return Boolean renames org.allbinary.image.opengles.OpenGLESGL11ExtImage_Package_References."=";
   subtype OpenGLESGL11ExtImage_Access_Array_Access_Array is org.allbinary.image.opengles.OpenGLESGL11ExtImage_Package_References.OpenGLESGL11ExtImage_Access_Array_Access_Array;
   function "=" (Left, Right : OpenGLESGL11ExtImage_Access_Array_Access_Array) return Boolean renames org.allbinary.image.opengles.OpenGLESGL11ExtImage_Package_References."=";
   subtype OpenGLESGL11ExtImage_Access_Array_Access_Array_Access is org.allbinary.image.opengles.OpenGLESGL11ExtImage_Package_References.OpenGLESGL11ExtImage_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OpenGLESGL11ExtImage_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.image.opengles.OpenGLESGL11ExtImage_Package_References."=";

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


