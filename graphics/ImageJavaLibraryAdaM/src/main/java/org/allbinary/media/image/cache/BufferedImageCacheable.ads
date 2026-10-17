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
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.util.cache.CacheableInterface_Package; use org.allbinary.logic.util.cache.CacheableInterface_Package;
with org.allbinary.media.image.cache.BufferedImageInfo_Package; use org.allbinary.media.image.cache.BufferedImageInfo_Package;

package org.allbinary.media.image.cache.BufferedImageCacheable_Package is

   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CacheableInterface_Package renames Standard.org.allbinary.logic.util.cache.CacheableInterface_Package;

   type BufferedImageCacheable is tagged;
   type BufferedImageCacheable_Access is access all BufferedImageCacheable'Class;
   type BufferedImageCacheable_Access_Array is array (Natural range <>) of BufferedImageCacheable_Access;
   type BufferedImageCacheable_Access_Array_Access is access all BufferedImageCacheable_Access_Array;

   type BufferedImageCacheable is new CacheableInterface with record
      key : BufferedImageInfo_Access;
      bufferedImage : BufferedImage_Access;
   end record;

   procedure Initialize (This : in out BufferedImageCacheable'Class; key_Param : access BufferedImageInfo_Package.BufferedImageInfo'Class);
   function Create (key_Param : access BufferedImageInfo_Package.BufferedImageInfo'Class) return BufferedImageCacheable_Access;
   function getKey (This : in out BufferedImageCacheable) return Java_Object_Access;
   function getBufferedImage (This : in out BufferedImageCacheable) return BufferedImage_Access;
   procedure setBufferedImage (This : in out BufferedImageCacheable; bufferedImage_Param : access BufferedImage_Package.BufferedImage'Class);
   function toString (This : in out BufferedImageCacheable) return Unbounded_String;

end org.allbinary.media.image.cache.BufferedImageCacheable_Package;


