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
with org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package; use org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package;
with org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package; use org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package;
with org.allbinary.logic.system.os.GenericOperatingSystem_Package; use org.allbinary.logic.system.os.GenericOperatingSystem_Package;
with org.allbinary.logic.system.os.NoOperatingSystem_Package; use org.allbinary.logic.system.os.NoOperatingSystem_Package;
with org.allbinary.logic.system.os.OperatingSystems_Package; use org.allbinary.logic.system.os.OperatingSystems_Package;
with org.allbinary.logic.system.os.SystemProperties_Package; use org.allbinary.logic.system.os.SystemProperties_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.system.os.solaris.SolarisOS_Package; use org.allbinary.logic.system.os.solaris.SolarisOS_Package;

package org.allbinary.logic.system.os.solaris.SolarisOperatingSystemFactory_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package LogConfigTypeFactory_Package renames Standard.org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package;
   package LogConfigTypes_Package renames Standard.org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package;
   package GenericOperatingSystem_Package renames Standard.org.allbinary.logic.system.os.GenericOperatingSystem_Package;
   package NoOperatingSystem_Package renames Standard.org.allbinary.logic.system.os.NoOperatingSystem_Package;
   package OperatingSystems_Package renames Standard.org.allbinary.logic.system.os.OperatingSystems_Package;
   package SystemProperties_Package renames Standard.org.allbinary.logic.system.os.SystemProperties_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type SolarisOperatingSystemFactory is tagged;
   type SolarisOperatingSystemFactory_Access is access all SolarisOperatingSystemFactory'Class;
   type SolarisOperatingSystemFactory_Access_Array is array (Natural range <>) of SolarisOperatingSystemFactory_Access;
   type SolarisOperatingSystemFactory_Access_Array_Access is access all SolarisOperatingSystemFactory_Access_Array;

   type SolarisOperatingSystemFactory is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   instance : SolarisOperatingSystemFactory_Access;

   procedure Initialize (This : in out SolarisOperatingSystemFactory'Class);
   function Create return SolarisOperatingSystemFactory_Access;
   function getInstance return SolarisOperatingSystemFactory_Access;
   function getOperatingSystemInstance (This : in out SolarisOperatingSystemFactory) return GenericOperatingSystem_Access;

end org.allbinary.logic.system.os.solaris.SolarisOperatingSystemFactory_Package;


