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
with org.allbinary.logic.util.cache.BasicArrayListResetablePool_Package; use org.allbinary.logic.util.cache.BasicArrayListResetablePool_Package;
with org.allbinary.logic.util.cache.CacheableInterface_Package; use org.allbinary.logic.util.cache.CacheableInterface_Package;
with org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package; use org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package;
with org.allbinary.logic.util.cache.PoolInterface_Package; use org.allbinary.logic.util.cache.PoolInterface_Package;
with org.allbinary.animation.image.ImageArrayRotationAnimationCacheableInterfaceFactory_Package; use org.allbinary.animation.image.ImageArrayRotationAnimationCacheableInterfaceFactory_Package;
with org.allbinary.animation.image.ImageArrayRotationAnimationInfo_Package; use org.allbinary.animation.image.ImageArrayRotationAnimationInfo_Package;
with org.allbinary.animation.image.ImageArrayRotationAnimationCacheable_Package; use org.allbinary.animation.image.ImageArrayRotationAnimationCacheable_Package;

package org.allbinary.animation.image.ImageArrayRotationAnimationPool_Package is

   package BasicArrayListResetablePool_Package renames Standard.org.allbinary.logic.util.cache.BasicArrayListResetablePool_Package;
   package CacheableInterface_Package renames Standard.org.allbinary.logic.util.cache.CacheableInterface_Package;
   package CacheableInterfaceFactoryInterface_Package renames Standard.org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package;
   package PoolInterface_Package renames Standard.org.allbinary.logic.util.cache.PoolInterface_Package;

   type ImageArrayRotationAnimationPool is tagged;
   type ImageArrayRotationAnimationPool_Access is access all ImageArrayRotationAnimationPool'Class;
   type ImageArrayRotationAnimationPool_Access_Array is array (Natural range <>) of ImageArrayRotationAnimationPool_Access;
   type ImageArrayRotationAnimationPool_Access_Array_Access is access all ImageArrayRotationAnimationPool_Access_Array;

   type ImageArrayRotationAnimationPool is new BasicArrayListResetablePool with null record;
   IMAGE_ROTATION_ANIMATION_POOL : PoolInterface_Access;

   procedure Initialize (This : in out ImageArrayRotationAnimationPool'Class; cacheableInterfaceFactoryInterface_Param : access CacheableInterfaceFactoryInterface'Class);
   function Create (cacheableInterfaceFactoryInterface_Param : access CacheableInterfaceFactoryInterface'Class) return ImageArrayRotationAnimationPool_Access;
   function getInstance return PoolInterface_Access;
   function remove (This : in out ImageArrayRotationAnimationPool; key_Param : access Java_Object'Class) return CacheableInterface_Access;
   procedure remove (This : in out ImageArrayRotationAnimationPool; key_Param : access Java_Object'Class);

end org.allbinary.animation.image.ImageArrayRotationAnimationPool_Package;


