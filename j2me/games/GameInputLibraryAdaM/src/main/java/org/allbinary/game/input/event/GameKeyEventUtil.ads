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
with org.allbinary.game.input.event.GameKeyEvent_Package; use org.allbinary.game.input.event.GameKeyEvent_Package;

package org.allbinary.game.input.event.GameKeyEventUtil_Package is


   type GameKeyEventUtil is tagged;
   type GameKeyEventUtil_Access is access all GameKeyEventUtil'Class;
   type GameKeyEventUtil_Access_Array is array (Natural range <>) of GameKeyEventUtil_Access;
   type GameKeyEventUtil_Access_Array_Access is access all GameKeyEventUtil_Access_Array;

   type GameKeyEventUtil is new Java_Object with null record;

   procedure Initialize (This : in out GameKeyEventUtil'Class);
   function Create return GameKeyEventUtil_Access;
   function getKey (anyType : Java_Object_Access) return Integer;
   procedure getKey (anyType : Java_Object_Access);

end org.allbinary.game.input.event.GameKeyEventUtil_Package;


