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

package org.allbinary.media.image.cache.BufferedImageFrameCacheable_Package is

   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package CacheableInterface_Package renames org.allbinary.logic.util.cache.CacheableInterface_Package;

   type BufferedImageFrameCacheable is tagged;
   type BufferedImageFrameCacheable_Access is access all BufferedImageFrameCacheable'Class;
   type BufferedImageFrameCacheable_Access_Array is array (Natural range <>) of BufferedImageFrameCacheable_Access;
   type BufferedImageFrameCacheable_Access_Array_Access is access all BufferedImageFrameCacheable_Access_Array;

   type BufferedImageFrameCacheable is new CacheableInterface with record
      frame : Long_Long_Integer;
      bufferedImage : BufferedImage_Access;
   end record;

   procedure Initialize (This : in out BufferedImageFrameCacheable'Class; bufferedImage : BufferedImage_Access; frame : Long_Long_Integer);
   function Create (bufferedImage : BufferedImage_Access; frame : Long_Long_Integer) return BufferedImageFrameCacheable_Access;
   function getKey (This : in out BufferedImageFrameCacheable) return Java_Object_Access;
   procedure getKey (This : in out BufferedImageFrameCacheable);
   function getBufferedImage (This : in out BufferedImageFrameCacheable) return BufferedImage_Access;
   procedure getBufferedImage (This : in out BufferedImageFrameCacheable);
   procedure setBufferedImage (This : in out BufferedImageFrameCacheable; bufferedImage : BufferedImage_Access);
   function getFrame (This : in out BufferedImageFrameCacheable) return Long_Long_Integer;
   procedure getFrame (This : in out BufferedImageFrameCacheable);
   procedure setFrame (This : in out BufferedImageFrameCacheable; frame : Long_Long_Integer);
   function toString (This : in out BufferedImageFrameCacheable) return Unbounded_String;
   procedure toString (This : in out BufferedImageFrameCacheable);

end org.allbinary.media.image.cache.BufferedImageFrameCacheable_Package;


