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
with org.allbinary.image.ImageCache_Package; use org.allbinary.image.ImageCache_Package;

package org.allbinary.image.opengles.OpenGLImageCacheFactory_Package is

   package ImageCache_Package renames Standard.org.allbinary.image.ImageCache_Package;

   type OpenGLImageCacheFactory is tagged;
   type OpenGLImageCacheFactory_Access is access all OpenGLImageCacheFactory'Class;
   type OpenGLImageCacheFactory_Access_Array is array (Natural range <>) of OpenGLImageCacheFactory_Access;
   type OpenGLImageCacheFactory_Access_Array_Access is access all OpenGLImageCacheFactory_Access_Array;
   type OpenGLImageCacheFactory_Access_Array_Access_Array is array (Natural range <>) of OpenGLImageCacheFactory_Access_Array_Access;
   type OpenGLImageCacheFactory_Access_Array_Access_Array_Access is access all OpenGLImageCacheFactory_Access_Array_Access_Array;

   type OpenGLImageCacheFactory is new Java_Object with null record;
   IMAGE_CACHE : ImageCache_Access;

   procedure Initialize (This : in out OpenGLImageCacheFactory'Class);
   function Create return OpenGLImageCacheFactory_Access;
   function getInstance return ImageCache_Access;
   procedure init;

end org.allbinary.image.opengles.OpenGLImageCacheFactory_Package;


