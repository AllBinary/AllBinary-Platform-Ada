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
with org.allbinary.android.input.motion.api1.GameInputMotionEventProcessorAPI1_Package; use org.allbinary.android.input.motion.api1.GameInputMotionEventProcessorAPI1_Package;
with org.allbinary.android.input.motion.api5.GameInputMotionEventProcessorAPI5_Package; use org.allbinary.android.input.motion.api5.GameInputMotionEventProcessorAPI5_Package;

package org.allbinary.android.input.motion.GameInputMotionEventProcessorFactory_Package is

   package AndroidInfoFactory_Package renames org.allbinary.android.AndroidInfoFactory_Package;
   package GameInputMotionEventProcessorAPI1_Package renames org.allbinary.android.input.motion.api1.GameInputMotionEventProcessorAPI1_Package;
   package GameInputMotionEventProcessorAPI5_Package renames org.allbinary.android.input.motion.api5.GameInputMotionEventProcessorAPI5_Package;

   type GameInputMotionEventProcessorFactory is tagged;
   type GameInputMotionEventProcessorFactory_Access is access all GameInputMotionEventProcessorFactory'Class;
   type GameInputMotionEventProcessorFactory_Access_Array is array (Natural range <>) of GameInputMotionEventProcessorFactory_Access;
   type GameInputMotionEventProcessorFactory_Access_Array_Access is access all GameInputMotionEventProcessorFactory_Access_Array;

   type GameInputMotionEventProcessorFactory is new Java_Object with null record;

   procedure Initialize (This : in out GameInputMotionEventProcessorFactory'Class);
   function Create return GameInputMotionEventProcessorFactory_Access;
   function getInstance return BaseGameInputMotionEventProcessor_Access;
   procedure getInstance;

end org.allbinary.android.input.motion.GameInputMotionEventProcessorFactory_Package;


