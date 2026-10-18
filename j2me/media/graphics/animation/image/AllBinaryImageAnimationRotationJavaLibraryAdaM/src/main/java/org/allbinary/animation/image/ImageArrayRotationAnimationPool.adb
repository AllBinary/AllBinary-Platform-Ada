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


with org.allbinary.animation.image.ImageArrayRotationAnimationCacheableInterfaceFactory_Package; use org.allbinary.animation.image.ImageArrayRotationAnimationCacheableInterfaceFactory_Package;
with org.allbinary.animation.image.ImageArrayRotationAnimationInfo_Package; use org.allbinary.animation.image.ImageArrayRotationAnimationInfo_Package;
with org.allbinary.animation.image.ImageArrayRotationAnimationCacheable_Package; use org.allbinary.animation.image.ImageArrayRotationAnimationCacheable_Package;

package body org.allbinary.animation.image.ImageArrayRotationAnimationPool_Package is

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
        return ImageArrayRotationAnimationPool_Package.IMAGE_ROTATION_ANIMATION_POOL;
   end getInstance;

   --  throws Exception
   function remove (This : in out ImageArrayRotationAnimationPool; key_Param : access Java_Object'Class) return CacheableInterface_Access is
      key : constant Java_Object_Access := Java_Object_Access (key_Param);
      cacheableInterface : CacheableInterface_Access;
      allBinaryImageRotationAnimationInfo : ImageArrayRotationAnimationInfo_Access;
      imageArrayRotationAnimationCacheable : ImageArrayRotationAnimationCacheable_Access;
   begin
        cacheableInterface := BasicArrayListResetablePool (This).remove (key);
        allBinaryImageRotationAnimationInfo := ImageArrayRotationAnimationInfo_Access (key);
        imageArrayRotationAnimationCacheable := (ImageArrayRotationAnimationCacheable_Access (cacheableInterface));
        imageArrayRotationAnimationCacheable.setImageArray (allBinaryImageRotationAnimationInfo.getImageArray);
        return cacheableInterface;
   end remove;

   procedure remove (This : in out ImageArrayRotationAnimationPool; key_Param : access Java_Object'Class) is
      Java_Result : constant CacheableInterface_Access := ImageArrayRotationAnimationPool'Class (This).remove (key_Param);
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


