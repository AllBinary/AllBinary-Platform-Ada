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

limited with org.allbinary.animation.image.ScaleProcessor_Package;
package org.allbinary.animation.image.ScaleProcessor_Package_References is
   type ScaleProcessor_Access is access all org.allbinary.animation.image.ScaleProcessor_Package.ScaleProcessor'Class;
   type ScaleProcessor_Access_Array is array (Natural range <>) of ScaleProcessor_Access;
   type ScaleProcessor_Access_Array_Access is access all ScaleProcessor_Access_Array;
   type ScaleProcessor_Access_Array_Access_Array is array (Natural range <>) of ScaleProcessor_Access_Array_Access;
   type ScaleProcessor_Access_Array_Access_Array_Access is access all ScaleProcessor_Access_Array_Access_Array;
end org.allbinary.animation.image.ScaleProcessor_Package_References;

with org.allbinary.animation.image.ScaleProcessor_Package_References;
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
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.media.image.ImageScaleUtil_Package;
with org.allbinary.media.image.ImageScaleUtil_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with org.allbinary.animation.image.ScaleBaseProcessor_Package; use org.allbinary.animation.image.ScaleBaseProcessor_Package;

package org.allbinary.animation.image.ScaleProcessor_Package is

   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package ImageScaleUtil_Package renames Standard.org.allbinary.media.image.ImageScaleUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
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
   subtype ImageScaleUtil_Access is org.allbinary.media.image.ImageScaleUtil_Package_References.ImageScaleUtil_Access;
   use type ImageScaleUtil_Access;
   subtype ImageScaleUtil_Access_Array is org.allbinary.media.image.ImageScaleUtil_Package_References.ImageScaleUtil_Access_Array;
   use type ImageScaleUtil_Access_Array;
   subtype ImageScaleUtil_Access_Array_Access is org.allbinary.media.image.ImageScaleUtil_Package_References.ImageScaleUtil_Access_Array_Access;
   use type ImageScaleUtil_Access_Array_Access;
   subtype ImageScaleUtil_Access_Array_Access_Array is org.allbinary.media.image.ImageScaleUtil_Package_References.ImageScaleUtil_Access_Array_Access_Array;
   use type ImageScaleUtil_Access_Array_Access_Array;
   subtype ImageScaleUtil_Access_Array_Access_Array_Access is org.allbinary.media.image.ImageScaleUtil_Package_References.ImageScaleUtil_Access_Array_Access_Array_Access;
   use type ImageScaleUtil_Access_Array_Access_Array_Access;
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
   end Reference_Types;
   use Reference_Types;


   subtype ScaleProcessor_Access is org.allbinary.animation.image.ScaleProcessor_Package_References.ScaleProcessor_Access;
   function "=" (Left, Right : ScaleProcessor_Access) return Boolean renames org.allbinary.animation.image.ScaleProcessor_Package_References."=";
   subtype ScaleProcessor_Access_Array is org.allbinary.animation.image.ScaleProcessor_Package_References.ScaleProcessor_Access_Array;
   function "=" (Left, Right : ScaleProcessor_Access_Array) return Boolean renames org.allbinary.animation.image.ScaleProcessor_Package_References."=";
   subtype ScaleProcessor_Access_Array_Access is org.allbinary.animation.image.ScaleProcessor_Package_References.ScaleProcessor_Access_Array_Access;
   function "=" (Left, Right : ScaleProcessor_Access_Array_Access) return Boolean renames org.allbinary.animation.image.ScaleProcessor_Package_References."=";
   subtype ScaleProcessor_Access_Array_Access_Array is org.allbinary.animation.image.ScaleProcessor_Package_References.ScaleProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : ScaleProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.image.ScaleProcessor_Package_References."=";
   subtype ScaleProcessor_Access_Array_Access_Array_Access is org.allbinary.animation.image.ScaleProcessor_Package_References.ScaleProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ScaleProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.image.ScaleProcessor_Package_References."=";

   type ScaleProcessor is new ScaleBaseProcessor with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      imageScaleUtil : ImageScaleUtil_Access;
   end record;
   instanceC : ScaleProcessor_Access;

   procedure Initialize (This : in out ScaleProcessor'Class);
   function Create return ScaleProcessor_Access;
   function getInstance return ScaleBaseProcessor_Access;
   procedure update (This : in out ScaleProcessor; originalImage_Param : access Image_Package.Image'Class; originalImageArray : Image_Access_Array_Access; ximageToShowArray : Image_Access_Array_Access; unused : Integer; scaleX : Float; scaleY : Float; maxScaleX : Float; maxScaleY : Float);

end org.allbinary.animation.image.ScaleProcessor_Package;


