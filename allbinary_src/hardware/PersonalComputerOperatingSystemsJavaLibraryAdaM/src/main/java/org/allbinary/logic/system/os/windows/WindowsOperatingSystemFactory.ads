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

package org.allbinary.logic.system.os.windows.WindowsOperatingSystemFactory_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package GenericOperatingSystem_Package renames Standard.org.allbinary.logic.system.os.GenericOperatingSystem_Package;

   type WindowsOperatingSystemFactory is tagged;
   type WindowsOperatingSystemFactory_Access is access all WindowsOperatingSystemFactory'Class;
   type WindowsOperatingSystemFactory_Access_Array is array (Natural range <>) of WindowsOperatingSystemFactory_Access;
   type WindowsOperatingSystemFactory_Access_Array_Access is access all WindowsOperatingSystemFactory_Access_Array;
   type WindowsOperatingSystemFactory_Access_Array_Access_Array is array (Natural range <>) of WindowsOperatingSystemFactory_Access_Array_Access;
   type WindowsOperatingSystemFactory_Access_Array_Access_Array_Access is access all WindowsOperatingSystemFactory_Access_Array_Access_Array;

   type WindowsOperatingSystemFactory is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   instance : WindowsOperatingSystemFactory_Access;

   procedure Initialize (This : in out WindowsOperatingSystemFactory'Class);
   function Create return WindowsOperatingSystemFactory_Access;
   function getInstance return WindowsOperatingSystemFactory_Access;
   function getOperatingSystemInstance (This : in out WindowsOperatingSystemFactory) return GenericOperatingSystem_Access;

end org.allbinary.logic.system.os.windows.WindowsOperatingSystemFactory_Package;


