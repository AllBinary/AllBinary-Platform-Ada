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
--  with javax.imageio.IIOImage_Package; use javax.imageio.IIOImage_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.util.cache.CacheableInterface_Package; use org.allbinary.logic.util.cache.CacheableInterface_Package;

package org.allbinary.media.image.io.IIOImageCacheable_Package is

   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CacheableInterface_Package renames Standard.org.allbinary.logic.util.cache.CacheableInterface_Package;

   type IIOImageCacheable is tagged;
   type IIOImageCacheable_Access is access all IIOImageCacheable'Class;
   type IIOImageCacheable_Access_Array is array (Natural range <>) of IIOImageCacheable_Access;
   type IIOImageCacheable_Access_Array_Access is access all IIOImageCacheable_Access_Array;

   type IIOImageCacheable is new CacheableInterface with record
      key : Unbounded_String;
      iioImage : IIOImage_Access;
   end record;

   procedure Initialize (This : in out IIOImageCacheable'Class; key : Unbounded_String);
   function Create (key : Unbounded_String) return IIOImageCacheable_Access;
   function getKey (This : in out IIOImageCacheable) return Java_Object_Access;
   procedure setBufferedImage (This : in out IIOImageCacheable; bufferedImage_Param : access BufferedImage'Class);
   function getIioImage (This : in out IIOImageCacheable) return IIOImage_Access;
   procedure setIioImage (This : in out IIOImageCacheable; iioImage_Param : access IIOImage'Class);
   function toString (This : in out IIOImageCacheable) return Unbounded_String;

end org.allbinary.media.image.io.IIOImageCacheable_Package;


