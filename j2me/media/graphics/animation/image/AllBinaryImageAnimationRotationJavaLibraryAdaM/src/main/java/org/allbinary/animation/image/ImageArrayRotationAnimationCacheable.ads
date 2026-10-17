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
with org.allbinary.animation.AnimationBehavior_Package; use org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.util.cache.CacheableInterface_Package; use org.allbinary.logic.util.cache.CacheableInterface_Package;
with org.allbinary.animation.image.AdjustedImageArrayRotationAnimation_Package; use org.allbinary.animation.image.AdjustedImageArrayRotationAnimation_Package;
with org.allbinary.animation.image.ImageArrayRotationAnimationInfo_Package; use org.allbinary.animation.image.ImageArrayRotationAnimationInfo_Package;

package org.allbinary.animation.image.ImageArrayRotationAnimationCacheable_Package is

   package AnimationBehavior_Package renames Standard.org.allbinary.animation.AnimationBehavior_Package;
   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package CacheableInterface_Package renames Standard.org.allbinary.logic.util.cache.CacheableInterface_Package;

   type ImageArrayRotationAnimationCacheable is tagged;
   type ImageArrayRotationAnimationCacheable_Access is access all ImageArrayRotationAnimationCacheable'Class;
   type ImageArrayRotationAnimationCacheable_Access_Array is array (Natural range <>) of ImageArrayRotationAnimationCacheable_Access;
   type ImageArrayRotationAnimationCacheable_Access_Array_Access is access all ImageArrayRotationAnimationCacheable_Access_Array;

   type ImageArrayRotationAnimationCacheable is new AdjustedImageArrayRotationAnimation and CacheableInterface with null record;

   procedure Initialize (This : in out ImageArrayRotationAnimationCacheable'Class; anyType_Param : access Java_Object'Class; animationBehavior_Param : access AnimationBehavior'Class);
   function Create (anyType_Param : access Java_Object'Class; animationBehavior_Param : access AnimationBehavior'Class) return ImageArrayRotationAnimationCacheable_Access;
   function getKey (This : in out ImageArrayRotationAnimationCacheable) return Java_Object_Access;
   function toString (This : in out ImageArrayRotationAnimationCacheable) return Unbounded_String;

end org.allbinary.animation.image.ImageArrayRotationAnimationCacheable_Package;


