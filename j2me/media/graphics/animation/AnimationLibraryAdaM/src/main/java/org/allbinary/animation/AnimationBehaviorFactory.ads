-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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

package org.allbinary.animation.AnimationBehaviorFactory_Package is


   type AnimationBehaviorFactory is tagged;
   type AnimationBehaviorFactory_Access is access all AnimationBehaviorFactory'Class;
   type AnimationBehaviorFactory_Access_Array is array (Natural range <>) of AnimationBehaviorFactory_Access;
   type AnimationBehaviorFactory_Access_Array_Access is access all AnimationBehaviorFactory_Access_Array;

   type AnimationBehaviorFactory is new Java_Object with null record;
   instance : AnimationBehaviorFactory_Access;

   procedure Initialize (This : in out AnimationBehaviorFactory'Class);
   function Create return AnimationBehaviorFactory_Access;
   function getInstance return AnimationBehaviorFactory_Access;
   procedure getInstance;
   function getOrCreateInstance (This : in out AnimationBehaviorFactory) return AnimationBehavior_Access;
   procedure getOrCreateInstance (This : in out AnimationBehaviorFactory);

end org.allbinary.animation.AnimationBehaviorFactory_Package;


