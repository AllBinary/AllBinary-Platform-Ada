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
with org.allbinary.input.motion.gesture.configuration.MotionGestureConfiguration_Package; use org.allbinary.input.motion.gesture.configuration.MotionGestureConfiguration_Package;
with org.allbinary.input.motion.gesture.configuration.MotionGestureConfigurationFactory_Package; use org.allbinary.input.motion.gesture.configuration.MotionGestureConfigurationFactory_Package;

package org.allbinary.input.motion.gesture.observer.MotionGestureReceiveInterfaceFactory_Package is

   package MotionGestureConfiguration_Package renames org.allbinary.input.motion.gesture.configuration.MotionGestureConfiguration_Package;
   package MotionGestureConfigurationFactory_Package renames org.allbinary.input.motion.gesture.configuration.MotionGestureConfigurationFactory_Package;

   type MotionGestureReceiveInterfaceFactory is tagged;
   type MotionGestureReceiveInterfaceFactory_Access is access all MotionGestureReceiveInterfaceFactory'Class;
   type MotionGestureReceiveInterfaceFactory_Access_Array is array (Natural range <>) of MotionGestureReceiveInterfaceFactory_Access;
   type MotionGestureReceiveInterfaceFactory_Access_Array_Access is access all MotionGestureReceiveInterfaceFactory_Access_Array;

   type MotionGestureReceiveInterfaceFactory is new Java_Object with null record;

   procedure Initialize (This : in out MotionGestureReceiveInterfaceFactory'Class);
   function Create return MotionGestureReceiveInterfaceFactory_Access;
   function getInstance return CompleteMotionGestureListenerInterface_Access;
   procedure getInstance;

end org.allbinary.input.motion.gesture.observer.MotionGestureReceiveInterfaceFactory_Package;


