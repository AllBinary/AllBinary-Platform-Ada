--
-- AllBinary Open License Version 1
-- Copyright (c) 2009 AllBinary
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

package org.allbinary.android.input.motion.GameInputMotionInfo_Package is


   type GameInputMotionInfo is tagged;
   type GameInputMotionInfo_Access is access all GameInputMotionInfo'Class;
   type GameInputMotionInfo_Access_Array is array (Natural range <>) of GameInputMotionInfo_Access;
   type GameInputMotionInfo_Access_Array_Access is access all GameInputMotionInfo_Access_Array;

   type GameInputMotionInfo is new Java_Object with record
      MAX_API : Integer;
      MAX_POINTERS : Integer;
   end record;

   procedure Initialize (This : in out GameInputMotionInfo'Class; maxApi : Integer; maxPointers : Integer);
   function Create (maxApi : Integer; maxPointers : Integer) return GameInputMotionInfo_Access;

end org.allbinary.android.input.motion.GameInputMotionInfo_Package;


