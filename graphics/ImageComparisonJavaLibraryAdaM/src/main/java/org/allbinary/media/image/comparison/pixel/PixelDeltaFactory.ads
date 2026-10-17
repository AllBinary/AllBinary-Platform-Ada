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
with org.allbinary.graphics.GPoint_Package; use org.allbinary.graphics.GPoint_Package;
with org.allbinary.graphics.PointFactory_Package; use org.allbinary.graphics.PointFactory_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.util.cache.AutomaticCacheInterface_Package; use org.allbinary.logic.util.cache.AutomaticCacheInterface_Package;
with org.allbinary.logic.util.cache.CacheInterfaceFactory_Package; use org.allbinary.logic.util.cache.CacheInterfaceFactory_Package;
with org.allbinary.logic.util.cache.CachePolicyFactory_Package; use org.allbinary.logic.util.cache.CachePolicyFactory_Package;
with org.allbinary.logic.util.cache.CacheTypeFactory_Package; use org.allbinary.logic.util.cache.CacheTypeFactory_Package;
with org.allbinary.media.image.comparison.color.ColorDelta_Package; use org.allbinary.media.image.comparison.color.ColorDelta_Package;
with org.allbinary.media.image.comparison.color.ColorDeltaFactory_Package; use org.allbinary.media.image.comparison.color.ColorDeltaFactory_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package org.allbinary.media.image.comparison.pixel.PixelDeltaFactory_Package is

   package GPoint_Package renames Standard.org.allbinary.graphics.GPoint_Package;
   package PointFactory_Package renames Standard.org.allbinary.graphics.PointFactory_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AutomaticCacheInterface_Package renames Standard.org.allbinary.logic.util.cache.AutomaticCacheInterface_Package;
   package CacheInterfaceFactory_Package renames Standard.org.allbinary.logic.util.cache.CacheInterfaceFactory_Package;
   package CachePolicyFactory_Package renames Standard.org.allbinary.logic.util.cache.CachePolicyFactory_Package;
   package CacheTypeFactory_Package renames Standard.org.allbinary.logic.util.cache.CacheTypeFactory_Package;
   package ColorDelta_Package renames Standard.org.allbinary.media.image.comparison.color.ColorDelta_Package;
   package ColorDeltaFactory_Package renames Standard.org.allbinary.media.image.comparison.color.ColorDeltaFactory_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type PixelDeltaFactory is tagged;
   type PixelDeltaFactory_Access is access all PixelDeltaFactory'Class;
   type PixelDeltaFactory_Access_Array is array (Natural range <>) of PixelDeltaFactory_Access;
   type PixelDeltaFactory_Access_Array_Access is access all PixelDeltaFactory_Access_Array;

   type PixelDeltaFactory is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   cacheInterface : AutomaticCacheInterface_Access;

   procedure Initialize (This : in out PixelDeltaFactory'Class);
   function Create return PixelDeltaFactory_Access;
   function getInstance (x : Integer; y : Integer; rgb1 : Integer; rgb2 : Integer) return PixelDelta_Access;
   procedure getInstance (x : Integer; y : Integer; rgb1 : Integer; rgb2 : Integer);

end org.allbinary.media.image.comparison.pixel.PixelDeltaFactory_Package;


