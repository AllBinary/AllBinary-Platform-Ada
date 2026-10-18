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
with org.allbinary.android.input.motion.event.AnalogControllerConfigurationEvent_Package; use org.allbinary.android.input.motion.event.AnalogControllerConfigurationEvent_Package;

package org.allbinary.android.input.motion.AnalogControllerConfigurationFactory_Package is

   package AnalogControllerConfigurationEvent_Package renames Standard.org.allbinary.android.input.motion.event.AnalogControllerConfigurationEvent_Package;

   type AnalogControllerConfigurationFactory is tagged;
   type AnalogControllerConfigurationFactory_Access is access all AnalogControllerConfigurationFactory'Class;
   type AnalogControllerConfigurationFactory_Access_Array is array (Natural range <>) of AnalogControllerConfigurationFactory_Access;
   type AnalogControllerConfigurationFactory_Access_Array_Access is access all AnalogControllerConfigurationFactory_Access_Array;
   type AnalogControllerConfigurationFactory_Access_Array_Access_Array is array (Natural range <>) of AnalogControllerConfigurationFactory_Access_Array_Access;
   type AnalogControllerConfigurationFactory_Access_Array_Access_Array_Access is access all AnalogControllerConfigurationFactory_Access_Array_Access_Array;

   type AnalogControllerConfigurationFactory is new Java_Object with record
      SCALE_FACTOR : Integer;
      SCALE_VALUE : Integer;
      available : Boolean;
      analogControllerConfigurationEvent : AnalogControllerConfigurationEvent_Access;
   end record;
   instance : AnalogControllerConfigurationFactory_Access;

   procedure Initialize (This : in out AnalogControllerConfigurationFactory'Class);
   function Create return AnalogControllerConfigurationFactory_Access;
   function getInstance return AnalogControllerConfigurationFactory_Access;
   function isAvailable (This : in out AnalogControllerConfigurationFactory) return Boolean;
   procedure setAvailable (This : in out AnalogControllerConfigurationFactory; available : Boolean);

end org.allbinary.android.input.motion.AnalogControllerConfigurationFactory_Package;


