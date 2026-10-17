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
with org.allbinary.time.TimeDelayHelper_Package; use org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.game.IntermissionEnableListenerInterface_Package; use org.allbinary.game.IntermissionEnableListenerInterface_Package;

package org.allbinary.game.IntermissionInterface_Package is

   package TimeDelayHelper_Package renames Standard.org.allbinary.time.TimeDelayHelper_Package;

   type IntermissionInterface is interface;
   type IntermissionInterface_Access is access all IntermissionInterface'Class;
   type IntermissionInterface_Access_Array is array (Natural range <>) of IntermissionInterface_Access;
   type IntermissionInterface_Access_Array_Access is access all IntermissionInterface_Access_Array;
   function getTimeDelayHelper (This : in out IntermissionInterface) return TimeDelayHelper_Access is abstract;
   function isEnabled (This : in out IntermissionInterface) return Boolean is abstract;
   procedure setEnabled (This : in out IntermissionInterface; value : Boolean) is abstract;
   procedure setListener (This : in out IntermissionInterface; enableListener_Param : access IntermissionEnableListenerInterface'Class) is abstract;

end org.allbinary.game.IntermissionInterface_Package;


