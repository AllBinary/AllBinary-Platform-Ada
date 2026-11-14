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

with AllBinary_Java;
limited with org.allbinary.image.opengles.OpenGLESImage_Package;
package org.allbinary.image.opengles.OpenGLESImage_Package_References is
   type OpenGLESImage_Access is access all org.allbinary.image.opengles.OpenGLESImage_Package.OpenGLESImage'Class;
   type OpenGLESImage_Access_Array is array (Natural range <>) of OpenGLESImage_Access;
   type OpenGLESImage_Access_Array_Access is access all OpenGLESImage_Access_Array;
   type OpenGLESImage_Access_Array_Access_Array is array (Natural range <>) of OpenGLESImage_Access_Array_Access;
   type OpenGLESImage_Access_Array_Access_Array_Access is access all OpenGLESImage_Access_Array_Access_Array;
   type OpenGLESImage_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : OpenGLESImage_Access_Array_Access;
   end record;
   function Java_Box (Value : OpenGLESImage_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new OpenGLESImage_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_OpenGLESImage_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return OpenGLESImage_Access_Array_Access is (if Value /= null and then Value.all in OpenGLESImage_Access_Array_Object'Class then OpenGLESImage_Access_Array_Object'Class (Value.all).Value else null);
   type OpenGLESImage_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : OpenGLESImage_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : OpenGLESImage_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new OpenGLESImage_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_OpenGLESImage_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return OpenGLESImage_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in OpenGLESImage_Access_Array_Access_Array_Object'Class then OpenGLESImage_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.image.opengles.OpenGLESImage_Package_References;

with org.allbinary.image.opengles.OpenGLESImage_Package_References;
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
with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.platform.graphics.PlatformBitmapBase_Package;
with org.allbinary.platform.graphics.PlatformBitmapBase_Package_References;
limited with org.allbinary.platform.graphics.PlatformBitmapBaseFactory_Package;
with org.allbinary.platform.graphics.PlatformBitmapBaseFactory_Package_References;
limited with org.allbinary.platform.opengles.PlatformTextureBaseFactory_Package;
with org.allbinary.platform.opengles.PlatformTextureBaseFactory_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.image.opengles.OpenGLSurfaceChangedInterface_Package; use org.allbinary.image.opengles.OpenGLSurfaceChangedInterface_Package;
limited with org.allbinary.image.opengles.OpenGLESImageProcessor_Package;
with org.allbinary.image.opengles.OpenGLESImageProcessor_Package_References;
limited with org.allbinary.image.opengles.OpenGLESImageTranslate_Package;
with org.allbinary.image.opengles.OpenGLESImageTranslate_Package_References;
limited with org.allbinary.image.opengles.OpenGLESImageProperties_Package;
with org.allbinary.image.opengles.OpenGLESImageProperties_Package_References;

package org.allbinary.image.opengles.OpenGLESImage_Package is

   package GL_Package renames Standard.javax.microedition.khronos.opengles.GL_Package;
   package GL10_Package renames Standard.javax.microedition.khronos.opengles.GL10_Package;
   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package PlatformBitmapBase_Package renames Standard.org.allbinary.platform.graphics.PlatformBitmapBase_Package;
   package PlatformBitmapBaseFactory_Package renames Standard.org.allbinary.platform.graphics.PlatformBitmapBaseFactory_Package;
   package PlatformTextureBaseFactory_Package renames Standard.org.allbinary.platform.opengles.PlatformTextureBaseFactory_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
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
   subtype PlatformBitmapBase_Access is org.allbinary.platform.graphics.PlatformBitmapBase_Package_References.PlatformBitmapBase_Access;
   use type PlatformBitmapBase_Access;
   subtype PlatformBitmapBase_Access_Array is org.allbinary.platform.graphics.PlatformBitmapBase_Package_References.PlatformBitmapBase_Access_Array;
   use type PlatformBitmapBase_Access_Array;
   subtype PlatformBitmapBase_Access_Array_Access is org.allbinary.platform.graphics.PlatformBitmapBase_Package_References.PlatformBitmapBase_Access_Array_Access;
   use type PlatformBitmapBase_Access_Array_Access;
   subtype PlatformBitmapBase_Access_Array_Access_Array is org.allbinary.platform.graphics.PlatformBitmapBase_Package_References.PlatformBitmapBase_Access_Array_Access_Array;
   use type PlatformBitmapBase_Access_Array_Access_Array;
   subtype PlatformBitmapBase_Access_Array_Access_Array_Access is org.allbinary.platform.graphics.PlatformBitmapBase_Package_References.PlatformBitmapBase_Access_Array_Access_Array_Access;
   use type PlatformBitmapBase_Access_Array_Access_Array_Access;
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
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   subtype OpenGLESImageProcessor_Access is org.allbinary.image.opengles.OpenGLESImageProcessor_Package_References.OpenGLESImageProcessor_Access;
   use type OpenGLESImageProcessor_Access;
   subtype OpenGLESImageProcessor_Access_Array is org.allbinary.image.opengles.OpenGLESImageProcessor_Package_References.OpenGLESImageProcessor_Access_Array;
   use type OpenGLESImageProcessor_Access_Array;
   subtype OpenGLESImageProcessor_Access_Array_Access is org.allbinary.image.opengles.OpenGLESImageProcessor_Package_References.OpenGLESImageProcessor_Access_Array_Access;
   use type OpenGLESImageProcessor_Access_Array_Access;
   subtype OpenGLESImageProcessor_Access_Array_Access_Array is org.allbinary.image.opengles.OpenGLESImageProcessor_Package_References.OpenGLESImageProcessor_Access_Array_Access_Array;
   use type OpenGLESImageProcessor_Access_Array_Access_Array;
   subtype OpenGLESImageProcessor_Access_Array_Access_Array_Access is org.allbinary.image.opengles.OpenGLESImageProcessor_Package_References.OpenGLESImageProcessor_Access_Array_Access_Array_Access;
   use type OpenGLESImageProcessor_Access_Array_Access_Array_Access;
   subtype OpenGLESImageTranslate_Access is org.allbinary.image.opengles.OpenGLESImageTranslate_Package_References.OpenGLESImageTranslate_Access;
   use type OpenGLESImageTranslate_Access;
   subtype OpenGLESImageTranslate_Access_Array is org.allbinary.image.opengles.OpenGLESImageTranslate_Package_References.OpenGLESImageTranslate_Access_Array;
   use type OpenGLESImageTranslate_Access_Array;
   subtype OpenGLESImageTranslate_Access_Array_Access is org.allbinary.image.opengles.OpenGLESImageTranslate_Package_References.OpenGLESImageTranslate_Access_Array_Access;
   use type OpenGLESImageTranslate_Access_Array_Access;
   subtype OpenGLESImageTranslate_Access_Array_Access_Array is org.allbinary.image.opengles.OpenGLESImageTranslate_Package_References.OpenGLESImageTranslate_Access_Array_Access_Array;
   use type OpenGLESImageTranslate_Access_Array_Access_Array;
   subtype OpenGLESImageTranslate_Access_Array_Access_Array_Access is org.allbinary.image.opengles.OpenGLESImageTranslate_Package_References.OpenGLESImageTranslate_Access_Array_Access_Array_Access;
   use type OpenGLESImageTranslate_Access_Array_Access_Array_Access;
   subtype OpenGLESImageProperties_Access is org.allbinary.image.opengles.OpenGLESImageProperties_Package_References.OpenGLESImageProperties_Access;
   use type OpenGLESImageProperties_Access;
   subtype OpenGLESImageProperties_Access_Array is org.allbinary.image.opengles.OpenGLESImageProperties_Package_References.OpenGLESImageProperties_Access_Array;
   use type OpenGLESImageProperties_Access_Array;
   subtype OpenGLESImageProperties_Access_Array_Access is org.allbinary.image.opengles.OpenGLESImageProperties_Package_References.OpenGLESImageProperties_Access_Array_Access;
   use type OpenGLESImageProperties_Access_Array_Access;
   subtype OpenGLESImageProperties_Access_Array_Access_Array is org.allbinary.image.opengles.OpenGLESImageProperties_Package_References.OpenGLESImageProperties_Access_Array_Access_Array;
   use type OpenGLESImageProperties_Access_Array_Access_Array;
   subtype OpenGLESImageProperties_Access_Array_Access_Array_Access is org.allbinary.image.opengles.OpenGLESImageProperties_Package_References.OpenGLESImageProperties_Access_Array_Access_Array_Access;
   use type OpenGLESImageProperties_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype OpenGLESImage_Access is org.allbinary.image.opengles.OpenGLESImage_Package_References.OpenGLESImage_Access;
   function "=" (Left, Right : OpenGLESImage_Access) return Boolean renames org.allbinary.image.opengles.OpenGLESImage_Package_References."=";
   subtype OpenGLESImage_Access_Array is org.allbinary.image.opengles.OpenGLESImage_Package_References.OpenGLESImage_Access_Array;
   function "=" (Left, Right : OpenGLESImage_Access_Array) return Boolean renames org.allbinary.image.opengles.OpenGLESImage_Package_References."=";
   subtype OpenGLESImage_Access_Array_Access is org.allbinary.image.opengles.OpenGLESImage_Package_References.OpenGLESImage_Access_Array_Access;
   function "=" (Left, Right : OpenGLESImage_Access_Array_Access) return Boolean renames org.allbinary.image.opengles.OpenGLESImage_Package_References."=";
   function Java_Box (Value : OpenGLESImage_Access_Array_Access) return Java_Object_Access renames org.allbinary.image.opengles.OpenGLESImage_Package_References.Java_Box;
   function Java_Unbox_OpenGLESImage_Access_Array (Value : access Java_Object'Class) return OpenGLESImage_Access_Array_Access renames org.allbinary.image.opengles.OpenGLESImage_Package_References.Java_Unbox_OpenGLESImage_Access_Array;
   subtype OpenGLESImage_Access_Array_Access_Array is org.allbinary.image.opengles.OpenGLESImage_Package_References.OpenGLESImage_Access_Array_Access_Array;
   function "=" (Left, Right : OpenGLESImage_Access_Array_Access_Array) return Boolean renames org.allbinary.image.opengles.OpenGLESImage_Package_References."=";
   subtype OpenGLESImage_Access_Array_Access_Array_Access is org.allbinary.image.opengles.OpenGLESImage_Package_References.OpenGLESImage_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OpenGLESImage_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.image.opengles.OpenGLESImage_Package_References."=";
   function Java_Box (Value : OpenGLESImage_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.image.opengles.OpenGLESImage_Package_References.Java_Box;
   function Java_Unbox_OpenGLESImage_Access_Array_Access_Array (Value : access Java_Object'Class) return OpenGLESImage_Access_Array_Access_Array_Access renames org.allbinary.image.opengles.OpenGLESImage_Package_References.Java_Unbox_OpenGLESImage_Access_Array_Access_Array;

   type OpenGLESImage is new Image_Package.Image and OpenGLSurfaceChangedInterface with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      textureFactory : PlatformTextureBaseFactory_Access;
      openGLBitmap : PlatformBitmapBase_Access;
      imageProcessor : OpenGLESImageProcessor_Access;
      openGLESImageTranslate : OpenGLESImageTranslate_Access;
      openGLESImageProperties : OpenGLESImageProperties_Access;
   end record;
   NULL_OPENGL_IMAGE : OpenGLESImage_Access;
   texture2dList : BasicArrayList_Access;
   TYPE_Id : constant Integer := 4;

   procedure Initialize (This : in out OpenGLESImage'Class; image_Param : access Image_Package.Image'Class; bitmapFactory_Param : access PlatformBitmapBaseFactory_Package.PlatformBitmapBaseFactory'Class; textureFactory_Param : access PlatformTextureBaseFactory_Package.PlatformTextureBaseFactory'Class);
   function Create (image_Param : access Image_Package.Image'Class; bitmapFactory_Param : access PlatformBitmapBaseFactory_Package.PlatformBitmapBaseFactory'Class; textureFactory_Param : access PlatformTextureBaseFactory_Package.PlatformTextureBaseFactory'Class) return OpenGLESImage_Access;
   function getHeight (This : in out OpenGLESImage) return Integer;
   function getWidth (This : in out OpenGLESImage) return Integer;
   procedure set (This : in out OpenGLESImage; gl_Param : access GL_Package.GL'Class);
   function initTexture (This : in out OpenGLESImage; gl_Param : access GL10_Package.GL10'Class) return Boolean;
   procedure initTexture (This : in out OpenGLESImage; gl_Param : access GL10_Package.GL10'Class);
   procedure drawRegion (This : in out OpenGLESImage; gl_Param : access GL10_Package.GL10'Class; viewHeight : Integer; x_src : Float; y_src : Float; width : Float; height : Float; x : Integer; y : Integer; z : Integer);
   procedure draw (This : in out OpenGLESImage; gl_Param : access GL10_Package.GL10'Class; x : Integer; y : Integer; z : Integer);
   function getType (This : in out OpenGLESImage) return Integer;
   function toString (This : in out OpenGLESImage) return Unbounded_String;

end org.allbinary.image.opengles.OpenGLESImage_Package;


