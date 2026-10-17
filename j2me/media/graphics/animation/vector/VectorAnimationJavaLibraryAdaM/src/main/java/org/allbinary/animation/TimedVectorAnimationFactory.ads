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

package org.allbinary.animation.TimedVectorAnimationFactory_Package is

   package BasicColor_Package renames org.allbinary.graphics.color.BasicColor_Package;

   type TimedVectorAnimationFactory is tagged;
   type TimedVectorAnimationFactory_Access is access all TimedVectorAnimationFactory'Class;
   type TimedVectorAnimationFactory_Access_Array is array (Natural range <>) of TimedVectorAnimationFactory_Access;
   type TimedVectorAnimationFactory_Access_Array_Access is access all TimedVectorAnimationFactory_Access_Array;

   type TimedVectorAnimationFactory is new VectorAnimationFactoryInterface with null record;

   procedure Initialize (This : in out TimedVectorAnimationFactory'Class);
   function Create return TimedVectorAnimationFactory_Access;
   function getInstance (This : in out TimedVectorAnimationFactory; points : Integer_Array_Access_Array_Access_Array_Access; basicColor : BasicColor_Access) return VectorAnimation_Access;
   procedure getInstance (This : in out TimedVectorAnimationFactory; points : Integer_Array_Access_Array_Access_Array_Access; basicColor : BasicColor_Access);

end org.allbinary.animation.TimedVectorAnimationFactory_Package;


