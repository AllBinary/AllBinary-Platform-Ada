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

limited with org.allbinary.animation.image.ImageArrayRotationAnimationPool_Package;
package org.allbinary.animation.image.ImageArrayRotationAnimationPool_Package_References is
   type ImageArrayRotationAnimationPool_Access is access all org.allbinary.animation.image.ImageArrayRotationAnimationPool_Package.ImageArrayRotationAnimationPool'Class;
   type ImageArrayRotationAnimationPool_Access_Array is array (Natural range <>) of ImageArrayRotationAnimationPool_Access;
   type ImageArrayRotationAnimationPool_Access_Array_Access is access all ImageArrayRotationAnimationPool_Access_Array;
   type ImageArrayRotationAnimationPool_Access_Array_Access_Array is array (Natural range <>) of ImageArrayRotationAnimationPool_Access_Array_Access;
   type ImageArrayRotationAnimationPool_Access_Array_Access_Array_Access is access all ImageArrayRotationAnimationPool_Access_Array_Access_Array;
end org.allbinary.animation.image.ImageArrayRotationAnimationPool_Package_References;

with org.allbinary.animation.image.ImageArrayRotationAnimationPool_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.util.cache.BasicArrayListResetablePool_Package; use org.allbinary.logic.util.cache.BasicArrayListResetablePool_Package;
limited with org.allbinary.logic.util.cache.CacheableInterface_Package;
with org.allbinary.logic.util.cache.CacheableInterface_Package_References;
limited with org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package;
with org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package_References;
limited with org.allbinary.logic.util.cache.PoolInterface_Package;
with org.allbinary.logic.util.cache.PoolInterface_Package_References;

