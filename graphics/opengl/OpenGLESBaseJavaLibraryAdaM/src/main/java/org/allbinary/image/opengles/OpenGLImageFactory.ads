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

limited with org.allbinary.image.opengles.OpenGLImageFactory_Package;
package org.allbinary.image.opengles.OpenGLImageFactory_Package_References is
   type OpenGLImageFactory_Access is access all org.allbinary.image.opengles.OpenGLImageFactory_Package.OpenGLImageFactory'Class;
   type OpenGLImageFactory_Access_Array is array (Natural range <>) of OpenGLImageFactory_Access;
   type OpenGLImageFactory_Access_Array_Access is access all OpenGLImageFactory_Access_Array;
   type OpenGLImageFactory_Access_Array_Access_Array is array (Natural range <>) of OpenGLImageFactory_Access_Array_Access;
   type OpenGLImageFactory_Access_Array_Access_Array_Access is access all OpenGLImageFactory_Access_Array_Access_Array;
end org.allbinary.image.opengles.OpenGLImageFactory_Package_References;

with org.allbinary.image.opengles.OpenGLImageFactory_Package_References;
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

package org.allbinary.image.opengles.OpenGLImageFactory_Package is

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


   subtype OpenGLImageFactory_Access is org.allbinary.image.opengles.OpenGLImageFactory_Package_References.OpenGLImageFactory_Access;
   function "=" (Left, Right : OpenGLImageFactory_Access) return Boolean renames org.allbinary.image.opengles.OpenGLImageFactory_Package_References."=";
   subtype OpenGLImageFactory_Access_Array is org.allbinary.image.opengles.OpenGLImageFactory_Package_References.OpenGLImageFactory_Access_Array;
   function "=" (Left, Right : OpenGLImageFactory_Access_Array) return Boolean renames org.allbinary.image.opengles.OpenGLImageFactory_Package_References."=";
   subtype OpenGLImageFactory_Access_Array_Access is org.allbinary.image.opengles.OpenGLImageFactory_Package_References.OpenGLImageFactory_Access_Array_Access;
   function "=" (Left, Right : OpenGLImageFactory_Access_Array_Access) return Boolean renames org.allbinary.image.opengles.OpenGLImageFactory_Package_References."=";
   subtype OpenGLImageFactory_Access_Array_Access_Array is org.allbinary.image.opengles.OpenGLImageFactory_Package_References.OpenGLImageFactory_Access_Array_Access_Array;
   function "=" (Left, Right : OpenGLImageFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.image.opengles.OpenGLImageFactory_Package_References."=";
   subtype OpenGLImageFactory_Access_Array_Access_Array_Access is org.allbinary.image.opengles.OpenGLImageFactory_Package_References.OpenGLImageFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OpenGLImageFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.image.opengles.OpenGLImageFactory_Package_References."=";

   type OpenGLImageFactory is new Java_Object with null record;
   NULL_OPENGL_IMAGE_FACTORY : OpenGLImageFactory_Access;

   procedure Initialize (This : in out OpenGLImageFactory'Class);
   function Create return OpenGLImageFactory_Access;
   function getInstance (This : in out OpenGLImageFactory; image_Param : access Image_Package.Image'Class; bitmapFactory_Param : access PlatformBitmapBaseFactory_Package.PlatformBitmapBaseFactory'Class; textureFactory_Param : access PlatformTextureBaseFactory_Package.PlatformTextureBaseFactory'Class) return Image_Access;
   procedure getInstance (This : in out OpenGLImageFactory; image_Param : access Image_Package.Image'Class; bitmapFactory_Param : access PlatformBitmapBaseFactory_Package.PlatformBitmapBaseFactory'Class; textureFactory_Param : access PlatformTextureBaseFactory_Package.PlatformTextureBaseFactory'Class);

end org.allbinary.image.opengles.OpenGLImageFactory_Package;


