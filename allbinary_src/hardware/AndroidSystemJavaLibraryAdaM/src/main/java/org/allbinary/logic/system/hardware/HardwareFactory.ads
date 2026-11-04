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

limited with org.allbinary.logic.system.hardware.HardwareFactory_Package;
package org.allbinary.logic.system.hardware.HardwareFactory_Package_References is
   type HardwareFactory_Access is access all org.allbinary.logic.system.hardware.HardwareFactory_Package.HardwareFactory'Class;
   type HardwareFactory_Access_Array is array (Natural range <>) of HardwareFactory_Access;
   type HardwareFactory_Access_Array_Access is access all HardwareFactory_Access_Array;
   type HardwareFactory_Access_Array_Access_Array is array (Natural range <>) of HardwareFactory_Access_Array_Access;
   type HardwareFactory_Access_Array_Access_Array_Access is access all HardwareFactory_Access_Array_Access_Array;
end org.allbinary.logic.system.hardware.HardwareFactory_Package_References;

with org.allbinary.logic.system.hardware.HardwareFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with org.allbinary.TsUtil_Package; use org.allbinary.TsUtil_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.logic.system.os.GenericOperatingSystem_Package;
with org.allbinary.logic.system.os.GenericOperatingSystem_Package_References;
limited with org.allbinary.logic.system.hardware.HardwareInterface_Package;
with org.allbinary.logic.system.hardware.HardwareInterface_Package_References;

package org.allbinary.logic.system.hardware.HardwareFactory_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package GenericOperatingSystem_Package renames Standard.org.allbinary.logic.system.os.GenericOperatingSystem_Package;
   package Reference_Types is
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype GenericOperatingSystem_Access is org.allbinary.logic.system.os.GenericOperatingSystem_Package_References.GenericOperatingSystem_Access;
   use type GenericOperatingSystem_Access;
   subtype GenericOperatingSystem_Access_Array is org.allbinary.logic.system.os.GenericOperatingSystem_Package_References.GenericOperatingSystem_Access_Array;
   use type GenericOperatingSystem_Access_Array;
   subtype GenericOperatingSystem_Access_Array_Access is org.allbinary.logic.system.os.GenericOperatingSystem_Package_References.GenericOperatingSystem_Access_Array_Access;
   use type GenericOperatingSystem_Access_Array_Access;
   subtype GenericOperatingSystem_Access_Array_Access_Array is org.allbinary.logic.system.os.GenericOperatingSystem_Package_References.GenericOperatingSystem_Access_Array_Access_Array;
   use type GenericOperatingSystem_Access_Array_Access_Array;
   subtype GenericOperatingSystem_Access_Array_Access_Array_Access is org.allbinary.logic.system.os.GenericOperatingSystem_Package_References.GenericOperatingSystem_Access_Array_Access_Array_Access;
   use type GenericOperatingSystem_Access_Array_Access_Array_Access;
   subtype HardwareInterface_Access is org.allbinary.logic.system.hardware.HardwareInterface_Package_References.HardwareInterface_Access;
   use type HardwareInterface_Access;
   subtype HardwareInterface_Access_Array is org.allbinary.logic.system.hardware.HardwareInterface_Package_References.HardwareInterface_Access_Array;
   use type HardwareInterface_Access_Array;
   subtype HardwareInterface_Access_Array_Access is org.allbinary.logic.system.hardware.HardwareInterface_Package_References.HardwareInterface_Access_Array_Access;
   use type HardwareInterface_Access_Array_Access;
   subtype HardwareInterface_Access_Array_Access_Array is org.allbinary.logic.system.hardware.HardwareInterface_Package_References.HardwareInterface_Access_Array_Access_Array;
   use type HardwareInterface_Access_Array_Access_Array;
   subtype HardwareInterface_Access_Array_Access_Array_Access is org.allbinary.logic.system.hardware.HardwareInterface_Package_References.HardwareInterface_Access_Array_Access_Array_Access;
   use type HardwareInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype HardwareFactory_Access is org.allbinary.logic.system.hardware.HardwareFactory_Package_References.HardwareFactory_Access;
   function "=" (Left, Right : HardwareFactory_Access) return Boolean renames org.allbinary.logic.system.hardware.HardwareFactory_Package_References."=";
   subtype HardwareFactory_Access_Array is org.allbinary.logic.system.hardware.HardwareFactory_Package_References.HardwareFactory_Access_Array;
   function "=" (Left, Right : HardwareFactory_Access_Array) return Boolean renames org.allbinary.logic.system.hardware.HardwareFactory_Package_References."=";
   subtype HardwareFactory_Access_Array_Access is org.allbinary.logic.system.hardware.HardwareFactory_Package_References.HardwareFactory_Access_Array_Access;
   function "=" (Left, Right : HardwareFactory_Access_Array_Access) return Boolean renames org.allbinary.logic.system.hardware.HardwareFactory_Package_References."=";
   subtype HardwareFactory_Access_Array_Access_Array is org.allbinary.logic.system.hardware.HardwareFactory_Package_References.HardwareFactory_Access_Array_Access_Array;
   function "=" (Left, Right : HardwareFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.hardware.HardwareFactory_Package_References."=";
   subtype HardwareFactory_Access_Array_Access_Array_Access is org.allbinary.logic.system.hardware.HardwareFactory_Package_References.HardwareFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HardwareFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.hardware.HardwareFactory_Package_References."=";

   type HardwareFactory is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   instance : HardwareFactory_Access;

   procedure Initialize (This : in out HardwareFactory'Class);
   function Create return HardwareFactory_Access;
   function getInstance return HardwareFactory_Access;
   function getInstance (This : in out HardwareFactory; os_Param : access GenericOperatingSystem_Package.GenericOperatingSystem'Class) return HardwareInterface_Access;
   procedure getInstance (This : in out HardwareFactory; os_Param : access GenericOperatingSystem_Package.GenericOperatingSystem'Class);

end org.allbinary.logic.system.hardware.HardwareFactory_Package;


