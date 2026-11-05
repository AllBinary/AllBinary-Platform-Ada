-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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

limited with org.allbinary.media.image.ImageModifierUtil_Package;
package org.allbinary.media.image.ImageModifierUtil_Package_References is
   type ImageModifierUtil_Access is access all org.allbinary.media.image.ImageModifierUtil_Package.ImageModifierUtil'Class;
   type ImageModifierUtil_Access_Array is array (Natural range <>) of ImageModifierUtil_Access;
   type ImageModifierUtil_Access_Array_Access is access all ImageModifierUtil_Access_Array;
   type ImageModifierUtil_Access_Array_Access_Array is array (Natural range <>) of ImageModifierUtil_Access_Array_Access;
   type ImageModifierUtil_Access_Array_Access_Array_Access is access all ImageModifierUtil_Access_Array_Access_Array;
end org.allbinary.media.image.ImageModifierUtil_Package_References;

with org.allbinary.media.image.ImageModifierUtil_Package_References;
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
limited with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.microemu.device.ResourceCallbackStrings_Package;
with org.microemu.device.ResourceCallbackStrings_Package_References;
limited with playn.core.Callback_Package;
with playn.core.Callback_Package_References;
limited with playn.core.CoreImage_Package;
with playn.core.CoreImage_Package_References;
limited with playn.html.HTMLPlaynUtil_Package;
with playn.html.HTMLPlaynUtil_Package_References;

