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
with org.allbinary.animation.IndexedAnimationInterfaceCompositeInterface_Package; use org.allbinary.animation.IndexedAnimationInterfaceCompositeInterface_Package;

package org.allbinary.animation.RotationAnimationInterfaceCompositeInterface_Package is


   type RotationAnimationInterfaceCompositeInterface is interface and IndexedAnimationInterfaceCompositeInterface;
   type RotationAnimationInterfaceCompositeInterface_Access is access all RotationAnimationInterfaceCompositeInterface'Class;
   type RotationAnimationInterfaceCompositeInterface_Access_Array is array (Natural range <>) of RotationAnimationInterfaceCompositeInterface_Access;
   type RotationAnimationInterfaceCompositeInterface_Access_Array_Access is access all RotationAnimationInterfaceCompositeInterface_Access_Array;
   function getRotationAnimationInterface (This : in out RotationAnimationInterfaceCompositeInterface) return RotationAnimation_Access is abstract;
   procedure setFrame (This : in out RotationAnimationInterfaceCompositeInterface; index : Integer) is abstract;

end org.allbinary.animation.RotationAnimationInterfaceCompositeInterface_Package;


