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
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.animation.Animation_Package; use org.allbinary.animation.Animation_Package;
with org.allbinary.animation.IndexedAnimationInterface_Package; use org.allbinary.animation.IndexedAnimationInterface_Package;
with org.allbinary.animation.AnimationBehavior_Package; use org.allbinary.animation.AnimationBehavior_Package;

package org.allbinary.animation.IndexedAnimation_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type IndexedAnimation is tagged;
   type IndexedAnimation_Access is access all IndexedAnimation'Class;
   type IndexedAnimation_Access_Array is array (Natural range <>) of IndexedAnimation_Access;
   type IndexedAnimation_Access_Array_Access is access all IndexedAnimation_Access_Array;
   type IndexedAnimation_Access_Array_Access_Array is array (Natural range <>) of IndexedAnimation_Access_Array_Access;
   type IndexedAnimation_Access_Array_Access_Array_Access is access all IndexedAnimation_Access_Array_Access_Array;

   type IndexedAnimation is new Animation_Package.Animation and IndexedAnimationInterface with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      animationBehaviorP : AnimationBehavior_Access;
   end record;

   procedure Initialize (This : in out IndexedAnimation'Class; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class);
   function Create (animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) return IndexedAnimation_Access;
   function getAnimationBehavior (This : in out IndexedAnimation) return AnimationBehavior_Access;
   procedure reset (This : in out IndexedAnimation);
   procedure setFrame (This : in out IndexedAnimation; index : Integer);
   function getFrame (This : in out IndexedAnimation) return Integer;
   function getAnimationSize (This : in out IndexedAnimation) return Integer;
   function getSize (This : in out IndexedAnimation) return Integer;
   procedure previousFrame (This : in out IndexedAnimation);
   function isLastFrame (This : in out IndexedAnimation) return Boolean;
   procedure setSequence (This : in out IndexedAnimation; sequence : Integer_Array_Access);
   function getSequence (This : in out IndexedAnimation) return Integer_Array_Access;
   procedure setState (This : in out IndexedAnimation; indexedAnimation_Var_Param : access IndexedAnimation_Package.IndexedAnimation'Class);
   function getWidth (This : in out IndexedAnimation) return Integer;
   function getHeight (This : in out IndexedAnimation) return Integer;

end org.allbinary.animation.IndexedAnimation_Package;


