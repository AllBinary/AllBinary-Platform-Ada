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
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.math.PrimitiveIntUtil_Package; use org.allbinary.logic.math.PrimitiveIntUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.animation.Animation_Package; use org.allbinary.animation.Animation_Package;
with org.allbinary.animation.IndexedAnimationInterface_Package; use org.allbinary.animation.IndexedAnimationInterface_Package;

package org.allbinary.animation.IndexedAnimation_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package PrimitiveIntUtil_Package renames Standard.org.allbinary.logic.math.PrimitiveIntUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type IndexedAnimation is tagged;
   type IndexedAnimation_Access is access all IndexedAnimation'Class;
   type IndexedAnimation_Access_Array is array (Natural range <>) of IndexedAnimation_Access;
   type IndexedAnimation_Access_Array_Access is access all IndexedAnimation_Access_Array;

   type IndexedAnimation is new Animation and IndexedAnimationInterface with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      animationBehaviorP : AnimationBehavior_Access;
   end record;

   procedure Initialize (This : in out IndexedAnimation'Class; animationBehavior : AnimationBehavior_Access);
   function Create (animationBehavior : AnimationBehavior_Access) return IndexedAnimation_Access;
   function getAnimationBehavior (This : in out IndexedAnimation) return AnimationBehavior_Access;
   procedure getAnimationBehavior (This : in out IndexedAnimation);
   procedure reset (This : in out IndexedAnimation);
   procedure setFrame (This : in out IndexedAnimation; index : Integer);
   function getFrame (This : in out IndexedAnimation) return Integer;
   procedure getFrame (This : in out IndexedAnimation);
   function getAnimationSize (This : in out IndexedAnimation) return Integer;
   procedure getAnimationSize (This : in out IndexedAnimation);
   function getSize (This : in out IndexedAnimation) return Integer;
   procedure getSize (This : in out IndexedAnimation);
   procedure previousFrame (This : in out IndexedAnimation);
   function isLastFrame (This : in out IndexedAnimation) return Boolean;
   procedure isLastFrame (This : in out IndexedAnimation);
   procedure setSequence (This : in out IndexedAnimation; sequence : Integer_Array_Access);
   function getSequence (This : in out IndexedAnimation) return Integer_Array_Access;
   procedure getSequence (This : in out IndexedAnimation);
   procedure setState (This : in out IndexedAnimation; indexedAnimation : IndexedAnimation_Access);
   function getWidth (This : in out IndexedAnimation) return Integer;
   procedure getWidth (This : in out IndexedAnimation);
   function getHeight (This : in out IndexedAnimation) return Integer;
   procedure getHeight (This : in out IndexedAnimation);

end org.allbinary.animation.IndexedAnimation_Package;


