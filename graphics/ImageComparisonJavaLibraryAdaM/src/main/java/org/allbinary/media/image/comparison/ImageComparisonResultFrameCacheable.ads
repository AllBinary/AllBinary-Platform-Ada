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
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.util.cache.CacheableInterface_Package; use org.allbinary.logic.util.cache.CacheableInterface_Package;

package org.allbinary.media.image.comparison.ImageComparisonResultFrameCacheable_Package is

   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CacheableInterface_Package renames Standard.org.allbinary.logic.util.cache.CacheableInterface_Package;

   type ImageComparisonResultFrameCacheable is tagged;
   type ImageComparisonResultFrameCacheable_Access is access all ImageComparisonResultFrameCacheable'Class;
   type ImageComparisonResultFrameCacheable_Access_Array is array (Natural range <>) of ImageComparisonResultFrameCacheable_Access;
   type ImageComparisonResultFrameCacheable_Access_Array_Access is access all ImageComparisonResultFrameCacheable_Access_Array;

   type ImageComparisonResultFrameCacheable is new CacheableInterface with record
      frame : Long_Long_Integer;
      imageComparisonResult : ImageComparisonResult_Access;
   end record;

   procedure Initialize (This : in out ImageComparisonResultFrameCacheable'Class; imageComparisonResult : ImageComparisonResult_Access; frame : Long_Long_Integer);
   function Create (imageComparisonResult : ImageComparisonResult_Access; frame : Long_Long_Integer) return ImageComparisonResultFrameCacheable_Access;
   function getKey (This : in out ImageComparisonResultFrameCacheable) return Java_Object_Access;
   procedure getKey (This : in out ImageComparisonResultFrameCacheable);
   function getFrame (This : in out ImageComparisonResultFrameCacheable) return Long_Long_Integer;
   procedure getFrame (This : in out ImageComparisonResultFrameCacheable);
   procedure setFrame (This : in out ImageComparisonResultFrameCacheable; frame : Long_Long_Integer);
   function getImageComparisonResult (This : in out ImageComparisonResultFrameCacheable) return ImageComparisonResult_Access;
   procedure getImageComparisonResult (This : in out ImageComparisonResultFrameCacheable);
   procedure setImageComparisonResult (This : in out ImageComparisonResultFrameCacheable; imageComparisonResult : ImageComparisonResult_Access);
   function toString (This : in out ImageComparisonResultFrameCacheable) return Unbounded_String;
   procedure toString (This : in out ImageComparisonResultFrameCacheable);

end org.allbinary.media.image.comparison.ImageComparisonResultFrameCacheable_Package;


