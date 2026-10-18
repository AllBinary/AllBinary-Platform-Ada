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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
with org.allbinary.image.GameFeatureImageCacheFactory_Package; use org.allbinary.image.GameFeatureImageCacheFactory_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.time.TimeDelayHelper_Package; use org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.HashtableUtil_Package; use org.allbinary.util.HashtableUtil_Package;
with org.microemu.device.playn.PlaynImage_Package; use org.microemu.device.playn.PlaynImage_Package;
with org.allbinary.media.image.ImageCompleteUtil_Package; use org.allbinary.media.image.ImageCompleteUtil_Package;

package org.allbinary.media.image.ImageWaitCompleteUtil_Package is

   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package GameFeatureImageCacheFactory_Package renames Standard.org.allbinary.image.GameFeatureImageCacheFactory_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package PreLogUtil_Package renames Standard.org.allbinary.logic.communication.log.PreLogUtil_Package;
   package TimeDelayHelper_Package renames Standard.org.allbinary.time.TimeDelayHelper_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;
   package HashtableUtil_Package renames Standard.org.allbinary.util.HashtableUtil_Package;
   package PlaynImage_Package renames Standard.org.microemu.device.playn.PlaynImage_Package;

   type ImageWaitCompleteUtil is tagged;
   type ImageWaitCompleteUtil_Access is access all ImageWaitCompleteUtil'Class;
   type ImageWaitCompleteUtil_Access_Array is array (Natural range <>) of ImageWaitCompleteUtil_Access;
   type ImageWaitCompleteUtil_Access_Array_Access is access all ImageWaitCompleteUtil_Access_Array;

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


