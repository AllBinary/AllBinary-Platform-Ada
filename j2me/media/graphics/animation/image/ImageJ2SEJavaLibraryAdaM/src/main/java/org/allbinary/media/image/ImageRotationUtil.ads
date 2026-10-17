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
--  with java.awt.image.BufferedImage_Package; use java.awt.image.BufferedImage_Package;
--  with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.microemu.device.j2se.J2SEImmutableImage_Package; use org.microemu.device.j2se.J2SEImmutableImage_Package;
with org.microemu.device.j2se.J2SEMutableImage_Package; use org.microemu.device.j2se.J2SEMutableImage_Package;
with org.allbinary.media.image.ImageJ2SERotationUtil_Package; use org.allbinary.media.image.ImageJ2SERotationUtil_Package;
with org.allbinary.media.image.ImageCreationUtil_Package; use org.allbinary.media.image.ImageCreationUtil_Package;

package org.allbinary.media.image.ImageRotationUtil_Package is

   package PreLogUtil_Package renames Standard.org.allbinary.logic.communication.log.PreLogUtil_Package;
   package J2SEImmutableImage_Package renames Standard.org.microemu.device.j2se.J2SEImmutableImage_Package;
   package J2SEMutableImage_Package renames Standard.org.microemu.device.j2se.J2SEMutableImage_Package;

   type ImageRotationUtil is tagged;
   type ImageRotationUtil_Access is access all ImageRotationUtil'Class;
   type ImageRotationUtil_Access_Array is array (Natural range <>) of ImageRotationUtil_Access;
   type ImageRotationUtil_Access_Array_Access is access all ImageRotationUtil_Access_Array;

   type ImageRotationUtil is new Java_Object with record
      imageJ2SERotationUtil : ImageJ2SERotationUtil_Access;
   end record;
   instance : ImageRotationUtil_Access;

   procedure Initialize (This : in out ImageRotationUtil'Class);
   function Create return ImageRotationUtil_Access;
   function getInstance return ImageRotationUtil_Access;
   procedure rotateImage (This : in out ImageRotationUtil; originalImage_Param : access Image_Package.Image'Class; image_Param : access Image_Package.Image'Class; totalAngle : Integer);
   function createRotatedImage (This : in out ImageRotationUtil; originalImage_Param : access Image_Package.Image'Class; rotationInDegrees : Integer) return Image_Access;
   procedure createRotatedImage (This : in out ImageRotationUtil; originalImage_Param : access Image_Package.Image'Class; rotationInDegrees : Integer);

end org.allbinary.media.image.ImageRotationUtil_Package;


