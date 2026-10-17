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
with org.allbinary.animation.AnimationInterface_Package; use org.allbinary.animation.AnimationInterface_Package;
with org.allbinary.animation.IndexedAnimation_Package; use org.allbinary.animation.IndexedAnimation_Package;

package org.allbinary.animation.compound.CompoundAnimationInterface_Package is

   package AnimationInterface_Package renames org.allbinary.animation.AnimationInterface_Package;
   package IndexedAnimation_Package renames org.allbinary.animation.IndexedAnimation_Package;

   type CompoundAnimationInterface is interface and AnimationInterface;
   type CompoundAnimationInterface_Access is access all CompoundAnimationInterface'Class;
   type CompoundAnimationInterface_Access_Array is array (Natural range <>) of CompoundAnimationInterface_Access;
   type CompoundAnimationInterface_Access_Array_Access is access all CompoundAnimationInterface_Access_Array;
   procedure nextAnimation (This : in out CompoundAnimationInterface) is abstract;
   procedure previousAnimation (This : in out CompoundAnimationInterface) is abstract;
   procedure setAnimation (This : in out CompoundAnimationInterface; index : Integer) is abstract;
   function getCurrentAnimation (This : in out CompoundAnimationInterface) return IndexedAnimation_Access is abstract;

end org.allbinary.animation.compound.CompoundAnimationInterface_Package;


