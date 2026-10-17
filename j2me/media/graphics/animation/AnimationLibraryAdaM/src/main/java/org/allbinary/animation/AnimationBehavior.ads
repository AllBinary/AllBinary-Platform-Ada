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

package org.allbinary.animation.AnimationBehavior_Package is


   type AnimationBehavior is tagged;
   type AnimationBehavior_Access is access all AnimationBehavior'Class;
   type AnimationBehavior_Access_Array is array (Natural range <>) of AnimationBehavior_Access;
   type AnimationBehavior_Access_Array_Access is access all AnimationBehavior_Access_Array;

   type AnimationBehavior is new Java_Object with null record;
   instance : AnimationBehavior_Access;

   procedure Initialize (This : in out AnimationBehavior'Class);
   function Create return AnimationBehavior_Access;
   function getInstance return AnimationBehavior_Access;
   procedure reset (This : in out AnimationBehavior);

end org.allbinary.animation.AnimationBehavior_Package;