package org.allbinary.animation.image.ImageArrayRotationAnimationPool_Package is

   package BasicArrayListResetablePool_Package renames Standard.org.allbinary.logic.util.cache.BasicArrayListResetablePool_Package;
   package CacheableInterface_Package renames Standard.org.allbinary.logic.util.cache.CacheableInterface_Package;
   package CacheableInterfaceFactoryInterface_Package renames Standard.org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package;
   package PoolInterface_Package renames Standard.org.allbinary.logic.util.cache.PoolInterface_Package;
   package Reference_Types is
   subtype CacheableInterface_Access is org.allbinary.logic.util.cache.CacheableInterface_Package_References.CacheableInterface_Access;
   use type CacheableInterface_Access;
   subtype CacheableInterface_Access_Array is org.allbinary.logic.util.cache.CacheableInterface_Package_References.CacheableInterface_Access_Array;
   use type CacheableInterface_Access_Array;
   subtype CacheableInterface_Access_Array_Access is org.allbinary.logic.util.cache.CacheableInterface_Package_References.CacheableInterface_Access_Array_Access;
   use type CacheableInterface_Access_Array_Access;
   subtype CacheableInterface_Access_Array_Access_Array is org.allbinary.logic.util.cache.CacheableInterface_Package_References.CacheableInterface_Access_Array_Access_Array;
   use type CacheableInterface_Access_Array_Access_Array;
   subtype CacheableInterface_Access_Array_Access_Array_Access is org.allbinary.logic.util.cache.CacheableInterface_Package_References.CacheableInterface_Access_Array_Access_Array_Access;
   use type CacheableInterface_Access_Array_Access_Array_Access;
   subtype CacheableInterfaceFactoryInterface_Access is org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package_References.CacheableInterfaceFactoryInterface_Access;
   use type CacheableInterfaceFactoryInterface_Access;
   subtype CacheableInterfaceFactoryInterface_Access_Array is org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package_References.CacheableInterfaceFactoryInterface_Access_Array;
   use type CacheableInterfaceFactoryInterface_Access_Array;
   subtype CacheableInterfaceFactoryInterface_Access_Array_Access is org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package_References.CacheableInterfaceFactoryInterface_Access_Array_Access;
   use type CacheableInterfaceFactoryInterface_Access_Array_Access;
   subtype CacheableInterfaceFactoryInterface_Access_Array_Access_Array is org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package_References.CacheableInterfaceFactoryInterface_Access_Array_Access_Array;
   use type CacheableInterfaceFactoryInterface_Access_Array_Access_Array;
   subtype CacheableInterfaceFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package_References.CacheableInterfaceFactoryInterface_Access_Array_Access_Array_Access;
   use type CacheableInterfaceFactoryInterface_Access_Array_Access_Array_Access;
   subtype PoolInterface_Access is org.allbinary.logic.util.cache.PoolInterface_Package_References.PoolInterface_Access;
   use type PoolInterface_Access;
   subtype PoolInterface_Access_Array is org.allbinary.logic.util.cache.PoolInterface_Package_References.PoolInterface_Access_Array;
   use type PoolInterface_Access_Array;
   subtype PoolInterface_Access_Array_Access is org.allbinary.logic.util.cache.PoolInterface_Package_References.PoolInterface_Access_Array_Access;
   use type PoolInterface_Access_Array_Access;
   subtype PoolInterface_Access_Array_Access_Array is org.allbinary.logic.util.cache.PoolInterface_Package_References.PoolInterface_Access_Array_Access_Array;
   use type PoolInterface_Access_Array_Access_Array;
   subtype PoolInterface_Access_Array_Access_Array_Access is org.allbinary.logic.util.cache.PoolInterface_Package_References.PoolInterface_Access_Array_Access_Array_Access;
   use type PoolInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ImageArrayRotationAnimationPool_Access is org.allbinary.animation.image.ImageArrayRotationAnimationPool_Package_References.ImageArrayRotationAnimationPool_Access;
   function "=" (Left, Right : ImageArrayRotationAnimationPool_Access) return Boolean renames org.allbinary.animation.image.ImageArrayRotationAnimationPool_Package_References."=";
   subtype ImageArrayRotationAnimationPool_Access_Array is org.allbinary.animation.image.ImageArrayRotationAnimationPool_Package_References.ImageArrayRotationAnimationPool_Access_Array;
   function "=" (Left, Right : ImageArrayRotationAnimationPool_Access_Array) return Boolean renames org.allbinary.animation.image.ImageArrayRotationAnimationPool_Package_References."=";
   subtype ImageArrayRotationAnimationPool_Access_Array_Access is org.allbinary.animation.image.ImageArrayRotationAnimationPool_Package_References.ImageArrayRotationAnimationPool_Access_Array_Access;
   function "=" (Left, Right : ImageArrayRotationAnimationPool_Access_Array_Access) return Boolean renames org.allbinary.animation.image.ImageArrayRotationAnimationPool_Package_References."=";
   subtype ImageArrayRotationAnimationPool_Access_Array_Access_Array is org.allbinary.animation.image.ImageArrayRotationAnimationPool_Package_References.ImageArrayRotationAnimationPool_Access_Array_Access_Array;
   function "=" (Left, Right : ImageArrayRotationAnimationPool_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.image.ImageArrayRotationAnimationPool_Package_References."=";
   subtype ImageArrayRotationAnimationPool_Access_Array_Access_Array_Access is org.allbinary.animation.image.ImageArrayRotationAnimationPool_Package_References.ImageArrayRotationAnimationPool_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ImageArrayRotationAnimationPool_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.image.ImageArrayRotationAnimationPool_Package_References."=";

   type ImageArrayRotationAnimationPool is new BasicArrayListResetablePool with null record;
   IMAGE_ROTATION_ANIMATION_POOL : PoolInterface_Access;

   procedure Initialize (This : in out ImageArrayRotationAnimationPool'Class; cacheableInterfaceFactoryInterface_Param : access CacheableInterfaceFactoryInterface_Package.CacheableInterfaceFactoryInterface'Class);
   function Create (cacheableInterfaceFactoryInterface_Param : access CacheableInterfaceFactoryInterface_Package.CacheableInterfaceFactoryInterface'Class) return ImageArrayRotationAnimationPool_Access;
   function getInstance return PoolInterface_Access;
   function remove (This : in out ImageArrayRotationAnimationPool; key_Param : access Java_Object'Class) return CacheableInterface_Access;
   procedure remove (This : in out ImageArrayRotationAnimationPool; key_Param : access Java_Object'Class);
   function remove (This : in out ImageArrayRotationAnimationPool; Value : Unbounded_String) return CacheableInterface_Access;
   procedure remove (This : in out ImageArrayRotationAnimationPool; Value : Unbounded_String);

end org.allbinary.animation.image.ImageArrayRotationAnimationPool_Package;


