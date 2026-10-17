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
with org.allbinary.image.ImageCacheFactory_Package; use org.allbinary.image.ImageCacheFactory_Package;
with org.allbinary.image.ImageCache_Package; use org.allbinary.image.ImageCache_Package;

package org.allbinary.image.GameFeatureImageCacheFactory_Package is


   type GameFeatureImageCacheFactory is tagged;
   type GameFeatureImageCacheFactory_Access is access all GameFeatureImageCacheFactory'Class;
   type GameFeatureImageCacheFactory_Access_Array is array (Natural range <>) of GameFeatureImageCacheFactory_Access;
   type GameFeatureImageCacheFactory_Access_Array_Access is access all GameFeatureImageCacheFactory_Access_Array;

   type GameFeatureImageCacheFactory is new Java_Object with null record;

   procedure Initialize (This : in out GameFeatureImageCacheFactory'Class);
   function Create return GameFeatureImageCacheFactory_Access;
   function getInstance return ImageCache_Access;
   procedure init;
   procedure releaseAll;

end org.allbinary.image.GameFeatureImageCacheFactory_Package;


