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
with org.allbinary.logic.communication.log.Log_Package; use org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFactory_Package; use org.allbinary.logic.communication.log.LogFactory_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package; use org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package;
with org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package; use org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.system.os.linux.LinuxOperatingSystemFactory_Package; use org.allbinary.logic.system.os.linux.LinuxOperatingSystemFactory_Package;
with org.allbinary.logic.system.os.solaris.SolarisOperatingSystemFactory_Package; use org.allbinary.logic.system.os.solaris.SolarisOperatingSystemFactory_Package;
with org.allbinary.logic.system.os.windows.WindowsOperatingSystemFactory_Package; use org.allbinary.logic.system.os.windows.WindowsOperatingSystemFactory_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.system.os.NoOperatingSystem_Package; use org.allbinary.logic.system.os.NoOperatingSystem_Package;
with org.allbinary.logic.system.os.GenericOperatingSystem_Package; use org.allbinary.logic.system.os.GenericOperatingSystem_Package;
with org.allbinary.logic.system.os.OperatingSystems_Package; use org.allbinary.logic.system.os.OperatingSystems_Package;
with org.allbinary.logic.system.os.SystemProperties_Package; use org.allbinary.logic.system.os.SystemProperties_Package;

package org.allbinary.logic.system.os.OperatingSystemFactory_Package is

   package Log_Package renames Standard.org.allbinary.logic.communication.log.Log_Package;
   package LogFactory_Package renames Standard.org.allbinary.logic.communication.log.LogFactory_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package LogConfigTypeFactory_Package renames Standard.org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package;
   package LogConfigTypes_Package renames Standard.org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package LinuxOperatingSystemFactory_Package renames Standard.org.allbinary.logic.system.os.linux.LinuxOperatingSystemFactory_Package;
   package SolarisOperatingSystemFactory_Package renames Standard.org.allbinary.logic.system.os.solaris.SolarisOperatingSystemFactory_Package;
   package WindowsOperatingSystemFactory_Package renames Standard.org.allbinary.logic.system.os.windows.WindowsOperatingSystemFactory_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type OperatingSystemFactory is tagged;
   type OperatingSystemFactory_Access is access all OperatingSystemFactory'Class;
   type OperatingSystemFactory_Access_Array is array (Natural range <>) of OperatingSystemFactory_Access;
   type OperatingSystemFactory_Access_Array_Access is access all OperatingSystemFactory_Access_Array;

   type OperatingSystemFactory is new Java_Object with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      genericOperatingSystem : GenericOperatingSystem_Access;
      hasDetected : Boolean;
   end record;
   instance : OperatingSystemFactory_Access;

   procedure Initialize (This : in out OperatingSystemFactory'Class);
   function Create return OperatingSystemFactory_Access;
   function getInstance return OperatingSystemFactory_Access;
   function getOperatingSystemInstance (This : in out OperatingSystemFactory) return GenericOperatingSystem_Access;

end org.allbinary.logic.system.os.OperatingSystemFactory_Package;


