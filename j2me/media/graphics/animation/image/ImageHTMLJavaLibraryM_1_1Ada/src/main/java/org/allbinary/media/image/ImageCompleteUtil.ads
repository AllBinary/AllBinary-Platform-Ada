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
--  with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.time.TimeDelayHelper_Package; use org.allbinary.time.TimeDelayHelper_Package;
with org.microemu.device.playn.PlaynImage_Package; use org.microemu.device.playn.PlaynImage_Package;

package org.allbinary.media.image.ImageCompleteUtil_Package is

   package PreLogUtil_Package renames Standard.org.allbinary.logic.communication.log.PreLogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package TimeDelayHelper_Package renames Standard.org.allbinary.time.TimeDelayHelper_Package;
   package PlaynImage_Package renames Standard.org.microemu.device.playn.PlaynImage_Package;

   type ImageCompleteUtil is tagged;
   type ImageCompleteUtil_Access is access all ImageCompleteUtil'Class;
   type ImageCompleteUtil_Access_Array is array (Natural range <>) of ImageCompleteUtil_Access;
   type ImageCompleteUtil_Access_Array_Access is access all ImageCompleteUtil_Access_Array;

   type ImageCompleteUtil is new Java_Object with record
      ISREADY : Unbounded_String;
      COMPLETE : Unbounded_String;
   end record;
   instance : ImageCompleteUtil_Access;

   procedure Initialize (This : in out ImageCompleteUtil'Class);
   function Create return ImageCompleteUtil_Access;
   function getInstance return ImageCompleteUtil_Access;
   procedure waitForImage (This : in out ImageCompleteUtil; image_Param : access Image'Class; name : Unbounded_String);
   function isReady_Case (This : in out ImageCompleteUtil; image_Param : access Image'Class; name : Unbounded_String; timeDelayHelper_Param : access TimeDelayHelper'Class) return Boolean;
   procedure isReady_Case (This : in out ImageCompleteUtil; image_Param : access Image'Class; name : Unbounded_String; timeDelayHelper_Param : access TimeDelayHelper'Class);
   procedure handleTimeout (This : in out ImageCompleteUtil; name : Unbounded_String);
   procedure waitForAll (This : in out ImageCompleteUtil);

end org.allbinary.media.image.ImageCompleteUtil_Package;


