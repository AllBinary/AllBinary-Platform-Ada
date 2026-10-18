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

package org.allbinary.game.behavior.topview.InitialJumpBehavior_Package is


   type InitialJumpBehavior is tagged;
   type InitialJumpBehavior_Access is access all InitialJumpBehavior'Class;
   type InitialJumpBehavior_Access_Array is array (Natural range <>) of InitialJumpBehavior_Access;
   type InitialJumpBehavior_Access_Array_Access is access all InitialJumpBehavior_Access_Array;
   type InitialJumpBehavior_Access_Array_Access_Array is array (Natural range <>) of InitialJumpBehavior_Access_Array_Access;
   type InitialJumpBehavior_Access_Array_Access_Array_Access is access all InitialJumpBehavior_Access_Array_Access_Array;

   type InitialJumpBehavior is new Java_Object with null record;

   procedure Initialize (This : in out InitialJumpBehavior'Class);
   function Create return InitialJumpBehavior_Access;
   procedure process (This : in out InitialJumpBehavior);

end org.allbinary.game.behavior.topview.InitialJumpBehavior_Package;


