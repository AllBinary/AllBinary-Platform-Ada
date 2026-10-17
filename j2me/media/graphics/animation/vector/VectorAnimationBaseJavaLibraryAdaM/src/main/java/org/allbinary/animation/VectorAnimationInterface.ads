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
with org.allbinary.graphics.color.ColorCompositeInterface_Package; use org.allbinary.graphics.color.ColorCompositeInterface_Package;
with org.allbinary.animation.IndexedAnimationInterface_Package; use org.allbinary.animation.IndexedAnimationInterface_Package;

package org.allbinary.animation.VectorAnimationInterface_Package is

   package ColorCompositeInterface_Package renames Standard.org.allbinary.graphics.color.ColorCompositeInterface_Package;

   type VectorAnimationInterface is interface and IndexedAnimationInterface and ColorCompositeInterface;
   type VectorAnimationInterface_Access is access all VectorAnimationInterface'Class;
   type VectorAnimationInterface_Access_Array is array (Natural range <>) of VectorAnimationInterface_Access;
   type VectorAnimationInterface_Access_Array_Access is access all VectorAnimationInterface_Access_Array;
   function getPoints (This : in out VectorAnimationInterface; frame : Integer) return Integer_Array_Access_Array_Access is abstract;

end org.allbinary.animation.VectorAnimationInterface_Package;


