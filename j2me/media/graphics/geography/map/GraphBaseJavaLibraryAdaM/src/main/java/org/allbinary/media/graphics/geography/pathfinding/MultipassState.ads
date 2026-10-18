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

package org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package is


   type MultipassState is tagged;
   type MultipassState_Access is access all MultipassState'Class;
   type MultipassState_Access_Array is array (Natural range <>) of MultipassState_Access;
   type MultipassState_Access_Array_Access is access all MultipassState_Access_Array;
   type MultipassState_Access_Array_Access_Array is array (Natural range <>) of MultipassState_Access_Array_Access;
   type MultipassState_Access_Array_Access_Array_Access is access all MultipassState_Access_Array_Access_Array;

   type MultipassState is new Java_Object with record
      step : Integer;
      iteration : Integer;
      iteration2 : Integer;
   end record;

   procedure Initialize (This : in out MultipassState'Class);
   function Create return MultipassState_Access;

end org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package;


