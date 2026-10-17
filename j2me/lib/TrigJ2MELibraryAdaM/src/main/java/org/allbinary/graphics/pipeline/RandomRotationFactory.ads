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
with org.allbinary.game.rand.MyRandomFactory_Package; use org.allbinary.game.rand.MyRandomFactory_Package;
with org.allbinary.math.AngleFactory_Package; use org.allbinary.math.AngleFactory_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;

package org.allbinary.graphics.pipeline.RandomRotationFactory_Package is

   package MyRandomFactory_Package renames org.allbinary.game.rand.MyRandomFactory_Package;
   package AngleFactory_Package renames org.allbinary.math.AngleFactory_Package;
   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;

   type RandomRotationFactory is tagged;
   type RandomRotationFactory_Access is access all RandomRotationFactory'Class;
   type RandomRotationFactory_Access_Array is array (Natural range <>) of RandomRotationFactory_Access;
   type RandomRotationFactory_Access_Array_Access is access all RandomRotationFactory_Access_Array;

   type RandomRotationFactory is new Java_Object with record
      myRandomFactory : MyRandomFactory_Access;
      angleFactory : AngleFactory_Access;
   end record;
   instance : RandomRotationFactory_Access;

   procedure Initialize (This : in out RandomRotationFactory'Class);
   function Create return RandomRotationFactory_Access;
   function getInstance return RandomRotationFactory_Access;
   procedure getInstance;
   function getInstanceList (This : in out RandomRotationFactory; vector : BasicArrayList_Access; howMuch : Integer) return BasicArrayList_Access;
   procedure getInstanceList (This : in out RandomRotationFactory; vector : BasicArrayList_Access; howMuch : Integer);
   function getNextRandomAngle (This : in out RandomRotationFactory; howMuch : Integer) return Integer;
   procedure getNextRandomAngle (This : in out RandomRotationFactory; howMuch : Integer);

end org.allbinary.graphics.pipeline.RandomRotationFactory_Package;


