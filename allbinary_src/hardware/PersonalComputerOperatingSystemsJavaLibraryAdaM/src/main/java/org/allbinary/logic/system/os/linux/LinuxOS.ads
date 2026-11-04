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

limited with org.allbinary.logic.system.os.linux.LinuxOS_Package;
package org.allbinary.logic.system.os.linux.LinuxOS_Package_References is
   type LinuxOS_Access is access all org.allbinary.logic.system.os.linux.LinuxOS_Package.LinuxOS'Class;
   type LinuxOS_Access_Array is array (Natural range <>) of LinuxOS_Access;
   type LinuxOS_Access_Array_Access is access all LinuxOS_Access_Array;
   type LinuxOS_Access_Array_Access_Array is array (Natural range <>) of LinuxOS_Access_Array_Access;
   type LinuxOS_Access_Array_Access_Array_Access is access all LinuxOS_Access_Array_Access_Array;
end org.allbinary.logic.system.os.linux.LinuxOS_Package_References;

with org.allbinary.logic.system.os.linux.LinuxOS_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.system.os.GenericOperatingSystem_Package; use org.allbinary.logic.system.os.GenericOperatingSystem_Package;

package org.allbinary.logic.system.os.linux.LinuxOS_Package is

   package GenericOperatingSystem_Package renames Standard.org.allbinary.logic.system.os.GenericOperatingSystem_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype LinuxOS_Access is org.allbinary.logic.system.os.linux.LinuxOS_Package_References.LinuxOS_Access;
   function "=" (Left, Right : LinuxOS_Access) return Boolean renames org.allbinary.logic.system.os.linux.LinuxOS_Package_References."=";
   subtype LinuxOS_Access_Array is org.allbinary.logic.system.os.linux.LinuxOS_Package_References.LinuxOS_Access_Array;
   function "=" (Left, Right : LinuxOS_Access_Array) return Boolean renames org.allbinary.logic.system.os.linux.LinuxOS_Package_References."=";
   subtype LinuxOS_Access_Array_Access is org.allbinary.logic.system.os.linux.LinuxOS_Package_References.LinuxOS_Access_Array_Access;
   function "=" (Left, Right : LinuxOS_Access_Array_Access) return Boolean renames org.allbinary.logic.system.os.linux.LinuxOS_Package_References."=";
   subtype LinuxOS_Access_Array_Access_Array is org.allbinary.logic.system.os.linux.LinuxOS_Package_References.LinuxOS_Access_Array_Access_Array;
   function "=" (Left, Right : LinuxOS_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.os.linux.LinuxOS_Package_References."=";
   subtype LinuxOS_Access_Array_Access_Array_Access is org.allbinary.logic.system.os.linux.LinuxOS_Package_References.LinuxOS_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LinuxOS_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.os.linux.LinuxOS_Package_References."=";

   type LinuxOS is new GenericOperatingSystem with null record;

   procedure Initialize (This : in out LinuxOS'Class);
   function Create return LinuxOS_Access;
   function isAutoHide (This : in out LinuxOS) return Boolean;

end org.allbinary.logic.system.os.linux.LinuxOS_Package;


