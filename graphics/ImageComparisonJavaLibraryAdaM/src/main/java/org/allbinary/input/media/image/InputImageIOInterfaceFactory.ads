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
with org.allbinary.input.media.image.capture.CapturedImageInputOutput_Package; use org.allbinary.input.media.image.capture.CapturedImageInputOutput_Package;
with org.allbinary.media.image.comparison.ComparisonImageInputOutput_Package; use org.allbinary.media.image.comparison.ComparisonImageInputOutput_Package;
with org.allbinary.media.image.comparison.motion.MotionRectanglesImageInputOutput_Package; use org.allbinary.media.image.comparison.motion.MotionRectanglesImageInputOutput_Package;
with org.allbinary.media.image.io.ImageIOInterface_Package; use org.allbinary.media.image.io.ImageIOInterface_Package;
with org.allbinary.input.media.image.InputImageType_Package; use org.allbinary.input.media.image.InputImageType_Package;

package org.allbinary.input.media.image.InputImageIOInterfaceFactory_Package is

   package CapturedImageInputOutput_Package renames Standard.org.allbinary.input.media.image.capture.CapturedImageInputOutput_Package;
   package ComparisonImageInputOutput_Package renames Standard.org.allbinary.media.image.comparison.ComparisonImageInputOutput_Package;
   package MotionRectanglesImageInputOutput_Package renames Standard.org.allbinary.media.image.comparison.motion.MotionRectanglesImageInputOutput_Package;
   package ImageIOInterface_Package renames Standard.org.allbinary.media.image.io.ImageIOInterface_Package;

   type InputImageIOInterfaceFactory is tagged;
   type InputImageIOInterfaceFactory_Access is access all InputImageIOInterfaceFactory'Class;
   type InputImageIOInterfaceFactory_Access_Array is array (Natural range <>) of InputImageIOInterfaceFactory_Access;
   type InputImageIOInterfaceFactory_Access_Array_Access is access all InputImageIOInterfaceFactory_Access_Array;

   type InputImageIOInterfaceFactory is new Java_Object with null record;

   procedure Initialize (This : in out InputImageIOInterfaceFactory'Class);
   function Create return InputImageIOInterfaceFactory_Access;
   function getInstance (imageType_Param : access InputImageType_Package.InputImageType'Class) return ImageIOInterface_Access;
   procedure getInstance (imageType_Param : access InputImageType_Package.InputImageType'Class);

end org.allbinary.input.media.image.InputImageIOInterfaceFactory_Package;


