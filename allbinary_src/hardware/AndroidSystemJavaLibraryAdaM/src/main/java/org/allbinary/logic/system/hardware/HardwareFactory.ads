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
with org.allbinary.TsUtil_Package; use org.allbinary.TsUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.system.hardware.android.AndroidHardware_Package; use org.allbinary.logic.system.hardware.android.AndroidHardware_Package;
with org.allbinary.logic.system.os.GenericOperatingSystem_Package; use org.allbinary.logic.system.os.GenericOperatingSystem_Package;
with org.allbinary.logic.system.os.OperatingSystems_Package; use org.allbinary.logic.system.os.OperatingSystems_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package org.allbinary.logic.system.hardware.HardwareFactory_Package is

   package TsUtil_Package renames org.allbinary.TsUtil_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package AndroidHardware_Package renames org.allbinary.logic.system.hardware.android.AndroidHardware_Package;
   package GenericOperatingSystem_Package renames org.allbinary.logic.system.os.GenericOperatingSystem_Package;
   package OperatingSystems_Package renames org.allbinary.logic.system.os.OperatingSystems_Package;
   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;

   type HardwareFactory is tagged;
   type HardwareFactory_Access is access all HardwareFactory'Class;
   type HardwareFactory_Access_Array is array (Natural range <>) of HardwareFactory_Access;
   type HardwareFactory_Access_Array_Access is access all HardwareFactory_Access_Array;

   type HardwareFactory is new Java_Object with record
      logUtil : LogUtil_Access;
      tsUtil : TsUtil_Access;
   end record;
   instance : HardwareFactory_Access;

   procedure Initialize (This : in out HardwareFactory'Class);
   function Create return HardwareFactory_Access;
   function getInstance return HardwareFactory_Access;
   procedure getInstance;
   function getInstance (This : in out HardwareFactory; os : GenericOperatingSystem_Access) return HardwareInterface_Access;
   procedure getInstance (This : in out HardwareFactory; os : GenericOperatingSystem_Access);

end org.allbinary.logic.system.hardware.HardwareFactory_Package;


