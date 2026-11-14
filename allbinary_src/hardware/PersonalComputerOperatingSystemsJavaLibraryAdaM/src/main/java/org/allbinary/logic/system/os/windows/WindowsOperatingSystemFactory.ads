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

with AllBinary_Java;
limited with org.allbinary.logic.system.os.windows.WindowsOperatingSystemFactory_Package;
package org.allbinary.logic.system.os.windows.WindowsOperatingSystemFactory_Package_References is
   type WindowsOperatingSystemFactory_Access is access all org.allbinary.logic.system.os.windows.WindowsOperatingSystemFactory_Package.WindowsOperatingSystemFactory'Class;
   type WindowsOperatingSystemFactory_Access_Array is array (Natural range <>) of WindowsOperatingSystemFactory_Access;
   type WindowsOperatingSystemFactory_Access_Array_Access is access all WindowsOperatingSystemFactory_Access_Array;
   type WindowsOperatingSystemFactory_Access_Array_Access_Array is array (Natural range <>) of WindowsOperatingSystemFactory_Access_Array_Access;
   type WindowsOperatingSystemFactory_Access_Array_Access_Array_Access is access all WindowsOperatingSystemFactory_Access_Array_Access_Array;
   type WindowsOperatingSystemFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : WindowsOperatingSystemFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : WindowsOperatingSystemFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new WindowsOperatingSystemFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_WindowsOperatingSystemFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return WindowsOperatingSystemFactory_Access_Array_Access is (if Value /= null and then Value.all in WindowsOperatingSystemFactory_Access_Array_Object'Class then WindowsOperatingSystemFactory_Access_Array_Object'Class (Value.all).Value else null);
   type WindowsOperatingSystemFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : WindowsOperatingSystemFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : WindowsOperatingSystemFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new WindowsOperatingSystemFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_WindowsOperatingSystemFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return WindowsOperatingSystemFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in WindowsOperatingSystemFactory_Access_Array_Access_Array_Object'Class then WindowsOperatingSystemFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.system.os.windows.WindowsOperatingSystemFactory_Package_References;

with org.allbinary.logic.system.os.windows.WindowsOperatingSystemFactory_Package_References;
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

package org.allbinary.logic.system.os.windows.WindowsOperatingSystemFactory_Package is

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
   end Reference_Types;
   use Reference_Types;


   subtype WindowsOperatingSystemFactory_Access is org.allbinary.logic.system.os.windows.WindowsOperatingSystemFactory_Package_References.WindowsOperatingSystemFactory_Access;
   function "=" (Left, Right : WindowsOperatingSystemFactory_Access) return Boolean renames org.allbinary.logic.system.os.windows.WindowsOperatingSystemFactory_Package_References."=";
   subtype WindowsOperatingSystemFactory_Access_Array is org.allbinary.logic.system.os.windows.WindowsOperatingSystemFactory_Package_References.WindowsOperatingSystemFactory_Access_Array;
   function "=" (Left, Right : WindowsOperatingSystemFactory_Access_Array) return Boolean renames org.allbinary.logic.system.os.windows.WindowsOperatingSystemFactory_Package_References."=";
   subtype WindowsOperatingSystemFactory_Access_Array_Access is org.allbinary.logic.system.os.windows.WindowsOperatingSystemFactory_Package_References.WindowsOperatingSystemFactory_Access_Array_Access;
   function "=" (Left, Right : WindowsOperatingSystemFactory_Access_Array_Access) return Boolean renames org.allbinary.logic.system.os.windows.WindowsOperatingSystemFactory_Package_References."=";
   function Java_Box (Value : WindowsOperatingSystemFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.system.os.windows.WindowsOperatingSystemFactory_Package_References.Java_Box;
   function Java_Unbox_WindowsOperatingSystemFactory_Access_Array (Value : access Java_Object'Class) return WindowsOperatingSystemFactory_Access_Array_Access renames org.allbinary.logic.system.os.windows.WindowsOperatingSystemFactory_Package_References.Java_Unbox_WindowsOperatingSystemFactory_Access_Array;
   subtype WindowsOperatingSystemFactory_Access_Array_Access_Array is org.allbinary.logic.system.os.windows.WindowsOperatingSystemFactory_Package_References.WindowsOperatingSystemFactory_Access_Array_Access_Array;
   function "=" (Left, Right : WindowsOperatingSystemFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.os.windows.WindowsOperatingSystemFactory_Package_References."=";
   subtype WindowsOperatingSystemFactory_Access_Array_Access_Array_Access is org.allbinary.logic.system.os.windows.WindowsOperatingSystemFactory_Package_References.WindowsOperatingSystemFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : WindowsOperatingSystemFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.os.windows.WindowsOperatingSystemFactory_Package_References."=";
   function Java_Box (Value : WindowsOperatingSystemFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.system.os.windows.WindowsOperatingSystemFactory_Package_References.Java_Box;
   function Java_Unbox_WindowsOperatingSystemFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return WindowsOperatingSystemFactory_Access_Array_Access_Array_Access renames org.allbinary.logic.system.os.windows.WindowsOperatingSystemFactory_Package_References.Java_Unbox_WindowsOperatingSystemFactory_Access_Array_Access_Array;

   type WindowsOperatingSystemFactory is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   instance : WindowsOperatingSystemFactory_Access;

   procedure Initialize (This : in out WindowsOperatingSystemFactory'Class);
   function Create return WindowsOperatingSystemFactory_Access;
   function getInstance return WindowsOperatingSystemFactory_Access;
   function getOperatingSystemInstance (This : in out WindowsOperatingSystemFactory) return GenericOperatingSystem_Access;

end org.allbinary.logic.system.os.windows.WindowsOperatingSystemFactory_Package;


