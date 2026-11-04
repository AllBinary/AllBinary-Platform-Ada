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


with org.allbinary.logic.util.cache.BasicArrayListResetablePool_Package; use org.allbinary.logic.util.cache.BasicArrayListResetablePool_Package;
with org.allbinary.logic.util.cache.CacheableInterface_Package; use org.allbinary.logic.util.cache.CacheableInterface_Package;
with org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package; use org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package;
with org.allbinary.logic.util.cache.PoolInterface_Package; use org.allbinary.logic.util.cache.PoolInterface_Package;
with org.allbinary.animation.image.ImageArrayRotationAnimationCacheableInterfaceFactory_Package; use org.allbinary.animation.image.ImageArrayRotationAnimationCacheableInterfaceFactory_Package;
with org.allbinary.animation.image.ImageArrayRotationAnimationInfo_Package; use org.allbinary.animation.image.ImageArrayRotationAnimationInfo_Package;
with org.allbinary.animation.image.ImageArrayRotationAnimationCacheable_Package; use org.allbinary.animation.image.ImageArrayRotationAnimationCacheable_Package;
with org.allbinary.animation.image.AdjustedImageArrayRotationAnimation_Package;
with org.allbinary.animation.image.ImageArrayRotationAnimation_Package;
with org.allbinary.animation.image.ImageArrayRotationAnimationCacheable_Package;
with org.allbinary.animation.image.ImageArrayRotationAnimationCacheableInterfaceFactory_Package;
with org.allbinary.animation.image.ImageArrayRotationAnimationInfo_Package;

