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

package org.allbinary.game.layer.behavior.GameLayerBehavior_Package is


   type GameLayerBehavior is tagged;
   type GameLayerBehavior_Access is access all GameLayerBehavior'Class;
   type GameLayerBehavior_Access_Array is array (Natural range <>) of GameLayerBehavior_Access;
   type GameLayerBehavior_Access_Array_Access is access all GameLayerBehavior_Access_Array;
   type GameLayerBehavior_Access_Array_Access_Array is array (Natural range <>) of GameLayerBehavior_Access_Array_Access;
   type GameLayerBehavior_Access_Array_Access_Array_Access is access all GameLayerBehavior_Access_Array_Access_Array;

   type GameLayerBehavior is new Java_Object with null record;

   procedure Initialize (This : in out GameLayerBehavior'Class);
   function Create return GameLayerBehavior_Access;

end org.allbinary.game.layer.behavior.GameLayerBehavior_Package;