package org.allbinary.media.image.ImageModifierUtil_Package is

   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package ResourceCallbackStrings_Package renames Standard.org.microemu.device.ResourceCallbackStrings_Package;
   package Callback_Package renames Standard.playn.core.Callback_Package;
   package CoreImage_Package renames Standard.playn.core.CoreImage_Package;
   package HTMLPlaynUtil_Package renames Standard.playn.html.HTMLPlaynUtil_Package;
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
   subtype BasicColor_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access;
   use type BasicColor_Access;
   subtype BasicColor_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array;
   use type BasicColor_Access_Array;
   subtype BasicColor_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access;
   use type BasicColor_Access_Array_Access;
   subtype BasicColor_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array;
   use type BasicColor_Access_Array_Access_Array;
   subtype BasicColor_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array_Access;
   use type BasicColor_Access_Array_Access_Array_Access;
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
   subtype ResourceCallbackStrings_Access is org.microemu.device.ResourceCallbackStrings_Package_References.ResourceCallbackStrings_Access;
   use type ResourceCallbackStrings_Access;
   subtype ResourceCallbackStrings_Access_Array is org.microemu.device.ResourceCallbackStrings_Package_References.ResourceCallbackStrings_Access_Array;
   use type ResourceCallbackStrings_Access_Array;
   subtype ResourceCallbackStrings_Access_Array_Access is org.microemu.device.ResourceCallbackStrings_Package_References.ResourceCallbackStrings_Access_Array_Access;
   use type ResourceCallbackStrings_Access_Array_Access;
   subtype ResourceCallbackStrings_Access_Array_Access_Array is org.microemu.device.ResourceCallbackStrings_Package_References.ResourceCallbackStrings_Access_Array_Access_Array;
   use type ResourceCallbackStrings_Access_Array_Access_Array;
   subtype ResourceCallbackStrings_Access_Array_Access_Array_Access is org.microemu.device.ResourceCallbackStrings_Package_References.ResourceCallbackStrings_Access_Array_Access_Array_Access;
   use type ResourceCallbackStrings_Access_Array_Access_Array_Access;
   subtype Callback_Access is playn.core.Callback_Package_References.Callback_Access;
   use type Callback_Access;
   subtype Callback_Access_Array is playn.core.Callback_Package_References.Callback_Access_Array;
   use type Callback_Access_Array;
   subtype Callback_Access_Array_Access is playn.core.Callback_Package_References.Callback_Access_Array_Access;
   use type Callback_Access_Array_Access;
   subtype Callback_Access_Array_Access_Array is playn.core.Callback_Package_References.Callback_Access_Array_Access_Array;
   use type Callback_Access_Array_Access_Array;
   subtype Callback_Access_Array_Access_Array_Access is playn.core.Callback_Package_References.Callback_Access_Array_Access_Array_Access;
   use type Callback_Access_Array_Access_Array_Access;
   subtype CoreImage_Access is playn.core.CoreImage_Package_References.CoreImage_Access;
   use type CoreImage_Access;
   subtype CoreImage_Access_Array is playn.core.CoreImage_Package_References.CoreImage_Access_Array;
   use type CoreImage_Access_Array;
   subtype CoreImage_Access_Array_Access is playn.core.CoreImage_Package_References.CoreImage_Access_Array_Access;
   use type CoreImage_Access_Array_Access;
   subtype CoreImage_Access_Array_Access_Array is playn.core.CoreImage_Package_References.CoreImage_Access_Array_Access_Array;
   use type CoreImage_Access_Array_Access_Array;
   subtype CoreImage_Access_Array_Access_Array_Access is playn.core.CoreImage_Package_References.CoreImage_Access_Array_Access_Array_Access;
   use type CoreImage_Access_Array_Access_Array_Access;
   subtype HTMLPlaynUtil_Access is playn.html.HTMLPlaynUtil_Package_References.HTMLPlaynUtil_Access;
   use type HTMLPlaynUtil_Access;
   subtype HTMLPlaynUtil_Access_Array is playn.html.HTMLPlaynUtil_Package_References.HTMLPlaynUtil_Access_Array;
   use type HTMLPlaynUtil_Access_Array;
   subtype HTMLPlaynUtil_Access_Array_Access is playn.html.HTMLPlaynUtil_Package_References.HTMLPlaynUtil_Access_Array_Access;
   use type HTMLPlaynUtil_Access_Array_Access;
   subtype HTMLPlaynUtil_Access_Array_Access_Array is playn.html.HTMLPlaynUtil_Package_References.HTMLPlaynUtil_Access_Array_Access_Array;
   use type HTMLPlaynUtil_Access_Array_Access_Array;
   subtype HTMLPlaynUtil_Access_Array_Access_Array_Access is playn.html.HTMLPlaynUtil_Package_References.HTMLPlaynUtil_Access_Array_Access_Array_Access;
   use type HTMLPlaynUtil_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ImageModifierUtil_Access is org.allbinary.media.image.ImageModifierUtil_Package_References.ImageModifierUtil_Access;
   function "=" (Left, Right : ImageModifierUtil_Access) return Boolean renames org.allbinary.media.image.ImageModifierUtil_Package_References."=";
   subtype ImageModifierUtil_Access_Array is org.allbinary.media.image.ImageModifierUtil_Package_References.ImageModifierUtil_Access_Array;
   function "=" (Left, Right : ImageModifierUtil_Access_Array) return Boolean renames org.allbinary.media.image.ImageModifierUtil_Package_References."=";
   subtype ImageModifierUtil_Access_Array_Access is org.allbinary.media.image.ImageModifierUtil_Package_References.ImageModifierUtil_Access_Array_Access;
   function "=" (Left, Right : ImageModifierUtil_Access_Array_Access) return Boolean renames org.allbinary.media.image.ImageModifierUtil_Package_References."=";
   subtype ImageModifierUtil_Access_Array_Access_Array is org.allbinary.media.image.ImageModifierUtil_Package_References.ImageModifierUtil_Access_Array_Access_Array;
   function "=" (Left, Right : ImageModifierUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.ImageModifierUtil_Package_References."=";
   subtype ImageModifierUtil_Access_Array_Access_Array_Access is org.allbinary.media.image.ImageModifierUtil_Package_References.ImageModifierUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ImageModifierUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.ImageModifierUtil_Package_References."=";

   type ImageModifierUtil is new Java_Object with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      resourceCallbackStrings : ResourceCallbackStrings_Access;
      playnUtil : HTMLPlaynUtil_Access;
      alphaArray : Boolean_Array_Access;
   end record;

   procedure Initialize (This : in out ImageModifierUtil'Class);
   function Create return ImageModifierUtil_Access;
   function getInstanceOrCreate return ImageModifierUtil_Access;
   procedure setColor (This : in out ImageModifierUtil; unusedOriginalImage_Param : access Image_Package.Image'Class; image_Param : access Image_Package.Image'Class; imageIndex : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class);
   procedure changeColor (This : in out ImageModifierUtil; unusedOriginalImage_Param : access Image_Package.Image'Class; image_Param : access Image_Package.Image'Class; imageIndex : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class);
   procedure setAlpha (This : in out ImageModifierUtil; originalImage_Param : access Image_Package.Image'Class; image_Param : access Image_Package.Image'Class; imageIndex : Integer; alpha : Integer);
   procedure setAlphaF (This : in out ImageModifierUtil; originalImage_Param : access Image_Package.Image'Class; image_Param : access Image_Package.Image'Class; imageIndex : Integer; alpha : Float);
   procedure setAlpha2 (This : in out ImageModifierUtil; originalImage_Param : access Image_Package.Image'Class; image_Param : access Image_Package.Image'Class; imageIndex : Integer; alpha : Float);
   procedure setAlpha3 (This : in out ImageModifierUtil; image_Param : access Image_Package.Image'Class; alpha : Float);
   function getImageArray (This : in out ImageModifierUtil; originalImageArray : Image_Access_Array_Access) return Image_Access_Array_Access;
   procedure getImageArray (This : in out ImageModifierUtil; originalImageArray : Image_Access_Array_Access);
   procedure handleImage (This : in out ImageModifierUtil; imageArray : Image_Access_Array_Access; index : Integer; image_Param : access Image_Package.Image'Class);
   procedure copy (This : in out ImageModifierUtil; imageArray : Image_Access_Array_Access; index : Integer; image_Param : access Image_Package.Image'Class; image3_Param : access CoreImage_Package.CoreImage'Class);
   procedure reset (This : in out ImageModifierUtil);

end org.allbinary.media.image.ImageModifierUtil_Package;

limited with org.allbinary.media.image.ImageCopyCallback_Package;
package org.allbinary.media.image.ImageCopyCallback_Package_References is
   type ImageCopyCallback_Access is access all org.allbinary.media.image.ImageCopyCallback_Package.ImageCopyCallback'Class;
   type ImageCopyCallback_Access_Array is array (Natural range <>) of ImageCopyCallback_Access;
   type ImageCopyCallback_Access_Array_Access is access all ImageCopyCallback_Access_Array;
   type ImageCopyCallback_Access_Array_Access_Array is array (Natural range <>) of ImageCopyCallback_Access_Array_Access;
   type ImageCopyCallback_Access_Array_Access_Array_Access is access all ImageCopyCallback_Access_Array_Access_Array;
end org.allbinary.media.image.ImageCopyCallback_Package_References;

with org.allbinary.media.image.ImageCopyCallback_Package_References;
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
limited with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.microemu.device.ResourceCallbackStrings_Package;
with org.microemu.device.ResourceCallbackStrings_Package_References;
with playn.core.Callback_Package; use playn.core.Callback_Package;
limited with playn.core.CoreImage_Package;
with playn.core.CoreImage_Package_References;
limited with playn.html.HTMLPlaynUtil_Package;
with playn.html.HTMLPlaynUtil_Package_References;
limited with org.allbinary.media.image.ImageModifierUtil_Package;
with org.allbinary.media.image.ImageModifierUtil_Package_References;

package org.allbinary.media.image.ImageCopyCallback_Package is

   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package ResourceCallbackStrings_Package renames Standard.org.microemu.device.ResourceCallbackStrings_Package;
   package Callback_Package renames Standard.playn.core.Callback_Package;
   package CoreImage_Package renames Standard.playn.core.CoreImage_Package;
   package HTMLPlaynUtil_Package renames Standard.playn.html.HTMLPlaynUtil_Package;
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
   subtype BasicColor_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access;
   use type BasicColor_Access;
   subtype BasicColor_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array;
   use type BasicColor_Access_Array;
   subtype BasicColor_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access;
   use type BasicColor_Access_Array_Access;
   subtype BasicColor_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array;
   use type BasicColor_Access_Array_Access_Array;
   subtype BasicColor_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array_Access;
   use type BasicColor_Access_Array_Access_Array_Access;
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
   subtype ResourceCallbackStrings_Access is org.microemu.device.ResourceCallbackStrings_Package_References.ResourceCallbackStrings_Access;
   use type ResourceCallbackStrings_Access;
   subtype ResourceCallbackStrings_Access_Array is org.microemu.device.ResourceCallbackStrings_Package_References.ResourceCallbackStrings_Access_Array;
   use type ResourceCallbackStrings_Access_Array;
   subtype ResourceCallbackStrings_Access_Array_Access is org.microemu.device.ResourceCallbackStrings_Package_References.ResourceCallbackStrings_Access_Array_Access;
   use type ResourceCallbackStrings_Access_Array_Access;
   subtype ResourceCallbackStrings_Access_Array_Access_Array is org.microemu.device.ResourceCallbackStrings_Package_References.ResourceCallbackStrings_Access_Array_Access_Array;
   use type ResourceCallbackStrings_Access_Array_Access_Array;
   subtype ResourceCallbackStrings_Access_Array_Access_Array_Access is org.microemu.device.ResourceCallbackStrings_Package_References.ResourceCallbackStrings_Access_Array_Access_Array_Access;
   use type ResourceCallbackStrings_Access_Array_Access_Array_Access;
   subtype CoreImage_Access is playn.core.CoreImage_Package_References.CoreImage_Access;
   use type CoreImage_Access;
   subtype CoreImage_Access_Array is playn.core.CoreImage_Package_References.CoreImage_Access_Array;
   use type CoreImage_Access_Array;
   subtype CoreImage_Access_Array_Access is playn.core.CoreImage_Package_References.CoreImage_Access_Array_Access;
   use type CoreImage_Access_Array_Access;
   subtype CoreImage_Access_Array_Access_Array is playn.core.CoreImage_Package_References.CoreImage_Access_Array_Access_Array;
   use type CoreImage_Access_Array_Access_Array;
   subtype CoreImage_Access_Array_Access_Array_Access is playn.core.CoreImage_Package_References.CoreImage_Access_Array_Access_Array_Access;
   use type CoreImage_Access_Array_Access_Array_Access;
   subtype HTMLPlaynUtil_Access is playn.html.HTMLPlaynUtil_Package_References.HTMLPlaynUtil_Access;
   use type HTMLPlaynUtil_Access;
   subtype HTMLPlaynUtil_Access_Array is playn.html.HTMLPlaynUtil_Package_References.HTMLPlaynUtil_Access_Array;
   use type HTMLPlaynUtil_Access_Array;
   subtype HTMLPlaynUtil_Access_Array_Access is playn.html.HTMLPlaynUtil_Package_References.HTMLPlaynUtil_Access_Array_Access;
   use type HTMLPlaynUtil_Access_Array_Access;
   subtype HTMLPlaynUtil_Access_Array_Access_Array is playn.html.HTMLPlaynUtil_Package_References.HTMLPlaynUtil_Access_Array_Access_Array;
   use type HTMLPlaynUtil_Access_Array_Access_Array;
   subtype HTMLPlaynUtil_Access_Array_Access_Array_Access is playn.html.HTMLPlaynUtil_Package_References.HTMLPlaynUtil_Access_Array_Access_Array_Access;
   use type HTMLPlaynUtil_Access_Array_Access_Array_Access;
   subtype ImageModifierUtil_Access is org.allbinary.media.image.ImageModifierUtil_Package_References.ImageModifierUtil_Access;
   use type ImageModifierUtil_Access;
   subtype ImageModifierUtil_Access_Array is org.allbinary.media.image.ImageModifierUtil_Package_References.ImageModifierUtil_Access_Array;
   use type ImageModifierUtil_Access_Array;
   subtype ImageModifierUtil_Access_Array_Access is org.allbinary.media.image.ImageModifierUtil_Package_References.ImageModifierUtil_Access_Array_Access;
   use type ImageModifierUtil_Access_Array_Access;
   subtype ImageModifierUtil_Access_Array_Access_Array is org.allbinary.media.image.ImageModifierUtil_Package_References.ImageModifierUtil_Access_Array_Access_Array;
   use type ImageModifierUtil_Access_Array_Access_Array;
   subtype ImageModifierUtil_Access_Array_Access_Array_Access is org.allbinary.media.image.ImageModifierUtil_Package_References.ImageModifierUtil_Access_Array_Access_Array_Access;
   use type ImageModifierUtil_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ImageCopyCallback_Access is org.allbinary.media.image.ImageCopyCallback_Package_References.ImageCopyCallback_Access;
   function "=" (Left, Right : ImageCopyCallback_Access) return Boolean renames org.allbinary.media.image.ImageCopyCallback_Package_References."=";
   subtype ImageCopyCallback_Access_Array is org.allbinary.media.image.ImageCopyCallback_Package_References.ImageCopyCallback_Access_Array;
   function "=" (Left, Right : ImageCopyCallback_Access_Array) return Boolean renames org.allbinary.media.image.ImageCopyCallback_Package_References."=";
   subtype ImageCopyCallback_Access_Array_Access is org.allbinary.media.image.ImageCopyCallback_Package_References.ImageCopyCallback_Access_Array_Access;
   function "=" (Left, Right : ImageCopyCallback_Access_Array_Access) return Boolean renames org.allbinary.media.image.ImageCopyCallback_Package_References."=";
   subtype ImageCopyCallback_Access_Array_Access_Array is org.allbinary.media.image.ImageCopyCallback_Package_References.ImageCopyCallback_Access_Array_Access_Array;
   function "=" (Left, Right : ImageCopyCallback_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.ImageCopyCallback_Package_References."=";
   subtype ImageCopyCallback_Access_Array_Access_Array_Access is org.allbinary.media.image.ImageCopyCallback_Package_References.ImageCopyCallback_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ImageCopyCallback_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.ImageCopyCallback_Package_References."=";

   type ImageCopyCallback is new Java_Object and Callback with record
      imageModifierUtil_Var : ImageModifierUtil_Access;
      imageArray : Image_Access_Array_Access;
      index : Integer;
      image : Image_Access;
      image3 : CoreImage_Access;
   end record;

   procedure Initialize (This : in out ImageCopyCallback'Class; imageModifierUtil_Var_Param : access ImageModifierUtil_Package.ImageModifierUtil'Class; imageArray : Image_Access_Array_Access; index : Integer; image_Param : access Image_Package.Image'Class; image3_Param : access CoreImage_Package.CoreImage'Class);
   function Create (imageModifierUtil_Var_Param : access ImageModifierUtil_Package.ImageModifierUtil'Class; imageArray : Image_Access_Array_Access; index : Integer; image_Param : access Image_Package.Image'Class; image3_Param : access CoreImage_Package.CoreImage'Class) return ImageCopyCallback_Access;
   procedure onSuccess (This : in out ImageCopyCallback; resource_Param : access Java_Object'Class);
   procedure onFailure (This : in out ImageCopyCallback; e_Param : access Java_Throwable_Object'Class);
   procedure onSuccess (This : in out ImageCopyCallback; Value : Unbounded_String);

end org.allbinary.media.image.ImageCopyCallback_Package;


