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

limited with org.allbinary.media.image.ImageWaitCompleteUtil_Package;
package org.allbinary.media.image.ImageWaitCompleteUtil_Package_References is
   type ImageWaitCompleteUtil_Access is access all org.allbinary.media.image.ImageWaitCompleteUtil_Package.ImageWaitCompleteUtil'Class;
   type ImageWaitCompleteUtil_Access_Array is array (Natural range <>) of ImageWaitCompleteUtil_Access;
   type ImageWaitCompleteUtil_Access_Array_Access is access all ImageWaitCompleteUtil_Access_Array;
   type ImageWaitCompleteUtil_Access_Array_Access_Array is array (Natural range <>) of ImageWaitCompleteUtil_Access_Array_Access;
   type ImageWaitCompleteUtil_Access_Array_Access_Array_Access is access all ImageWaitCompleteUtil_Access_Array_Access_Array;
end org.allbinary.media.image.ImageWaitCompleteUtil_Package_References;

with org.allbinary.media.image.ImageWaitCompleteUtil_Package_References;
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
limited with org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.time.TimeDelayHelper_Package_References;
with org.allbinary.media.image.ImageCompleteUtil_Package; use org.allbinary.media.image.ImageCompleteUtil_Package;

package org.allbinary.media.image.ImageWaitCompleteUtil_Package is

   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package TimeDelayHelper_Package renames Standard.org.allbinary.time.TimeDelayHelper_Package;
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
   subtype TimeDelayHelper_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access;
   use type TimeDelayHelper_Access;
   subtype TimeDelayHelper_Access_Array is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array;
   use type TimeDelayHelper_Access_Array;
   subtype TimeDelayHelper_Access_Array_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access;
   use type TimeDelayHelper_Access_Array_Access;
   subtype TimeDelayHelper_Access_Array_Access_Array is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access_Array;
   use type TimeDelayHelper_Access_Array_Access_Array;
   subtype TimeDelayHelper_Access_Array_Access_Array_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access_Array_Access;
   use type TimeDelayHelper_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ImageWaitCompleteUtil_Access is org.allbinary.media.image.ImageWaitCompleteUtil_Package_References.ImageWaitCompleteUtil_Access;
   function "=" (Left, Right : ImageWaitCompleteUtil_Access) return Boolean renames org.allbinary.media.image.ImageWaitCompleteUtil_Package_References."=";
   subtype ImageWaitCompleteUtil_Access_Array is org.allbinary.media.image.ImageWaitCompleteUtil_Package_References.ImageWaitCompleteUtil_Access_Array;
   function "=" (Left, Right : ImageWaitCompleteUtil_Access_Array) return Boolean renames org.allbinary.media.image.ImageWaitCompleteUtil_Package_References."=";
   subtype ImageWaitCompleteUtil_Access_Array_Access is org.allbinary.media.image.ImageWaitCompleteUtil_Package_References.ImageWaitCompleteUtil_Access_Array_Access;
   function "=" (Left, Right : ImageWaitCompleteUtil_Access_Array_Access) return Boolean renames org.allbinary.media.image.ImageWaitCompleteUtil_Package_References."=";
   subtype ImageWaitCompleteUtil_Access_Array_Access_Array is org.allbinary.media.image.ImageWaitCompleteUtil_Package_References.ImageWaitCompleteUtil_Access_Array_Access_Array;
   function "=" (Left, Right : ImageWaitCompleteUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.ImageWaitCompleteUtil_Package_References."=";
   subtype ImageWaitCompleteUtil_Access_Array_Access_Array_Access is org.allbinary.media.image.ImageWaitCompleteUtil_Package_References.ImageWaitCompleteUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ImageWaitCompleteUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.ImageWaitCompleteUtil_Package_References."=";

   type ImageWaitCompleteUtil is new ImageCompleteUtil with record
      logUtil : LogUtil_Access;
      timeDelayHelper : TimeDelayHelper_Access;
      allTimeDelayHelper : TimeDelayHelper_Access;
   end record;

   procedure Initialize (This : in out ImageWaitCompleteUtil'Class);
   function Create return ImageWaitCompleteUtil_Access;
   procedure waitForImage (This : in out ImageWaitCompleteUtil; image_Param : access Image_Package.Image'Class; name : Unbounded_String);
   procedure handleTimeout (This : in out ImageWaitCompleteUtil; name : Unbounded_String);
   procedure waitForATime (This : in out ImageWaitCompleteUtil; image_Param : access Image_Package.Image'Class; name : Unbounded_String; timeDelayHelper_Param : access TimeDelayHelper_Package.TimeDelayHelper'Class);
   procedure waitForAll (This : in out ImageWaitCompleteUtil);

end org.allbinary.media.image.ImageWaitCompleteUtil_Package;


