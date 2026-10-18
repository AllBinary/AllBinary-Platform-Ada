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
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.system.os.GenericOperatingSystem_Package; use org.allbinary.logic.system.os.GenericOperatingSystem_Package;

package org.allbinary.logic.system.os.linux.LinuxOperatingSystemFactory_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package GenericOperatingSystem_Package renames Standard.org.allbinary.logic.system.os.GenericOperatingSystem_Package;

   type LinuxOperatingSystemFactory is tagged;
   type LinuxOperatingSystemFactory_Access is access all LinuxOperatingSystemFactory'Class;
   type LinuxOperatingSystemFactory_Access_Array is array (Natural range <>) of LinuxOperatingSystemFactory_Access;
   type LinuxOperatingSystemFactory_Access_Array_Access is access all LinuxOperatingSystemFactory_Access_Array;
   type LinuxOperatingSystemFactory_Access_Array_Access_Array is array (Natural range <>) of LinuxOperatingSystemFactory_Access_Array_Access;
   type LinuxOperatingSystemFactory_Access_Array_Access_Array_Access is access all LinuxOperatingSystemFactory_Access_Array_Access_Array;

   type LinuxOperatingSystemFactory is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   instance : LinuxOperatingSystemFactory_Access;

   procedure Initialize (This : in out LinuxOperatingSystemFactory'Class);
   function Create return LinuxOperatingSystemFactory_Access;
   function getInstance return LinuxOperatingSystemFactory_Access;
   function getOperatingSystemInstance (This : in out LinuxOperatingSystemFactory) return GenericOperatingSystem_Access;

end org.allbinary.logic.system.os.linux.LinuxOperatingSystemFactory_Package;


