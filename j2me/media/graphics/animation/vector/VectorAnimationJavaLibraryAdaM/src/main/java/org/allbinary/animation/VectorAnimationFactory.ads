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
with org.allbinary.animation.VectorAnimationFactoryInterface_Package; use org.allbinary.animation.VectorAnimationFactoryInterface_Package;

package org.allbinary.animation.VectorAnimationFactory_Package is

   package BasicColor_Package renames org.allbinary.graphics.color.BasicColor_Package;

   type VectorAnimationFactory is tagged;
   type VectorAnimationFactory_Access is access all VectorAnimationFactory'Class;
   type VectorAnimationFactory_Access_Array is array (Natural range <>) of VectorAnimationFactory_Access;
   type VectorAnimationFactory_Access_Array_Access is access all VectorAnimationFactory_Access_Array;

   type VectorAnimationFactory is new VectorAnimationFactoryInterface with null record;

   procedure Initialize (This : in out VectorAnimationFactory'Class);
   function Create return VectorAnimationFactory_Access;
   function getInstance (This : in out VectorAnimationFactory; points : Integer_Array_Access_Array_Access_Array_Access; basicColor : BasicColor_Access) return VectorAnimation_Access;
   procedure getInstance (This : in out VectorAnimationFactory; points : Integer_Array_Access_Array_Access_Array_Access; basicColor : BasicColor_Access);

end org.allbinary.animation.VectorAnimationFactory_Package;


