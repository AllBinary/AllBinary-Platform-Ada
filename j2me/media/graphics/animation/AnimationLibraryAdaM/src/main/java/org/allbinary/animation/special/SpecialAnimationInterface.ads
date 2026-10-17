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
with org.allbinary.animation.IndexedAnimationInterface_Package; use org.allbinary.animation.IndexedAnimationInterface_Package;

package org.allbinary.animation.special.SpecialAnimationInterface_Package is

   package IndexedAnimationInterface_Package renames org.allbinary.animation.IndexedAnimationInterface_Package;

   type SpecialAnimationInterface is interface and IndexedAnimationInterface;
   type SpecialAnimationInterface_Access is access all SpecialAnimationInterface'Class;
   type SpecialAnimationInterface_Access_Array is array (Natural range <>) of SpecialAnimationInterface_Access;
   type SpecialAnimationInterface_Access_Array_Access is access all SpecialAnimationInterface_Access_Array;
   procedure setLastFrame (This : in out SpecialAnimationInterface) is abstract;
   function isComplete (This : in out SpecialAnimationInterface) return Boolean is abstract;

end org.allbinary.animation.special.SpecialAnimationInterface_Package;


