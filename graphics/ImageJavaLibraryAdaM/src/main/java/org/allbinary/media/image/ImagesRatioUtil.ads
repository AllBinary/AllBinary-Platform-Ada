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
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.media.image.ImageUtil_Package; use org.allbinary.media.image.ImageUtil_Package;
with org.allbinary.media.image.Point_Package; use org.allbinary.media.image.Point_Package;
with org.allbinary.media.image.Graphics2D_Package; use org.allbinary.media.image.Graphics2D_Package;

package org.allbinary.media.image.ImagesRatioUtil_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;

   type ImagesRatioUtil is tagged;
   type ImagesRatioUtil_Access is access all ImagesRatioUtil'Class;
   type ImagesRatioUtil_Access_Array is array (Natural range <>) of ImagesRatioUtil_Access;
   type ImagesRatioUtil_Access_Array_Access is access all ImagesRatioUtil_Access_Array;

   type ImagesRatioUtil is new Java_Object with record
      logUtil : LogUtil_Access;
      imageUtil : ImageUtil_Access;
   end record;
   instance : ImagesRatioUtil_Access;

   procedure Initialize (This : in out ImagesRatioUtil'Class);
   function Create return ImagesRatioUtil_Access;
   function getInstance return ImagesRatioUtil_Access;
   function isEqual (This : in out ImagesRatioUtil; bufferedImageArray : BufferedImage_Access_Array_Access; totalImages : Integer) return Boolean;
   procedure isEqual (This : in out ImagesRatioUtil; bufferedImageArray : BufferedImage_Access_Array_Access; totalImages : Integer);
   function getAverage (This : in out ImagesRatioUtil; bufferedImageArray : BufferedImage_Access_Array_Access; totalImages : Integer) return Long_Float;
   procedure getAverage (This : in out ImagesRatioUtil; bufferedImageArray : BufferedImage_Access_Array_Access; totalImages : Integer);
   function fudge (This : in out ImagesRatioUtil; bufferedImage : BufferedImage_Access; ratio : Long_Float) return BufferedImage_Access;
   procedure fudge (This : in out ImagesRatioUtil; bufferedImage : BufferedImage_Access; ratio : Long_Float);
   function fudge (This : in out ImagesRatioUtil; bufferedImageArray : BufferedImage_Access_Array_Access; totalImages : Integer; ratio : Long_Float) return BufferedImage_Access_Array_Access;
   procedure fudge (This : in out ImagesRatioUtil; bufferedImageArray : BufferedImage_Access_Array_Access; totalImages : Integer; ratio : Long_Float);

end org.allbinary.media.image.ImagesRatioUtil_Package;


