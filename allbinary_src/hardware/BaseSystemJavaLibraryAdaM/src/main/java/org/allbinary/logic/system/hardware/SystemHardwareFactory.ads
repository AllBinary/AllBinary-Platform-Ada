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

limited with org.allbinary.logic.system.hardware.SystemHardwareFactory_Package;
package org.allbinary.logic.system.hardware.SystemHardwareFactory_Package_References is
   type SystemHardwareFactory_Access is access all org.allbinary.logic.system.hardware.SystemHardwareFactory_Package.SystemHardwareFactory'Class;
   type SystemHardwareFactory_Access_Array is array (Natural range <>) of SystemHardwareFactory_Access;
   type SystemHardwareFactory_Access_Array_Access is access all SystemHardwareFactory_Access_Array;
   type SystemHardwareFactory_Access_Array_Access_Array is array (Natural range <>) of SystemHardwareFactory_Access_Array_Access;
   type SystemHardwareFactory_Access_Array_Access_Array_Access is access all SystemHardwareFactory_Access_Array_Access_Array;
end org.allbinary.logic.system.hardware.SystemHardwareFactory_Package_References;

with org.allbinary.logic.system.hardware.SystemHardwareFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.logic.system.os.GenericOperatingSystem_Package;
with org.allbinary.logic.system.os.GenericOperatingSystem_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
limited with org.allbinary.logic.system.hardware.HardwareInterface_Package;
with org.allbinary.logic.system.hardware.HardwareInterface_Package_References;

package org.allbinary.logic.system.hardware.SystemHardwareFactory_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package GenericOperatingSystem_Package renames Standard.org.allbinary.logic.system.os.GenericOperatingSystem_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
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
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
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


   subtype SystemHardwareFactory_Access is org.allbinary.logic.system.hardware.SystemHardwareFactory_Package_References.SystemHardwareFactory_Access;
   function "=" (Left, Right : SystemHardwareFactory_Access) return Boolean renames org.allbinary.logic.system.hardware.SystemHardwareFactory_Package_References."=";
   subtype SystemHardwareFactory_Access_Array is org.allbinary.logic.system.hardware.SystemHardwareFactory_Package_References.SystemHardwareFactory_Access_Array;
   function "=" (Left, Right : SystemHardwareFactory_Access_Array) return Boolean renames org.allbinary.logic.system.hardware.SystemHardwareFactory_Package_References."=";
   subtype SystemHardwareFactory_Access_Array_Access is org.allbinary.logic.system.hardware.SystemHardwareFactory_Package_References.SystemHardwareFactory_Access_Array_Access;
   function "=" (Left, Right : SystemHardwareFactory_Access_Array_Access) return Boolean renames org.allbinary.logic.system.hardware.SystemHardwareFactory_Package_References."=";
   subtype SystemHardwareFactory_Access_Array_Access_Array is org.allbinary.logic.system.hardware.SystemHardwareFactory_Package_References.SystemHardwareFactory_Access_Array_Access_Array;
   function "=" (Left, Right : SystemHardwareFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.hardware.SystemHardwareFactory_Package_References."=";
   subtype SystemHardwareFactory_Access_Array_Access_Array_Access is org.allbinary.logic.system.hardware.SystemHardwareFactory_Package_References.SystemHardwareFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SystemHardwareFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.hardware.SystemHardwareFactory_Package_References."=";

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


