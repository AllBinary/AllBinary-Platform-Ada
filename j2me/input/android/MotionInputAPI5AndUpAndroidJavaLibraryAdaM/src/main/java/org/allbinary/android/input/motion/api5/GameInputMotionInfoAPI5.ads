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
with org.allbinary.android.input.motion.GameInputMotionInfo_Package; use org.allbinary.android.input.motion.GameInputMotionInfo_Package;

package org.allbinary.android.input.motion.api5.GameInputMotionInfoAPI5_Package is

   package GameInputMotionInfo_Package renames Standard.org.allbinary.android.input.motion.GameInputMotionInfo_Package;

   type GameInputMotionInfoAPI5 is tagged;
   type GameInputMotionInfoAPI5_Access is access all GameInputMotionInfoAPI5'Class;
   type GameInputMotionInfoAPI5_Access_Array is array (Natural range <>) of GameInputMotionInfoAPI5_Access;
   type GameInputMotionInfoAPI5_Access_Array_Access is access all GameInputMotionInfoAPI5_Access_Array;

   type GameInputMotionInfoAPI5 is new GameInputMotionInfo with null record;
   instance : GameInputMotionInfoAPI5_Access;

   procedure Initialize (This : in out GameInputMotionInfoAPI5'Class);
   function Create return GameInputMotionInfoAPI5_Access;
   function getInstance return GameInputMotionInfoAPI5_Access;
   procedure getInstance;

end org.allbinary.android.input.motion.api5.GameInputMotionInfoAPI5_Package;


