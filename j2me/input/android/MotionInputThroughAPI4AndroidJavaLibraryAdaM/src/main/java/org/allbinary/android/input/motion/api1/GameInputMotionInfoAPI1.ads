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

package org.allbinary.android.input.motion.api1.GameInputMotionInfoAPI1_Package is

   package GameInputMotionInfo_Package renames Standard.org.allbinary.android.input.motion.GameInputMotionInfo_Package;

   type GameInputMotionInfoAPI1 is tagged;
   type GameInputMotionInfoAPI1_Access is access all GameInputMotionInfoAPI1'Class;
   type GameInputMotionInfoAPI1_Access_Array is array (Natural range <>) of GameInputMotionInfoAPI1_Access;
   type GameInputMotionInfoAPI1_Access_Array_Access is access all GameInputMotionInfoAPI1_Access_Array;

   type GameInputMotionInfoAPI1 is new GameInputMotionInfo with null record;
   instance : GameInputMotionInfoAPI1_Access;

   procedure Initialize (This : in out GameInputMotionInfoAPI1'Class);
   function Create return GameInputMotionInfoAPI1_Access;
   function getInstance return GameInputMotionInfoAPI1_Access;

end org.allbinary.android.input.motion.api1.GameInputMotionInfoAPI1_Package;


