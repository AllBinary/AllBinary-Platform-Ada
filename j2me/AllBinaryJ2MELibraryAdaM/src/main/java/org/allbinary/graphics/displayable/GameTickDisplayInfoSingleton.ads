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
with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package; use org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;

package org.allbinary.graphics.displayable.GameTickDisplayInfoSingleton_Package is


   type GameTickDisplayInfoSingleton is tagged;
   type GameTickDisplayInfoSingleton_Access is access all GameTickDisplayInfoSingleton'Class;
   type GameTickDisplayInfoSingleton_Access_Array is array (Natural range <>) of GameTickDisplayInfoSingleton_Access;
   type GameTickDisplayInfoSingleton_Access_Array_Access is access all GameTickDisplayInfoSingleton_Access_Array;
   type GameTickDisplayInfoSingleton_Access_Array_Access_Array is array (Natural range <>) of GameTickDisplayInfoSingleton_Access_Array_Access;
   type GameTickDisplayInfoSingleton_Access_Array_Access_Array_Access is access all GameTickDisplayInfoSingleton_Access_Array_Access_Array;

   type GameTickDisplayInfoSingleton is new Java_Object with record
      displayInfoSingleton : DisplayInfoSingleton_Access;
      lastWidth : Integer;
      lastHeight : Integer;
      lastHalfWidth : Integer;
      lastHalfHeight : Integer;
   end record;
   instance : GameTickDisplayInfoSingleton_Access;

   procedure Initialize (This : in out GameTickDisplayInfoSingleton'Class);
   function Create return GameTickDisplayInfoSingleton_Access;
   function getInstance return GameTickDisplayInfoSingleton_Access;
   procedure update (This : in out GameTickDisplayInfoSingleton);
   function getLastWidth (This : in out GameTickDisplayInfoSingleton) return Integer;
   function getLastHeight (This : in out GameTickDisplayInfoSingleton) return Integer;
   function getLastHalfWidth (This : in out GameTickDisplayInfoSingleton) return Integer;
   function getLastHalfHeight (This : in out GameTickDisplayInfoSingleton) return Integer;

end org.allbinary.graphics.displayable.GameTickDisplayInfoSingleton_Package;


