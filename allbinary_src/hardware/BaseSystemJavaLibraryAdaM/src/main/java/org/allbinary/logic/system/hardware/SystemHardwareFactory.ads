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
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.system.os.GenericOperatingSystem_Package; use org.allbinary.logic.system.os.GenericOperatingSystem_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.system.hardware.NoHardware_Package; use org.allbinary.logic.system.hardware.NoHardware_Package;
with org.allbinary.logic.system.hardware.HardwareInterface_Package; use org.allbinary.logic.system.hardware.HardwareInterface_Package;
with org.allbinary.logic.system.hardware.HardwareFactory_Package; use org.allbinary.logic.system.hardware.HardwareFactory_Package;

package org.allbinary.logic.system.hardware.SystemHardwareFactory_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package GenericOperatingSystem_Package renames Standard.org.allbinary.logic.system.os.GenericOperatingSystem_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type SystemHardwareFactory is tagged;
   type SystemHardwareFactory_Access is access all SystemHardwareFactory'Class;
   type SystemHardwareFactory_Access_Array is array (Natural range <>) of SystemHardwareFactory_Access;
   type SystemHardwareFactory_Access_Array_Access is access all SystemHardwareFactory_Access_Array;

   type SystemHardwareFactory is new Java_Object with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      hardwareInterface : HardwareInterface_Access;
   end record;
   instance : SystemHardwareFactory_Access;

   procedure Initialize (This : in out SystemHardwareFactory'Class);
   function Create return SystemHardwareFactory_Access;
   function getInstance return SystemHardwareFactory_Access;
   function getInstance (This : in out SystemHardwareFactory; operatingSystemInterface_Param : access GenericOperatingSystem_Package.GenericOperatingSystem'Class) return HardwareInterface_Access;
   procedure getInstance (This : in out SystemHardwareFactory; operatingSystemInterface_Param : access GenericOperatingSystem_Package.GenericOperatingSystem'Class);
   function static_toString return Unbounded_String;

end org.allbinary.logic.system.hardware.SystemHardwareFactory_Package;


