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
with org.allbinary.animation.IndexedAnimation_Package; use org.allbinary.animation.IndexedAnimation_Package;
with org.allbinary.animation.IndexedAnimationBehavior_Package; use org.allbinary.animation.IndexedAnimationBehavior_Package;
with org.allbinary.animation.special.SpecialAnimationInterface_Package; use org.allbinary.animation.special.SpecialAnimationInterface_Package;

package org.allbinary.animation.special.SpecialAnimation_Package is

   package AnimationBehavior_Package renames Standard.org.allbinary.animation.AnimationBehavior_Package;
   package IndexedAnimation_Package renames Standard.org.allbinary.animation.IndexedAnimation_Package;
   package IndexedAnimationBehavior_Package renames Standard.org.allbinary.animation.IndexedAnimationBehavior_Package;

   type SpecialAnimation is tagged;
   type SpecialAnimation_Access is access all SpecialAnimation'Class;
   type SpecialAnimation_Access_Array is array (Natural range <>) of SpecialAnimation_Access;
   type SpecialAnimation_Access_Array_Access is access all SpecialAnimation_Access_Array;

   type SpecialAnimation is new IndexedAnimation and SpecialAnimationInterface with null record;
   NULL_SPECIAL_ANIMATION : SpecialAnimation_Access;

   procedure Initialize (This : in out SpecialAnimation'Class; animationBehavior : AnimationBehavior_Access);
   function Create (animationBehavior : AnimationBehavior_Access) return SpecialAnimation_Access;
   function getInstance return SpecialAnimation_Access;
   procedure nextFrame (This : in out SpecialAnimation);
   procedure setLastFrame (This : in out SpecialAnimation);
   function isComplete (This : in out SpecialAnimation) return Boolean;
   procedure open (This : in out SpecialAnimation);
   procedure close (This : in out SpecialAnimation);
   procedure process (This : in out SpecialAnimation);

end org.allbinary.animation.special.SpecialAnimation_Package;


