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

package org.allbinary.input.motion.gesture.configuration.MotionGestureConfigurationFactory_Package is


   type MotionGestureConfigurationFactory is tagged;
   type MotionGestureConfigurationFactory_Access is access all MotionGestureConfigurationFactory'Class;
   type MotionGestureConfigurationFactory_Access_Array is array (Natural range <>) of MotionGestureConfigurationFactory_Access;
   type MotionGestureConfigurationFactory_Access_Array_Access is access all MotionGestureConfigurationFactory_Access_Array;

   type MotionGestureConfigurationFactory is new Java_Object with null record;
   config : MotionGestureConfiguration_Access;

   procedure Initialize (This : in out MotionGestureConfigurationFactory'Class);
   function Create return MotionGestureConfigurationFactory_Access;
   function getInstance return MotionGestureConfiguration_Access;
   procedure getInstance;

end org.allbinary.input.motion.gesture.configuration.MotionGestureConfigurationFactory_Package;


