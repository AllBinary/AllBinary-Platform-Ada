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
with org.allbinary.logic.system.os.GenericOperatingSystem_Package; use org.allbinary.logic.system.os.GenericOperatingSystem_Package;

package org.allbinary.logic.system.os.NoOperatingSystem_Package is


   type NoOperatingSystem is tagged;
   type NoOperatingSystem_Access is access all NoOperatingSystem'Class;
   type NoOperatingSystem_Access_Array is array (Natural range <>) of NoOperatingSystem_Access;
   type NoOperatingSystem_Access_Array_Access is access all NoOperatingSystem_Access_Array;
   type NoOperatingSystem_Access_Array_Access_Array is array (Natural range <>) of NoOperatingSystem_Access_Array_Access;
   type NoOperatingSystem_Access_Array_Access_Array_Access is access all NoOperatingSystem_Access_Array_Access_Array;

   type NoOperatingSystem is new GenericOperatingSystem with null record;
   NO_OPERATING_SYSTEM : GenericOperatingSystem_Access;

   procedure Initialize (This : in out NoOperatingSystem'Class);
   function Create return NoOperatingSystem_Access;

end org.allbinary.logic.system.os.NoOperatingSystem_Package;


