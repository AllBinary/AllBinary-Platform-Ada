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
with org.allbinary.game.displayable.canvas.GameRunnable_Package; use org.allbinary.game.displayable.canvas.GameRunnable_Package;

package org.allbinary.game.displayable.canvas.NullWaitGameRunnable_Package is


   type NullWaitGameRunnable is tagged;
   type NullWaitGameRunnable_Access is access all NullWaitGameRunnable'Class;
   type NullWaitGameRunnable_Access_Array is array (Natural range <>) of NullWaitGameRunnable_Access;
   type NullWaitGameRunnable_Access_Array_Access is access all NullWaitGameRunnable_Access_Array;

   type NullWaitGameRunnable is new GameRunnable with null record;
   instance : GameRunnable_Access;

   procedure Initialize (This : in out NullWaitGameRunnable'Class);
   function Create return NullWaitGameRunnable_Access;
   function getInstance return GameRunnable_Access;

end org.allbinary.game.displayable.canvas.NullWaitGameRunnable_Package;


