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
with org.allbinary.animation.BasicAnimationInterfaceFactoryInterface_Package; use org.allbinary.animation.BasicAnimationInterfaceFactoryInterface_Package;

package org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package is


   type ProceduralAnimationInterfaceFactoryInterface is interface and BasicAnimationInterfaceFactoryInterface;
   type ProceduralAnimationInterfaceFactoryInterface_Access is access all ProceduralAnimationInterfaceFactoryInterface'Class;
   type ProceduralAnimationInterfaceFactoryInterface_Access_Array is array (Natural range <>) of ProceduralAnimationInterfaceFactoryInterface_Access;
   type ProceduralAnimationInterfaceFactoryInterface_Access_Array_Access is access all ProceduralAnimationInterfaceFactoryInterface_Access_Array;
   function getInstanceAnimation (This : in out ProceduralAnimationInterfaceFactoryInterface; animationInterface : Animation_Access) return Animation_Access is abstract;

end org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package;