package body org.allbinary.animation.image.ImageArrayRotationAnimationPool_Package is

   subtype CacheableInterface_Access is org.allbinary.logic.util.cache.CacheableInterface_Package_References.CacheableInterface_Access;
   function "=" (Left, Right : CacheableInterface_Access) return Boolean renames org.allbinary.logic.util.cache.CacheableInterface_Package_References."=";
   subtype CacheableInterface_Access_Array is org.allbinary.logic.util.cache.CacheableInterface_Package_References.CacheableInterface_Access_Array;
   function "=" (Left, Right : CacheableInterface_Access_Array) return Boolean renames org.allbinary.logic.util.cache.CacheableInterface_Package_References."=";
   subtype CacheableInterface_Access_Array_Access is org.allbinary.logic.util.cache.CacheableInterface_Package_References.CacheableInterface_Access_Array_Access;
   function "=" (Left, Right : CacheableInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.util.cache.CacheableInterface_Package_References."=";
   subtype CacheableInterface_Access_Array_Access_Array is org.allbinary.logic.util.cache.CacheableInterface_Package_References.CacheableInterface_Access_Array_Access_Array;
   function "=" (Left, Right : CacheableInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.util.cache.CacheableInterface_Package_References."=";
   subtype CacheableInterface_Access_Array_Access_Array_Access is org.allbinary.logic.util.cache.CacheableInterface_Package_References.CacheableInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CacheableInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.util.cache.CacheableInterface_Package_References."=";
   subtype CacheableInterfaceFactoryInterface_Access is org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package_References.CacheableInterfaceFactoryInterface_Access;
   function "=" (Left, Right : CacheableInterfaceFactoryInterface_Access) return Boolean renames org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package_References."=";
   subtype CacheableInterfaceFactoryInterface_Access_Array is org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package_References.CacheableInterfaceFactoryInterface_Access_Array;
   function "=" (Left, Right : CacheableInterfaceFactoryInterface_Access_Array) return Boolean renames org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package_References."=";
   subtype CacheableInterfaceFactoryInterface_Access_Array_Access is org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package_References.CacheableInterfaceFactoryInterface_Access_Array_Access;
   function "=" (Left, Right : CacheableInterfaceFactoryInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package_References."=";
   subtype CacheableInterfaceFactoryInterface_Access_Array_Access_Array is org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package_References.CacheableInterfaceFactoryInterface_Access_Array_Access_Array;
   function "=" (Left, Right : CacheableInterfaceFactoryInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package_References."=";
   subtype CacheableInterfaceFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package_References.CacheableInterfaceFactoryInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CacheableInterfaceFactoryInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package_References."=";
   subtype PoolInterface_Access is org.allbinary.logic.util.cache.PoolInterface_Package_References.PoolInterface_Access;
   function "=" (Left, Right : PoolInterface_Access) return Boolean renames org.allbinary.logic.util.cache.PoolInterface_Package_References."=";
   subtype PoolInterface_Access_Array is org.allbinary.logic.util.cache.PoolInterface_Package_References.PoolInterface_Access_Array;
   function "=" (Left, Right : PoolInterface_Access_Array) return Boolean renames org.allbinary.logic.util.cache.PoolInterface_Package_References."=";
   subtype PoolInterface_Access_Array_Access is org.allbinary.logic.util.cache.PoolInterface_Package_References.PoolInterface_Access_Array_Access;
   function "=" (Left, Right : PoolInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.util.cache.PoolInterface_Package_References."=";
   subtype PoolInterface_Access_Array_Access_Array is org.allbinary.logic.util.cache.PoolInterface_Package_References.PoolInterface_Access_Array_Access_Array;
   function "=" (Left, Right : PoolInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.util.cache.PoolInterface_Package_References."=";
   subtype PoolInterface_Access_Array_Access_Array_Access is org.allbinary.logic.util.cache.PoolInterface_Package_References.PoolInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PoolInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.util.cache.PoolInterface_Package_References."=";
   procedure Initialize_Fields (This : in out ImageArrayRotationAnimationPool'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out ImageArrayRotationAnimationPool'Class; cacheableInterfaceFactoryInterface_Param : access CacheableInterfaceFactoryInterface_Package.CacheableInterfaceFactoryInterface'Class) is
      cacheableInterfaceFactoryInterface : constant CacheableInterfaceFactoryInterface_Access := CacheableInterfaceFactoryInterface_Access (cacheableInterfaceFactoryInterface_Param);
   begin
        BasicArrayListResetablePool_Package.Initialize (This, cacheableInterfaceFactoryInterface);
   end Initialize;

   function Create (cacheableInterfaceFactoryInterface_Param : access CacheableInterfaceFactoryInterface_Package.CacheableInterfaceFactoryInterface'Class) return ImageArrayRotationAnimationPool_Access is
      This : constant ImageArrayRotationAnimationPool_Access := new ImageArrayRotationAnimationPool;
   begin
      ImageArrayRotationAnimationPool_Package.Initialize (This.all, cacheableInterfaceFactoryInterface_Param);
      return This;
   end Create;

   function getInstance return PoolInterface_Access is
   begin
        return PoolInterface_Access (ImageArrayRotationAnimationPool_Package.IMAGE_ROTATION_ANIMATION_POOL);
   end getInstance;

   --  throws Exception
   function remove (This : in out ImageArrayRotationAnimationPool; key_Param : access Java_Object'Class) return CacheableInterface_Access is
      key : constant Java_Object_Access := Java_Object_Access (key_Param);
      cacheableInterface : CacheableInterface_Access;
      allBinaryImageRotationAnimationInfo : ImageArrayRotationAnimationInfo_Access;
      imageArrayRotationAnimationCacheable : ImageArrayRotationAnimationCacheable_Access;
   begin
        cacheableInterface := CacheableInterface_Access (BasicArrayListResetablePool (This).remove (key));
        allBinaryImageRotationAnimationInfo := ImageArrayRotationAnimationInfo_Access (key);
        imageArrayRotationAnimationCacheable := (ImageArrayRotationAnimationCacheable_Access (cacheableInterface));
        imageArrayRotationAnimationCacheable.setImageArray (allBinaryImageRotationAnimationInfo.getImageArray);
        return cacheableInterface;
   end remove;

   procedure remove (This : in out ImageArrayRotationAnimationPool; key_Param : access Java_Object'Class) is
      Java_Result : constant CacheableInterface_Access := ImageArrayRotationAnimationPool'Class (This).remove (key_Param => key_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end remove;

   function remove (This : in out ImageArrayRotationAnimationPool; Value : Unbounded_String) return CacheableInterface_Access is
   begin
      return ImageArrayRotationAnimationPool'Class (This).remove (Java_Box (Value));
   end remove;

   procedure remove (This : in out ImageArrayRotationAnimationPool; Value : Unbounded_String) is
      Java_Result : constant CacheableInterface_Access := ImageArrayRotationAnimationPool'Class (This).remove (Java_Box (Value));
      pragma Unreferenced (Java_Result);
   begin
      null;
   end remove;

begin
   null;
   IMAGE_ROTATION_ANIMATION_POOL := PoolInterface_Access (ImageArrayRotationAnimationPool_Package.Create (ImageArrayRotationAnimationCacheableInterfaceFactory_Package.Create));

end org.allbinary.animation.image.ImageArrayRotationAnimationPool_Package;


