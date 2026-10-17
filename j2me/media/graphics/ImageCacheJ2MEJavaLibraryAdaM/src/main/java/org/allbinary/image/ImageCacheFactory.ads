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

package org.allbinary.image.ImageCacheFactory_Package is


   type ImageCacheFactory is tagged;
   type ImageCacheFactory_Access is access all ImageCacheFactory'Class;
   type ImageCacheFactory_Access_Array is array (Natural range <>) of ImageCacheFactory_Access;
   type ImageCacheFactory_Access_Array_Access is access all ImageCacheFactory_Access_Array;

   type ImageCacheFactory is new Java_Object with null record;
   IMAGE_CACHE : ImageCache_Access;

   procedure Initialize (This : in out ImageCacheFactory'Class);
   function Create return ImageCacheFactory_Access;
   function getInstance return ImageCache_Access;
   procedure getInstance;
   procedure init;

end org.allbinary.image.ImageCacheFactory_Package;


