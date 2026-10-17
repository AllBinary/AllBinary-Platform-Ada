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
with org.allbinary.graphics.GPoint_Package; use org.allbinary.graphics.GPoint_Package;
with org.allbinary.graphics.PointFactory_Package; use org.allbinary.graphics.PointFactory_Package;
with org.allbinary.graphics.pipeline.RandomRotationFactory_Package; use org.allbinary.graphics.pipeline.RandomRotationFactory_Package;
with org.allbinary.graphics.pipeline.RandomTranslation_Package; use org.allbinary.graphics.pipeline.RandomTranslation_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.util.BasicArrayListS_Package; use org.allbinary.util.BasicArrayListS_Package;

package org.allbinary.animation.VectorExplosionGenerator_Package is

   package GPoint_Package renames Standard.org.allbinary.graphics.GPoint_Package;
   package PointFactory_Package renames Standard.org.allbinary.graphics.PointFactory_Package;
   package RandomRotationFactory_Package renames Standard.org.allbinary.graphics.pipeline.RandomRotationFactory_Package;
   package RandomTranslation_Package renames Standard.org.allbinary.graphics.pipeline.RandomTranslation_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package BasicArrayListS_Package renames Standard.org.allbinary.util.BasicArrayListS_Package;

   type VectorExplosionGenerator is tagged;
   type VectorExplosionGenerator_Access is access all VectorExplosionGenerator'Class;
   type VectorExplosionGenerator_Access_Array is array (Natural range <>) of VectorExplosionGenerator_Access;
   type VectorExplosionGenerator_Access_Array_Access is access all VectorExplosionGenerator_Access_Array;

   type VectorExplosionGenerator is new Java_Object with record
      RANDOM : VectorExplosionType_Access;
      ROTATION : VectorExplosionType_Access;
      vectorAnimationUtil : VectorAnimationUtil_Access;
      randomRotationFactory : RandomRotationFactory_Access;
   end record;
   instance : VectorExplosionGenerator_Access;

   procedure Initialize (This : in out VectorExplosionGenerator'Class);
   function Create return VectorExplosionGenerator_Access;
   function getInstance return VectorExplosionGenerator_Access;
   procedure getInstance;
   function createList (This : in out VectorExplosionGenerator; list : BasicArrayList_Access; howMuch : Integer; type_Id : VectorExplosionType_Access) return BasicArrayList_Access;
   procedure createList (This : in out VectorExplosionGenerator; list : BasicArrayList_Access; howMuch : Integer; type_Id : VectorExplosionType_Access);
   function getInstance (This : in out VectorExplosionGenerator; points : Integer_Array_Access_Array_Access; howMuch : Integer; type_Id : VectorExplosionType_Access) return Integer_Array_Access_Array_Access_Array_Access;
   procedure getInstance (This : in out VectorExplosionGenerator; points : Integer_Array_Access_Array_Access; howMuch : Integer; type_Id : VectorExplosionType_Access);
   function getInstanceStartFrame (This : in out VectorExplosionGenerator; points : Integer_Array_Access_Array_Access; howMuch : Integer; type_Id : VectorExplosionType_Access; startFrame : Boolean) return BasicArrayList_Access;
   procedure getInstanceStartFrame (This : in out VectorExplosionGenerator; points : Integer_Array_Access_Array_Access; howMuch : Integer; type_Id : VectorExplosionType_Access; startFrame : Boolean);
   function createListFromPoints (This : in out VectorExplosionGenerator; tempBasicArrayList : BasicArrayList_Access; points : Integer_Array_Access_Array_Access; howMuch : Integer; type_Id : VectorExplosionType_Access) return BasicArrayList_Access;
   procedure createListFromPoints (This : in out VectorExplosionGenerator; tempBasicArrayList : BasicArrayList_Access; points : Integer_Array_Access_Array_Access; howMuch : Integer; type_Id : VectorExplosionType_Access);
   function createPointsBasicArrayList (This : in out VectorExplosionGenerator; points : Integer_Array_Access_Array_Access) return BasicArrayList_Access;
   procedure createPointsBasicArrayList (This : in out VectorExplosionGenerator; points : Integer_Array_Access_Array_Access);

end org.allbinary.animation.VectorExplosionGenerator_Package;


