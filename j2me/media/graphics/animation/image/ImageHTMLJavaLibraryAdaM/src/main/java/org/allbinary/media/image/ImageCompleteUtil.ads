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

limited with org.allbinary.media.image.ImageCompleteUtil_Package;
package org.allbinary.media.image.ImageCompleteUtil_Package_References is
   type ImageCompleteUtil_Access is access all org.allbinary.media.image.ImageCompleteUtil_Package.ImageCompleteUtil'Class;
   type ImageCompleteUtil_Access_Array is array (Natural range <>) of ImageCompleteUtil_Access;
   type ImageCompleteUtil_Access_Array_Access is access all ImageCompleteUtil_Access_Array;
   type ImageCompleteUtil_Access_Array_Access_Array is array (Natural range <>) of ImageCompleteUtil_Access_Array_Access;
   type ImageCompleteUtil_Access_Array_Access_Array_Access is access all ImageCompleteUtil_Access_Array_Access_Array;
end org.allbinary.media.image.ImageCompleteUtil_Package_References;

with org.allbinary.media.image.ImageCompleteUtil_Package_References;
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
limited with org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.time.TimeDelayHelper_Package_References;

package org.allbinary.media.image.ImageCompleteUtil_Package is

   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
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


   subtype ImageCompleteUtil_Access is org.allbinary.media.image.ImageCompleteUtil_Package_References.ImageCompleteUtil_Access;
   function "=" (Left, Right : ImageCompleteUtil_Access) return Boolean renames org.allbinary.media.image.ImageCompleteUtil_Package_References."=";
   subtype ImageCompleteUtil_Access_Array is org.allbinary.media.image.ImageCompleteUtil_Package_References.ImageCompleteUtil_Access_Array;
   function "=" (Left, Right : ImageCompleteUtil_Access_Array) return Boolean renames org.allbinary.media.image.ImageCompleteUtil_Package_References."=";
   subtype ImageCompleteUtil_Access_Array_Access is org.allbinary.media.image.ImageCompleteUtil_Package_References.ImageCompleteUtil_Access_Array_Access;
   function "=" (Left, Right : ImageCompleteUtil_Access_Array_Access) return Boolean renames org.allbinary.media.image.ImageCompleteUtil_Package_References."=";
   subtype ImageCompleteUtil_Access_Array_Access_Array is org.allbinary.media.image.ImageCompleteUtil_Package_References.ImageCompleteUtil_Access_Array_Access_Array;
   function "=" (Left, Right : ImageCompleteUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.ImageCompleteUtil_Package_References."=";
   subtype ImageCompleteUtil_Access_Array_Access_Array_Access is org.allbinary.media.image.ImageCompleteUtil_Package_References.ImageCompleteUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ImageCompleteUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.ImageCompleteUtil_Package_References."=";

   type ImageCompleteUtil is new Java_Object with record
      timeDelayHelper : TimeDelayHelper_Access;
      allTimeDelayHelper : TimeDelayHelper_Access;
   end record;
   instance : ImageCompleteUtil_Access;

   procedure Initialize (This : in out ImageCompleteUtil'Class);
   function Create return ImageCompleteUtil_Access;
   function getInstance return ImageCompleteUtil_Access;
   procedure waitForImage (This : in out ImageCompleteUtil; image_Param : access Image_Package.Image'Class; name : Unbounded_String);
   function isReady (This : in out ImageCompleteUtil; image_Param : access Image_Package.Image'Class; name : Unbounded_String; timeDelayHelper_Param : access TimeDelayHelper_Package.TimeDelayHelper'Class) return Boolean;
   procedure isReady (This : in out ImageCompleteUtil; image_Param : access Image_Package.Image'Class; name : Unbounded_String; timeDelayHelper_Param : access TimeDelayHelper_Package.TimeDelayHelper'Class);
   procedure waitForATime (This : in out ImageCompleteUtil; image_Param : access Image_Package.Image'Class; name : Unbounded_String; timeDelayHelper_Param : access TimeDelayHelper_Package.TimeDelayHelper'Class);
   procedure waitForAll (This : in out ImageCompleteUtil);

end org.allbinary.media.image.ImageCompleteUtil_Package;


