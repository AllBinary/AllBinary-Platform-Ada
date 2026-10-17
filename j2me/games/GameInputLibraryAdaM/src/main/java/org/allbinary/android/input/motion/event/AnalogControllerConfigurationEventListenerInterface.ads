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
with org.allbinary.logic.util.event.EventListenerInterface_Package; use org.allbinary.logic.util.event.EventListenerInterface_Package;

package org.allbinary.android.input.motion.event.AnalogControllerConfigurationEventListenerInterface_Package is

   package EventListenerInterface_Package renames Standard.org.allbinary.logic.util.event.EventListenerInterface_Package;

   type AnalogControllerConfigurationEventListenerInterface is interface and EventListenerInterface;
   type AnalogControllerConfigurationEventListenerInterface_Access is access all AnalogControllerConfigurationEventListenerInterface'Class;
   type AnalogControllerConfigurationEventListenerInterface_Access_Array is array (Natural range <>) of AnalogControllerConfigurationEventListenerInterface_Access;
   type AnalogControllerConfigurationEventListenerInterface_Access_Array_Access is access all AnalogControllerConfigurationEventListenerInterface_Access_Array;
   procedure onAnalogControllerConfigurationEvent (This : in out AnalogControllerConfigurationEventListenerInterface; analogControllerConfigurationEvent : AnalogControllerConfigurationEvent_Access) is abstract;

end org.allbinary.android.input.motion.event.AnalogControllerConfigurationEventListenerInterface_Package;


