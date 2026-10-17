-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
with org.allbinary.animation.AnimationBehaviorFactory_Package; use org.allbinary.animation.AnimationBehaviorFactory_Package;
with org.allbinary.animation.IndexedAnimationBehavior_Package; use org.allbinary.animation.IndexedAnimationBehavior_Package;
with org.allbinary.animation.AnimationBehavior_Package; use org.allbinary.animation.AnimationBehavior_Package;

package org.allbinary.animation.IndexedAnimationBehaviorFactory_Package is


   type IndexedAnimationBehaviorFactory is tagged;
   type IndexedAnimationBehaviorFactory_Access is access all IndexedAnimationBehaviorFactory'Class;
   type IndexedAnimationBehaviorFactory_Access_Array is array (Natural range <>) of IndexedAnimationBehaviorFactory_Access;
   type IndexedAnimationBehaviorFactory_Access_Array_Access is access all IndexedAnimationBehaviorFactory_Access_Array;

   type IndexedAnimationBehaviorFactory is new AnimationBehaviorFactory with record
      frameDelayTime : Long_Long_Integer;
      loopTotal : Integer;
   end record;

   procedure Initialize (This : in out IndexedAnimationBehaviorFactory'Class; loopTotal : Integer; frameDelayTime : Long_Long_Integer);
   function Create (loopTotal : Integer; frameDelayTime : Long_Long_Integer) return IndexedAnimationBehaviorFactory_Access;
   function getOrCreateInstance (This : in out IndexedAnimationBehaviorFactory) return AnimationBehavior_Access;

end org.allbinary.animation.IndexedAnimationBehaviorFactory_Package;


