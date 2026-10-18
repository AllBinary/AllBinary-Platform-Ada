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
with java.io.File_Package; use java.io.File_Package;

package org.allbinary.media.image.ImageProcessorInput_Package is

   package File_Package renames Standard.java.io.File_Package;

   type ImageProcessorInput is tagged;
   type ImageProcessorInput_Access is access all ImageProcessorInput'Class;
   type ImageProcessorInput_Access_Array is array (Natural range <>) of ImageProcessorInput_Access;
   type ImageProcessorInput_Access_Array_Access is access all ImageProcessorInput_Access_Array;
   type ImageProcessorInput_Access_Array_Access_Array is array (Natural range <>) of ImageProcessorInput_Access_Array_Access;
   type ImageProcessorInput_Access_Array_Access_Array_Access is access all ImageProcessorInput_Access_Array_Access_Array;

   type ImageProcessorInput is new Java_Object with record
      bufferedImageArray : BufferedImage_Access_Array_Access;
      files : File_Access_Array_Access;
   end record;

   procedure Initialize (This : in out ImageProcessorInput'Class; files : File_Access_Array_Access; bufferedImageArray : BufferedImage_Access_Array_Access);
   function Create (files : File_Access_Array_Access; bufferedImageArray : BufferedImage_Access_Array_Access) return ImageProcessorInput_Access;
   function getBufferedImageArray (This : in out ImageProcessorInput) return BufferedImage_Access_Array_Access;
   function getFiles (This : in out ImageProcessorInput) return File_Access_Array_Access;

end org.allbinary.media.image.ImageProcessorInput_Package;


