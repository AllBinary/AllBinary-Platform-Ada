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

limited with org.allbinary.logic.system.os.OperatingSystemFactory_Package;
package org.allbinary.logic.system.os.OperatingSystemFactory_Package_References is
   type OperatingSystemFactory_Access is access all org.allbinary.logic.system.os.OperatingSystemFactory_Package.OperatingSystemFactory'Class;
   type OperatingSystemFactory_Access_Array is array (Natural range <>) of OperatingSystemFactory_Access;
   type OperatingSystemFactory_Access_Array_Access is access all OperatingSystemFactory_Access_Array;
   type OperatingSystemFactory_Access_Array_Access_Array is array (Natural range <>) of OperatingSystemFactory_Access_Array_Access;
   type OperatingSystemFactory_Access_Array_Access_Array_Access is access all OperatingSystemFactory_Access_Array_Access_Array;
end org.allbinary.logic.system.os.OperatingSystemFactory_Package_References;

with org.allbinary.logic.system.os.OperatingSystemFactory_Package_References;
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

package org.allbinary.logic.system.os.OperatingSystemFactory_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
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
   end Reference_Types;
   use Reference_Types;


   subtype OperatingSystemFactory_Access is org.allbinary.logic.system.os.OperatingSystemFactory_Package_References.OperatingSystemFactory_Access;
   function "=" (Left, Right : OperatingSystemFactory_Access) return Boolean renames org.allbinary.logic.system.os.OperatingSystemFactory_Package_References."=";
   subtype OperatingSystemFactory_Access_Array is org.allbinary.logic.system.os.OperatingSystemFactory_Package_References.OperatingSystemFactory_Access_Array;
   function "=" (Left, Right : OperatingSystemFactory_Access_Array) return Boolean renames org.allbinary.logic.system.os.OperatingSystemFactory_Package_References."=";
   subtype OperatingSystemFactory_Access_Array_Access is org.allbinary.logic.system.os.OperatingSystemFactory_Package_References.OperatingSystemFactory_Access_Array_Access;
   function "=" (Left, Right : OperatingSystemFactory_Access_Array_Access) return Boolean renames org.allbinary.logic.system.os.OperatingSystemFactory_Package_References."=";
   subtype OperatingSystemFactory_Access_Array_Access_Array is org.allbinary.logic.system.os.OperatingSystemFactory_Package_References.OperatingSystemFactory_Access_Array_Access_Array;
   function "=" (Left, Right : OperatingSystemFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.os.OperatingSystemFactory_Package_References."=";
   subtype OperatingSystemFactory_Access_Array_Access_Array_Access is org.allbinary.logic.system.os.OperatingSystemFactory_Package_References.OperatingSystemFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OperatingSystemFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.os.OperatingSystemFactory_Package_References."=";

   type OperatingSystemFactory is new Java_Object with record
      logUtil : LogUtil_Access;
      genericOperatingSystem : GenericOperatingSystem_Access;
      hasDetected : Boolean;
   end record;
   instance : OperatingSystemFactory_Access;

   procedure Initialize (This : in out OperatingSystemFactory'Class);
   function Create return OperatingSystemFactory_Access;
   function getInstance return OperatingSystemFactory_Access;
   function getOperatingSystemInstance (This : in out OperatingSystemFactory) return GenericOperatingSystem_Access;

end org.allbinary.logic.system.os.OperatingSystemFactory_Package;


