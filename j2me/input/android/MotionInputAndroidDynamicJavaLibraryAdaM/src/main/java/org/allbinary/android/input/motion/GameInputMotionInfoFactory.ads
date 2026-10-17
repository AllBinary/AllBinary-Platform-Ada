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
with org.allbinary.android.AndroidInfoFactory_Package; use org.allbinary.android.AndroidInfoFactory_Package;
with org.allbinary.android.input.motion.api1.GameInputMotionInfoAPI1_Package; use org.allbinary.android.input.motion.api1.GameInputMotionInfoAPI1_Package;
with org.allbinary.android.input.motion.api5.GameInputMotionInfoAPI5_Package; use org.allbinary.android.input.motion.api5.GameInputMotionInfoAPI5_Package;

package org.allbinary.android.input.motion.GameInputMotionInfoFactory_Package is

   package AndroidInfoFactory_Package renames org.allbinary.android.AndroidInfoFactory_Package;
   package GameInputMotionInfoAPI1_Package renames org.allbinary.android.input.motion.api1.GameInputMotionInfoAPI1_Package;
   package GameInputMotionInfoAPI5_Package renames org.allbinary.android.input.motion.api5.GameInputMotionInfoAPI5_Package;

   type GameInputMotionInfoFactory is tagged;
   type GameInputMotionInfoFactory_Access is access all GameInputMotionInfoFactory'Class;
   type GameInputMotionInfoFactory_Access_Array is array (Natural range <>) of GameInputMotionInfoFactory_Access;
   type GameInputMotionInfoFactory_Access_Array_Access is access all GameInputMotionInfoFactory_Access_Array;

   type GameInputMotionInfoFactory is new Java_Object with null record;

   procedure Initialize (This : in out GameInputMotionInfoFactory'Class);
   function Create return GameInputMotionInfoFactory_Access;
   function getInstance return GameInputMotionInfo_Access;
   procedure getInstance;

end org.allbinary.android.input.motion.GameInputMotionInfoFactory_Package;


