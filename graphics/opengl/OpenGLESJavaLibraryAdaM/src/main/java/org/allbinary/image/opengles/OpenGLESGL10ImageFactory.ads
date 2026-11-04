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

limited with org.allbinary.image.opengles.OpenGLESGL10ImageFactory_Package;
package org.allbinary.image.opengles.OpenGLESGL10ImageFactory_Package_References is
   type OpenGLESGL10ImageFactory_Access is access all org.allbinary.image.opengles.OpenGLESGL10ImageFactory_Package.OpenGLESGL10ImageFactory'Class;
   type OpenGLESGL10ImageFactory_Access_Array is array (Natural range <>) of OpenGLESGL10ImageFactory_Access;
   type OpenGLESGL10ImageFactory_Access_Array_Access is access all OpenGLESGL10ImageFactory_Access_Array;
   type OpenGLESGL10ImageFactory_Access_Array_Access_Array is array (Natural range <>) of OpenGLESGL10ImageFactory_Access_Array_Access;
   type OpenGLESGL10ImageFactory_Access_Array_Access_Array_Access is access all OpenGLESGL10ImageFactory_Access_Array_Access_Array;
end org.allbinary.image.opengles.OpenGLESGL10ImageFactory_Package_References;

with org.allbinary.image.opengles.OpenGLESGL10ImageFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.lcdui.Image_Package;
with javax.microedition.lcdui.Image_Package_References;
limited with org.allbinary.platform.graphics.PlatformBitmapBaseFactory_Package;
with org.allbinary.platform.graphics.PlatformBitmapBaseFactory_Package_References;
limited with org.allbinary.platform.opengles.PlatformTextureBaseFactory_Package;
with org.allbinary.platform.opengles.PlatformTextureBaseFactory_Package_References;
with org.allbinary.image.opengles.OpenGLImageFactory_Package; use org.allbinary.image.opengles.OpenGLImageFactory_Package;

package org.allbinary.image.opengles.OpenGLESGL10ImageFactory_Package is

   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package PlatformBitmapBaseFactory_Package renames Standard.org.allbinary.platform.graphics.PlatformBitmapBaseFactory_Package;
   package PlatformTextureBaseFactory_Package renames Standard.org.allbinary.platform.opengles.PlatformTextureBaseFactory_Package;
   package Reference_Types is
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


   subtype OpenGLESGL10ImageFactory_Access is org.allbinary.image.opengles.OpenGLESGL10ImageFactory_Package_References.OpenGLESGL10ImageFactory_Access;
   function "=" (Left, Right : OpenGLESGL10ImageFactory_Access) return Boolean renames org.allbinary.image.opengles.OpenGLESGL10ImageFactory_Package_References."=";
   subtype OpenGLESGL10ImageFactory_Access_Array is org.allbinary.image.opengles.OpenGLESGL10ImageFactory_Package_References.OpenGLESGL10ImageFactory_Access_Array;
   function "=" (Left, Right : OpenGLESGL10ImageFactory_Access_Array) return Boolean renames org.allbinary.image.opengles.OpenGLESGL10ImageFactory_Package_References."=";
   subtype OpenGLESGL10ImageFactory_Access_Array_Access is org.allbinary.image.opengles.OpenGLESGL10ImageFactory_Package_References.OpenGLESGL10ImageFactory_Access_Array_Access;
   function "=" (Left, Right : OpenGLESGL10ImageFactory_Access_Array_Access) return Boolean renames org.allbinary.image.opengles.OpenGLESGL10ImageFactory_Package_References."=";
   subtype OpenGLESGL10ImageFactory_Access_Array_Access_Array is org.allbinary.image.opengles.OpenGLESGL10ImageFactory_Package_References.OpenGLESGL10ImageFactory_Access_Array_Access_Array;
   function "=" (Left, Right : OpenGLESGL10ImageFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.image.opengles.OpenGLESGL10ImageFactory_Package_References."=";
   subtype OpenGLESGL10ImageFactory_Access_Array_Access_Array_Access is org.allbinary.image.opengles.OpenGLESGL10ImageFactory_Package_References.OpenGLESGL10ImageFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OpenGLESGL10ImageFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.image.opengles.OpenGLESGL10ImageFactory_Package_References."=";

   type OpenGLESGL10ImageFactory is new OpenGLImageFactory with null record;

   procedure Initialize (This : in out OpenGLESGL10ImageFactory'Class);
   function Create return OpenGLESGL10ImageFactory_Access;
   function getInstance (This : in out OpenGLESGL10ImageFactory; image_Param : access Image_Package.Image'Class; bitmapFactory_Param : access PlatformBitmapBaseFactory_Package.PlatformBitmapBaseFactory'Class; textureFactory_Param : access PlatformTextureBaseFactory_Package.PlatformTextureBaseFactory'Class) return Image_Access;
   procedure getInstance (This : in out OpenGLESGL10ImageFactory; image_Param : access Image_Package.Image'Class; bitmapFactory_Param : access PlatformBitmapBaseFactory_Package.PlatformBitmapBaseFactory'Class; textureFactory_Param : access PlatformTextureBaseFactory_Package.PlatformTextureBaseFactory'Class);

end org.allbinary.image.opengles.OpenGLESGL10ImageFactory_Package;


