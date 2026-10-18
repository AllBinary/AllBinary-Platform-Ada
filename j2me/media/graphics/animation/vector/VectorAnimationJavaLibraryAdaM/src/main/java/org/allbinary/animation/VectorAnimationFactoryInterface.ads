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
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.animation.VectorAnimation_Package; use org.allbinary.animation.VectorAnimation_Package;

package org.allbinary.animation.VectorAnimationFactoryInterface_Package is

   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;

   type VectorAnimationFactoryInterface is interface;
   type VectorAnimationFactoryInterface_Access is access all VectorAnimationFactoryInterface'Class;
   type VectorAnimationFactoryInterface_Access_Array is array (Natural range <>) of VectorAnimationFactoryInterface_Access;
   type VectorAnimationFactoryInterface_Access_Array_Access is access all VectorAnimationFactoryInterface_Access_Array;
   type VectorAnimationFactoryInterface_Access_Array_Access_Array is array (Natural range <>) of VectorAnimationFactoryInterface_Access_Array_Access;
   type VectorAnimationFactoryInterface_Access_Array_Access_Array_Access is access all VectorAnimationFactoryInterface_Access_Array_Access_Array;
   function getInstance (This : in out VectorAnimationFactoryInterface; points : Integer_Array_Access_Array_Access_Array_Access; basicColor_Param : access BasicColor_Package.BasicColor'Class) return VectorAnimation_Access is abstract;

end org.allbinary.animation.VectorAnimationFactoryInterface_Package;


