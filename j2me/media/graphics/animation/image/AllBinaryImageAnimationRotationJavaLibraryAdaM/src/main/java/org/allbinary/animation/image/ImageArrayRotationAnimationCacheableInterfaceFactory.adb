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


with org.allbinary.animation.AnimationBehavior_Package; use org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.animation.image.ImageArrayRotationAnimationCacheable_Package; use org.allbinary.animation.image.ImageArrayRotationAnimationCacheable_Package;

package body org.allbinary.animation.image.ImageArrayRotationAnimationCacheableInterfaceFactory_Package is

   package AnimationBehavior_Package renames Standard.org.allbinary.animation.AnimationBehavior_Package;
   procedure Initialize_Fields (This : in out ImageArrayRotationAnimationCacheableInterfaceFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out ImageArrayRotationAnimationCacheableInterfaceFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return ImageArrayRotationAnimationCacheableInterfaceFactory_Access is
      This : constant ImageArrayRotationAnimationCacheableInterfaceFactory_Access := new ImageArrayRotationAnimationCacheableInterfaceFactory;
   begin
      ImageArrayRotationAnimationCacheableInterfaceFactory_Package.Initialize (This.all);
      return This;
   end Create;


   --  throws Exception
   function getInstance (This : in out ImageArrayRotationAnimationCacheableInterfaceFactory; key_Param : access Java_Object'Class) return CacheableInterface_Access is
      key : constant Java_Object_Access := Java_Object_Access (key_Param);
   begin
        return CacheableInterface_Access (ImageArrayRotationAnimationCacheable_Package.Create (key, AnimationBehavior_Package.getInstance));
   end getInstance;

   procedure getInstance (This : in out ImageArrayRotationAnimationCacheableInterfaceFactory; key_Param : access Java_Object'Class) is
      Java_Result : constant CacheableInterface_Access := ImageArrayRotationAnimationCacheableInterfaceFactory'Class (This).getInstance (key_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   function getInstance (This : in out ImageArrayRotationAnimationCacheableInterfaceFactory; Value : Unbounded_String) return CacheableInterface_Access is
   begin
      return ImageArrayRotationAnimationCacheableInterfaceFactory'Class (This).getInstance (Java_Box (Value));
   end getInstance;

   procedure getInstance (This : in out ImageArrayRotationAnimationCacheableInterfaceFactory; Value : Unbounded_String) is
      Java_Result : constant CacheableInterface_Access := ImageArrayRotationAnimationCacheableInterfaceFactory'Class (This).getInstance (Java_Box (Value));
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.animation.image.ImageArrayRotationAnimationCacheableInterfaceFactory_Package;


